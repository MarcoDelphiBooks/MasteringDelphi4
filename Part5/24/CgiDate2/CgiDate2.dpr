 program CgiDate2;

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
   writeln ('<HR>');
   writeln ('<H4>');

   if ParamCount > 0 then
   begin
     if ParamStr (1) = 'date' then
       writeln (FormatDateTime(
         '"Today is " dddd, mmmm d, yyyy',
         Now))
     else if ParamStr (1) = 'time' then
       writeln (FormatDateTime(
         '"The time is" hh:mm:ss AM/PM',
         Now))
     else if ParamStr (1) = 'both' then
       writeln (FormatDateTime(
         '"Today is " dddd, mmmm d, yyyy,' +
           '"<p> and the time is" hh:mm:ss AM/PM',
         Now))
     else
       writeln ('Error. Invalid parameter: ' +
         ParamStr (1) + '.')
   end
   else
     writeln ('Error. Missing parameter.');
   writeln ('</H4>');
   writeln ('<HR><I>Page generated by CgiDate.exe </I>');
   writeln ('</BODY></HTML>');
 end.

