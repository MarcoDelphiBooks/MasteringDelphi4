unit StrRefF;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

type
  TFormStrRef = class(TForm)
    BtnAssign: TButton;
    BtnChange: TButton;
    ListBox1: TListBox;
    procedure BtnAssignClick(Sender: TObject);
    procedure BtnChangeClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormStrRef: TFormStrRef;
  Str1, Str2: string;

implementation

{$R *.DFM}

function StringStatus (const Str: string): string;
begin
  Result := 'Address: ' + IntToStr (Integer (Str)) +
    ', Length: ' + IntToStr (Length (Str)) + 
    ', References: ' + IntToStr (PInteger (Integer (Str) - 8)^) +
    ', Value: ' + Str;
end;

procedure TFormStrRef.BtnAssignClick(Sender: TObject);
begin
  Str1 := 'Hello';
  Str2 := Str1;
  ListBox1.Items.Add ('Str2 := Str1;');
  ListBox1.Items.Add ('Str1 - ' + StringStatus (Str1));
  ListBox1.Items.Add ('Str2 - ' + StringStatus (Str2));
  BtnChange.Enabled := True;
end;

procedure TFormStrRef.BtnChangeClick(Sender: TObject);
begin
  Str1 [2] := 'a';
  ListBox1.Items.Add ('Str1 [2] := ''a''');
  ListBox1.Items.Add ('Str1 - ' + StringStatus (Str1));
  ListBox1.Items.Add ('Str2 - ' + StringStatus (Str2));
end;

end.
