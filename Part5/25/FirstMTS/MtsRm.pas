unit MtsRm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComServ, ComObj, VCLCom, StdVcl, BdeProv, BdeMts, DataBkr, DBClient,
  MtsRdm, Mtx, MtsPrj_TLB, Db, DBTables;

type
  TFirstMTS = class(TMtsDataModule, IFirstMTS)
    Table1: TTable;
  private
    { Private declarations }
  public
    { Public declarations }
  protected
    procedure Hello; safecall;
    function Get_Table1: IProvider; safecall;
  end;

var
  FirstMTS: TFirstMTS;

implementation

{$R *.DFM}

procedure TFirstMTS.Hello;
begin
  Beep;
end;

function TFirstMTS.Get_Table1: IProvider;
begin
  Result := Table1.Provider;
end;

initialization
  TComponentFactory.Create(ComServer, TFirstMTS,
    Class_FirstMTS, ciMultiInstance, tmApartment);
end.