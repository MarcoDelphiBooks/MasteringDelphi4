program CgiVars;

{$APPTYPE CONSOLE}

uses
  Windows;

const
  VarList: array [1..17] of string [30] =
    ('SERVER_NAME', 'SERVER_PROTOCOL',
    'SERVER_PORT', 'SERVER_SOFTWARE',
    'GATEWAY_INTERFACE', 'REQUEST_METHOD',
    'PATH_TRANSLATED', 'HTTP_REFERER',
    'SCRIPT_NAME', 'PATH_INFO',
    'QUERY_STRING', 'HTTP_ACCEPT',
    'REMOTE_HOST', 'REMOTE_USER',
    'REMOTE_ADDR', 'REMOTE_IDENT',
    'HTTP_USER_AGENT');

var
  I: Integer;
  ReqVar: string;
  VarValue: array [0..200] of Char;

begin
  writeln('Content type: text/html');
  writeln;
  writeln('<HTML><HEAD>');
  writeln('<TITLE>CGI Variables</TITLE>');
  writeln('</HEAD><BODY>');
  writeln('<H1>CGI Variables</H1>');
  writeln('<HR><PRE>');

  // show the variables listed in the array
  for I := Low (VarList) to High (VarList) do
  begin
    ReqVar := VarList[I];
    if (GetEnvironmentVariable (PChar(ReqVar),
        VarValue, 200) > 0) then
    else
      VarValue := '';
    writeln (VarList[I] + ' = ' + VarValue);
  end;
  writeln('</PRE></BODY></HTML>');
end.

