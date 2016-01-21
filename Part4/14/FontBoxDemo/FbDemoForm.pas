unit FbDemoForm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, FontBox, Md4Fontbox;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Memo1: TMemo;
    Md4FontCombo1: TMd4FontCombo;
    procedure FormCreate(Sender: TObject);
    procedure Md4FontCombo1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

procedure TForm1.FormCreate(Sender: TObject);
begin
  // select the item corresponding to the current font
  Md4FontCombo1.ItemIndex :=
    Md4FontCombo1.Items.IndexOf (Memo1.Font.Name);
end;

procedure TForm1.Md4FontCombo1Change(Sender: TObject);
begin
  // activate the new selection
  Memo1.Font.Name := Md4FontCombo1.Text;
end;

end.

   