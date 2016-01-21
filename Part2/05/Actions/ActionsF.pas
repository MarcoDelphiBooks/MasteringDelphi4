unit ActionsF;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdActns, ActnList, ExtCtrls, StdCtrls, Menus, ImgList, Buttons;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    Panel1: TPanel;
    ActionList1: TActionList;
    Copy1: TEditCopy;
    Cut1: TEditCut;
    Paste1: TEditPaste;
    ActionNew: TAction;
    ActionExit: TAction;
    NoAction: TAction;
    ActionCount: TAction;
    ActionBold: TAction;
    MainMenu1: TMainMenu;
    Edit1: TMenuItem;
    Paste2: TMenuItem;
    Copy2: TMenuItem;
    Cut2: TMenuItem;
    File1: TMenuItem;
    New1: TMenuItem;
    Close1: TMenuItem;
    Test1: TMenuItem;
    N1: TMenuItem;
    Bold1: TMenuItem;
    NoAction1: TMenuItem;
    CharCount1: TMenuItem;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    ImageList1: TImageList;
    SpeedButton1: TSpeedButton;
    ActionEnable: TAction;
    EnableNoAction1: TMenuItem;
    ActionSender: TAction;
    TestSender: TMenuItem;
    procedure ActionNewExecute(Sender: TObject);
    procedure ActionExitExecute(Sender: TObject);
    procedure ActionBoldExecute(Sender: TObject);
    procedure ActionCountUpdate(Sender: TObject);
    procedure ActionCountExecute(Sender: TObject);
    procedure ActionEnableExecute(Sender: TObject);
    procedure ActionSenderExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

procedure TForm1.ActionNewExecute(Sender: TObject);
begin
  Memo1.Lines.Clear;
end;

procedure TForm1.ActionExitExecute(Sender: TObject);
begin
  Close;
end;

procedure TForm1.ActionBoldExecute(Sender: TObject);
begin
  with Memo1.Font do
    if fsBold in Style then
      Style := Style - [fsBold]
    else
      Style := Style + [fsBold];
  // toggle status
  ActionBold.Checked := not ActionBold.Checked;
end;

procedure TForm1.ActionCountUpdate(Sender: TObject);
begin
  ActionCount.Enabled := Memo1.Text <> '';
end;

procedure TForm1.ActionCountExecute(Sender: TObject);
begin
  ShowMessage ('Characters: ' + IntToStr (
    Length (Memo1.Text)));
end;

procedure TForm1.ActionEnableExecute(Sender: TObject);
begin
  NoAction.Enabled := True;
  NoAction.DisableIfNoHandler := False;
  ActionEnable.Enabled := False;
end;

procedure TForm1.ActionSenderExecute(Sender: TObject);
begin
  Memo1.Lines.Add (
    'Sender class: ' + Sender.ClassName);
  Memo1.Lines.Add (
    'Sender name: ' + (Sender as TComponent).Name);
  Memo1.Lines.Add (
    'Category: ' + (Sender as TAction).Category);
  Memo1.Lines.Add (
    'Action list name: ' + (Sender as TAction).ActionList.Name );
end;

end.
