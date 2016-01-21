unit Md4ListDial;

interface

uses
  SysUtils, Windows, Messages, Classes,
  Graphics, Controls, Forms, Dialogs, StdCtrls,
  Buttons;

type
  TMd4ListDialog = class (TComponent)
  private
    FLines: TStrings;
    FSelected: Integer;
    FTitle: string;
    function GetSelItem: string;
    procedure SetLines (Value: TStrings);
    function GetLines: TStrings;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    function Execute: Boolean;
    property SelItem: string
      read GetSelItem;
  published
    property Lines: TStrings
      read GetLines write SetLines;
    property Selected: Integer
      read FSelected write FSelected;
    property Title: string
      read FTitle write FTitle;
  end;

type
  TMd4ListBoxForm = class(TForm)
    ListBox1: TListBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Button1: TButton;
    procedure ListBox1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

{$R *.DFM}

procedure Register;

implementation

// component methods

constructor TMd4ListDialog.Create(AOwner: TComponent);
begin
  inherited Create (AOwner);
  FLines := TStringList.Create;
  FTitle := 'Choose a string';
end;

destructor TMd4ListDialog.Destroy;
begin
  FLines.Free;
  inherited Destroy;
end;

function TMd4ListDialog.GetSelItem: string;
begin
  if (Selected >= 0) and (Selected < FLines.Count) then
    Result := FLines [Selected]
  else
    Result := '';
end;

function TMd4ListDialog.GetLines: TStrings;
begin
  Result := FLines;
end;

procedure TMd4ListDialog.SetLines (Value: TStrings);
begin
  FLines.Assign (Value);
end;

function TMd4ListDialog.Execute: Boolean;
var
  ListBoxForm: TMd4ListBoxForm;
begin
  if FLines.Count = 0 then
    raise EStringListError.Create ('No items in the list');
  ListBoxForm := TMd4ListBoxForm.Create (self);
  try
    ListBoxForm.ListBox1.Items := FLines;
    ListBoxForm.ListBox1.ItemIndex := FSelected;
    ListBoxForm.Caption := FTitle;
    if ListBoxForm.ShowModal = mrOk then
    begin
      Result := True;
      Selected := ListBoxForm.ListBox1.ItemIndex;
    end
    else
      Result := False;
  finally
    ListBoxForm.Free;
  end;
end;

// form methods

procedure TMd4ListBoxForm.ListBox1DblClick(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure Register;
begin
  RegisterComponents('Md4', [TMd4ListDialog]);
end;

end.

