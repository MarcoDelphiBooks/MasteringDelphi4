unit MtsCliF;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Grids, DBGrids, DBClient, MConnect;

type
  TForm1 = class(TForm)
    DCOMConnection1: TDCOMConnection;
    ClientDataSet1: TClientDataSet;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    procedure DCOMConnection1AfterConnect(Sender: TObject);
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

procedure TForm1.DCOMConnection1AfterConnect(Sender: TObject);
begin
  DCOMConnection1.AppServer.Hello;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  ClientDataSet1.Active := True;
end;

end.
