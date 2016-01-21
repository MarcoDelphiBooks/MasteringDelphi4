unit MdsDm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComServ, ComObj, VCLCom, StdVcl, BdeProv, DataBkr, MdServer_TLB, Db,
  DBTables;

type
  TMdDataModule = class(TDataModule, IMdDataModule)
    TableCustomers: TTable;
    TableOrders: TTable;
  private
    { Private declarations }
  public
    { Public declarations }
  protected
    function Get_TableCustomers: IProvider; safecall;
    function Get_TableOrders: IProvider; safecall;
    procedure GetBoth(out Customer, Order: OleVariant); safecall;
  end;

var
  MdDataModule: TMdDataModule;

implementation

{$R *.DFM}

function TMdDataModule.Get_TableCustomers: IProvider;
begin
  Result := TableCustomers.Provider;
end;

function TMdDataModule.Get_TableOrders: IProvider;
begin
  Result := TableOrders.Provider;
end;

procedure TMdDataModule.GetBoth(out Customer, Order: OleVariant);
begin
  Customer := TableCustomers.Provider.Data;
  Order := TableOrders.Provider.Data;
end;

initialization
  TComponentFactory.Create(ComServer, TMdDataModule,
    Class_MdDataModule, ciMultiInstance);
end.
