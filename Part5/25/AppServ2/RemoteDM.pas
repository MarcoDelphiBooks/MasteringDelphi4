unit RemoteDM;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComServ, ComObj, VCLCom, StdVcl, BdeProv, DataBkr, AppServ2_TLB, Db,
  DBTables;

type
  TRdmCount = class(TDataModule, IRdmCount)
    Table1: TTable;
    Table1Name: TStringField;
    Table1Capital: TStringField;
    Table1Continent: TStringField;
    Table1Area: TFloatField;
    Table1Population: TFloatField;
  private
    { Private declarations }
  public
    { Public declarations }
  protected
    function Get_Table1: IProvider; safecall;
  end;

var
  RdmCount: TRdmCount;

implementation

{$R *.DFM}

function TRdmCount.Get_Table1: IProvider;
begin
  Result := Table1.Provider;
end;

initialization
  TComponentFactory.Create(ComServer, TRdmCount,
    Class_RdmCount, ciMultiInstance);
end.
