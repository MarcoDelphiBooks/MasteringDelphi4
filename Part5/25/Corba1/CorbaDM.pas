unit CorbaDM;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComObj, VCLCom, StdVcl, BdeProv, DataBkr, CorbaRdm, CorbaObj,
  Corba1_TLB, Db, DBTables;

type

  TFirstCorba = class(TCorbaDataModule, IFirstCorba)
    Table1: TTable;
  private
    { Private declarations }
  public
    { Public declarations }
  protected
    function Get_Table1: IProvider; safecall;
  end;

var
  FirstCorba: TFirstCorba;

implementation

{$R *.DFM}

uses CorbInit, CorbaVcl;

function TFirstCorba.Get_Table1: IProvider;
begin
  Result := Table1.Provider;
end;

initialization
  TCorbaVclComponentFactory.Create('FirstCorbaFactory', 'FirstCorba', 'IDL:Corba1/FirstCorbaFactory:1.0', IFirstCorba,
    TFirstCorba, iMultiInstance, tmSingleThread);
end.
