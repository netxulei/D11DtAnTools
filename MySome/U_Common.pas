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
  R_proc: array of TProcRec; // 参数数组
  t_ProcFunName: string;
  t_isProc: Boolean;
  globle_tab, dict_list_col, // 字段类型列表
  dict_list_reg, // 校验规则列表
  t_connect, // 连接字
  t_mod_pass, // 开放模式密码
  t_proj_no, t_proj_name, // 项目编号和名称
  t_Database, t_ZHSys_Date, // 项目数据库和系统数据库
  t_bank_code: string;
  // t_table1_name, t_table2_name, // 附属表名称
  // t_table1_name_other, t_table2_name_other: string;
  // t_Getdata_Mod, t_Getdata_Mod_yh: string;
  // t_table1_sql_dw, t_table2_sql_dw, t_table1_sql_gr, t_table2_sql_gr, t_table1_sql_other, t_table2_sql_other: string;
  // t_table2_sql_order, t_table2_other_order: string;
  t_key_name, t_ver_no, t_ver_name, t_TimeOut, t_Jclj_Ver, t_Jrjgbm: string;
  t_key_nameLS, t_ver_noLS, t_ver_nameLS: TStrings;
  t_Last_RHZH_EX, t_Last_RHJX_EX, t_Last_RHZH_DW, t_Last_RHZH_GR, t_Last_SHZH_DW, t_Last_SHZH_GR, t_Last_SHJY_DW, t_Last_SHJY_GR: string;
  t_ver, // 版本号
  t_type, // 软件版本列表 1|2|3
  t_mode, // 开放模式标志
  t_database_ver: string;
  t_modl_type: string; // 运行模型时记录模型类型
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
// 验证模型代码，返回全局R_proc,t_ProcFunName,t_isProc（是否存储过程），执行情况下完成存储过程或函数的建立

function IsIntStr(const S: string): Boolean;

function trim0(S: string): string;

function SplitString(const Source, ch: string): TStringList;

function ifincludehz(strtxt: string): Boolean;

function IfIncludeKG(strtxt: string): Boolean;

function IfIncludeSubStr(substrtxt, strtxt: string): Boolean;

function IfInSFZL(strtxt: string; i_start, i_count: Integer): Boolean;
// 判读字符串是否在范围内

function IfInSFZL1(strtxt: string; i_count: Integer): Boolean;
// 判读字符串是否在范围内（i_count小于9）

function IfDate(strtxt: string): Boolean; // 判读字符串是否yyyymmdd格式

function IfNum(Str: string): Boolean; // 判读字符串是否数字

function GetContentFromFile(fileName: string): string; // 文件转到字符串

function findArray(colNames: array of string; a_key: array of string): Integer;
// 数组查找数组中字符串

function findStrList(var find_state: Integer; a_colNames: array of string; list_key: TStringList): Integer;
// 从数组中查找stringlist中各元素

function GetBuildInfo: string; // 获取版本号

function getGUID(): string; // 获取Guid

function GetTextType(const fileName: string): string; // BOM方式返回文本格式信息

function IsUtf8Format(buffer: PAnsiChar; SIZE: Int64): Boolean;
// 全文判断文件是否为 UTF-8编码

function IsUtf8File(const fileName: string): Boolean;
// 全文判断文件是否为UTF-8编码（基于IsUtf8Format）

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
  i_cnt1, i_cnt2, i_cnt3, i_cnt4: Integer; // 代码@、参数字段@、!、:三个符号出现的数量
  creaFlag, procFlag, funcFlag, asFlag, withFlag, encrFlag, retuFlag, is_exist: Char; // 关键字判断
  User_can: ShortString;
