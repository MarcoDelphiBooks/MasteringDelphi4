unit ListsF;

interface

uses
  SysUtils, Windows, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, StdCtrls, ExtCtrls, Md4TabList;

type
  TForm1 = class(TForm)
    Md4TabbedList1: TMd4TabbedList;
    Edit1: TEdit;
    AddButton: TButton;
    Edit2: TEdit;
    Edit3: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Header1: THeader;
    procedure AddButtonClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Header1Sized(Sender: TObject; ASection, AWidth: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

procedure TForm1.AddButtonClick(Sender: TObject);
var
  NewItem: String;
begin
  if Edit1.Text <> '' then
  begin
    NewItem := Edit1.Text + #9 + Edit2.Text +
      #9 + Edit3.Text;
    Md4TabbedList1.Items.Add (NewItem);
  end;
end;

const
  MaxNumSections = 9;

procedure TForm1.FormCreate(Sender: TObject);
var
  I, Last: Integer;
begin
  Last := 0;
  for I := 0 to Header1.Sections.Count - 1 do
  begin
    Last := Last + Header1.SectionWidth [I];
    Md4TabbedList1.TabStops [I] := Last;
  end;
  for I := Header1.Sections.Count to MaxNumSections do
    Md4TabbedList1.TabStops [I] := 1000;
end;

procedure TForm1.Header1Sized(Sender: TObject; ASection, AWidth: Integer);
var
  I, Last: Integer;
begin
  Last := 0;
  for I := 0 to Header1.Sections.Count - 1 do
  begin
    Last := Last + Header1.SectionWidth [I];
    Md4TabbedList1.TabStops [I] := Last;
  end;
end;

end.
