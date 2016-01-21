unit Md4ActiveBtn;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

type
  TMd4ActiveButton = class(TButton)
  protected
    procedure MouseEnter (var Msg: TMessage);
      message cm_mouseEnter;
    procedure MouseLeave (var Msg: TMessage);
      message cm_mouseLeave;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Md4', [TMd4ActiveButton]);
end;

{ TMd4ActiveButton }

procedure TMd4ActiveButton.MouseEnter(var Msg: TMessage);
begin
  Font.Style := Font.Style + [fsBold];
end;

procedure TMd4ActiveButton.MouseLeave(var Msg: TMessage);
begin
  Font.Style := Font.Style - [fsBold];
end;

end.
