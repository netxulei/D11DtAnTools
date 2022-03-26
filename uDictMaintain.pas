unit uDictMaintain;

interface

uses
  U_DT, U_Common, Math, Winapi.Windows, Winapi.Messages, System.SysUtils,
  System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.Phys.MSSQL, FireDAC.Phys.MSSQLDef, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.Comp.UI,
  FireDAC.Phys.ODBCBase, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  Vcl.ExtCtrls, Vcl.DBCtrls, System.ImageList, Vcl.ImgList, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ComCtrls;

type
  TMyNavgator = class(TDBNavigator);

  TfrmDictMaintain = class(TForm)
    dsDictTypeMsDt: TDataSource;
    DBGridEhSrcTab: TDBGridEh;
    FDPhysMSSQLDriverLink1: TFDPhysMSSQLDriverLink;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    dsDictType: TDataSource;
    dsDictVal: TDataSource;
    DBGridEhSrcCol: TDBGridEh;
    flwpnlDt: TFlowPanel;
    dbnvgrDictVal: TDBNavigator;
    bitbtnValUp: TBitBtn;
    bitbtnValDown: TBitBtn;
    imgLstBtn: TImageList;
    flwpnlDictType: TFlowPanel;
    dbnvgrDictType: TDBNavigator;
    bitbtnTypeUp: TBitBtn;
    bitbtnTypeDown: TBitBtn;
    FDSchemaAdapterAll: TFDSchemaAdapter;
    flwpnlTop: TFlowPanel;
    bitbtnUndoOnce: TBitBtn;
    bitbtnUndoAll: TBitBtn;
    bitbtnExport: TBitBtn;
    bitbtnImport: TBitBtn;
    bitbtnSave: TBitBtn;
    bitbtnExit: TBitBtn;
    StatusBar1: TStatusBar;
    imgLstStat: TImageList;
    fdQryDictType: TFDQuery;
    fdQryDictVal: TFDQuery;
    fdQryDictValmodiState: TStringField;
    FlowPanel1: TFlowPanel;
    fdQryDictTypedict_type_id: TStringField;
    fdQryDictTypedict_type_name_cn: TStringField;
    fdQryDictTypedict_type_name_en: TStringField;
    fdQryDictTypedict_type_sort: TIntegerField;
    fdQryDictTypemodiState: TStringField;
    fdQryDictValdict_val_id: TStringField;
    fdQryDictValdict_type_id: TStringField;
    fdQryDictValdict_val: TStringField;
    fdQryDictValdict_lable: TStringField;
    fdQryDictValdict_val_sort: TIntegerField;
    fdQryDictTypedict_type_memo: TStringField;
    fdQryDictValdict_val_memo: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure dbnvgrDictTypeClick(Sender: TObject; Button: TNavigateBtn);
    procedure dbnvgrDictTypeBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure bitbtnUndoOnceClick(Sender: TObject);
    procedure OnDataChange(Sender: TObject; Field: TField);
    procedure bitbtnUndoAllClick(Sender: TObject);
    procedure bitbtnSaveClick(Sender: TObject);
    procedure StatusCalcFields(DataSet: TDataSet);
    procedure dbnvgrDictValBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure bitbtnTypeDownClick(Sender: TObject);
    procedure bitbtnTypeUpClick(Sender: TObject);
    procedure bitbtnValUpClick(Sender: TObject);
    procedure bitbtnValDownClick(Sender: TObject);
    procedure bitbtnExitClick(Sender: TObject);
    procedure fdQryDictTypeUpdateRecord(ASender: TDataSet; ARequest: TFDUpdateRequest; var AAction: TFDErrorAction; AOptions: TFDUpdateRowOptions);
    procedure fdQryDictValUpdateRecord(ASender: TDataSet; ARequest: TFDUpdateRequest; var AAction: TFDErrorAction; AOptions: TFDUpdateRowOptions);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private    { Private declarations }
    procedure CHNDBNavigator(ADBNavigator: TDBNavigator);
    procedure ToggleButtons(Enable: Boolean);
  public    { Public declarations }
  end;

var
  frmDictMaintain: TfrmDictMaintain;


implementation

{$R *.dfm}

procedure TfrmDictMaintain.dbnvgrDictTypeBeforeAction(Sender: TObject; Button: TNavigateBtn);
var
  max_sort: Integer;
