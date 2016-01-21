unit SendForm;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, Menus,
  StdCtrls, Dialogs, Buttons, Messages, ExtCtrls, ComCtrls,
  Psock, NMsmtp;

type
  TMainForm = class(TForm)
    Panel2: TPanel;
    reMessageText: TRichEdit;
    Panel1: TPanel;
    Label1: TLabel;
    eName: TEdit;
    Splitter1: TSplitter;
    ListLog: TListBox;
    Label2: TLabel;
    eSubject: TEdit;
    Label3: TLabel;
    BbtnAddToList: TButton;
    ListAddr: TListBox;
    BtnRemove: TButton;
    BtnFind: TButton;
    Mail: TNMSMTP;
    Label5: TLabel;
    eFrom: TEdit;
    BtnSendAll: TButton;
    eServer: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnSendAllClick(Sender: TObject);
    procedure BbtnAddToListClick(Sender: TObject);
    procedure BtnRemoveClick(Sender: TObject);
    procedure BtnFindClick(Sender: TObject);
    procedure MailSendStart(Sender: TObject);
    procedure MailSuccess(Sender: TObject);
    procedure MailFailure(Sender: TObject);
    procedure MailConnect(Sender: TObject);
    procedure MailDisconnect(Sender: TObject);
  private
    FileName: string;
  end;

var
  MainForm: TMainForm;

implementation

{$R *.DFM}

procedure TMainForm.FormCreate(Sender: TObject);
begin
  // load the list of addresses
  FileName := ChangeFileExt (Application.ExeName, '.txt');
  ListAddr.Items.LoadFromFile (FileName);
  ListLog.Items.Add ('Addresses: ' + IntToStr (
    ListAddr.Items.Count));
  // select the first item
  ListAddr.ItemIndex := 0;
end;

procedure TMainForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  // save the list of addresses
  ListAddr.Items.SaveToFile (FileName);
end;

const
  BccInMsg = 30;

procedure TMainForm.BtnSendAllClick(Sender: TObject);
var
  nItem, nBcc: Integer;
  Res: Word;
begin
  Res := MessageDlg ('Start sending from item ' +
      IntToStr (ListAddr.ItemIndex) + ' (' +
      ListAddr.Items [ListAddr.ItemIndex] + ')?'#13 +
      '(No starts form 0)',
      mtConfirmation,
      [mbYes, mbNo, mbCancel], 0);
  if Res = mrCancel then
    Exit;
  if Res = mrYes then
    nItem := ListAddr.ItemIndex
  else
    nItem := 0;

  // connect
  Mail.Host := eServer.Text;
  Mail.UserID := eFrom.Text;
  Mail.Connect;

  // set the fixed part of the header
  Mail.PostMessage.FromAddress := eFrom.Text;
  Mail.PostMessage.ToAddress.Clear;
  Mail.PostMessage.ToAddress.Add (eFrom.Text);
  Mail.PostMessage.Subject := eSubject.Text;
  Mail.PostMessage.Body.SetText (
    reMessageText.Lines.GetText);

  // send to list, in groups
  while nItem < ListAddr.Items.Count do
  begin
    // show the current selection
    ListAddr.ItemIndex := nItem;
    Application.ProcessMessages;

    // fill the bcc list
    Mail.PostMessage.ToBlindCarbonCopy.Clear;
    nBcc := 0;
    while (nBcc < BccInMsg) and (nBcc + nItem < ListAddr.Items.Count) do
    begin
      Mail.PostMessage.ToBlindCarbonCopy.Add (ListAddr.Items [nItem + nBcc]);
      Inc (nBcc);
    end;

    // send the message
    Mail.SendMail;

    // increse the counter
    Inc (nItem, nBcc);
  end;

  // we're done
  Mail.Disconnect;
end;

procedure TMainForm.BbtnAddToListClick(Sender: TObject);
begin
  ListAddr.ItemIndex :=
    ListAddr.Items.Add (eName.Text);
end;

procedure TMainForm.BtnRemoveClick(Sender: TObject);
begin
  // copy the item to the name edit box and remove it
  eName.Text := ListAddr.Items [ListAddr.ItemIndex];
  ListAddr.Items.Delete (ListAddr.ItemIndex);
end;

procedure TMainForm.BtnFindClick(Sender: TObject);
var
  I: Integer;
begin
  for I := 0 to ListAddr.Items.Count - 1 do
    if Pos (eName.Text, ListAddr.Items [I]) > 0 then
    begin
      ListAddr.ItemIndex := I;
      Break;
    end;
  Beep;
end;

procedure TMainForm.MailSendStart(Sender: TObject);
begin
  ListLog.Items.Add ('Sending to group: ' +
    Mail.PostMessage.ToBlindCarbonCopy [0]);
end;

procedure TMainForm.MailSuccess(Sender: TObject);
begin
  ListLog.Items.Add ('Done');
end;

procedure TMainForm.MailFailure(Sender: TObject);
begin
  ListLog.Items.Add ('Error');
end;

procedure TMainForm.MailConnect(Sender: TObject);
begin
  ListLog.Items.Add ('Connected to host');
end;

procedure TMainForm.MailDisconnect(Sender: TObject);
begin
  ListLog.Items.Add ('Disconnected for host');
end;

end.
