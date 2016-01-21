unit OfficeForm;

interface

uses
  SysUtils, Windows, Messages, Classes, Graphics,
  Controls, Forms, DBCtrls, StdCtrls, DBTables,
  ExtCtrls, Mask, Db, Dialogs, Excel_TLB, Word_TLB;

type
  TFormOff = class(TForm)
    DBEdit3: TDBEdit;
    Label3: TLabel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    DBNavigator1: TDBNavigator;
    Table1: TTable;
    DataSource1: TDataSource;
    BtnWord: TButton;
    BtnExcel: TButton;
    SaveDialog1: TSaveDialog;
    procedure BtnPrintClick(Sender: TObject);
    procedure BtnOpenClick(Sender: TObject);
  private
    IWord: Word_TLB._Application;
    IExcel: Excel_TLB._Application;
  end;

var
  FormOff: TFormOff;

implementation

{$R *.DFM}

uses
  ComObj, ActiveX;

procedure TFormOff.BtnPrintClick(Sender: TObject);
var
  Bookmark: TBookmark;
  IDocument: Word_TLB.Document;
  IRange: Word_TLB.Range;
  DocVar: variant;
  V1: OleVariant;
begin
  // create, show, add document
  IWord := Word_TLB.CoApplication_.Create;
  IWord.Visible := True;
  DocVar := IWord.Documents;
  DocVar.Add;
  IDocument := IWord.ActiveDocument;
  // insert title
  IRange := IWord.Selection.FormattedText;
  IRange.Text := 'American Capitals from ' + Table1.TableName + #13;
  IRange.Bold := 1;
  IRange.Font.Size := 30;

  // disable the UI
  Table1.DisableControls;
  try
    // store the current position
    Bookmark := Table1.GetBookmark;
    try
      // scan the database table
      Table1.First;
      while not Table1.EOF do
      begin
        // send the two fields
        // DocVar.Add; // adss a new doc
        V1 := NULL;
        IDocument.Paragraphs.Add (v1);
        IRange := IDocument.Paragraphs.Last.Range;
        IRange.Text :=
          Table1.FieldByName ('Name').AsString + #9 +
          Table1.FieldByName ('Capital').AsString + #13;
        Table1.Next;
      end;
    finally
      // go back to the bookmark and destroy it
      Table1.GotoBookmark (Bookmark);
      Table1.FreeBookmark (Bookmark);
    end;
  finally
    // re-enable the controls
    Table1.EnableControls;
  end;
  IRange := IDocument.Content;
  IDocument.Tables.Add (IRange, 0, 2);
end;

procedure TFormOff.BtnOpenClick(Sender: TObject);
var
  IRange: Excel_TLB.Range;
  I, Row: Integer;
  Bookmark: TBookmark;
begin
  // create and show
  IExcel := Excel_TLB.CoApplication_.Create;
  IExcel.Visible [0] := True;
  IExcel.Workbooks.Add (NULL, 0);
  // fill is the first row with field titles
  IRange := IExcel.ActiveCell;
  for I := 0 to Table1.Fields.Count - 1 do
  begin
    IRange.Value := Table1.Fields [I].DisplayLabel;
    IRange := IRange.Next;
  end;
  // add field data in following rows
  Table1.DisableControls;
  try
    Bookmark := Table1.GetBookmark;
    try
      Table1.First;
      Row := 2;
      while not Table1.EOF do
      begin
        IRange := IExcel.Range ['A' + IntToStr (Row),
          'A' + IntToStr (Row)];
        for I := 0 to Table1.Fields.Count - 1 do
        begin
          IRange.Value := Table1.Fields [I].AsString;
          IRange := IRange.Next;
        end;
        Table1.Next;
        Inc (Row);
      end;
    finally
      Table1.GotoBookmark (Bookmark);
      Table1.FreeBookmark (Bookmark);
    end;
  finally
    Table1.EnableControls;
  end;
  // format the section
  IRange := IExcel.Range ['A1', 'E' + IntToStr (Row - 1)];
  IRange.AutoFormat (1, NULL, NULL, NULL, NULL, NULL, NULL);
end;

initialization
  CoInitialize (nil);
end.
