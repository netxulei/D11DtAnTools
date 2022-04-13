unit U_Common;

interface

uses
  System.SysUtils, Data.DB, ComObj, Classes, Forms, Windows, Math,
  FireDAC.Comp.Client, vcl.dialogs, RegularExpressions, StrUtils, U_DT;

type
  TProcRec = record
    s_para_tip: string;
    s_para_lx: string;
    s_para_value: string;
    s_para_name: string;
    s_para_lx_code: string;
  end;

var
  mainHandle:HWND;
  R_proc: array of TProcRec; // ��������
  t_ProcFunName: string;
  t_isProc: Boolean;
  globle_tab, dict_list_col, // �ֶ������б�
  dict_list_reg, // У������б�
  t_connect, // ������
  t_mod_pass, // ����ģʽ����
  t_proj_no, t_proj_name, // ��Ŀ��ź�����
  t_Database, t_ZHSys_Date, // ��Ŀ���ݿ��ϵͳ���ݿ�
  t_bank_code: string;
  // t_table1_name, t_table2_name, // ����������
  // t_table1_name_other, t_table2_name_other: string;
  // t_Getdata_Mod, t_Getdata_Mod_yh: string;
  // t_table1_sql_dw, t_table2_sql_dw, t_table1_sql_gr, t_table2_sql_gr, t_table1_sql_other, t_table2_sql_other: string;
  // t_table2_sql_order, t_table2_other_order: string;
  t_key_name, t_ver_no, t_ver_name, t_TimeOut, t_Jclj_Ver, t_Jrjgbm: string;
  t_key_nameLS, t_ver_noLS, t_ver_nameLS: TStrings;
  t_Last_RHZH_EX, t_Last_RHJX_EX, t_Last_RHZH_DW, t_Last_RHZH_GR, t_Last_SHZH_DW, t_Last_SHZH_GR, t_Last_SHJY_DW, t_Last_SHJY_GR: string;
  t_ver, // �汾��
  t_type, // ����汾�б� 1|2|3
  t_mode, // ����ģʽ��־
  t_database_ver: string;
  t_modl_type: string; // ����ģ��ʱ��¼ģ������
  t_sys_dbname: string;
  User_name, User_info, User_can: string;
  t_new_filter, b_stop: Boolean;
  sComputerName: string;
  is_ini: Boolean;

type
  TTextFormat = (Ansi, Unicode, UnicodeBigEndian, Utf8);

const
  TextFormatFlag: array [Ansi .. Utf8] of Word = ($0000, $FFFE, $FEFF, $EFBB);

procedure ModlCodeValid(FDQryTree: TFDQuery; isRun: Boolean; isAuto: Boolean);
// ��֤ģ�ʹ��룬����ȫ��R_proc,t_ProcFunName,t_isProc���Ƿ�洢���̣���ִ���������ɴ洢���̻����Ľ���

function IsIntStr(const S: string): Boolean;

function trim0(S: string): string;

function SplitString(const Source, ch: string): TStringList;

function ifincludehz(strtxt: string): Boolean;

function IfIncludeKG(strtxt: string): Boolean;

function IfIncludeSubStr(substrtxt, strtxt: string): Boolean;

function IfInSFZL(strtxt: string; i_start, i_count: Integer): Boolean;
// �ж��ַ����Ƿ��ڷ�Χ��

function IfInSFZL1(strtxt: string; i_count: Integer): Boolean;
// �ж��ַ����Ƿ��ڷ�Χ�ڣ�i_countС��9��

function IfDate(strtxt: string): Boolean; // �ж��ַ����Ƿ�yyyymmdd��ʽ

function IfNum(Str: string): Boolean; // �ж��ַ����Ƿ�����

function GetContentFromFile(fileName: string): string; // �ļ�ת���ַ���

function findArray(colNames: array of string; a_key: array of string): Integer;
// ��������������ַ���

function findStrList(var find_state: Integer; a_colNames: array of string; list_key: TStringList): Integer;
// �������в���stringlist�и�Ԫ��

function GetBuildInfo: string; // ��ȡ�汾��

function getGUID(): string; // ��ȡGuid

function GetTextType(const fileName: string): string; // BOM��ʽ�����ı���ʽ��Ϣ

function IsUtf8Format(buffer: PAnsiChar; SIZE: Int64): Boolean;
// ȫ���ж��ļ��Ƿ�Ϊ UTF-8����

function IsUtf8File(const fileName: string): Boolean;
// ȫ���ж��ļ��Ƿ�ΪUTF-8���루����IsUtf8Format��

implementation

procedure ModlCodeValid(FDQryTree: TFDQuery; isRun: Boolean; isAuto: Boolean);

var
  sfilename, sParamField, sParamCode, sLine, sError1, sError2, sError, sqltext: string;
  sTmp, sqlname: String;
  MS: TStringStream;
  MSSize: Integer;
  SR: TStreamReader;
  sl, sl_params, sl_param: TStringList;
  sl_count: Integer;
  i, j, i_len, i_as, ii, i_pos1, i_pos2: Integer;
  i_cnt1, i_cnt2, i_cnt3, i_cnt4: Integer; // ����@�������ֶ�@��!��:�������ų��ֵ�����
  creaFlag, procFlag, funcFlag, asFlag, withFlag, encrFlag, retuFlag, is_exist: Char; // �ؼ����ж�
  User_can: ShortString;
