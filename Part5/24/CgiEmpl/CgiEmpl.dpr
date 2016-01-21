program CgiEmpl;

{$APPTYPE CONSOLE}

uses
  Windows, SysUtils, DBTables, DB;

var
  ScriptName: array [0..100] of Char;
  PathName: array [0..30] of Char;
  MethodName: array [0..5] of Char;
  Table1: TTable;

procedure ShowHeader; forward;
procedure ShowRecord; forward;
function ExtractFromData (
  DataStr: string; SearchTag: string): string; forward;

procedure ShowHeader;
begin
  writeln('Content type: text/html');
  writeln;
  writeln('<HTML><HEAD>');
  writeln('<TITLE>CgiEmpl</TITLE>');
  writeln('</HEAD><BODY>');
  writeln('<H2>CGI Employee Demo</H2>');
  writeln('<HR>');
end;

procedure ShowTableIndex;
begin
  // show a summary of the entire table
  Table1.First;
  // show a list
  writeln ('<ul>');
  while not Table1.EOF do
  begin
    // show the names with a link to the CGI application
    writeln (Format (
      '<li> <a HREF="%s/record?LastName=%s+FirstName=%s">%s %s</a>',
      [ScriptName,
      Table1.FieldByName ('LastName').AsString,
      Table1.FieldByName ('FirstName').AsString,
      Table1.FieldByName ('FirstName').AsString,
      Table1.FieldByName ('LastName').AsString]));
    Table1.Next;
  end;
  // end of the list
  writeln ('</ul>');
end;

procedure ShowRecord;
var
  DataStr, First, Last: string;
  ContentLength: array [0..10] of Char;
  I: Integer;
  ch: Char;
begin
  if StrComp (MethodName, 'POST') = 0 then
  begin
    // method is post: read from the input
    GetEnvironmentVariable ('CONTENT_LENGTH',
      ContentLength, sizeof (ContentLength));
    SetLength (DataStr, StrToIntDef (ContentLength, 255));
    // doesn't work on PWS for Win98!
    readln (DataStr);
  end
  else
  begin
    // method is get: read the query string
    SetLength (DataStr, 255);
    GetEnvironmentVariable ('QUERY_STRING',
      PChar (DataStr), Length (DataStr));
    DataStr := pChar (DataStr);
  end;

  // extract the paraemters
  First := ExtractFromData (DataStr, 'FirstName');
  Last := ExtractFromData (DataStr, 'LastName');
  // debug information
  writeln ('<i>Request (Post): Last Name = "' + Last +
    '", First Name = "' + First + '"</i><p>');

  // move to the requested record
  if Last <> '' then
    Table1.FindNearest ([Last, First])
  else
    // look for the first name only
    Table1.Locate('FirstName', First,
      [loPartialKey, loCaseInsensitive]);

  // output the current record
  writeln ('<table border>');
  for I := 1 to Table1.FieldCount - 1 do
    writeln ('<tr><td>' + Table1.Fields [I].FieldName +
      '</td><td>' + Table1.Fields [I].AsString +
      '</td></tr>');
  writeln ('</table><hr>');
  writeln ('<table border><tr>');
  // add pointer to the index
  writeln ('<td><a HREF="' +
    ScriptName + '"> Index </a></td>');
  // add pointer to the prior record
  Table1.Prior;
  if not Table1.BOF then
  begin
    writeln (Format (
      '<td><a HREF="%s/record?LastName=%s+FirstName=%s"> Prior </a></td>',
      [ScriptName,
      Table1.FieldByName ('LastName').AsString,
      Table1.FieldByName ('FirstName').AsString]));
    // get back
    Table1.Next;
  end
  else
    // empty spot
    writeln ('<td><i>Prior</i></td>');
  // add pointer to the next record
  Table1.Next;
  if not Table1.EOF then
    write (Format (
      '<td><a HREF="%s/record?LastName=%s+FirstName=%s"> Next </a></td>',
      [ScriptName,
      Table1.FieldByName ('LastName').AsString,
      Table1.FieldByName ('FirstName').AsString]))
  else
    // empty spot
    writeln ('<td><i>Next</i></td>');
  // end of the line and table
  writeln ('</tr></table>');
end;

function ExtractFromData (
  DataStr: string; SearchTag: string): string;
var
  nPos: Integer;
begin
  nPos := Pos (SearchTag + '=', DataStr);
  if nPos > 0 then
  begin
    Result := Copy (DataStr, nPos + 1 + Length (SearchTag),
      Length (DataStr) - nPos);
    // the separator is +
    nPos := Pos ('+', Result);
    if nPos > 0 then
      Result := Copy (Result, 1, nPos - 1);
  end
  else
    Result := '';
  // check for converted white spaces
  repeat
    nPos := Pos ('%20', Result);
    if nPos > 0 then
      Result := Copy (Result, 0, nPos - 1) + ' ' +
        Copy (Result, nPos + 3, Length (Result));
  until nPos = 0;
end;

// main program
begin
  ShowHeader;

  // get the name of the script,
  // the method, and the path name
  GetEnvironmentVariable ('SCRIPT_NAME',
    ScriptName, sizeof (ScriptName));
  GetEnvironmentVariable ('REQUEST_METHOD',
    MethodName, sizeof (MethodName));
  GetEnvironmentVariable ('PATH_INFO',
    PathName, sizeof (PathName));

  // debug
  writeln ('<i>Script: ' + ScriptName +
    ', Method: ' + MethodName +
    ', Path: ' + PathName + '</i><p>');


  // create and connect the table
  Table1 := TTable.Create (nil);
  try
    Table1.DatabaseName := 'DBDEMOS';
    Table1.TableName := 'Employee.db';
    Table1.IndexName := 'ByName';
    Table1.Open;

    // if the pathname is 'record' then read the data
    if (StrComp (PathName, '/record') = 0) then
    begin
      ShowRecord;
    end
    else
      // no pathname: get the index
      ShowTableIndex
  finally
    Table1.Close;
    Table1.Free;
  end;
  // show footer
  writeln('</BODY></HTML>');
end.

