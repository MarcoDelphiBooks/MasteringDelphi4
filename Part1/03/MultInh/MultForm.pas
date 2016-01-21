unit MultForm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, MultAnim;

type
  TFormAnimMi = class(TForm)
    BtnKind: TButton;
    BtnFly: TButton;
    Memo1: TMemo;
    BtnSwim: TButton;
    BtnWalk: TButton;
    BtnDuck: TButton;
    BtnKindI: TButton;
    BtnFlyI: TButton;
    BtnSwimI: TButton;
    BtnWalkI: TButton;
    Label1: TLabel;
    Label2: TLabel;
    BtnMammalsI: TButton;
    procedure BtnKindClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BtnFlyClick(Sender: TObject);
    procedure BtnSwimClick(Sender: TObject);
    procedure BtnWalkClick(Sender: TObject);
    procedure BtnDuckClick(Sender: TObject);
    procedure BtnKindIClick(Sender: TObject);
    procedure BtnFlyIClick(Sender: TObject);
    procedure BtnSwimIClick(Sender: TObject);
    procedure BtnWalkIClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BtnMammalsIClick(Sender: TObject);
  private
    Animals: array [1..5] of TAnimal;
    AnimIntf: array [1..5] of IAnimal;
  end;

var
  FormAnimMi: TFormAnimMi;

implementation

{$R *.DFM}

procedure TFormAnimMi.FormCreate(Sender: TObject);
var
  I: Integer;
begin
  Animals[1] := TEagle.Create;
  Animals[2] := TPenguin.Create;
  Animals[3] := TDuck.Create;
  Animals[4] := TBat.Create;
  Animals[5] := TMonkey.Create;

  for I := 1 to 5 do
    (Animals[I] as IAnimal)._AddRef;

  AnimIntf[1] := TEagle.Create;
  AnimIntf[2] := TPenguin.Create;
  AnimIntf[3] := TDuck.Create;
  AnimIntf[4] := TBat.Create;
  AnimIntf[5] := TMonkey.Create;
end;

procedure TFormAnimMi.BtnKindClick(Sender: TObject);
var
  I: Integer;
begin
  Memo1.Lines.Add ('Kinds:');
  for I := 1 to 5 do
    // standard polymorphic method call
    Memo1.Lines.Add (Animals[I].Kind);
  Memo1.Lines.Add ('');
end;

procedure TFormAnimMi.BtnFlyClick(Sender: TObject);
var
  I: Integer;
  Fly1: ICanFly;
begin
  Fly1 := nil;
  Memo1.Lines.Add ('Fly:');
  for I := 1 to 5 do
  begin
    Animals[i].GetInterface (ICanFly, Fly1);
    if Assigned (Fly1) then
      Memo1.Lines.Add (Fly1.Fly);
  end;
  Memo1.Lines.Add ('');
end;

procedure TFormAnimMi.BtnSwimClick(Sender: TObject);
var
  I: Integer;
  Swim1: ICanSwim;
begin
  Memo1.Lines.Add ('Swim:');
  for I := 1 to 5 do
    if Animals[i].GetInterface (ICanSwim, Swim1) then
      Memo1.Lines.Add (Swim1.Swim);
  Memo1.Lines.Add ('');
end;

procedure TFormAnimMi.BtnWalkClick(Sender: TObject);
var
  I: Integer;
  Walker1: ICanWalk;
begin
  Memo1.Lines.Add ('Walk:');
  for I := 1 to 5 do
  try
    Walker1 := Animals[i] as ICanWalk;
    Memo1.Lines.Add (Walker1.Walk);
  except;
  end;
  Memo1.Lines.Add ('');
end;

procedure TFormAnimMi.BtnDuckClick(Sender: TObject);
var
  I: Integer;
  Duck1: TDuck;
begin
  Memo1.Lines.Add ('Duck:');
  for I := 1 to 5 do
    if Animals[I] is TDuck then
    begin
      Duck1 := TDuck (Animals[I]);
      Memo1.Lines.Add (Duck1.Kind);
      Memo1.Lines.Add (Duck1.Walk);
      Memo1.Lines.Add (Duck1.Fly);
      Memo1.Lines.Add (Duck1.Swim);
      Memo1.Lines.Add (Duck1.LayEggs);
      Memo1.Lines.Add (IntToStr(Duck1.RefCount));
    end;
end;

procedure TFormAnimMi.BtnKindIClick(Sender: TObject);
var
  I: Integer;
begin
  Memo1.Lines.Add ('Kinds:');
  for I := 1 to 5 do
    // standard polymorphic method call
    Memo1.Lines.Add (AnimIntf[I].Kind);
  Memo1.Lines.Add ('');
end;

procedure TFormAnimMi.BtnFlyIClick(Sender: TObject);
var
  I: Integer;
  Fly1: ICanFly;
begin
  Memo1.Lines.Add ('Fly:');
  for I := 1 to 5 do
  begin
    AnimIntf[i].QueryInterface (ICanFly, Fly1);
    if Assigned (Fly1) then
      Memo1.Lines.Add (Fly1.Fly);
  end;
  Memo1.Lines.Add ('');
end;

procedure TFormAnimMi.BtnSwimIClick(Sender: TObject);
var
  I: Integer;
  Swim1: ICanSwim;
begin
  Memo1.Lines.Add ('Swim:');
  for I := 1 to 5 do
    if AnimIntf[i].QueryInterface (
        ICanSwim, Swim1) <> E_NoInterface then
      Memo1.Lines.Add (Swim1.Swim);
  Memo1.Lines.Add ('');

end;

procedure TFormAnimMi.BtnWalkIClick(Sender: TObject);
var
  I: Integer;
  Walker1: ICanWalk;
begin
  Memo1.Lines.Add ('Walk:');
  for I := 1 to 5 do
  try
    Walker1 := AnimIntf[i] as ICanWalk;
    Memo1.Lines.Add (Walker1.Walk);
  except
  end;
  Memo1.Lines.Add ('');
end;

procedure TFormAnimMi.FormDestroy(Sender: TObject);
var
  I: Integer;
begin
  for I := 1 to 5 do
    Animals[I].Free;
end;

procedure TFormAnimMi.BtnMammalsIClick(Sender: TObject);
var
  I: Integer;
  Mam1: IMammal;
begin
  Memo1.Lines.Add ('Mammals:');
  for I := 1 to 5 do
  begin
    AnimIntf[i].QueryInterface (IMammal, Mam1);
    if Assigned (Mam1) then
      Memo1.Lines.Add (Mam1.Kind);
  end;
  Memo1.Lines.Add ('');
end;

end.