begin
  if Button = nbInsert then
  begin

    // ����ȡ�����ţ�δ��sql�������Ϊδ����ʱ����ʹpost�������е�ֵ�޷�ȡ��
    with fdQryDictType do
    begin
      First;
      DisableControls;
      max_sort := 0;
      while not Eof do
      begin
        max_sort := Max(max_sort, fdQryDictType['Dict_type_sort']);
        Next;
      end;
      EnableControls;
    end;
    fdQryDictType.Append;
    fdQryDictType['Dict_type_id'] := getGUID; // �������ֶβ����޸�   ��������δ����֮ǰ���ӱ��޷����Ӽ�¼
    fdQryDictType['dict_type_sort'] := max_sort + 1;
    fdQryDictType.Post;
    DBGridEhSrcTab.SetFocus;
    Abort;
  end;

  if Button = nbDelete then
  begin
    if MessageBox(Handle, 'ɾ�����ֵ䣬��ͬʱɾ�����ֵ�����ֵ��ȷʵҪɾ��ô��', 'ϵͳ��ʾ', MB_YESNO or MB_ICONQUESTION) = ID_NO then
      Abort
    else
    begin
      fdQryDictType.Delete;
      Abort;
    end;
  end;

end;

procedure TfrmDictMaintain.dbnvgrDictTypeClick(Sender: TObject; Button: TNavigateBtn);
begin
  // showmessage(fdQryDictType['Dict_type_name_cn']);
  // case Button of
  // nbFirst:
  // ShowMessage('1��');
  // nbNext:
  // ShowMessage(fdQryDictType['Dict_type_name_cn']);
  /// /      fdQryDictType['Dict_type_name_cn']:='';
  // nbPrior:
  // ShowMessage('3');
  // nbLast:
  // ShowMessage('4');
  // nbDelete:
  // ShowMessage('5');
  // end;
end;

procedure TfrmDictMaintain.dbnvgrDictValBeforeAction(Sender: TObject; Button: TNavigateBtn);
var
  max_sort: Integer;
begin
  if Button = nbInsert then
  begin

    // ����ȡ�����ţ�δ��sql�������Ϊδ����ʱ����ʹpost�������е�ֵ�޷�ȡ��
    with fdQryDictVal do
    begin
      First;
      DisableControls;
      max_sort := 0;
      while not Eof do
      begin
        max_sort := Max(max_sort, fdQryDictVal['dict_val_sort']);
        Next;
      end;
      EnableControls;
    end;
    fdQryDictVal.Append;
    fdQryDictVal['dict_val_id'] := getGUID; // �������ֶβ����޸�   ��������δ����֮ǰ���ӱ��޷����Ӽ�¼
    fdQryDictVal['dict_val_sort'] := max_sort + 1;
    fdQryDictVal.Post;
    DBGridEhSrcCol.SetFocus;
    Abort;
  end;

end;

procedure TfrmDictMaintain.StatusCalcFields(DataSet: TDataSet);
begin
  case DataSet.UpdateStatus of
    // usUnmodified:
    // DataSet.Fields[0].AsString := 'δ��';
    // usModified:
    // DataSet.Fields[0].AsString := '�޸�';
    // usInserted:
    // DataSet.Fields[0].AsString := '����';
    // usDeleted:
    // DataSet.Fields[0].AsString := 'ɾ��';
    usUnmodified:
      DataSet.Fields[0].AsString := '0';
    usModified:
      DataSet.Fields[0].AsString := '1';
    usInserted:
      DataSet.Fields[0].AsString := '2';
    usDeleted:
      DataSet.Fields[0].AsString := '3';
  end;
end;

procedure TfrmDictMaintain.fdQryDictTypeUpdateRecord(ASender: TDataSet; ARequest: TFDUpdateRequest; var AAction: TFDErrorAction; AOptions: TFDUpdateRowOptions);
begin
  AAction := eaDefault;
end;

procedure TfrmDictMaintain.fdQryDictValUpdateRecord(ASender: TDataSet; ARequest: TFDUpdateRequest; var AAction: TFDErrorAction; AOptions: TFDUpdateRowOptions);
begin
  AAction := eaDefault;
end;

procedure TfrmDictMaintain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if FDSchemaAdapterAll.UpdatesPending then
  begin

    case MessageDlg('����޸�δ���棡������˳���', mtInformation, mbYesNoCancel, 0) of
      mrCancel:
        begin
          Abort;
        end;
      mrYes:
        begin
          bitbtnSaveClick(Sender);
        end;
      mrNo:
        begin

        end;
    end;
    fdQryDictType.close;
    fdQryDictVal.close;
  end;