begin
  SetLength(R_proc, 0); // 初始化参数数组
  // 是否允许用户执行 函数不能设置用户执行
  User_can := FDQryTree.FieldByName('t_hide').AsString;
  // 模型参数
  sParamField := Trim(FDQryTree.FieldByName('t_para').AsString); // 模型参数
  sParamField := StringReplace(sParamField, ' ', '', [rfReplaceAll]); // 去空格
  sParamField := StringReplace(sParamField, '＠', '@', [rfReplaceAll]); // 中文换英文
  sParamField := StringReplace(sParamField, '：', ':', [rfReplaceAll]);
  sParamField := StringReplace(sParamField, '！', '!', [rfReplaceAll]);
  // 模型代码，流的方式记录到sl，避免临时文件过渡
  MS := TStringStream.Create;
  TBlobField(FDQryTree.FieldByName('t_proc')).SaveToStream(MS); // 数据库字段保存到流
  sLine := MS.DataString; // string转字符串
  MS.Free; // 流转换为字符串列表，完成任务
  sLine := StringReplace(sLine, #$D#$A, '|', [rfReplaceAll]); // 替换回车换行为|号
  sLine := StringReplace(sLine, #$A, '|', [rfReplaceAll]);
  sLine := StringReplace(sLine, #$D, '|', [rfReplaceAll]);
  sl := TStringList.Create;
  sl.StrictDelimiter := True;
  sl.Delimiter := '|';
  sl_params := TStringList.Create; // 读取的参数行以空格分割到列表，判断某些关键词是否存在  ，同时获得某些参数
  sl_params.StrictDelimiter := True;
  sl_params.Delimiter := ','; // 都好分割每个参数
  sl_param := TStringList.Create; // 读取的参数行以空格分割到列表，判断某些关键词是否存在  ，同时获得某些参数
  sl_param.StrictDelimiter := True;
  sl_param.Delimiter := ' '; // 空格分割参数名和类型
  // --------------------------------------
  sl.DelimitedText := sLine; // sl记录了文件的每行数据
  if sl.Count = 0 then
  begin
    MessageDlg('该模型没有对应实现代码！', mtInformation, [mbOK], 0);
    sl.Free;
    exit;
  end;
  // sl_count := sl.Count;
  // 读取文件头,获取参数等信息到sLine  ，同时清理空行和注释行
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
  for i := 0 to sl.Count - 1 do // sl为所有行列表
  begin
    while (Length(Trim(sl[i])) = 0) or (Copy(Trim(sl[i]), 0, 2) = '--') do // 若本行长度为0或以--开头，则抛弃此行
    begin
      sl.Delete(i); // 抛弃前几行的空行和注释行
      if sl.Count = 0 then
      begin
        MessageDlg('该模型没有对应实现代码！', mtInformation, [mbOK], 0); // 无代码
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
    if asFlag = '1' then // 如果有AS语句，退出，否则继续读取判断
      Break;
  end;
  // 循环之后得到参数行
  if creaFlag = '0' then
    sError1 := sError1 + '"CREATE"';
  if (procFlag = '0') and (funcFlag = '0') then
    sError1 := sError1 + '"PROCEDURE或FUNCTION"';
  if (retuFlag = '0') and (funcFlag = '1') then
    sError1 := sError1 + '"RETURNS(Function)"';
  if asFlag = '0' then
    sError1 := sError1 + '"AS"';
  if withFlag = '0' then
    sError1 := sError1 + '"WITH"';
  if (procFlag = '1') and (encrFlag = '0') then
    sError1 := sError1 + '"ENCRYPTION(Procedure)"';
  if (funcFlag = '1') and (User_can = '1') then
    sError2 := sError2 + '2."函数只能在代码中使用，不能设为用户执行"';
  if Length(sError1) > 0 then
    sError := '1.模型代码缺少必要的关键字:' + sError1;

  if Length(sError2) > 0 then
    sError := sError + sError2;

  if Length(sError) > 0 then
  begin
    MessageDlg(PChar(sError) + '，请退出后完善模型代码！', mtError, [mbOK], 0);
    sl.Free;
    sl_params.Free;
    sl_param.Free;
    exit;
  end;
  // 校验后返回类型是否存储过程（自动执行时函数不能执行，只执行存储过程）
  if (procFlag = '1') then
    t_isProc := True
  else
    t_isProc := False;

  var
    m: tmatch;
  m := TRegex.match(sParamCode, '(?<= PROCEDURE ).*?(?= WITH )');
  if m.Success then
    sParamCode := Trim(m.Value) // Procedure 和Witn 之间的字符串 包括存储过程或函数名称、参数等
  else
  begin
    m := TRegex.match(sParamCode, '(?<=FUNCTION ).*?(?=RETURNS )');
    if m.Success then
      sParamCode := Trim(m.Value)
  end;

  // 获得存储过程或函数名称 ，从头到第一个空格或（ 结束--用于查找该存储过程是否已存在，存在则删除，执行建立存储过程看是否错误----------------
  i_len := Length(sParamCode);
  sqlname := '';
  for ii := 1 to i_len do // 字符串为字符数组，序号从1开始？
  begin
    if (sParamCode[ii] <> ' ') and (sParamCode[ii] <> '(') then
      sqlname := sqlname + sParamCode[ii]
    else
      Break;
  end;
  // 清除SQLserver定界符号  方括号和双引号。因为要得到存储过程或函数名
  // 删除存储过程中的所有者如"dbo."等   ,名称变大写
  sqlname := StringReplace(sqlname, '[', '', [rfReplaceAll]);
  sqlname := StringReplace(sqlname, ']', '', [rfReplaceAll]);
  sqlname := StringReplace(sqlname, '"', '', [rfReplaceAll]);
  sqlname := StringReplace(sqlname, '"', '', [rfReplaceAll]);
  sqlname := UpperCase(sqlname);
  sqlname := StringReplace(sqlname, 'DBO.', '', [rfReplaceAll]);
  // i_pos1 := pos('.', sqlname);
  // if i_pos1 > 0 then
  // Delete(sqlname, 1, i_pos1);

  t_ProcFunName := sqlname; // 付给全局，执行使用
  // ShowMessage(sqlname);
  // exit;
  // -------sqlname为获取的存储过程名称------------------------------------------------------------------
{$REGION '存储过程要校验信息参数与代码中参数的匹配性，以及取得信息参数的值用于运行'}
  // ---如果是函数，不考虑运行参数的事，函数只在存储过程中使用，只建立，不执行（参数信息有无内容，不予考虑）
  if procFlag = '1' then
  begin
    // 获取参数字段的参数（参数数量不定，用数组？）
    // sParamCode s1="(@aa int,@bb char(8),@cc string )"   取消其他字符后再取参数？
    // sParamField s2="@提示!类型:20090101@提示2!类型:20091231"
    // sParamCode := StringReplace(sParamCode, ')', '', [rfReplaceAll]);
    // sParamCode := StringReplace(sParamCode, '(', '', [rfReplaceAll]);

    // ----代码中@的个数----------------------
    // 删除第一个@前的所有字符
    i_pos1 := pos('@', sParamCode);
    if i_pos1 = 0 then
      i_cnt1 := 0
    else
    begin
      Delete(sParamCode, 1, i_pos1 - 1);
      sParamCode := Trim(sParamCode);
      if RightStr(sParamCode, 1) = ')' then
        sParamCode := Copy(sParamCode, 1, Length(sParamCode) - 1);

      i_len := Length(sParamCode); // 重新获得长度
      // 统计@出现的次数
      i_cnt1 := 0; // 代码第一行
      for ii := 1 to i_len do
        if sParamCode[ii] = '@' then
          Inc(i_cnt1);
    end;
    // -----参数信息中@！：个数
    i_cnt2 := 0; // 参数字段
    for ii := 1 to Length(sParamField) do
      if sParamField[ii] = '@' then
        Inc(i_cnt2);
    i_cnt3 := 0; // 参数字段
    for ii := 1 to Length(sParamField) do
      if sParamField[ii] = '!' then
        Inc(i_cnt3);
    i_cnt4 := 0; // 参数字段
    for ii := 1 to Length(sParamField) do
      if sParamField[ii] = ':' then
        Inc(i_cnt4);
    if (i_cnt2 <> i_cnt3) or (i_cnt3 <> i_cnt4) or (i_cnt2 <> i_cnt4) then
    begin
      MessageDlg('参数信息中关键字“@”、“！”、“:”不匹配(三个字符分别配上对应内容组成一个参数信息)！', mtInformation, [mbOK], 0);
      sl.Free;
      sl_params.Free;
      sl_param.Free;
      exit;
    end;
    if i_cnt1 <> i_cnt2 then
    begin
      MessageDlg('参数信息中参数与代码中参数数量不匹！', mtInformation, [mbOK], 0);
      sl.Free;
      sl_params.Free;
      sl_param.Free;
      exit;
    end;
    // 获得信息参数中每个参数信息类型，只能为N、D、S

{$REGION' ---如果i_cnt1>0，则获得每一个参数到记录数组-------'}
    if i_cnt1 > 0 then // 代码参数中含有@字符，表明有参数信息
    begin
      SetLength(R_proc, i_cnt1);
      // 代码中参数名和类型
      sl_params.DelimitedText := sParamCode;
      for i := 0 to sl_params.Count - 1 do
      begin
        sl_param.DelimitedText := sl_params[i];
        R_proc[i].s_para_name := sl_param[0];
        R_proc[i].s_para_lx_code := sl_param[1];
      end;
      // ------
      // 参数信息中提示、类型、值
      sl_params.Delimiter := '@';
      sParamField := Copy(sParamField, 2, Length(sParamField)); // 剔除前置@
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
          MessageDlg('参数信息中数据类型不正确！', mtInformation, [mbOK], 0);
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
  // ----------若为验证，在系统数据库中执行以下：删除存储过程，再建立存储过程，看是否出错。运行时要在项目数据库执行
  if not isRun then
{$REGION '验证状态---'}
  begin
    // 存在则删除
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
    // 测试建立存储过程 或函数        基于程序集的函数测试会出错，如regex.isMatch
    try
      F_DT.FDQryTmp.Close;
      F_DT.FDQryTmp.SQL.Clear;
      for i := 0 to sl.Count - 1 do
      begin
        while (Length(Trim(sl[i])) = 0) or (Copy(Trim(sl[i]), 0, 2) = '--') or (UpperCase(Trim(sl[i])) = 'GO') do
        // 若本行长度为0或以--开头，则抛弃此行
        begin
          sl.Delete(i); // 抛弃前几行的空行和注释
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
      raise Exception.Create('模型代码入库测试错误！利用数据库工具进行调试，成功后在此保存模型代码！');
      exit;
    end;
    // 测试完，存在则删除
    // 存在则删除
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
    MessageDlg('模型代码符合规范。但模型的运行基于具体的项目和数据，建议模型代码设计时考虑可能出现的问题并给予提示。', mtInformation, [mbOK], 0);
  end
{$ENDREGION}
  else
{$REGION '运行状态---'}
  begin
    // 判断存储过程是否存在，不存在则建立 ，首先判断项目库是否存在，若不存在，不执行 （主要用于自动执行部分）
    // 执行正常模型时，会判断是否有项目，提示建立项目。项目建立完毕，会auto_proc(无需delete_proc);模型维护完毕首先delete，再autoProc
    // 准备连接F_DT.FDConGen、F_DT.FDConSYS在login阶段连接字以设定，F_DT.fdconProj在login阶段读取t_database、项目维护后发生改变
    F_DT.FDConGen.Connected := False;
    // F_DT.FDConGen.ConnectionString := t_connect;  //不带数据库名称的连接
    F_DT.FDQryTmp.Connection := F_DT.FDConGen;
    F_DT.fdconProj.Connected := False;
    // 准备基于项目的连接
    F_DT.fdconProj.ConnectionString := t_connect + 'Database=' + t_Database + ';';
    // 判断项目数据库是否存在--------------
    F_DT.FDQryTmp.SQL.Clear;
    F_DT.FDQryTmp.SQL.Text := 'select name from master..sysdatabases where name = ' + '''' + t_Database + '''';
    F_DT.FDQryTmp.Open;
    if F_DT.FDQryTmp.RecordCount <= 0 then
    begin
      F_DT.FDQryTmp.Close;
      F_DT.FDConGen.Connected := False;
      if not isAuto then // 非自动运行模式显示出错信息 ，自动运行，直接返回了
        MessageDlg('项目数据库不存在或损坏，请删除此项目，重新建立项目!。', mtInformation, [mbOK], 0);
      sl.Free;
      sl_params.Free;
      sl_param.Free;
      exit;
    end; // 自动运行模式直接继续
    // -------------------
    // 判断存储过程或函数是否存在 ==============
    try
      if procFlag = '1' then
        sqltext := 'SELECT * FROM sys.objects WHERE Type =' + '''' + 'P' + '''' + ' AND name=' + '''' + sqlname + '''';
      if funcFlag = '1' then
        sqltext := 'select name from sysobjects where Name =' + '''' + sqlname + '''' + ' and (type =' + '''' + 'AF' + '''' + ' or type =' + '''' + 'FN' + '''' + ' or type =' +
          '''' + 'FS' + '''' + ' or type =' + '''' + 'FT' + '''' + ' or type =' + '''' + 'IF' + '''' + ' or type =' + '''' + 'TF' + '''' + ')';
      F_DT.FDQryTmp.Connection := F_DT.fdconProj; // 判断存储过程是否存在
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
      raise Exception.Create('项目数据库可能不存在，请删除此项目，重新建立项目!');
      exit;
    end;
    if F_DT.FDQryTmp.RecordCount = 0 then
      is_exist := '0'
    else
      is_exist := '1';
    F_DT.FDQryTmp.Close;
    // ===========================================

    if is_exist = '1' then // 若存储过程或函数存在，则不再继续   函数都是自动运行的。del_proc() 同时应删除函数
    begin
      sl.Free;
      sl_params.Free;
      sl_param.Free;
      exit;
    end;
    // 建立存储过程或函数
    try
      F_DT.FDQryTmp.Close;
      F_DT.FDQryTmp.SQL.Clear;
      for i := 0 to sl.Count - 1 do
      begin
        while (Length(Trim(sl[i])) = 0) or (Copy(Trim(sl[i]), 0, 2) = '--') or (UpperCase(Trim(sl[i])) = 'GO') do
        // 若本行长度为0或以--开头，则抛弃此行
        begin
          sl.Delete(i); // 抛弃前几行的空行和注释
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
      raise Exception.Create('建模错误！请完善模型代码！');
      exit;
    end;
    // 运行状态不再删除函数或存储过程
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
    if tmp < $80 then // 值小于0x80的为ASCII字符
      Inc(ii)
    else if tmp < $C0 then // 值介于0x80与0xC0之间的为无效UTF-8字符
    begin
      Result := False;
      Break;
    end
    else if tmp < $E0 then // 此范围内为2字节UTF-8字符
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
    else if tmp < $F0 then // 此范围内为3字节UTF-8字符
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
// 全文判断文件是否为UTF-8编码（基于IsUtf8Format）
var
  // fStream: TFileStream;
  fStream: TBufferedFileStream;
  readSize: Int64;
  context: AnsiString;
const
  // MaxReadSize: Int64 = 536870912; // 最多读取512M数据判断
  MaxReadSize: Int64 = 104857600; // 最多读取100M数据判断
begin

  fStream := TBufferedFileStream.Create(fileName, fmOpenRead or fmShareDenyNone, 32768);
  // fStream := TFileStream.Create(fileName, fmOpenRead or fmShareDenyNone);
  try

    if fStream.SIZE > MaxReadSize then
      readSize := MaxReadSize
    else
      readSize := fStream.SIZE;

    SetLength(context, readSize);
    // 文件太大内存溢出，   两种方案：1.流的缓存机制（解决不了）；2.size变小一点，不要全文判断
    fStream.Read(context[1], readSize); // 为什么是context[1]，而不是context？？
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
end; { TextFormat返回文本编码类型，sText未经处理的文本 }

function GetTextType(const fileName: string): string;
var
  w: Word;
begin
  with TFileStream.Create(fileName, fmOpenRead or fmShareDenyNone) do
    try
      Read(w, 2);
      w := WordLoHiExchange(w); // 因为是以Word数据类型读取，故高低字节互换
      if w = TextFormatFlag[Unicode] then
        Result := 'Unicode'
      else if w = TextFormatFlag[UnicodeBigEndian] then
        Result := 'UnicodeBigEndian'
      else if w = TextFormatFlag[Utf8] then // 本来需要判断第3个字节的，但通常可省略
        Result := 'Utf8'
      else
        Result := 'Ansi'; // 实际是无文件头，而不是$0000判断的哦
    finally
      Free;
    end;
end;

function getGUID(): string; // 获取Guid
var
  sGUID: string;
begin
  sGUID := CreateClassID;
  // ShowMessage(sGUID); // 两边带大括号的Guid
  Delete(sGUID, 1, 1);
  Delete(sGUID, Length(sGUID), 1);
  // ShowMessage(sGUID); // 去掉大括号的Guid，占36位中间有减号
  sGUID := StringReplace(sGUID, '-', '', [rfReplaceAll]);
  // ShowMessage(sGUID); // 去掉减号的Guid，占32位
  Result := sGUID;
end;

function GetBuildInfo: string; // 获取版本号
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
  // 如果是空自符串则返回空列表
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


// 字符串是否包含汉字，是返回真，否则返回假

function ifincludehz(strtxt: string): Boolean;
var
  i: Integer;
begin
  // 先判断要截取的字符串最后一个字节的类型
  // 如果为汉字的第一个字节则减(加)一位
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

// 字符串中间是否包含空格，是返回真，否则返回假

function IfIncludeKG(strtxt: string): Boolean;
var
  i: Integer;
begin
  // 先判断要截取的字符串最后一个字节的类型
  // 如果为汉字的第一个字节则减(加)一位
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
  // 先判断是否包含子串，不包括返回false，否则进一步 ,
  if pos(substrtxt, strtxt) = 0 then
  begin
    if Application.MessageBox(PChar('欲导入的账户信息没有“' + substrtxt + '”字段，会影响比对筛选。若继续导入，则确定按钮，否则取消后，重新下载人行账户数据，再行导入。'), '人行数据采集有问题', MB_OKCANCEL + MB_ICONWARNING + MB_TOPMOST) = IDOK
    then
      Result := False
    else
      Result := True;
  end
  else
    Result := False;
end;

function IfInSFZL(strtxt: string; i_start, i_count: Integer): Boolean;
// 判读字符串是否在范围内
var
  i, j: Integer;
  S: string;
  slColumName: TStringList;
  s_ok: Boolean;
begin
  if Length(Trim(strtxt)) > 0 then
  begin
    // 分割子信息
    slColumName := TStringList.Create;
    slColumName.Delimiter := ';';
    slColumName.DelimitedText := strtxt;
    for j := 0 to slColumName.Count - 1 do
    begin
      s_ok := False; // 初始不在范围
      for i := i_start to i_count do
      begin
        S := IntToStr(i);
        if Length(S) = 1 then
          S := '0' + S;
        if slColumName[j] = S then // 若等于就退出循环并设置为真；不等于则继续比较，比较完了，仍未初始假
        begin
          s_ok := True; // 不在范围
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
// 判读字符串是否在范围内（i_count小于9）
var
  i, j: Integer;
  S: string;
  slColumName: TStringList;
  s_ok: Boolean;
begin

  if Length(Trim(strtxt)) > 0 then
  begin
    // 分割子信息
    slColumName := TStringList.Create;
    slColumName.Delimiter := ';';
    slColumName.DelimitedText := strtxt;
    for j := 0 to slColumName.Count - 1 do
    begin
      s_ok := False; // 初始不在范围
      for i := 0 to i_count do
      begin
        S := IntToStr(i);
        if slColumName[j] = S then // 若等于就循环下去
        begin
          s_ok := True; // 不在范围
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

function IfDate(strtxt: string): Boolean; // 判读字符串是否yyyymmdd格式
var
  i, n: Integer;
  nDate: TDateTime;
  slColumName: TStringList;
  is_ok: Boolean;
begin
  slColumName := TStringList.Create;
  slColumName.Delimiter := ';';
  slColumName.DelimitedText := strtxt;
  // Application.MessageBox(PChar(strtxt+inttostr(slColumName.Count)), '信息', MB_OK +
  // MB_ICONWARNING + MB_TOPMOST);
  is_ok := True;
  for i := 0 to slColumName.Count - 1 do
  begin
    // Application.MessageBox(PChar(slColumName[i]), '信息', MB_OK +
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

function IfNum(Str: string): Boolean; // 判读字符串是否数字
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

// 从数组中查找stringlist各元素，未找到，返回-1，找到一个返回0及以上的数字，找到两个以上，返回第一个找到的。 find_state为状态.
function findStrList(var find_state: Integer; a_colNames: array of string; list_key: TStringList): Integer;
// find_state为状态，调用时代入变量
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
