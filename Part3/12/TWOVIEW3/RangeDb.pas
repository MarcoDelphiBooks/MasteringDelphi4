unit RangeDb;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, DBCtrls, ExtCtrls;

type
  TFormRange = class(TForm)
    CheckBoxRange: TCheckBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Bevel1: TBevel;
    Bevel2: TBevel;
    ListBoxStates: TListBox;
    ListBoxCountries: TListBox;
    Label3: TLabel;
    Label4: TLabel;
    CheckBoxFiltering: TCheckBox;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRange: TFormRange;

implementation

uses DataM;

{$R *.DFM}

procedure TFormRange.FormCreate(Sender: TObject);
begin
  with DataModule2 do
  begin
    Table1.First;
    while not Table1.EOF do
    begin
      // add unique values
      if ListBoxCountries.Items.IndexOf (
          Table1Country.AsString) < 0 then
        ListBoxCountries.Items.Add (Table1Country.AsString);
      if ListBoxStates.Items.IndexOf (
          Table1State.AsString) < 0 then
        ListBoxStates.Items.Add (Table1State.AsString);
      Table1.Next;
    end;
    // reset the table
    Table1.First;
  end;
end;

end.
