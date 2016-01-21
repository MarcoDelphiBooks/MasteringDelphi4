unit SideTxtF;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    procedure FormPaint(Sender: TObject);
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

procedure TForm1.FormPaint(Sender: TObject);
begin
  Canvas.TextOut (200, 200, 'Hello');
end;

procedure TForm1.FormCreate(Sender: TObject);
var
  ALogFont: TLogFont;
  hFont: THandle;
begin
  ALogFont.lfHeight := Font.Height;
  ALogFont.lfWidth := 0;
  ALogFont.lfEscapement := -450;
  ALogFont.lfOrientation := -450;
  ALogFont.lfWeight := fw_DemiBold;
  ALogFont.lfItalic := 0; // false
  ALogFont.lfUnderline := 0; // false
  ALogFont.lfStrikeOut := 0; // false
  ALogFont.lfCharSet := Ansi_CharSet;
  ALogFont.lfOutPrecision := Out_Default_Precis;
  ALogFont.lfClipPrecision := Clip_Default_Precis;
  ALogFont.lfQuality := Default_Quality;
  ALogFont.lfPitchAndFamily := Default_Pitch;
  StrCopy (ALogFont.lfFaceName, PChar (Font.Name));
  hFont := CreateFontIndirect (ALogFont);
  Font.Handle := hFont;
end;

end.
