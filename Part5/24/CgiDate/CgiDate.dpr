program CgiDate;

{$APPTYPE CONSOLE}

uses
  SysUtils;

begin
  writeln ('HTPP/1.0 200 OK');
  writeln ('CONTENT-TYPE: TEXT/HTML');
  writeln;
  writeln ('<HTML><HEAD>');
  writeln ('<TITLE>Time at this site</TITLE>');
  writeln ('</HEAD><BODY>');
  writeln ('<H1>Time at this site</H1>');
  writeln ('<H2>');
  writeln (FormatDateTime(
    '"Today is " dddd, mmmm d, yyyy, ' +
    '"<br> and the time is" hh:mm AM/PM',
     Now));
  writeln ('</H2>');
  writeln ('<HR><I>Page generated by CgiDate.exe</I>');
  writeln ('</BODY></HTML>');
end.
