unit CtrlForm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, StdCtrls, ExtCtrls, Menus, ComCtrls, ToolWin, ImgList;

type
  TForm1 = class(TForm)
    ControlBar: TControlBar;
    ComboFont: TComboBox;
    Label1: TLabel;
    ImageList1: TImageList;
    ToolFontStyle: TToolBar;
    tbBold: TToolButton;
    tbitalic: TToolButton;
    tbUnderline: TToolButton;
    ToolAlign: TToolBar;
    tbNote: TToolButton;
    ToolButton9: TToolButton;
    tbLeft: TToolButton;
    tbCenter: TToolButton;
    tbRight: TToolButton;
    procedure tbLeftClick(Sender: TObject);
    procedure tbCenterClick(Sender: TObject);
    procedure tbRightClick(Sender: TObject);
    procedure tbNoteClick(Sender: TObject);
    procedure tbBoldClick(Sender: TObject);
    procedure tbitalicClick(Sender: TObject);
    procedure tbUnderlineClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ComboFontChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

procedure TForm1.tbLeftClick(Sender: TObject);
begin
  Label1.Alignment := taLeftJustify;
end;

procedure TForm1.tbCenterClick(Sender: TObject);
begin
  Label1.Alignment := taCenter;
end;

procedure TForm1.tbRightClick(Sender: TObject);
begin
  Label1.Alignment := taRightJustify;
end;

procedure TForm1.tbNoteClick(Sender: TObject);
begin
  Beep;
end;

procedure TForm1.tbBoldClick(Sender: TObject);
begin
  with Label1.Font do
    if fsBold in Style then
      Style := Style - [fsBold]
    else
      Style := Style + [fsBold];
end;

procedure TForm1.tbitalicClick(Sender: TObject);
begin
  with Label1.Font do
    if fsItalic in Style then
      Style := Style - [fsItalic]
    else
      Style := Style + [fsItalic];
end;

procedure TForm1.tbUnderlineClick(Sender: TObject);
begin
  with Label1.Font do
    if fsUnderline in Style then
      Style := Style - [fsUnderline]
    else
      Style := Style + [fsUnderline];
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  ComboFont.Items := Screen.Fonts;
  ComboFont.ItemIndex :=
    ComboFont.Items.IndexOf (Label1.Font.Name);
end;

procedure TForm1.ComboFontChange(Sender: TObject);
begin
  Label1.Font.Name := ComboFont.Text;
end;

end.
