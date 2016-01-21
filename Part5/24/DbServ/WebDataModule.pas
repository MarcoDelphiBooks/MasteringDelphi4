unit WebDataModule;

interface

uses
  Windows, Messages, SysUtils, Classes, HTTPApp, Db, DBTables;

type
  TWebModule1 = class(TWebModule)
    Session1: TSession;
    Table1: TTable;
    procedure WebModule1WebActionItem1Action(Sender: TObject;
      Request: TWebRequest; Response: TWebResponse; var Handled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  WebModule1: TWebModule1;  

implementation

{$R *.DFM}

procedure TWebModule1.WebModule1WebActionItem1Action(
  Sender: TObject;
  Request: TWebRequest;
  Response: TWebResponse;
  var Handled: Boolean);
var
  Str1: string;
  I: Integer;
begin
  Str1 :=
    '<HTML> <HEAD> <TITLE>Server Database</TITLE> </HEAD> ' +
    '<BODY> <H1><CENTER>Query</CENTER></H1> ';

  Str1 := Str1 + '<b>' + Request.Query + '</b><p>';

  if Request.Query <> '' then
  begin
    Table1.FindNearest ([Request.Query]);
    for I := 1 to Table1.FieldCount - 1 do
      Str1 := Str1 + (Table1.Fields [I].FieldName + ': ' +
        Table1.Fields [I].AsString + '<p>');
  end
  else
  begin
    Table1.First;
    while not Table1.EOF do
    begin
      // entire table
      Str1 := Str1 + Format (
        'The capital of <a HREF="' +
        Request.ScriptName + '?%s"> %s </a> is %s<p>',
        [Table1.FieldByName ('Name').AsString,
        Table1.FieldByName ('Name').AsString,
        Table1.FieldByName ('Capital').AsString]);
      Table1.Next;
    end;
  end;
  Response.Content := Str1 + '</BODY></HTML>';
  Handled := True;
end;

end.
