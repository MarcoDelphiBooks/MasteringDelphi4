unit SearchF;

interface

uses
  SysUtils, Windows, Messages, Classes, Graphics, Controls,
  StdCtrls, Forms, DBCtrls, DB, Buttons, DBTables, Mask, ExtCtrls,
  Dialogs, DBActns, ActnList;

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
    Table1Salary: TFloatField;
    Table1EmpNo: TIntegerField;
    Table1LastName: TStringField;
    Table1FirstName: TStringField;
    Table1PhoneExt: TStringField;
    Table1HireDate: TDateTimeField;
    ActionList1: TActionList;
    First1: TDataSetFirst;
    Last1: TDataSetLast;
    Next1: TDataSetNext;
    Prior1: TDataSetPrior;
    procedure FormCreate(Sender: TObject);
    procedure SpeedButtonGotoClick(Sender: TObject);
    procedure SpeedButtonGoNearClick(Sender: TObject);
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
  Table1.First;
end;

procedure TSearchForm.SpeedButtonGotoClick(Sender: TObject);
begin
  // locate
  if not Table1.Locate ('LastName', EditName.Text, []) then
    MessageDlg ('Name not found', mtError, [mbOk], 0);

  // short-hand
{  if not Table1.FindKey ([EditName.Text]) then
    MessageDlg ('Name not found', mtError, [mbOk], 0);

  // alternative code:
  {Table1.SetKey;
  Table1 ['LastName'] := EditName.Text;
  Table1.KeyFieldCount := 1;
  if not Table1.GotoKey then
    MessageDlg ('Name not found', mtError, [mbOk], 0);}
end;

procedure TSearchForm.SpeedButtonGoNearClick(Sender: TObject);
begin
  // short-hand
//  Table1.FindNearest ([EditName.Text]);

  // alternative code:
  Table1.SetKey;
  Table1 ['LastName'] := EditName.Text;
  Table1.GotoNearest;
end;

end.