begin
  SetLength(R_proc, 0); // ��ʼ����������
  // �Ƿ������û�ִ�� �������������û�ִ��
  User_can := FDQryTree.FieldByName('t_hide').AsString;
  // ģ�Ͳ���
  sParamField := Trim(FDQryTree.FieldByName('t_para').AsString); // ģ�Ͳ���
  sParamField := StringReplace(sParamField, ' ', '', [rfReplaceAll]); // ȥ�ո�
  sParamField := StringReplace(sParamField, '��', '@', [rfReplaceAll]); // ���Ļ�Ӣ��
  sParamField := StringReplace(sParamField, '��', ':', [rfReplaceAll]);
  sParamField := StringReplace(sParamField, '��', '!', [rfReplaceAll]);
  // ģ�ʹ��룬���ķ�ʽ��¼��sl��������ʱ�ļ�����
  MS := TStringStream.Create;
  TBlobField(FDQryTree.FieldByName('t_proc')).SaveToStream(MS); // ���ݿ��ֶα��浽��
  sLine := MS.DataString; // stringת�ַ���
  MS.Free; // ��ת��Ϊ�ַ����б��������
  sLine := StringReplace(sLine, #$D#$A, '|', [rfReplaceAll]); // �滻�س�����Ϊ|��
  sLine := StringReplace(sLine, #$A, '|', [rfReplaceAll]);
  sLine := StringReplace(sLine, #$D, '|', [rfReplaceAll]);
  sl := TStringList.Create;
  sl.StrictDelimiter := True;
  sl.Delimiter := '|';
  sl_params := TStringList.Create; // ��ȡ�Ĳ������Կո�ָ�б��ж�ĳЩ�ؼ����Ƿ����  ��ͬʱ���ĳЩ����
  sl_params.StrictDelimiter := True;
  sl_params.Delimiter := ','; // ���÷ָ�ÿ������
  sl_param := TStringList.Create; // ��ȡ�Ĳ������Կո�ָ�б��ж�ĳЩ�ؼ����Ƿ����  ��ͬʱ���ĳЩ����
  sl_param.StrictDelimiter := True;
  sl_param.Delimiter := ' '; // �ո�ָ������������
  // --------------------------------------
  sl.DelimitedText := sLine; // sl��¼���ļ���ÿ������
  if sl.Count = 0 then
  begin
    MessageDlg('��ģ��û�ж�Ӧʵ�ִ��룡', mtInformation, [mbOK], 0);
    sl.Free;
    exit;
  end;
  // sl_count := sl.Count;
  // ��ȡ�ļ�ͷ,��ȡ��������Ϣ��sLine  ��ͬʱ������к�ע����
  sError1 := '';
  sError2 := '';
  sError := '';
  creaFlag := '0';
  procFlag := '0';
  funcFlag := '0';
  asFlag := '0';
  withFlag := '0';
  encrFlag := '0';
  retuFlag := '0';
  for i := 0 to sl.Count - 1 do // slΪ�������б�
  begin
    while (Length(Trim(sl[i])) = 0) or (Copy(Trim(sl[i]), 0, 2) = '--') do // �����г���Ϊ0����--��ͷ������������
    begin
      sl.Delete(i); // ����ǰ���еĿ��к�ע����
      if sl.Count = 0 then
      begin
        MessageDlg('��ģ��û�ж�Ӧʵ�ִ��룡', mtInformation, [mbOK], 0); // �޴���
        sl.Free;
        sl_params.Free;
        sl_param.Free;
        exit;
      end;
    end;
    sParamCode := sParamCode + ' ' + UpperCase(sl[i]) + ' ';
    if pos(' CREATE ', sParamCode) > 0 then
      creaFlag := '1';
    if pos(' PROCEDURE ', sParamCode) > 0 then
      procFlag := '1';
    if pos(' FUNCTION ', sParamCode) > 0 then
      funcFlag := '1';
    if pos(' AS ', sParamCode) > 0 then
      asFlag := '1';
    if pos(' WITH ', sParamCode) > 0 then
      withFlag := '1';
    if pos(' ENCRYPTION ', sParamCode) > 0 then
      encrFlag := '1';
    if pos(' RETURNS ', sParamCode) > 0 then
      retuFlag := '1';
    if asFlag = '1' then // �����AS��䣬�˳������������ȡ�ж�
      Break;
  end;
  // ѭ��֮��õ�������
  if creaFlag = '0' then
    sError1 := sError1 + '"CREATE"';
  if (procFlag = '0') and (funcFlag = '0') then
    sError1 := sError1 + '"PROCEDURE��FUNCTION"';
  if (retuFlag = '0') and (funcFlag = '1') then
    sError1 := sError1 + '"RETURNS(Function)"';
  if asFlag = '0' then
    sError1 := sError1 + '"AS"';
  if withFlag = '0' then
    sError1 := sError1 + '"WITH"';
  if (procFlag = '1') and (encrFlag = '0') then
    sError1 := sError1 + '"ENCRYPTION(Procedure)"';
  if (funcFlag = '1') and (User_can = '1') then
    sError2 := sError2 + '2."����ֻ���ڴ�����ʹ�ã�������Ϊ�û�ִ��"';
  if Length(sError1) > 0 then
    sError := '1.ģ�ʹ���ȱ�ٱ�Ҫ�Ĺؼ���:' + sError1;

  if Length(sError2) > 0 then
    sError := sError + sError2;

  if Length(sError) > 0 then
  begin
    MessageDlg(PChar(sError) + '�����˳�������ģ�ʹ��룡', mtError, [mbOK], 0);
    sl.Free;
    sl_params.Free;
    sl_param.Free;
    exit;
  end;
  // У��󷵻������Ƿ�洢���̣��Զ�ִ��ʱ��������ִ�У�ִֻ�д洢���̣�
  if (procFlag = '1') then
    t_isProc := True
  else
    t_isProc := False;

  var
    m: tmatch;
  m := TRegex.match(sParamCode, '(?<= PROCEDURE ).*?(?= WITH )');
  if m.Success then
    sParamCode := Trim(m.Value) // Procedure ��Witn ֮����ַ��� �����洢���̻������ơ�������
  else
  begin
    m := TRegex.match(sParamCode, '(?<=FUNCTION ).*?(?=RETURNS )');
    if m.Success then
      sParamCode := Trim(m.Value)
  end;

  // ��ô洢���̻������� ����ͷ����һ���ո�� ����--���ڲ��Ҹô洢�����Ƿ��Ѵ��ڣ�������ɾ����ִ�н����洢���̿��Ƿ����----------------
  i_len := Length(sParamCode);
  sqlname := '';
  for ii := 1 to i_len do // �ַ���Ϊ�ַ����飬��Ŵ�1��ʼ��
  begin
    if (sParamCode[ii] <> ' ') and (sParamCode[ii] <> '(') then
      sqlname := sqlname + sParamCode[ii]
    else
      Break;
  end;
  // ���SQLserver�������  �����ź�˫���š���ΪҪ�õ��洢���̻�����
  // ɾ���洢�����е���������"dbo."��   ,���Ʊ��д
  sqlname := StringReplace(sqlname, '[', '', [rfReplaceAll]);
  sqlname := StringReplace(sqlname, ']', '', [rfReplaceAll]);
  sqlname := StringReplace(sqlname, '"', '', [rfReplaceAll]);
  sqlname := StringReplace(sqlname, '"', '', [rfReplaceAll]);
  sqlname := UpperCase(sqlname);
  sqlname := StringReplace(sqlname, 'DBO.', '', [rfReplaceAll]);
  // i_pos1 := pos('.', sqlname);
  // if i_pos1 > 0 then
  // Delete(sqlname, 1, i_pos1);

  t_ProcFunName := sqlname; // ����ȫ�֣�ִ��ʹ��
  // ShowMessage(sqlname);
  // exit;
  // -------sqlnameΪ��ȡ�Ĵ洢��������------------------------------------------------------------------
{$REGION '�洢����ҪУ����Ϣ����������в�����ƥ���ԣ��Լ�ȡ����Ϣ������ֵ��������'}
  // ---����Ǻ��������������в������£�����ֻ�ڴ洢������ʹ�ã�ֻ��������ִ�У�������Ϣ�������ݣ����迼�ǣ�
  if procFlag = '1' then
  begin
    // ��ȡ�����ֶεĲ������������������������飿��
    // sParamCode s1="(@aa int,@bb char(8),@cc string )"   ȡ�������ַ�����ȡ������
    // sParamField s2="@��ʾ!����:20090101@��ʾ2!����:20091231"
    // sParamCode := StringReplace(sParamCode, ')', '', [rfReplaceAll]);
    // sParamCode := StringReplace(sParamCode, '(', '', [rfReplaceAll]);

    // ----������@�ĸ���----------------------
    // ɾ����һ��@ǰ�������ַ�
    i_pos1 := pos('@', sParamCode);
    if i_pos1 = 0 then
      i_cnt1 := 0
    else
    begin
      Delete(sParamCode, 1, i_pos1 - 1);
      sParamCode := Trim(sParamCode);
      if RightStr(sParamCode, 1) = ')' then
        sParamCode := Copy(sParamCode, 1, Length(sParamCode) - 1);

      i_len := Length(sParamCode); // ���»�ó���
      // ͳ��@���ֵĴ���
      i_cnt1 := 0; // �����һ��
      for ii := 1 to i_len do
        if sParamCode[ii] = '@' then
          Inc(i_cnt1);
    end;
    // -----������Ϣ��@��������
    i_cnt2 := 0; // �����ֶ�
    for ii := 1 to Length(sParamField) do
      if sParamField[ii] = '@' then
        Inc(i_cnt2);
    i_cnt3 := 0; // �����ֶ�
    for ii := 1 to Length(sParamField) do
      if sParamField[ii] = '!' then
        Inc(i_cnt3);
    i_cnt4 := 0; // �����ֶ�
    for ii := 1 to Length(sParamField) do
      if sParamField[ii] = ':' then
        Inc(i_cnt4);
    if (i_cnt2 <> i_cnt3) or (i_cnt3 <> i_cnt4) or (i_cnt2 <> i_cnt4) then
    begin
      MessageDlg('������Ϣ�йؼ��֡�@��������������:����ƥ��(�����ַ��ֱ����϶�Ӧ�������һ��������Ϣ)��', mtInformation, [mbOK], 0);
      sl.Free;
      sl_params.Free;
      sl_param.Free;
      exit;
    end;
    if i_cnt1 <> i_cnt2 then
    begin
      MessageDlg('������Ϣ�в���������в���������ƥ��', mtInformation, [mbOK], 0);
      sl.Free;
      sl_params.Free;
      sl_param.Free;
      exit;
    end;
    // �����Ϣ������ÿ��������Ϣ���ͣ�ֻ��ΪN��D��S

{$REGION' ---���i_cnt1>0������ÿһ����������¼����-------'}
    if i_cnt1 > 0 then // ��������к���@�ַ��������в�����Ϣ
    begin
      SetLength(R_proc, i_cnt1);
      // �����в�����������
      sl_params.DelimitedText := sParamCode;
      for i := 0 to sl_params.Count - 1 do
      begin
        sl_param.DelimitedText := sl_params[i];
        R_proc[i].s_para_name := sl_param[0];
        R_proc[i].s_para_lx_code := sl_param[1];
      end;
      // ------
      // ������Ϣ����ʾ�����͡�ֵ
      sl_params.Delimiter := '@';
      sParamField := Copy(sParamField, 2, Length(sParamField)); // �޳�ǰ��@
      sl_params.DelimitedText := sParamField;
      for i := 0 to sl_params.Count - 1 do
      begin
        sTmp := sl_params[i];
        i_pos2 := pos('!', sTmp);
        R_proc[i].s_para_tip := Copy(sTmp, 1, i_pos2 - 1);
        Delete(sTmp, 1, i_pos2);
        i_pos2 := pos(':', sTmp);
        R_proc[i].s_para_lx := UpperCase(Copy(sTmp, 1, i_pos2 - 1));
        Delete(sTmp, 1, i_pos2);
        R_proc[i].s_para_value := Trim(sTmp);
        if (R_proc[i].s_para_lx <> 'N') and (R_proc[i].s_para_lx <> 'D') and (R_proc[i].s_para_lx <> 'S') then
        begin
          MessageDlg('������Ϣ���������Ͳ���ȷ��', mtInformation, [mbOK], 0);
          sl.Free;
          sl_params.Free;
          sl_param.Free;
          exit;
        end;
      end;
    end;
{$ENDREGION}
  end;
{$ENDREGION}
  // ----------��Ϊ��֤����ϵͳ���ݿ���ִ�����£�ɾ���洢���̣��ٽ����洢���̣����Ƿ��������ʱҪ����Ŀ���ݿ�ִ��
  if not isRun then
{$REGION '��֤״̬---'}
  begin
    // ������ɾ��
    // F_DT.FDConSys.Connected := False;
    F_DT.FDQryTmp.Close;
    F_DT.FDQryTmp.Connection := F_DT.FDConSys;
    F_DT.FDQryTmp.SQL.Clear;
    if procFlag = '1' then
      sqltext := 'IF EXISTS (SELECT * FROM sys.objects WHERE Type =' + '''' + 'P' + '''' + ' AND name=' + '''' + sqlname + '''' + ') DROP PROCEDURE dbo.[' + sqlname + ']';
    if funcFlag = '1' then
      sqltext := 'IF EXISTS (select name from sysobjects where Name =' + '''' + sqlname + '''' + ' and (type =' + '''' + 'AF' + '''' + ' or type =' + '''' + 'FN' + '''' +
        ' or type =' + '''' + 'FS' + '''' + ' or type =' + '''' + 'FT' + '''' + ' or type =' + '''' + 'IF' + '''' + ' or type =' + '''' + 'TF' + '''' + ')) DROP Function dbo.[' +
        sqlname + ']';
    F_DT.FDQryTmp.SQL.Add(sqltext);
    F_DT.FDQryTmp.Prepared;
    F_DT.FDQryTmp.ExecSQL;
    // F_DT.FDConSys.Connected := False;
    // ���Խ����洢���� ����        ���ڳ��򼯵ĺ������Ի������regex.isMatch
    try
      F_DT.FDQryTmp.Close;
      F_DT.FDQryTmp.SQL.Clear;
      for i := 0 to sl.Count - 1 do
      begin
        while (Length(Trim(sl[i])) = 0) or (Copy(Trim(sl[i]), 0, 2) = '--') or (UpperCase(Trim(sl[i])) = 'GO') do
        // �����г���Ϊ0����--��ͷ������������
        begin
          sl.Delete(i); // ����ǰ���еĿ��к�ע��
          if i >= sl.Count - 1 then
            Break;
        end;
        if (i < sl.Count - 1) then
          F_DT.FDQryTmp.SQL.Add(sl[i])
        else
        begin
          if (i = sl.Count - 1) then
          begin
            if (Length(Trim(sl[i])) > 0) and (Copy(Trim(sl[i]), 0, 2) <> '--') and (UpperCase(Trim(sl[i])) <> 'GO') then
              F_DT.FDQryTmp.SQL.Add(sl[i]);
          end;
          Break;
        end;
      end;
      F_DT.FDQryTmp.Prepared;
      F_DT.FDQryTmp.ExecSQL;
      F_DT.FDQryTmp.Close;
    except
      F_DT.FDQryTmp.Close;
      sl.Free;
      sl_params.Free;
      sl_param.Free;
      raise Exception.Create('ģ�ʹ��������Դ����������ݿ⹤�߽��е��ԣ��ɹ����ڴ˱���ģ�ʹ��룡');
      exit;
    end;
    // �����꣬������ɾ��
    // ������ɾ��
    // F_DT.FDConSysTmp.Connected := False;
    F_DT.FDQryTmp.Close;
    F_DT.FDQryTmp.Connection := F_DT.FDConSys;
    F_DT.FDQryTmp.SQL.Clear;
    if procFlag = '1' then
      sqltext := 'IF EXISTS (SELECT * FROM sys.objects WHERE Type =' + '''' + 'P' + '''' + ' AND name=' + '''' + sqlname + '''' + ') DROP PROCEDURE dbo.[' + sqlname + ']';
    if funcFlag = '1' then
      sqltext := 'IF EXISTS (select name from sysobjects where Name =' + '''' + sqlname + '''' + ' and (type =' + '''' + 'AF' + '''' + ' or type =' + '''' + 'FN' + '''' +
        ' or type =' + '''' + 'FS' + '''' + ' or type =' + '''' + 'FT' + '''' + ' or type =' + '''' + 'IF' + '''' + ' or type =' + '''' + 'TF' + '''' + ')) DROP Function dbo.[' +
        sqlname + ']';
    F_DT.FDQryTmp.SQL.Add(sqltext);
    F_DT.FDQryTmp.Prepared;
    F_DT.FDQryTmp.ExecSQL;
    // F_DT.FDConSysTmp.Connected := False;
    MessageDlg('ģ�ʹ�����Ϲ淶����ģ�͵����л��ھ������Ŀ�����ݣ�����ģ�ʹ������ʱ���ǿ��ܳ��ֵ����Ⲣ������ʾ��', mtInformation, [mbOK], 0);
  end
{$ENDREGION}
  else
{$REGION '����״̬---'}
  begin
    // �жϴ洢�����Ƿ���ڣ����������� �������ж���Ŀ���Ƿ���ڣ��������ڣ���ִ�� ����Ҫ�����Զ�ִ�в��֣�
    // ִ������ģ��ʱ�����ж��Ƿ�����Ŀ����ʾ������Ŀ����Ŀ������ϣ���auto_proc(����delete_proc);ģ��ά���������delete����autoProc
    // ׼������F_DT.FDConGen��F_DT.FDConSYS��login�׶����������趨��F_DT.fdconProj��login�׶ζ�ȡt_database����Ŀά�������ı�
    F_DT.FDConGen.Connected := False;
    // F_DT.FDConGen.ConnectionString := t_connect;  //�������ݿ����Ƶ�����
    F_DT.FDQryTmp.Connection := F_DT.FDConGen;
    F_DT.fdconProj.Connected := False;
    // ׼��������Ŀ������
    F_DT.fdconProj.ConnectionString := t_connect + 'Database=' + t_Database + ';';
    // �ж���Ŀ���ݿ��Ƿ����--------------
    F_DT.FDQryTmp.SQL.Clear;
    F_DT.FDQryTmp.SQL.Text := 'select name from master..sysdatabases where name = ' + '''' + t_Database + '''';
    F_DT.FDQryTmp.Open;
    if F_DT.FDQryTmp.RecordCount <= 0 then
    begin
      F_DT.FDQryTmp.Close;
      F_DT.FDConGen.Connected := False;
      if not isAuto then // ���Զ�����ģʽ��ʾ������Ϣ ���Զ����У�ֱ�ӷ�����
        MessageDlg('��Ŀ���ݿⲻ���ڻ��𻵣���ɾ������Ŀ�����½�����Ŀ!��', mtInformation, [mbOK], 0);
      sl.Free;
      sl_params.Free;
      sl_param.Free;
      exit;
    end; // �Զ�����ģʽֱ�Ӽ���
    // -------------------
    // �жϴ洢���̻����Ƿ���� ==============
    try
      if procFlag = '1' then
        sqltext := 'SELECT * FROM sys.objects WHERE Type =' + '''' + 'P' + '''' + ' AND name=' + '''' + sqlname + '''';
      if funcFlag = '1' then
        sqltext := 'select name from sysobjects where Name =' + '''' + sqlname + '''' + ' and (type =' + '''' + 'AF' + '''' + ' or type =' + '''' + 'FN' + '''' + ' or type =' +
          '''' + 'FS' + '''' + ' or type =' + '''' + 'FT' + '''' + ' or type =' + '''' + 'IF' + '''' + ' or type =' + '''' + 'TF' + '''' + ')';
      F_DT.FDQryTmp.Connection := F_DT.fdconProj; // �жϴ洢�����Ƿ����
      F_DT.FDQryTmp.Close;
      F_DT.FDQryTmp.SQL.Clear;
      F_DT.FDQryTmp.SQL.Add(sqltext);
      F_DT.FDQryTmp.Prepared;
      F_DT.FDQryTmp.Open;
    except
      F_DT.FDQryTmp.Close;
      sl.Free;
      sl_params.Free;
      sl_param.Free;
      raise Exception.Create('��Ŀ���ݿ���ܲ����ڣ���ɾ������Ŀ�����½�����Ŀ!');
      exit;
    end;
    if F_DT.FDQryTmp.RecordCount = 0 then
      is_exist := '0'
    else
      is_exist := '1';
    F_DT.FDQryTmp.Close;
    // ===========================================

    if is_exist = '1' then // ���洢���̻������ڣ����ټ���   ���������Զ����еġ�del_proc() ͬʱӦɾ������
    begin
      sl.Free;
      sl_params.Free;
      sl_param.Free;
      exit;
    end;
    // �����洢���̻���
    try
      F_DT.FDQryTmp.Close;
      F_DT.FDQryTmp.SQL.Clear;
      for i := 0 to sl.Count - 1 do
      begin
        while (Length(Trim(sl[i])) = 0) or (Copy(Trim(sl[i]), 0, 2) = '--') or (UpperCase(Trim(sl[i])) = 'GO') do
        // �����г���Ϊ0����--��ͷ������������
        begin
          sl.Delete(i); // ����ǰ���еĿ��к�ע��
          if i >= sl.Count - 1 then
            Break;
        end;
        if (i < sl.Count - 1) then
          F_DT.FDQryTmp.SQL.Add(sl[i])
        else
        begin
          if (i = sl.Count - 1) then
          begin
            if (Length(Trim(sl[i])) > 0) and (Copy(Trim(sl[i]), 0, 2) <> '--') and (UpperCase(Trim(sl[i])) <> 'GO') then
              F_DT.FDQryTmp.SQL.Add(sl[i]);
          end;
          Break;
        end;
      end;
      F_DT.FDQryTmp.Prepared;
      F_DT.FDQryTmp.ExecSQL;
      F_DT.FDQryTmp.Close;
    except
      F_DT.FDQryTmp.Close;
      sl.Free;
      sl_params.Free;
      sl_param.Free;
      raise Exception.Create('��ģ����������ģ�ʹ��룡');
      exit;
    end;
    // ����״̬����ɾ��������洢����
  end;
  sl.Free;
  sl_params.Free;
  sl_param.Free;
{$ENDREGION}
end;

// uses ComObj

function IsUtf8Format(buffer: PAnsiChar; SIZE: Int64): Boolean;
var
  ii: Integer;
  tmp: Byte;
begin
  Result := True;
  ii := 0;
  while ii < SIZE do
  begin
    tmp := Byte(buffer[ii]);
    if tmp < $80 then // ֵС��0x80��ΪASCII�ַ�
      Inc(ii)
    else if tmp < $C0 then // ֵ����0x80��0xC0֮���Ϊ��ЧUTF-8�ַ�
    begin
      Result := False;
      Break;
    end
    else if tmp < $E0 then // �˷�Χ��Ϊ2�ֽ�UTF-8�ַ�
    begin
      if ii >= SIZE - 1 then
        Break;
      if (Byte(buffer[ii + 1]) and $C0) <> $80 then
      begin
        Result := False;
        Break;
      end;
      Inc(ii, 2);
    end
    else if tmp < $F0 then // �˷�Χ��Ϊ3�ֽ�UTF-8�ַ�
    begin
      if ii >= SIZE - 2 then
        Break;
      if ((Byte(buffer[ii + 1]) and $C0) <> $80) or ((Byte(buffer[ii + 2]) and $C0) <> $80) then
      begin
        Result := False;
        Break;
      end;
      Inc(ii, 3);
    end
    else
    begin
      Result := False;
      Break;
    end;
  end;
end;

function IsUtf8File(const fileName: string): Boolean;
// ȫ���ж��ļ��Ƿ�ΪUTF-8���루����IsUtf8Format��
var
  // fStream: TFileStream;
  fStream: TBufferedFileStream;
  readSize: Int64;
  context: AnsiString;
const
  // MaxReadSize: Int64 = 536870912; // ����ȡ512M�����ж�
  MaxReadSize: Int64 = 104857600; // ����ȡ100M�����ж�
begin

  fStream := TBufferedFileStream.Create(fileName, fmOpenRead or fmShareDenyNone, 32768);
  // fStream := TFileStream.Create(fileName, fmOpenRead or fmShareDenyNone);
  try

    if fStream.SIZE > MaxReadSize then
      readSize := MaxReadSize
    else
      readSize := fStream.SIZE;

    SetLength(context, readSize);
    // �ļ�̫���ڴ������   ���ַ�����1.���Ļ�����ƣ�������ˣ���2.size��Сһ�㣬��Ҫȫ���ж�
    fStream.Read(context[1], readSize); // Ϊʲô��context[1]��������context����
    if IsUtf8Format(PAnsiChar(context), readSize) then
      Result := True
    else
      Result := False;
  finally
    fStream.Free;
  end;
end;

function WordLoHiExchange(w: Word): Word; register;
asm
  XCHG    AL, AH
end; { TextFormat�����ı��������ͣ�sTextδ��������ı� }

function GetTextType(const fileName: string): string;
var
  w: Word;
begin
  with TFileStream.Create(fileName, fmOpenRead or fmShareDenyNone) do
    try
      Read(w, 2);
      w := WordLoHiExchange(w); // ��Ϊ����Word�������Ͷ�ȡ���ʸߵ��ֽڻ���
      if w = TextFormatFlag[Unicode] then
        Result := 'Unicode'
      else if w = TextFormatFlag[UnicodeBigEndian] then
        Result := 'UnicodeBigEndian'
      else if w = TextFormatFlag[Utf8] then // ������Ҫ�жϵ�3���ֽڵģ���ͨ����ʡ��
        Result := 'Utf8'
      else
        Result := 'Ansi'; // ʵ�������ļ�ͷ��������$0000�жϵ�Ŷ
    finally
      Free;
    end;
end;

function getGUID(): string; // ��ȡGuid
var
  sGUID: string;
begin
  sGUID := CreateClassID;
  // ShowMessage(sGUID); // ���ߴ������ŵ�Guid
  Delete(sGUID, 1, 1);
  Delete(sGUID, Length(sGUID), 1);
  // ShowMessage(sGUID); // ȥ�������ŵ�Guid��ռ36λ�м��м���
  sGUID := StringReplace(sGUID, '-', '', [rfReplaceAll]);
  // ShowMessage(sGUID); // ȥ�����ŵ�Guid��ռ32λ
  Result := sGUID;
end;

function GetBuildInfo: string; // ��ȡ�汾��
var
  verinfosize: DWORD;
  verinfo: Pointer;
  vervaluesize: DWORD;
  vervalue: PVSFixedFileInfo;
  dummy: DWORD;
  v1, v2, v3, v4: Word;
begin
  verinfosize := GetFileVersionInfoSize(PChar(ParamStr(0)), dummy);
  if verinfosize = 0 then
  begin
    dummy := GetLastError;
    Result := '0.0.0.0';
  end;
  GetMem(verinfo, verinfosize);
  GetFileVersionInfo(PChar(ParamStr(0)), 0, verinfosize, verinfo);
  VerQueryValue(verinfo, '\', Pointer(vervalue), vervaluesize);
  with vervalue^ do
  begin

    v1 := dwfileversionms shr 16;
    v2 := dwfileversionms and $FFFF;
    v3 := dwfileversionls shr 16;
    v4 := dwfileversionls and $FFFF;
  end;
  Result := IntToStr(v1) + '.' + IntToStr(v2) + '.' + IntToStr(v3) + '.' + IntToStr(v4);
  FreeMem(verinfo, verinfosize);
end;

function IsIntStr(const S: string): Boolean;
begin
  if StrToIntDef(S, 0) = StrToIntDef(S, 1) then
    Result := True
  else
    Result := False;
end;

function trim0(S: string): string;
begin
  while Copy(S, 1, 1) = '0' do
    S := Copy(S, 2, Length(S) - 1);
  if Length(S) = 0 then
    S := '0';
  trim0 := S;
end;

function SplitString(const Source, ch: string): TStringList;
var
  temp: string;
  i: Integer;
begin
  Result := TStringList.Create;
  // ����ǿ��Է����򷵻ؿ��б�
  if Source = '' then
    exit;
  temp := Source;
  i := pos(ch, Source);
  while i <> 0 do
  begin
    Result.Add(Copy(temp, 0, i - 1));
    Delete(temp, 1, i);
    i := pos(ch, temp);
  end;
  Result.Add(temp);
end;


// �ַ����Ƿ�������֣��Ƿ����棬���򷵻ؼ�

function ifincludehz(strtxt: string): Boolean;
var
  i: Integer;
begin
  // ���ж�Ҫ��ȡ���ַ������һ���ֽڵ�����
  // ���Ϊ���ֵĵ�һ���ֽ����(��)һλ
  Result := False;
  for i := 0 to Length(strtxt) do
  begin
    if ByteType(strtxt, i) = mbLeadByte then
    begin
      Result := True;
      Break;
    end;
  end;
end;

// �ַ����м��Ƿ�����ո��Ƿ����棬���򷵻ؼ�

function IfIncludeKG(strtxt: string): Boolean;
var
  i: Integer;
begin
  // ���ж�Ҫ��ȡ���ַ������һ���ֽڵ�����
  // ���Ϊ���ֵĵ�һ���ֽ����(��)һλ
  strtxt := Trim(strtxt);
  Result := False;
  for i := 1 to Length(strtxt) do
  begin
    if (strtxt[i] = ' ') or (strtxt[i] = '"') or (strtxt[i] = ' ') then
    begin
      Result := True;
      Break;
    end;
  end;
end;

function IfIncludeSubStr(substrtxt, strtxt: string): Boolean;
begin
  // ���ж��Ƿ�����Ӵ�������������false�������һ�� ,
  if pos(substrtxt, strtxt) = 0 then
  begin
    if Application.MessageBox(PChar('��������˻���Ϣû�С�' + substrtxt + '���ֶΣ���Ӱ��ȶ�ɸѡ�����������룬��ȷ����ť������ȡ�����������������˻����ݣ����е��롣'), '�������ݲɼ�������', MB_OKCANCEL + MB_ICONWARNING + MB_TOPMOST) = IDOK
    then
      Result := False
    else
      Result := True;
  end
  else
    Result := False;
end;

function IfInSFZL(strtxt: string; i_start, i_count: Integer): Boolean;
// �ж��ַ����Ƿ��ڷ�Χ��
var
  i, j: Integer;
  S: string;
  slColumName: TStringList;
  s_ok: Boolean;
begin
  if Length(Trim(strtxt)) > 0 then
  begin
    // �ָ�����Ϣ
    slColumName := TStringList.Create;
    slColumName.Delimiter := ';';
    slColumName.DelimitedText := strtxt;
    for j := 0 to slColumName.Count - 1 do
    begin
      s_ok := False; // ��ʼ���ڷ�Χ
      for i := i_start to i_count do
      begin
        S := IntToStr(i);
        if Length(S) = 1 then
          S := '0' + S;
        if slColumName[j] = S then // �����ھ��˳�ѭ��������Ϊ�棻������������Ƚϣ��Ƚ����ˣ���δ��ʼ��
        begin
          s_ok := True; // ���ڷ�Χ
          Break;
        end;
      end;
      if s_ok then
        Break;
    end;
    Result := s_ok;
  end
  else
    Result := False;
end;

function IfInSFZL1(strtxt: string; i_count: Integer): Boolean;
// �ж��ַ����Ƿ��ڷ�Χ�ڣ�i_countС��9��
var
  i, j: Integer;
  S: string;
  slColumName: TStringList;
  s_ok: Boolean;
begin

  if Length(Trim(strtxt)) > 0 then
  begin
    // �ָ�����Ϣ
    slColumName := TStringList.Create;
    slColumName.Delimiter := ';';
    slColumName.DelimitedText := strtxt;
    for j := 0 to slColumName.Count - 1 do
    begin
      s_ok := False; // ��ʼ���ڷ�Χ
      for i := 0 to i_count do
      begin
        S := IntToStr(i);
        if slColumName[j] = S then // �����ھ�ѭ����ȥ
        begin
          s_ok := True; // ���ڷ�Χ
          Break;
        end;
      end;
      if s_ok then
        Break;
    end;
    Result := s_ok;
  end
  else
    Result := False;
end;

function IfDate(strtxt: string): Boolean; // �ж��ַ����Ƿ�yyyymmdd��ʽ
var
  i, n: Integer;
  nDate: TDateTime;
  slColumName: TStringList;
  is_ok: Boolean;
begin
  slColumName := TStringList.Create;
  slColumName.Delimiter := ';';
  slColumName.DelimitedText := strtxt;
  // Application.MessageBox(PChar(strtxt+inttostr(slColumName.Count)), '��Ϣ', MB_OK +
  // MB_ICONWARNING + MB_TOPMOST);
  is_ok := True;
  for i := 0 to slColumName.Count - 1 do
  begin
    // Application.MessageBox(PChar(slColumName[i]), '��Ϣ', MB_OK +
    // MB_ICONWARNING + MB_TOPMOST);

    if not TryStrToInt(Trim(slColumName[i]), n) then
    begin
      is_ok := False;
      Break;
    end;
    if not TryEncodeDate(n div 10000, (n mod 10000) div 100, n mod 100, nDate) then
    begin
      is_ok := False;
      Break;
    end;
    Result := is_ok;
  end;
end;

function IfNum(Str: string): Boolean; // �ж��ַ����Ƿ�����
var
  i: Integer;
begin
  Result := True;
  for i := 1 to Length(Str) do
    if not(Str[i] in ['0' .. '9']) then
    begin
      Result := False;
      Break;
    end;
end;

function GetContentFromFile(fileName: string): string;
var
  fs: TFileStream;
  Str: string;
begin
  fs := TFileStream.Create(fileName, fmOpenRead);
  try
    SetLength(Str, fs.SIZE);
    fs.ReadBuffer((PChar(Str))^, fs.SIZE);
    Result := Str;
  finally
    fs.Free;
  end;
end;

function findArray(colNames: array of string; a_key: array of string): Integer;
var
  i, j, i_result, i_col_len, i_key_len: Integer;
begin
  i_col_len := Length(colNames);
  i_key_len := Length(a_key);
  i_result := -1;
  for i := 0 to i_key_len - 1 do
  begin
    for j := 0 to i_col_len - 1 do
    begin
      if colNames[j] = a_key[i] then
        Break;
    end;
    if j = i_col_len then
      i_result := Max(i_result, -1)
    else
      i_result := j;
  end;
  Result := i_result;
end;

// �������в���stringlist��Ԫ�أ�δ�ҵ�������-1���ҵ�һ������0�����ϵ����֣��ҵ��������ϣ����ص�һ���ҵ��ġ� find_stateΪ״̬.
function findStrList(var find_state: Integer; a_colNames: array of string; list_key: TStringList): Integer;
// find_stateΪ״̬������ʱ�������
var
  i, j, i_result, i_col_len, i_key_len, i_rept: Integer;
begin
  // list_key.Create;
  // list_key.StrictDelimiter:=True;
  // list_key.StrictDelimiter := True;
  // list_key.Delimiter := '|';
  i_rept := 0;
  i_col_len := Length(a_colNames);
  i_key_len := list_key.Count;
  for i := 0 to i_key_len - 1 do
  begin
    for j := 0 to i_col_len - 1 do
    begin
      if a_colNames[j] = list_key[i] then
      begin
        Inc(i_rept);
        if i_rept = 1 then
          i_result := j
      end;
    end;
  end;
  if i_rept = 1 then
  begin
    Result := i_result;
    find_state := i_result;
  end
  else if i_rept = 0 then
  begin
    find_state := -1;
    Result := -1;
  end
  else
  begin
    find_state := -2;
    Result := i_result;
  end;
end;

end.
