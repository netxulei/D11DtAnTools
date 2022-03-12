{*******************************************************}
{                                                       }
{       GridEH Editor                                   }
{                                                       }
{       ��Ȩ���� (C) 2005 ��ܿƼ�                      }
{                                                       }
{*******************************************************}

unit FormColSelect;

interface

uses
  SysUtils, Classes, Controls, Forms,
  StdCtrls, DBGridEh, CheckLst, Buttons, ComCtrls,
  ExtCtrls, Math;

type
  PColParams = ^TColParams;
  TColParams = record //����������������������ֶ���ʵ�ָ��๦��
    FieldName: string; //�ֶ���
    Title: string; //��ʾ����
    Index: integer; //λ��
    Visible: Boolean; //�Ƿ�ɼ�
    ReadOnly: Boolean; //ֻ����
    Sort: Boolean; //�Ƿ������,����TitleButton
    SumListType: TFooterValueType; //�ϼƵ�����
    SumListField: string; //�ϼ��ֶ�ֵ
    SumListValue: string; //�ϼ�����ֵ
    P: TColumnEh; //�˴��ŵ���TColumnEh��ָ��
  end;
  TP = ^TColParams;
type
  TFrmColSelect = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    CLB: TCheckListBox;
    Panel3: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Panel4: TPanel;
    EdtFieldName: TLabeledEdit;
    BitBtn3: TBitBtn;
    GroupBox1: TGroupBox;
    ChkSumList: TCheckBox;
    chkAutoColWidth: TCheckBox;
    ChkMultiTitle: TCheckBox;
    chkGridSort: TCheckBox;
    ChkGridMultiSort: TCheckBox;
    chkSortLocal: TCheckBox;
    EdtFix: TEdit;
    UpDownFix: TUpDown;
    Label1: TLabel;
    ColorBox1: TColorBox;
    ColorBox2: TColorBox;
    GroupBox2: TGroupBox;
    EditSumField: TComboBox;
    CbxSumType: TComboBox;
    ChkSort: TCheckBox;
    ChkReadOnly: TCheckBox;
    EdtFieldTitle: TLabeledEdit;
    SpeedButton6: TSpeedButton;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton7: TSpeedButton;
    Label3: TLabel;
    Label2: TLabel;
    EditSumValue: TLabeledEdit;
    procedure Button2Click(Sender: TObject);
    procedure CLBDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure CLBClick(Sender: TObject);
    procedure OnSaveFieldValue(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure CbxSumTypeChange(Sender: TObject);
    procedure chkGridSortClick(Sender: TObject);
  private
    ColArray: array of TColParams;
    OldIndex: Integer;
    { Private declarations }
  public
    Grid: TDBGridEH;
    procedure LoadData;
    procedure SaveData;
    procedure SaveFieldValue;
    { Public declarations }
  end;

procedure ShowGridColEditor(Grid: TDBGridEH);

var
  FrmColSelect: TFrmColSelect;

implementation

{$R *.dfm}

procedure ShowGridColEditor(Grid: TDBGridEH);
begin
  //��ʾGRID�ı༭����
  if not Assigned(Grid) or not Assigned(Grid.DataSource) or not
    Assigned(Grid.DataSource.DataSet) then
    exit;

  if not Assigned(FrmColSelect) then
    FrmColSelect := TFrmColSelect.Create(Application);
  try
    FrmColSelect.Grid := Grid;
    FrmColSelect.ShowModal;
  finally
    FreeAndNil(FrmColSelect);
  end;
end;

procedure TFrmColSelect.Button2Click(Sender: TObject);
begin
  SaveFieldValue;
  SaveData;
  ModalResult := mrOk;
end;

procedure TFrmColSelect.CLBDragOver(Sender, Source: TObject; X, Y: Integer;
  State: TDragState; var Accept: Boolean);
begin
  if Sender = Source then
  begin
    Accept := true;
    OldIndex := TCheckListBox(sender).ItemIndex;
  end
  else
    OldIndex := -1;
end;

procedure TFrmColSelect.SpeedButton1Click(Sender: TObject);
var
  i: integer;
begin
  if CLB.ItemIndex > 0 then
  begin
    i := clb.ItemIndex - 1;
    clb.Items.Move(clb.ItemIndex, i);
    CLB.ItemIndex := i;
    CLB.Selected[i];
  end;
end;

procedure TFrmColSelect.SpeedButton2Click(Sender: TObject);
var
  i: integer;
begin
  if (CLB.ItemIndex < CLB.Count - 1) and (CLB.ItemIndex >= 0) then
  begin
    i := clb.ItemIndex + 1;
    clb.Items.Move(clb.ItemIndex, i);
    CLB.ItemIndex := i;
    CLB.Selected[i];
  end;
end;

procedure TFrmColSelect.CheckBox1Click(Sender: TObject);
begin //�˴��������ڱ����������õ�INI�ļ�,
  //�����ҽ���ı������й���ʵ��
  //��˾�û���ô˹�����,��һ��Ӧ�þͿ����õ����ǵĹ�������
  {
  var
    Ini: TIniFile;
  begin
    if CheckBox1.Checked then
      Grid.SaveGridLayoutIni(ExtractFilePath(Application.ExeName) + '\Grid.ini',
        Grid.Owner.ClassName + '$' + Grid.Name, true)
    else
    begin
      Ini := TIniFile.Create(ExtractFilePath(Application.ExeName) + '\Grid.ini');
      try
        Ini.EraseSection(Grid.Owner.ClassName + '$' + Grid.Name);
      finally
        Ini.Free;
      end;
    end; }

end;

procedure TFrmColSelect.FormShow(Sender: TObject);
begin
  LoadData;
end;

procedure TFrmColSelect.LoadData;
var
  i: integer;
begin //װ��GRID�����ݵ�����
  //��һ��,ȡȫ�ֲ���
  ChkSumList.Checked := Grid.FooterRowCount > 0;
  ChkMultiTitle.Checked := Grid.UseMultiTitle;
  EdtFix.Text := inttostr(Grid.FrozenCols);
  UpDownFix.Max := Grid.Columns.Count - 1;
  UpDownFix.Position := Grid.FrozenCols;
  ColorBox1.Selected := Grid.OddRowColor;
  ColorBox2.Selected := Grid.EvenRowColor;
  chkAutoColWidth.Checked := Grid.AutoFitColWidths;
  //������������Ŀ
  chkGridSort.Checked := dghAutoSortMarking in Grid.OptionsEh;
  ChkGridMultiSort.Checked := dghMultiSortMarking in Grid.OptionsEh;
  chkSortLocal.Checked := Grid.SortLocal;

  //��GRID��װ��COLUMNS��Ϣ
  CLB.Clear;
  SetLength(ColArray, Grid.Columns.Count);
  for i := 0 to Grid.Columns.Count - 1 do
  begin
    ColArray[i].FieldName := Grid.Columns.Items[i].FieldName;
    ColArray[i].Index := Grid.Columns.Items[i].Index;
    ColArray[i].Visible := Grid.Columns.Items[i].Visible;
    ColArray[i].ReadOnly := Grid.Columns.Items[i].ReadOnly;
    ColArray[i].Sort := Grid.Columns.Items[i].Title.TitleButton;
    ColArray[i].Title := Grid.Columns.Items[i].Title.Caption;
    ColArray[i].SumListType := Grid.Columns.Items[i].Footer.ValueType;
    ColArray[i].SumListField := Grid.Columns.Items[i].Footer.FieldName;
    ColArray[i].SumListValue := Grid.Columns.Items[i].Footer.Value;
    ColArray[i].p := Grid.Columns.Items[i];

    CLB.Items.AddObject(ColArray[i].Title + '[' + ColArray[i].FieldName + ']',
      @(ColArray[i]));
    clb.Checked[i] := ColArray[i].Visible;
    //���cmbFieldName���ֶ�ѡ��
    EditSumField.Items.Add(Grid.Columns.Items[i].FieldName);
  end;
  if CLB.Items.Count > 0 then
  begin
    CLB.ItemIndex := 0;
    clb.Selected[0] := True;
    CLBClick(nil);
  end;

end;

procedure TFrmColSelect.SaveData;
var
  i: integer;
  p: pColParams;
  c: TColumnEh;
begin //�ӽ����е����ñ��浽GRID��
  //����ȫ��GRID�Ĳ���
  Grid.FooterRowCount := IfThen(ChkSumList.Checked, 1, 0);
  Grid.SumList.Active := ChkSumList.Checked;
  Grid.UseMultiTitle := ChkMultiTitle.Checked;
  Grid.FrozenCols := UpDownFix.Position;
  Grid.OddRowColor := ColorBox1.Selected;
  Grid.EvenRowColor := ColorBox2.Selected;
  Grid.AutoFitColWidths := chkAutoColWidth.Checked;
  //���������ز���
  if chkGridSort.Checked then
  begin
    Grid.OptionsEh := Grid.OptionsEh + [dghAutoSortMarking];
    Grid.ColumnDefValues.Title.TitleButton := True;
  end
  else
    Grid.OptionsEh := Grid.OptionsEh - [dghAutoSortMarking];

  if ChkGridMultiSort.Checked then
    Grid.OptionsEh := Grid.OptionsEh + [dghMultiSortMarking]
  else
    Grid.OptionsEh := Grid.OptionsEh - [dghMultiSortMarking];

  Grid.SortLocal := chkSortLocal.Checked;

  for i := 0 to CLB.Count - 1 do
  begin
    p := PColParams(CLB.Items.Objects[i]);
    c := p^.P;
    if Assigned(c) then
    begin
      c.Visible := clb.Checked[i];
      C.Index := i;
      C.ReadOnly := p^.ReadOnly;
      C.Title.Caption := p^.Title;
      C.Title.TitleButton := p^.Sort;
      C.Footer.ValueType := p^.SumListType;
      C.Footer.FieldName := p^.SumListField;
      C.Footer.Value := p^.SumListValue;
    end;
  end;
end;

procedure TFrmColSelect.SpeedButton6Click(Sender: TObject);
begin
  if Clb.ItemIndex >= 0 then
  begin
    clb.Items.Move(clb.ItemIndex, 0);
    CLB.Selected[0];
  end;
end;

procedure TFrmColSelect.SpeedButton7Click(Sender: TObject);
begin
  if Clb.ItemIndex >= 0 then
  begin
    clb.Items.Move(clb.ItemIndex, CLB.Count - 1);
    CLB.Selected[CLB.Count - 1];
  end;
end;

procedure TFrmColSelect.CLBClick(Sender: TObject);
var
  i: integer;
  p: PColParams;
  c: TColParams;
begin
  if CLB.ItemIndex >= 0 then
  begin
    i := clb.ItemIndex;
    P := PColParams(CLB.Items.Objects[i]);
    case P^.SumListType of
      fvtNon: CbxSumType.ItemIndex := 0;
      fvtStaticText: CbxSumType.ItemIndex := 1;
      fvtFieldValue: CbxSumType.ItemIndex := 2;
      fvtAvg: CbxSumType.ItemIndex := 3;
      fvtCount: CbxSumType.ItemIndex := 4;
      fvtSum: CbxSumType.ItemIndex := 5;
    else
      CbxSumType.ItemIndex := -1;
    end;
    EditSumValue.Text := p.SumListValue;
    EditSumField.ItemIndex := EditSumField.Items.IndexOf(P^.SumListField);
    EdtFieldName.Text := P^.FieldName;
    EdtFieldTitle.Text := P^.Title;
    ChkSort.Checked := P^.Sort;
    ChkReadOnly.Checked := P^.ReadOnly;
    //    CLB.Checked[i] := p^.Visible;

  end;
end;

procedure TFrmColSelect.OnSaveFieldValue(Sender: TObject);
begin
  SaveFieldValue;
end;

procedure TFrmColSelect.SaveFieldValue;
var
  i: integer;
  v: TFooterValueType;
  p: PColParams;
begin
  //����Field���ֵ�����
  i := CLB.ItemIndex;

  if i >= 0 then
  begin
    p := pColparams(CLB.Items.Objects[i]);
    case CbxSumType.ItemIndex of
      0: v := fvtNon;
      1: v := fvtStaticText;
      2: v := fvtFieldValue;
      3: v := fvtAvg;
      4: v := fvtCount;
      5: v := fvtSum;
      -1: v := fvtNon;
    end;

    p^.SumListType := v;
    p^.SumListField := EditSumField.Text;
    p^.SumListValue := EditSumValue.Text;
    p^.ReadOnly := ChkReadOnly.Checked;
    p^.Sort := ChkSort.Checked;
    p^.Title := EdtFieldTitle.Text;
    p^.Visible := CLB.Checked[i];
  end;

end;

procedure TFrmColSelect.BitBtn3Click(Sender: TObject);
begin
  LoadData;
end;

procedure TFrmColSelect.CbxSumTypeChange(Sender: TObject);
var
  bField, bValue: Boolean; //����������������ʶ�ֶ�ѡ�����ֿ��Ƿ����
  p: PColParams;
begin
  case CbxSumType.ItemIndex of
    0:
      begin
        bField := False;
        bValue := False;
      end;
    1:
      begin
        bField := False;
        bValue := True;
      end;
    2:
      begin
        bField := True;
        bValue := False;
      end;
    3:
      begin
        bField := True;
        bValue := False;
      end;
    4:
      begin
        bField := True;
        bValue := False;
      end;
    5:
      begin
        bField := True;
        bValue := False;
      end;
  else
    begin
      bField := False;
      bValue := False;
    end;
  end;
  //������ֶ�ѡ��ͳ��,����ʾҳ��
  if CbxSumType.ItemIndex > 0 then
    ChkSumList.Checked := True;

  p := pColParams(CLB.Items.Objects[CLB.ItemIndex]);
  if bField then
    EditSumField.ItemIndex := EditSumField.Items.IndexOf(p^.FieldName);
  EditSumField.Enabled := bField;
  if bValue then
    EditSumValue.Text :=
      p^.SumListValue;
  EditSumValue.Visible := bValue;
  if EditSumValue.Visible=True then
    EditSumValue.SetFocus;
end;

procedure TFrmColSelect.chkGridSortClick(Sender: TObject);
begin
  ChkGridMultiSort.Enabled := chkGridSort.Checked;
  chkSortLocal.Enabled := chkGridSort.Checked;
end;

end.

