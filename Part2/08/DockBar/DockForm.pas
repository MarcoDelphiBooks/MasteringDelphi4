unit DockForm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, StdCtrls, ExtCtrls, Menus, ComCtrls, ToolWin, ImgList, ActnList;

type
  TForm1 = class(TForm)
    ControlBar: TControlBar;
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
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    Exit1: TMenuItem;
    Toolbar1: TMenuItem;
    Visible1: TMenuItem;
    DisableSound1: TMenuItem;
    DisableStyles1: TMenuItem;
    Help1: TMenuItem;
    AboutToolbar1: TMenuItem;
    PopupMenu1: TPopupMenu;
    Hide1: TMenuItem;
    N1: TMenuItem;
    DisableSound2: TMenuItem;
    DisableStyles2: TMenuItem;
    ActionList1: TActionList;
    actVisible: TAction;
    actDisableSound: TAction;
    actDisableStyles: TAction;
    actExit: TAction;
    ToolMenu: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    Panel1: TPanel;
    ComboFont: TComboBox;
    ControlBar1: TControlBar;
    procedure tbLeftClick(Sender: TObject);
    procedure tbCenterClick(Sender: TObject);
    procedure tbRightClick(Sender: TObject);
    procedure tbNoteClick(Sender: TObject);
    procedure tbBoldClick(Sender: TObject);
    procedure tbitalicClick(Sender: TObject);
    procedure tbUnderlineClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ComboFontChange(Sender: TObject);
    procedure AboutToolbar1Click(Sender: TObject);
    procedure actDisableSoundExecute(Sender: TObject);
    procedure actDisableStylesExecute(Sender: TObject);
    procedure actExitExecute(Sender: TObject);
    procedure actVisibleExecute(Sender: TObject);
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

procedure TForm1.AboutToolbar1Click(Sender: TObject);
begin
  MessageDlg ('Toolbar example for "Mastering Delphi"' +
    Chr (13) +  'Written by Marco Cantù',
    mtInformation, [mbOk], 0);
end;

procedure TForm1.actDisableSoundExecute(Sender: TObject);
begin
  // disable or enable button and set check mark
  tbNote.Enabled := not tbNote.Enabled;
  actDisableSound.Checked := not tbNote.Enabled;
end;

procedure TForm1.actDisableStylesExecute(Sender: TObject);
begin
  ToolFontStyle.Visible := not ToolFontStyle.Visible;
  actDisableStyles.Checked := ToolFontStyle.Visible;
end;

procedure TForm1.actExitExecute(Sender: TObject);
begin
  Close;
end;

procedure TForm1.actVisibleExecute(Sender: TObject);
begin
  // hide or display the toolbar, setting the checkmark
  ToolAlign.Visible := not ToolAlign.Visible;
  Visible1.Checked := ToolAlign.Visible;
end;

end.
 