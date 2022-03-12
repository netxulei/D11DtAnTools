unit U_item;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxCustomData, cxStyles, cxTL, cxMaskEdit,
  cxInplaceContainer, cxDBTL, cxControls, cxTLData, DB, ADODB, StdCtrls,
  Buttons, ImgList, Menus, cxContainer, cxEdit, cxTextEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, ExtCtrls,
  cxSplitter, cxMemo, cxDBEdit, cxNavigator, cxDBNavigator, StrUtils,
  cxCheckBox, Mask, DBCtrlsEh, U_Common, cxLookAndFeels, cxLookAndFeelPainters,
  cxTLdxBarBuiltInMenu, dxSkinsCore, dxSkinsDefaultPainters, System.ImageList;

type
  Tf_item = class(TForm)
    ADOqr1: TADOQuery;
    ds1: TDataSource;
    btn1: TBitBtn;
    btn2: TBitBtn;
    cxdbtrlst1: TcxDBTreeList;
    cxdbtrlstclmn_name: TcxDBTreeListColumn;
    cxdbtrlstclmn_order: TcxDBTreeListColumn;
    ImageList1: TImageList;
    pm1: TPopupMenu;
    N24: TMenuItem;
    N25: TMenuItem;
    ADOqr2: TADOQuery;
    cxspltr1: TcxSplitter;
    pnl1: TPanel;
    pnl6: TPanel;
    btn6: TBitBtn;
    btn7: TBitBtn;
    btn4: TBitBtn;
    btn8: TBitBtn;
    ds2: TDataSource;
    cxdbm1: TcxDBMemo;
    btn3: TBitBtn;
    btn5: TBitBtn;
    cxdbnvgtr1: TcxDBNavigator;
    ADOqrtmp: TADOQuery;
    pnl2: TPanel;
    lbl1: TLabel;
    cxdbtxtdt2: TcxDBTextEdit;
    lbl6: TLabel;
    cxdblk1: TcxDBLookupComboBox;
    lbl3: TLabel;
    cxdbtxtdt3: TcxDBTextEdit;
    lbl7: TLabel;
    cbbt_type: TDBComboBoxEh;
    grp1: TGroupBox;
    cxdbchckbx1: TcxDBCheckBox;
    cxdbchckbx2: TcxDBCheckBox;
    cxdbchckbx3: TcxDBCheckBox;
    cxdbchckbx4: TcxDBCheckBox;
    lbl4: TLabel;
    cxdbtxtdt4: TcxDBTextEdit;
    lbl5: TLabel;
    lbl2: TLabel;
    cxdbtxtdt1: TcxDBTextEdit;
    procedure FormCreate(Sender: TObject);
    procedure N24Click(Sender: TObject);
    procedure N25Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure btn7Click(Sender: TObject);
    procedure btn8Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure lbl4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure pnl1Resize(Sender: TObject);
    procedure cxdbtrlst1GetNodeImageIndex(Sender: TcxCustomTreeList;
      ANode: TcxTreeListNode; AIndexType: TcxTreeListImageIndexType;
      var AIndex: TImageIndex);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_item: Tf_item;

implementation

uses U_DT;

{$R *.dfm}

procedure Tf_item.FormCreate(Sender: TObject);
var
  h: HWND;
  hm: HMENU;
begin
  cxdblk1.Width := pnl1.Width - cxdblk1.Left - 2;
  cxdbtxtdt3.Width := pnl1.Width - cxdbtxtdt3.Left - 2;
  cxdbtxtdt4.Width := pnl1.Width - cxdbtxtdt4.Left - 2;
  cxdbtxtdt1.Width := pnl1.Width - cxdbtxtdt1.Left - 2;
  cxdbm1.Width := pnl1.Width - cxdbm1.Left - 2;
  cxdbm1.Height := pnl1.Height - cxdbm1.Top - 2;

  h := Self.Handle;
  hm := GetSystemMenu(h, False);
  EnableMenuItem(hm, SC_CLOSE, MF_DISABLED);

  ADOqr1.close;
  ADOqr1.DisableControls;
  ADOqr1.Connection := F_DT.ADOCN1;
  ADOqr1.CursorLocation := clUseClient;
  ADOqr1.CursorType := ctStatic;
  ADOqr1.LockType := ltBatchOptimistic;
  ADOqr1.SQL.Clear;
  ADOqr1.SQL.Add('SELECT * FROM "X_menus" order by t_order');
  ADOqr1.Prepared;
  ADOqr1.Open;
  ADOqr1.enableControls;

  ADOqr2.close;
  ADOqr2.DisableControls;
  ADOqr2.Connection := F_DT.ADOCN1;
  ADOqr2.SQL.Clear;
  ADOqr2.SQL.Add
    ('SELECT t_id,t_name,t_order FROM  "X_menus" where t_parent_id=0 or t_name like '
    + '''' + '%.%' + '''' + ' or t_name like ' + '''' + '%��%' + '''' +
    ' union SELECT 0,' + '''' + '======' + '''' + ',0 ' +
    'FROM "X_menus" order by t_order');
  ADOqr2.Prepared;
  ADOqr2.Open;
  ADOqr2.enableControls;
  // cxdbtrlst1.FullExpand;
