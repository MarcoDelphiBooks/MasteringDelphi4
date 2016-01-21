unit Local;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ActiveX, AxCtrls, AfLocal_TLB, Grids, DBGrids, Db, DBTables, ExtCtrls;

type
  TActiveLocalData = class(TActiveForm, IActiveLocalData)
    Table1: TTable;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
  private
    { Private declarations }
    FEvents: IActiveLocalDataEvents;
    procedure ActivateEvent(Sender: TObject);
    procedure ClickEvent(Sender: TObject);
    procedure CreateEvent(Sender: TObject);
    procedure DblClickEvent(Sender: TObject);
    procedure DeactivateEvent(Sender: TObject);
    procedure DestroyEvent(Sender: TObject);
    procedure KeyPressEvent(Sender: TObject; var Key: Char);
    procedure PaintEvent(Sender: TObject);
  protected
    { Protected declarations }
    procedure EventSinkChanged(const EventSink: IUnknown); override;
    procedure Initialize; override;
    function Get_Active: WordBool; safecall;
    function Get_AutoScroll: WordBool; safecall;
    function Get_AxBorderStyle: TxActiveFormBorderStyle; safecall;
    function Get_Caption: WideString; safecall;
    function Get_Color: TColor; safecall;
    function Get_Cursor: Smallint; safecall;
    function Get_DropTarget: WordBool; safecall;
    function Get_Enabled: WordBool; safecall;
    function Get_Font: Font; safecall;
    function Get_HelpFile: WideString; safecall;
    function Get_KeyPreview: WordBool; safecall;
    function Get_PixelsPerInch: Integer; safecall;
    function Get_PrintScale: TxPrintScale; safecall;
    function Get_Scaled: WordBool; safecall;
    function Get_Visible: WordBool; safecall;
    function Get_WindowState: TxWindowState; safecall;
    procedure Set_AutoScroll(Value: WordBool); safecall;
    procedure Set_AxBorderStyle(Value: TxActiveFormBorderStyle); safecall;
    procedure Set_Caption(const Value: WideString); safecall;
    procedure Set_Color(Value: TColor); safecall;
    procedure Set_Cursor(Value: Smallint); safecall;
    procedure Set_DropTarget(Value: WordBool); safecall;
    procedure Set_Enabled(Value: WordBool); safecall;
    procedure Set_Font(const Value: Font); safecall;
    procedure Set_HelpFile(const Value: WideString); safecall;
    procedure Set_KeyPreview(Value: WordBool); safecall;
    procedure Set_PixelsPerInch(Value: Integer); safecall;
    procedure Set_PrintScale(Value: TxPrintScale); safecall;
    procedure Set_Scaled(Value: WordBool); safecall;
    procedure Set_Visible(Value: WordBool); safecall;
    procedure Set_WindowState(Value: TxWindowState); safecall;
  public
    { Public declarations }
  end;

implementation

uses ComServ;

{$R *.DFM}

{ TActiveLocalData }

procedure TActiveLocalData.EventSinkChanged(const EventSink: IUnknown);
begin
  FEvents := EventSink as IActiveLocalDataEvents;
end;

procedure TActiveLocalData.Initialize;
begin
  OnActivate := ActivateEvent;
  OnClick := ClickEvent;
  OnCreate := CreateEvent;
  OnDblClick := DblClickEvent;
  OnDeactivate := DeactivateEvent;
  OnDestroy := DestroyEvent;
  OnKeyPress := KeyPressEvent;
  OnPaint := PaintEvent;
end;

function TActiveLocalData.Get_Active: WordBool;
begin
  Result := Active;
end;

function TActiveLocalData.Get_AutoScroll: WordBool;
begin
  Result := AutoScroll;
end;

function TActiveLocalData.Get_AxBorderStyle: TxActiveFormBorderStyle;
begin
  Result := Ord(AxBorderStyle);
end;

function TActiveLocalData.Get_Caption: WideString;
begin
  Result := WideString(Caption);
end;

function TActiveLocalData.Get_Color: TColor;
begin
  Result := Color;
end;

function TActiveLocalData.Get_Cursor: Smallint;
begin
  Result := Smallint(Cursor);
end;

function TActiveLocalData.Get_DropTarget: WordBool;
begin
  Result := DropTarget;
end;

function TActiveLocalData.Get_Enabled: WordBool;
begin
  Result := Enabled;
end;

function TActiveLocalData.Get_Font: Font;
begin
  GetOleFont(Font, Result);
end;

function TActiveLocalData.Get_HelpFile: WideString;
begin
  Result := WideString(HelpFile);
