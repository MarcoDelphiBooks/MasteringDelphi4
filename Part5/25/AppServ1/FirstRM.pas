unit FirstRM;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComServ, ComObj, VCLCom, StdVcl, BdeProv, DataBkr, AppServ1_TLB, Db,
  DBTables;

type
  TMdFirstRM = class(TDataModule, IMdFirstRM)
    Table1: TTable;
  private
    { Private declarations }
  public
    { Public declarations }
  protected
    function Get_Table1: IProvider; safecall;
  end;

var
  MdFirstRM: TMdFirstRM;

implementation

{$R *.DFM}

function TMdFirstRM.Get_Table1: IProvider;
begin
  Result := Table1.Provider;
end;

initialization
  TComponentFactory.Create(ComServer, TMdFirstRM,
    Class_MdFirstRM, ciMultiInstance);
end.