end;

procedure Tf_item.N24Click(Sender: TObject);
begin
  cxdbtrlst1.FullExpand;
end;

procedure Tf_item.N25Click(Sender: TObject);
begin
  cxdbtrlst1.FullCollapse;
end;

procedure Tf_item.btn4Click(Sender: TObject);
begin
  if Application.MessageBox('ȡ���������޸���', 'ע��', MB_YESNO + MB_ICONWARNING) = IDNO
  then
  begin
    exit;
  end;
  ADOqr1.CancelBatch(arAll);
end;

procedure Tf_item.btn6Click(Sender: TObject);
begin
  if Application.MessageBox('�����������޸���', 'ע��', MB_YESNO + MB_ICONWARNING) = IDNO
  then
  begin
    exit;
  end;
  ADOqr1.UpdateBatch(arAll);
  ADOqr1.close;
  ADOqr2.close;
  ADOqr1.Open;
  ADOqr2.Open;
  // cxdbtrlst1.FullExpand;
  // ADOqr1.Close;
  // close;
end;

procedure Tf_item.btn7Click(Sender: TObject);
begin
  if Application.MessageBox('ȡ���������޸Ĳ�������', 'ע��', MB_YESNO + MB_ICONWARNING) = IDNO
  then
  begin
    exit;
  end;
  ADOqr1.CancelBatch(arAll);
  ADOqr1.close;
  ADOqr2.close;
  close;
end;

procedure Tf_item.btn8Click(Sender: TObject);
begin
  if Application.MessageBox('�����������޸Ĳ�������', 'ע��', MB_YESNO + MB_ICONWARNING) = IDNO
  then
  begin
    exit;
  end;
  ADOqr1.UpdateBatch(arAll);
  ADOqr1.close;
  ADOqr2.close;
  close;
end;

procedure Tf_item.cxdbtrlst1GetNodeImageIndex(Sender: TcxCustomTreeList;
  ANode: TcxTreeListNode; AIndexType: TcxTreeListImageIndexType;
  var AIndex: TImageIndex);
begin
  if AIndexType = tlitStateIndex then
    exit;

  if ANode.Level = 0 then
  begin
    AIndex := 0;
    if ANode.Expanded then
      AIndex := 1;
  end
  else
    AIndex := 2;
  if ANode.HotTrack then
    if ANode.Level = 0 then
      AIndex := 1
    else
      AIndex := 0;
end;

procedure Tf_item.btn3Click(Sender: TObject);
var
  i, ii_max: Integer;
begin
  ADOqrtmp.close;
  ADOqrtmp.DisableControls;
  ADOqrtmp.Connection := F_DT.ADOCN1;
  ADOqrtmp.SQL.Clear;
  ADOqrtmp.SQL.Add('SELECT max(t_id) as i_max FROM "X_menus"');
  ADOqrtmp.Prepared;
  ADOqrtmp.Open;
  ADOqrtmp.enableControls;
  ADOqrtmp.First;
  if not ADOqrtmp.Eof then
    ii_max := ADOqrtmp.FieldByName('i_max').AsInteger
  else
    ii_max := 0;
  ADOqrtmp.DisableControls;
  ADOqrtmp.close;

  cxdbtrlst1.DataController.DataSource := nil;
  ADOqr1.Append;
  ADOqr1.FieldByName('t_name').AsString := '��������:';
  ADOqr1.FieldByName('t_memo').AsString := '����������';
  ADOqr1.FieldByName('t_para').AsString := '@��ʾ1!��������1:Ĭ��ֵ1@��ʾ2!��������2:Ĭ��ֵ2';
  ADOqr1.FieldByName('t_proc').AsString := 'CREATE PROCEDURE      AS' + #13 +
    'BEGIN' + #13#13 + 'END' + #13 + 'GO';
  ADOqr1.FieldByName('t_parent_id').AsInteger := 0;
  ADOqr1.FieldByName('t_id').AsInteger := ii_max + 1;
  ADOqr1.FieldByName('t_order').AsInteger := ii_max + 1;
  ADOqr1.FieldByName('t_table1').AsString := '1';
  ADOqr1.FieldByName('t_table2').AsString := '1';
  ADOqr1.FieldByName('t_auto').AsString := '0';
  ADOqr1.FieldByName('t_hide').AsString := '1';
  ADOqr1.FieldByName('t_type').AsString := t_type;
  ADOqr1.UpdateBatch(arAll);
  cxdbtrlst1.DataController.DataSource := ds1;
