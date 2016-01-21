unit ListAct;

interface

uses
  ActnList, Classes, StdCtrls;

type
  TListAction = class (TAction)
  public
    function HandlesTarget (Target: TObject): Boolean; override;
    procedure UpdateTarget (Target: TObject); override;
  end;

  TListCutAction = class (TListAction)
  public
    procedure ExecuteTarget(Target: TObject); override;
  end;

  TListCopyAction = class (TListAction)
  public
    procedure ExecuteTarget(Target: TObject); override;
  end;

  TListPasteAction = class (TListAction)
  public
    procedure UpdateTarget (Target: TObject); override;
    procedure ExecuteTarget (Target: TObject); override;
  end;

procedure Register;

implementation

uses
  Windows, Clipbrd;

function TListAction.HandlesTarget (Target: TObject): Boolean;
begin
  Result := (Target is TListBox) and
    TListBox(Target).Focused;
end;

procedure TListAction.UpdateTarget(Target: TObject);
begin
  Enabled := ((Target as TListBox).Items.Count > 0) and
    ((Target as TListBox).ItemIndex >= 0);
end;

procedure TListCopyAction.ExecuteTarget(Target: TObject);
begin
  with Target as TListBox do
    Clipboard.AsText := Items [ItemIndex];
end;

procedure TListCutAction.ExecuteTarget(Target: TObject);
begin
  with Target as TListBox do
  begin
    Clipboard.AsText := Items [ItemIndex];
    Items.Delete (ItemIndex);
  end;
end;

procedure TListPasteAction.ExecuteTarget(Target: TObject);
begin
  (Target as TListBox).Items.Add (Clipboard.AsText);
end;

procedure TListPasteAction.UpdateTarget(Target: TObject);
begin
  Enabled := Clipboard.HasFormat (CF_TEXT);
end;

procedure Register;
begin
  RegisterActions ('ListBox',
    [TListCutAction, TListCopyAction, TListPasteAction],
    nil);
end;

end.
