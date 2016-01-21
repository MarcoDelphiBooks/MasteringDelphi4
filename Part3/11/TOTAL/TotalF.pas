unit TotalF;

interface

uses
  SysUtils, Windows, Messages, Classes, Graphics, Controls,
  StdCtrls, Forms, DBCtrls, DB, Buttons, DBTables, Mask, ExtCtrls,
  Dialogs, Spin, DBActns, ActnList;

type
  TSearchForm = class(TForm)
    ScrollBox: TScrollBox;
    Label1: TLabel;
    EditEmpNo: TDBEdit;
    Label2: TLabel;
    EditLastName: TDBEdit;
    Label3: TLabel;
    EditFirstName: TDBEdit;
    Label4: TLabel;
    EditPhoneExt: TDBEdit;
    Label5: TLabel;
    EditHireDate: TDBEdit;
    Label6: TLabel;
    EditSalary: TDBEdit;
    Panel1: TPanel;
    DataSource1: TDataSource;
    Panel2: TPanel;
    Table1: TTable;
    SpeedButtonFirst: TSpeedButton;
    SpeedButtonPrior: TSpeedButton;
    SpeedButtonNext: TSpeedButton;
    SpeedButtonLast: TSpeedButton;
    EditName: TEdit;
    SpeedButtonGoto: TSpeedButton;
    SpeedButtonGoNear: TSpeedButton;
    Table1EmpNo: TIntegerField;
    Table1LastName: TStringField;
    Table1FirstName: TStringField;
    Table1PhoneExt: TStringField;
    Table1HireDate: TDateTimeField;
    SpinEdit1: TSpinEdit;
    SpeedButtonIncrease: TSpeedButton;
    SpeedButtonTotal: TSpeedButton;
    Table1Salary: TCurrencyField;
    ActionList1: TActionList;
    First1: TDataSetFirst;
    Last1: TDataSetLast;
    Next1: TDataSetNext;
    Prior1: TDataSetPrior;
    procedure FormCreate(Sender: TObject);
    procedure SpeedButtonGotoClick(Sender: TObject);
    procedure SpeedButtonGoNearClick(Sender: TObject);
    procedure SpeedButtonIncreaseClick(Sender: TObject);
    procedure SpeedButtonTotalClick(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  SearchForm: TSearchForm;

implementation

{$R *.DFM}

procedure TSearchForm.FormCreate(Sender: TObject);
begin
  Table1.IndexFieldNames := 'LastName';
  Table1.First;
end;

procedure TSearchForm.SpeedButtonGotoClick(Sender: TObject);
begin
  // short-hand
  if not Table1.FindKey ([EditName.Text]) then
    MessageDlg ('Name not found', mtError, [mbOk], 0);

  // alternative code:
  {Table1.SetKey;
  Table1.FieldByName('LastName').AsString := EditName.Text;
  Table1.KeyFieldCount := 1;
  if not Table1.GotoKey then
    MessageDlg ('Name not found', mtError, [mbOk], 0);}
end;

procedure TSearchForm.SpeedButtonGoNearClick(Sender: TObject);
begin
  // short-hand
  Table1.FindNearest ([EditName.Text]);

  // alternative code:
  {Table1.SetKey;
  Table1.FieldByName('LastName').AsString := EditName.Text;
  Table1.GotoNearest;}
end;

procedure TSearchForm.SpeedButtonIncreaseClick(Sender: TObject);
var
  Bookmark: TBookmark;
  Total: Real;
begin
  {store the current position, crating a new bookmark}
  Bookmark := Table1.GetBookmark;
  Table1.DisableControls;
  Total := 0;
  {start edit mode}
  try
    Table1.First;
    while not Table1.EOF do
    begin
      Table1.Edit;
      Table1Salary.Value := Round (Table1Salary.Value *
        SpinEdit1.Value) / 100;
      Total := Total + Table1Salary.Value;
      Table1.Next;
    end;
  finally
    {go back to the bookmark and destroy it}
    Table1.GotoBookmark (Bookmark);
    Table1.FreeBookmark (Bookmark);
    Table1.EnableControls;
  end;
  MessageDlg ('Sum of new salaries is ' +
    Format ('%m', [Total]), mtInformation, [mbOk], 0);
end;

procedure TSearchForm.SpeedButtonTotalClick(Sender: TObject);
var
  Bookmark: TBookmark;
  Total: Real;
begin
  {store the current position, crating a new bookmark}
  Bookmark := Table1.GetBookmark;
  Table1.DisableControls;
  Total := 0;
  try
    Table1.First;
    while not Table1.EOF do
    begin
      Total := Total + Table1Salary.Value;
      Table1.Next;
    end;
  finally
    {go back to the bookmark and destroy it}
    Table1.GotoBookmark (Bookmark);
    Table1.FreeBookmark (Bookmark);
    Table1.EnableControls;
  end;
  MessageDlg ('Sum of new salaries is ' +
    Format ('%m', [Total]), mtInformation, [mbOk], 0);
end;

end.