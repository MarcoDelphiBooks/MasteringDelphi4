unit formDbThread;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Grids, DBGrids, DBTables, StdCtrls, dbthreadclass;

type
  TForm1 = class(TForm)
    Table1: TTable;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Table1Name: TStringField;
    Table1Capital: TStringField;
    Table1Continent: TStringField;
    Table1Area: TFloatField;
    Table1Population: TFloatField;
    procedure Table1AfterPost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    Th1: TDatabaseThread;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

procedure TForm1.Table1AfterPost(DataSet: TDataSet);
begin
  if Th1.Suspended then
    Th1.Resume
  else
  begin
    Th1.Free;
    Th1 := TDatabaseThread.Create (True);
    Th1.Priority := tpLowest;
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Th1 := TDatabaseThread.Create (True);
  Th1.Priority := tpLowest;
end;

end.
