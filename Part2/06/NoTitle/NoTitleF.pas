unit NoTitleF;

interface

uses
  SysUtils, Windows, Messages, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
  public
    procedure CreateParams (var Params: TCreateParams); override;
    procedure HitTest (var Msg: TWmNcHitTest);
      message wm_NcHitTest;
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

procedure TForm1.CreateParams (var Params: TCreateParams);
begin
  inherited CreateParams (Params);
  Params.Style := (Params.Style or ws_Popup) and
    not ws_Caption;
end;

procedure TForm1.HitTest(var Msg: TWmNcHitTest);
begin
  inherited;
  if (Msg.Result = htClient) and (Msg.YPos <
      Label1.Height + Top + GetSystemMetrics (sm_cyFrame)) then
    Msg.Result := htCaption;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  Close;
end;

procedure TForm1.FormResize(Sender: TObject);
begin
  Button1.Left := ClientWidth - Button1.Width - 2;
end;

end.
