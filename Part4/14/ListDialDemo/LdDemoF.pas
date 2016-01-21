unit LdDemoF;

interface

uses
  SysUtils, Windows, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, StdCtrls, Md4ListDial;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Md4ListDialog1: TMd4ListDialog;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

procedure TForm1.Button1Click(Sender: TObject);
begin
  // select the text of the edit,
  // if corresponding to one of the strings
  Md4ListDialog1.Selected :=
    Md4ListDialog1.Lines.IndexOf (Edit1.Text);
  // run the dialog and get the result  
  if Md4ListDialog1.Execute then
    Edit1.Text := Md4ListDialog1.SelItem;
end;

end.