end;

function TActiveLocalData.Get_KeyPreview: WordBool;
begin
  Result := KeyPreview;
end;

function TActiveLocalData.Get_PixelsPerInch: Integer;
begin
  Result := PixelsPerInch;
end;

function TActiveLocalData.Get_PrintScale: TxPrintScale;
begin
  Result := Ord(PrintScale);
end;

function TActiveLocalData.Get_Scaled: WordBool;
begin
  Result := Scaled;
end;

function TActiveLocalData.Get_Visible: WordBool;
begin
  Result := Visible;
end;

function TActiveLocalData.Get_WindowState: TxWindowState;
begin
  Result := Ord(WindowState);
end;

procedure TActiveLocalData.Set_AutoScroll(Value: WordBool);
begin
  AutoScroll := Value;
end;

procedure TActiveLocalData.Set_AxBorderStyle(
  Value: TxActiveFormBorderStyle);
begin
  AxBorderStyle := TActiveFormBorderStyle(Value);
end;

procedure TActiveLocalData.Set_Caption(const Value: WideString);
begin
  Caption := TCaption(Value);
end;

procedure TActiveLocalData.Set_Color(Value: TColor);
begin
  Color := Value;
end;

procedure TActiveLocalData.Set_Cursor(Value: Smallint);
begin
  Cursor := TCursor(Value);
end;

procedure TActiveLocalData.Set_DropTarget(Value: WordBool);
begin
  DropTarget := Value;
end;

procedure TActiveLocalData.Set_Enabled(Value: WordBool);
begin
  Enabled := Value;
end;

procedure TActiveLocalData.Set_Font(const Value: Font);
begin
  SetOleFont(Font, Value);
end;

procedure TActiveLocalData.Set_HelpFile(const Value: WideString);
begin
  HelpFile := String(Value);
end;

procedure TActiveLocalData.Set_KeyPreview(Value: WordBool);
begin
  KeyPreview := Value;
end;

procedure TActiveLocalData.Set_PixelsPerInch(Value: Integer);
begin
  PixelsPerInch := Value;
end;

procedure TActiveLocalData.Set_PrintScale(Value: TxPrintScale);
begin
  PrintScale := TPrintScale(Value);
end;

procedure TActiveLocalData.Set_Scaled(Value: WordBool);
begin
  Scaled := Value;
end;

procedure TActiveLocalData.Set_Visible(Value: WordBool);
begin
  Visible := Value;
end;

procedure TActiveLocalData.Set_WindowState(Value: TxWindowState);
begin
  WindowState := TWindowState(Value);
end;

procedure TActiveLocalData.ActivateEvent(Sender: TObject);
var
  ModuleName: string;
begin
  if FEvents <> nil then
    FEvents.OnActivate;
  // specific code
  SetLength (ModuleName, 1000);
  GetModuleFileName (HInstance, pChar (ModuleName), 1000);
  Table1.DatabaseName := ExtractFilePath (PChar (ModuleName));
  Panel1.Caption := Table1.DatabaseName +
    '/' + Table1.TableName;
  Table1.Open;
end;

procedure TActiveLocalData.ClickEvent(Sender: TObject);
begin
  if FEvents <> nil then FEvents.OnClick;
end;

procedure TActiveLocalData.CreateEvent(Sender: TObject);
begin
  if FEvents <> nil then FEvents.OnCreate;
end;

procedure TActiveLocalData.DblClickEvent(Sender: TObject);
begin
  if FEvents <> nil then FEvents.OnDblClick;
end;

procedure TActiveLocalData.DeactivateEvent(Sender: TObject);
begin
  if FEvents <> nil then FEvents.OnDeactivate;
end;

procedure TActiveLocalData.DestroyEvent(Sender: TObject);
begin
  if FEvents <> nil then FEvents.OnDestroy;
end;

procedure TActiveLocalData.KeyPressEvent(Sender: TObject; var Key: Char);
var
  TempKey: Smallint;
begin
  TempKey := Smallint(Key);
  if FEvents <> nil then FEvents.OnKeyPress(TempKey);
  Key := Char(TempKey);
end;

procedure TActiveLocalData.PaintEvent(Sender: TObject);
begin
  if FEvents <> nil then FEvents.OnPaint;
end;

initialization
  TActiveFormFactory.Create(
    ComServer,
    TActiveFormControl,
    TActiveLocalData,
    Class_ActiveLocalData,
    1,
    '',
    OLEMISC_SIMPLEFRAME or OLEMISC_ACTSLIKELABEL);
end.
