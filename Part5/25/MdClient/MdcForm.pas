unit MdcForm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Grids, DBGrids, Db, DBClient, StdCtrls, MConnect, MidasCon;

type
  TForm1 = class(TForm)
    ClientDataSet1: TClientDataSet;
    ClientDataSet2: TClientDataSet;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    Splitter1: TSplitter;
    DBGrid2: TDBGrid;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    Button1: TButton;
    DCOMConnection1: TDCOMConnection;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

procedure TForm1.Button1Click(Sender: TObject);
var
  Customers, Orders: Variant;
begin
  DCOMConnection1.Connected := True;
  DCOMConnection1.AppServer.GetBoth (
    Customers, Orders);
  ClientDataSet1.Data := Customers;
  ClientDataSet2.Data := Orders;
  ClientDataSet1.Open;
  ClientDataSet2.Open;
end;

end.
