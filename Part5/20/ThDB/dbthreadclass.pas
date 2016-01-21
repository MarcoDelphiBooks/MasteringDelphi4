unit dbthreadclass;

interface

uses
  Classes;

type
  TDatabaseThread = class(TThread)
  private
    { Private declarations }
    NewCaption: string;
  protected
    procedure Execute; override;
    procedure UpdateCaption;
  end;

implementation

uses
  FormDbThread, ThreadedModule, SysUtils;

procedure TDatabaseThread.UpdateCaption;
begin
  Form1.Caption := NewCaption;
end;

procedure TDatabaseThread.Execute;
var
  Tot: double;
begin
  while not Terminated do
  begin
    Tot := 0;
    with DataModule2.Table1 do
    begin
      Open;
      First;
      while not EOF do
      begin
        Tot := Tot + FieldByName('Population').AsFloat;
        Next;
      end;
      Close;
    end;
    NewCaption := 'Population ' + FloatToStr (Tot);
    Synchronize (UpdateCaption);
    Suspend;
  end; // while
end;

end.
