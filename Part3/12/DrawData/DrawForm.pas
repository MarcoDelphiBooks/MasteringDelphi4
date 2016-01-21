unit DrawForm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBTables, DB, Grids, DBGrids, ExtCtrls, StdCtrls, DBCtrls;

type
  TForm1 = class(TForm)
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Table1: TTable;
    Table1SpeciesNo: TFloatField;
    Table1Category: TStringField;
    Table1Common_Name: TStringField;
    Table1Lengthcm: TFloatField;
    Table1Notes: TMemoField;
    Table1Graphic: TGraphicField;
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
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

procedure TForm1.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  Code: Integer;
  Bmp: TBitmap;
begin
  // erase existing output
  DBGrid1.Canvas.FillRect (Rect);

  if Column.Field = Table1Graphic then
  begin
    // draw the image
    Bmp := TBitmap.Create;
    try
      Bmp.Assign (Table1Graphic);
      DBGrid1.Canvas.StretchDraw (Rect, Bmp);
    finally
      Bmp.Free;
    end;
  end
  else
  begin
    // choose the font color
    if (Column.Field = Table1Lengthcm) and
        (Table1Lengthcm.AsInteger > 100) then
      DBGrid1.Canvas.Font.Color := clRed
    else if gdSelected in State then
      DBGrid1.Canvas.Font.Color := clHighlightText
    else
      DBGrid1.Canvas.Font.Color := Column.Font.Color;
    // draw the standard text
    DBGrid1.Canvas.TextRect (
      Rect, Rect.Left, Rect.Top,
      Column.Field.AsString);
  end;

  // optionally draw the focus rectangle
  if gdFocused in State then
    DBGrid1.Canvas.DrawFocusRect (Rect);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Table1.Active := True;
end;

end.
