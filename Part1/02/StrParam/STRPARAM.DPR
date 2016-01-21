program Strparam;

uses
  Windows;

begin
  // show the full string
  MessageBox (0, cmdLine, 'StrParam Command Line', MB_OK);

  // show the first parameter
  if ParamCount > 0 then
    MessageBox (0, PChar (ParamStr (1)), '1st StrParam Parameter', MB_OK)
  else
    MessageBox (0, PChar ('No parameters'), '1st StrParam Parameter', MB_OK);
end.