end;

procedure TfrmDictMaintain.FormCreate(Sender: TObject);
begin
//  dict_list_col := '9DA1A56BB935419182BDAB4C86ABF003'; // ��Ϊ��ʱ������ʱҪ��ȡini�ļ�
{$IF CompilerVersion >= 30.0}
  FDSchemaAdapterAll.UpdateOptions.AutoCommitUpdates := True;
{$ENDIF}
  fdQryDictType.CachedUpdates := True;
  fdQryDictVal.CachedUpdates := True;
  fdQryDictType.Connection := F_DT.FDConSYS;
  fdQryDictVal.Connection := F_DT.FDConSYS;
  fdQryDictType.open();
  fdQryDictVal.open();
  CHNDBNavigator(dbnvgrDictType);
  CHNDBNavigator(dbnvgrDictVal);
end;

procedure TfrmDictMaintain.bitbtnTypeUpClick(Sender: TObject);
var
  bk: TBookmark;
  pre_sort, next_sort: Integer;
begin
  // ����
  if fdQryDictType.Eof then
  begin
    Exit;
  end;
  pre_sort := fdQryDictType['dict_type_sort'];
  bk := fdQryDictType.GetBookmark;
  fdQryDictType.Prior;
  if fdQryDictType.Bof then
  begin
    // MessageDlg('��һ�У��������ƣ�', mtInformation, [mbOK], 0);
    Exit;
  end;
  next_sort := fdQryDictType['dict_type_sort'];
  fdQryDictType.edit;
  fdQryDictType['dict_type_sort'] := pre_sort;
  fdQryDictType.GotoBookmark(bk);
  fdQryDictType.edit;
  fdQryDictType['dict_type_sort'] := next_sort;
  fdQryDictType.Post; // post�ܹؼ���������Ż���

end;

procedure TfrmDictMaintain.bitbtnExitClick(Sender: TObject);
begin
  close;
end;

procedure TfrmDictMaintain.bitbtnSaveClick(Sender: TObject);
var
  NumErrors: Integer;
  NumChanges: Integer;
begin
  // Ensure that all edits have been posted
  if fdQryDictType.State in dsEditModes then
    fdQryDictType.Post;
  if fdQryDictVal.State in dsEditModes then
    fdQryDictVal.Post;
  F_DT.FDConSYS.StartTransaction;
  try
{$IF CompilerVersion >= 29.0}
    NumChanges := FDSchemaAdapterAll.ChangeCount;
{$ELSE}
    NumChanges := -1;
{$ENDIF}
    NumErrors := FDSchemaAdapterAll.ApplyUpdates(-1);
    F_DT.FDConSYS.Commit;
    if NumErrors > 0 then
      StatusBar1.SimpleText := '��¼����δȫ������'
    else
      StatusBar1.SimpleText := NumChanges.ToString + ' ��¼�ѱ���';
  except
    F_DT.FDConSYS.Rollback;
  end;
  OnDataChange(nil, nil);
end;

procedure TfrmDictMaintain.bitbtnTypeDownClick(Sender: TObject);
var
  bk: TBookmark;
  pre_sort, next_sort: Integer;
begin
  // ����
  if fdQryDictType.Eof then
  begin
    Exit;
  end;
  pre_sort := fdQryDictType['dict_type_sort'];
  bk := fdQryDictType.GetBookmark;
  fdQryDictType.Next;
  if fdQryDictType.Eof then
  begin
    // MessageDlg('����У��������ƣ�', mtInformation, [mbOK], 0);
    Exit;
  end;
  next_sort := fdQryDictType['dict_type_sort'];
  fdQryDictType.edit;
  fdQryDictType['dict_type_sort'] := pre_sort;
  fdQryDictType.GotoBookmark(bk);
  fdQryDictType.edit;
  fdQryDictType['dict_type_sort'] := next_sort;
  fdQryDictType.Post; // post�ܹؼ���������Ż���

end;

procedure TfrmDictMaintain.bitbtnUndoAllClick(Sender: TObject);
begin
{$IF CompilerVersion >= 29.0}
  FDSchemaAdapterAll.CancelUpdates;
{$ENDIF}
  OnDataChange(nil, nil);
end;