end;

procedure Tf_item.btn5Click(Sender: TObject);
var
  ii, i_t_id: Integer;
  s_tauto: string;
begin
  s_tauto := ADOqr1.FieldByName('t_auto').AsString;
  if s_tauto = '1' then
  begin
    MessageDlg('�Զ�ִ�еĹ��ܣ�������ɾ����', mtInformation, [mbOK], 0);
    exit;
  end;
  i_t_id := ADOqr1.FieldByName('t_id').AsInteger;
  ADOqrtmp.close;
  ADOqrtmp.DisableControls;
  ADOqrtmp.Connection := F_DT.ADOCN1;
  ADOqrtmp.SQL.Clear;
  ADOqrtmp.SQL.Add
    ('SELECT count(*) as i_count FROM "X_menus" where t_parent_id=:ii_id');
  ADOqrtmp.Parameters.ParamByName('ii_id').Value := i_t_id;
  ADOqrtmp.Prepared;
  ADOqrtmp.Open;
  ADOqrtmp.enableControls;
  ii := ADOqrtmp.FieldByName('i_count').AsInteger;
  ADOqrtmp.DisableControls;
  ADOqrtmp.close;
  if ii > 0 then
  begin
    MessageDlg('�������û�й���ʱ����ɾ����', mtInformation, [mbOK], 0);
    exit;
  end;
  if Application.MessageBox('ɾ�����ָܻ�����ȷ�ϣ�', 'ע��', MB_OKCANCEL + MB_ICONWARNING)
    = IDCANCEL then
  begin
    exit;
  end;
  ADOqr1.Delete;
  ADOqr1.UpdateBatch(arAll);
  // ͬʱɾ���洢���� ,ע��try except����ͬ��

end;

procedure Tf_item.lbl4Click(Sender: TObject);
begin
  MessageDlg(#13 + #9 + '���ֶ�����������ִ�в�ѯ����ʱ��ʾ��Ҫ����Ĳ�����' + #13 + #9 +
    '����������������ж���Ĳ���������һ�¡�' + #13 + #9 + 'ÿ��������Ϊ��ʾ���������ͺ�Ĭ��ֵ�������֣�' + #13 + #9 +
    '�ֱ���Ӣ���ַ���@������!������:����ͷ��' + #13 + #9 + '��:��@��ʾ1!��������1:Ĭ��ֵ1@��ʾ2!��������2:Ĭ��ֵ2��' +
    #13 + #9 + '����ʾ��������ִ�в�ѯʱ��ʾ�û���Ҫ����ʲô������' + #13 + #9 +
    '���������͡������ж��û�����Ĳ��������Ƿ���ȷ��' + #13 + #9 + '  ��������ֻ���ǡ�N������D������S�����ֱ��ʾ���֡����ں��ַ�'
    + #13 + #9 + '��Ĭ��ֵ�������ڳ������Զ���������ֵ', mtInformation, [mbOK], 0);
end;

procedure Tf_item.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  ADOqr1.close;
  ADOqr2.close;
  ADOqrtmp.close;
  Action := caFree
end;

procedure Tf_item.pnl1Resize(Sender: TObject);
begin
  cxdblk1.Width := pnl1.Width - cxdblk1.Left - 2;
  cxdbtxtdt3.Width := pnl1.Width - cxdbtxtdt3.Left - 2;
  cxdbtxtdt4.Width := pnl1.Width - cxdbtxtdt4.Left - 2;
  cxdbtxtdt1.Width := pnl1.Width - cxdbtxtdt1.Left - 2;
  cxdbm1.Width := pnl1.Width - cxdbm1.Left - 2;
  cxdbm1.Height := pnl1.Height - cxdbm1.Top - 2;
end;

end.
