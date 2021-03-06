unit RefForm;

interface

uses
  SysUtils, Windows, Messages, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, Menus, ImgList;

type
  TForm1 = class(TForm)
    ListView1: TListView;
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    Exit1: TMenuItem;
    View1: TMenuItem;
    LargeIcons1: TMenuItem;
    SmallIcons1: TMenuItem;
    List1: TMenuItem;
    Details1: TMenuItem;
    Help1: TMenuItem;
    About1: TMenuItem;
    N1: TMenuItem;
    CheckBoxes1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure LargeIcons1Click(Sender: TObject);
    procedure SmallIcons1Click(Sender: TObject);
    procedure List1Click(Sender: TObject);
    procedure Details1Click(Sender: TObject);
    procedure Exit1Click(Sender: TObject);
    procedure About1Click(Sender: TObject);
    procedure CheckBoxes1Click(Sender: TObject);
    procedure ListView1ColumnClick(Sender: TObject; Column: TListColumn);
    procedure ListView1Compare(Sender: TObject; Item1, Item2: TListItem;
      Data: Integer; var Compare: Integer);
    procedure ListView1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormDestroy(Sender: TObject);
  public
    { Public declarations }
  private
    nSortCol: Integer;
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}
{$R BITMAPS.RES}

uses
  StdCtrls;

procedure TForm1.FormCreate(Sender: TObject);
var
  ImageList1, ImageList2: TImageList;
  List: TStringList;
  NewItem: TListItem;
  I: Integer;
begin
  // stops warning message
  NewItem := nil;

  // load the large images
  ImageList1 := TImageList.Create (self);
  ImageList1.Height := 32;
  ImageList1.Width := 32;
  ImageList1.ResourceLoad (rtBitmap,
    'LargeImages', clWhite);
  ListView1.LargeImages := ImageList1;

  // load the small images
  ImageList2 := TImageList.Create (self);
  ImageList2.ResourceLoad (rtBitmap,
    'SmallImages', clWhite);
  ListView1.SmallImages := ImageList2;

  // load the items
  ListView1.Items.Clear;
  List := TStringList.Create;
  try
    List.LoadFromFile (
      ExtractFilePath (Application.ExeName) + 'Items.txt');
    for I := 0 to List.Count - 1 do
      if List [I][1] = #9 then
        NewItem.SubItems.Add (Trim (List [I]))
      else if List [I][1] = '@' then
        NewItem.ImageIndex := StrToIntDef (List [I][2], 0)
      else
      begin
        // a new item
        NewItem := ListView1.Items.Add;
        NewItem.Caption := List [I];
      end;
  finally
    List.Free;
  end;
end;

procedure TForm1.LargeIcons1Click(Sender: TObject);
begin
  ListView1.ViewStyle := vsIcon;
  LargeIcons1.Checked := True;
end;

procedure TForm1.SmallIcons1Click(Sender: TObject);
begin
  ListView1.ViewStyle := vsSmallIcon;
  SmallIcons1.Checked := True;
end;

procedure TForm1.List1Click(Sender: TObject);
begin
  ListView1.ViewStyle := vsList;
  List1.Checked := True;
end;

procedure TForm1.Details1Click(Sender: TObject);
begin
  ListView1.ViewStyle := vsReport;
  Details1.Checked := True;
end;

procedure TForm1.Exit1Click(Sender: TObject);
begin
  Close;
end;

procedure TForm1.About1Click(Sender: TObject);
begin
  MessageDlg ('Reference List (ListView example)' +
    #13'from "Mastering Delphi"'#13'author: Marco Cant�',
    mtInformation, [mbOk], 0);
end;

procedure TForm1.CheckBoxes1Click(Sender: TObject);
begin
  ListView1.Checkboxes :=
    not ListView1.Checkboxes;
  CheckBoxes1.Checked :=
    not CheckBoxes1.Checked;
end;

procedure TForm1.ListView1ColumnClick(Sender: TObject;
  Column: TListColumn);
begin
  nSortCol := Column.Index;
  ListView1.AlphaSort;
end;

procedure TForm1.ListView1Compare(Sender: TObject;
  Item1, Item2: TListItem;
  Data: Integer; var Compare: Integer);
begin
  if nSortCol = 0 then
    Compare := CompareStr (Item1.Caption, Item2.Caption)
  else
    Compare := CompareStr (Item1.SubItems [nSortCol - 1],
       Item2.SubItems [nSortCol - 1]);
end;

procedure TForm1.ListView1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
  strDescr: string;
  I: Integer;
begin
  // if there is a selected item
  if ListView1.Selected <> nil then
    if Button = mbLeft then
    begin
      // create and show a description
      strDescr := ListView1.Columns [0].Caption + #9 +
        ListView1.Selected.Caption + #13;
      for I := 1 to ListView1.Selected.SubItems.Count do
        strDescr := strDescr + ListView1.Columns [I].Caption + #9 +
          ListView1.Selected.SubItems [I-1] + #13;
      ShowMessage (strDescr);
    end
    else if Button = mbRight then
      // edit the caption
      ListView1.Selected.EditCaption;
end;

procedure TForm1.FormDestroy(Sender: TObject);
var
  I, J: Integer;
  List: TStringList;
begin
  // store the items
  List := TStringList.Create;
  try
    for I := 0 to ListView1.Items.Count - 1 do
    begin
      // save the caption
      List.Add (ListView1.Items[I].Caption);
      // save the index
      List.Add ('@' + IntToStr (ListView1.Items[I].ImageIndex));
      // save the subitems (indented)
      for J := 0 to ListView1.Items[I].SubItems.Count - 1 do
        List.Add (#9 + ListView1.Items[I].SubItems [J]);
    end;
    List.SaveToFile (
      ExtractFilePAth (Application.ExeName) + 'Items.txt');
  finally
    List.Free;
  end;
end;

end.
