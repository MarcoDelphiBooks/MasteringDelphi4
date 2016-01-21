unit OverDefF;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

procedure Test;
begin
  Beep;
end;

// error overload missing in Test (previous version)
{procedure Test (I: integer); overload;
begin
  Beep;
end;}

procedure ShowMsg (str: string); overload;
begin
  MessageDlg (str, mtInformation, [mbOK], 0);
end;

procedure ShowMsg (FormatStr: string;
  Params: array of const); overload;
begin
  MessageDlg (Format (FormatStr, Params),
    mtInformation, [mbOK], 0);
end;

procedure ShowMsg (I: Integer; Str: string); overload;
begin
  ShowMsg (IntToStr (I) + ' ' + Str);
end;

// error: ambiguous call
{procedure ShowMsg (Str: string; I: Integer = 0); overload;
begin
  MessageDlg (Str + ': ' + IntToStr (I),
    mtInformation, [mbOK], 0);
end;}

procedure MessageDlg (str: string); overload;
begin
  Dialogs.MessageDlg (str, mtInformation, [mbOK], 0);
end;

procedure MessBox (Msg: string;
  Caption: string = 'Warning';
  Flags: LongInt = mb_OK or mb_IconHand);
begin
  Application.MessageBox (PChar (Msg),
    PChar (Caption), Flags);
end;

// TForm1 //

procedure TForm1.Button1Click(Sender: TObject);
begin
  OverDefF.MessageDlg ('Hello');
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  ShowMsg ('Hello');
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  ShowMsg (10, 'MBytes');
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  ShowMsg ('Total = %d.', [100]);
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  MessBox ('Something wrong here!');
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
  MessBox ('Something wrong here!', 'Attention');
  // doens't compile
  // MessBox ('Hello', mb_OK);
end;

end.








