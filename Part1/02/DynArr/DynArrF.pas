unit DynArrF;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

type
  TForm1 = class(TForm)
    btnFill: TButton;
    btnAlias: TButton;
    btnSet: TButton;
    btnGrow: TButton;
    btnGet: TButton;
    procedure btnFillClick(Sender: TObject);
    procedure btnAliasClick(Sender: TObject);
    procedure btnSetClick(Sender: TObject);
    procedure btnGrowClick(Sender: TObject);
    procedure btnGetClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

var
  Array1, Array2: array of Integer;

procedure TForm1.btnFillClick(Sender: TObject);
var
  I: Integer;
begin
  // fill
  for I := Low (Array1) to High (Array1) do
    Array1 [I] := I;
end;

procedure TForm1.btnSetClick(Sender: TObject);
begin
  Array1 [99] := 100;
end;

procedure TForm1.btnGrowClick(Sender: TObject);
begin
  // grow keeping existing values
  SetLength (Array1, 200);
end;

procedure TForm1.btnGetClick(Sender: TObject);
begin
  // extract
  Caption := IntToStr (Array1 [99]);
end;

procedure TForm1.btnAliasClick(Sender: TObject);
begin
  // alias
  Array2 := Array1;
  // change one (both change)
  Array2 [99] := 1000;
  // show the other
  Caption := IntToStr (Array1 [99]);

  if Array1 = Array2 then
    Beep;

  // truncate first array
  Array1 := Copy (Array2, 0, 10);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  // allocate
  SetLength (Array1, 100);
end;

end.