procedure TfrmDictMaintain.bitbtnUndoOnceClick(Sender: TObject);
begin
{$IF CompilerVersion >= 29.0}
  FDSchemaAdapterAll.UndoLastChange;
{$ENDIF}
  OnDataChange(nil, nil);
end;

procedure TfrmDictMaintain.bitbtnValDownClick(Sender: TObject);
var
  bk: TBookmark;
  pre_sort, next_sort: Integer;
begin
  // ����
  if fdQryDictVal.Eof then
  begin
    Exit;
  end;
  pre_sort := fdQryDictVal['dict_val_sort'];
  bk := fdQryDictVal.GetBookmark;
  fdQryDictVal.Next;
  if fdQryDictVal.Eof then
  begin
    // MessageDlg('����У��������ƣ�', mtInformation, [mbOK], 0);
    Exit;
  end;
  next_sort := fdQryDictVal['dict_val_sort'];
  fdQryDictVal.edit;
  fdQryDictVal['dict_val_sort'] := pre_sort;
  fdQryDictVal.GotoBookmark(bk);
  fdQryDictVal.edit;
  fdQryDictVal['dict_val_sort'] := next_sort;
  fdQryDictVal.Post; // post�ܹؼ���������Ż���

end;

procedure TfrmDictMaintain.bitbtnValUpClick(Sender: TObject);
var
  bk: TBookmark;
  pre_sort, next_sort: Integer;
begin
  // ����
  if fdQryDictVal.Eof then
  begin
    Exit;
  end;

  pre_sort := fdQryDictVal['dict_val_sort'];
  bk := fdQryDictVal.GetBookmark;
  fdQryDictVal.Prior;
  if fdQryDictVal.Bof then
  begin
    // MessageDlg('��һ�У��������ƣ�', mtInformation, [mbOK], 0);
    Exit;
  end;
  next_sort := fdQryDictVal['dict_val_sort'];
  fdQryDictVal.edit;
  fdQryDictVal['dict_val_sort'] := pre_sort;
  fdQryDictVal.GotoBookmark(bk);
  fdQryDictVal.edit;
  fdQryDictVal['dict_val_sort'] := next_sort;
  fdQryDictVal.Post; // post�ܹؼ���������Ż���

end;

// �������ݿ⵼����caption��ʾ
procedure TfrmDictMaintain.CHNDBNavigator(ADBNavigator: TDBNavigator);
begin
  TMyNavgator(ADBNavigator).Buttons[nbFirst].Caption := '���� ';
  TMyNavgator(ADBNavigator).Buttons[nbPrior].Caption := '���� ';
  TMyNavgator(ADBNavigator).Buttons[nbNext].Caption := '���� ';
  TMyNavgator(ADBNavigator).Buttons[nbLast].Caption := 'ĩ�� ';
  TMyNavgator(ADBNavigator).Buttons[nbInsert].Caption := '��� ';
  TMyNavgator(ADBNavigator).Buttons[nbDelete].Caption := 'ɾ�� ';
  TMyNavgator(ADBNavigator).Buttons[nbEdit].Caption := '�޸� ';
  TMyNavgator(ADBNavigator).Buttons[nbPost].Caption := '�ύ ';
  TMyNavgator(ADBNavigator).Buttons[nbCancel].Caption := '���� ';
  TMyNavgator(ADBNavigator).Buttons[nbRefresh].Caption := 'ˢ�� ';
end;

procedure TfrmDictMaintain.OnDataChange(Sender: TObject; Field: TField);
begin
{$IF CompilerVersion >= 29.0}
  ToggleButtons(FDSchemaAdapterAll.UpdatesPending);
  if FDSchemaAdapterAll.UpdatesPending then
    StatusBar1.SimpleText := '����ǰ���� ' + FDSchemaAdapterAll.ChangeCount.ToString + ' ����¼�ı䡣�ֵ����ͱ���' + fdQryDictType.ChangeCount.ToString + ' �����ֵ�ֵ������' + fdQryDictVal.ChangeCount.ToString + '����'
  else
{$ENDIF}
    StatusBar1.SimpleText := '����ǰû�м�¼�ı�';
end;

procedure TfrmDictMaintain.ToggleButtons(Enable: Boolean);
begin
  bitbtnSave.Enabled := Enable;
  bitbtnUndoOnce.Enabled := Enable;
  bitbtnUndoAll.Enabled := Enable;
end;

end.

