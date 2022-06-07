program IniRead;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils,
  IniFiles;

var
  s_filename, t_proj_no1, t_proj_name1, t_database1, t_proj_no2, t_proj_name2, t_database2, t_proj_no3, t_proj_name3, t_database3: string;
  MyIniFile: TIniFile;

begin
  try
    s_filename := ExtractFilePath(ParamStr(0)) + 'setting.ini';
    MyIniFile := TIniFile.Create(s_filename);
    t_proj_no1 := MyIniFile.ReadString('Base', 'Proj_no1', '');
    t_proj_name1 := MyIniFile.ReadString('Base', 'Proj_name1', '---没有设置当前项目---');
    t_database1 := MyIniFile.ReadString('Base', 'Database1', '');
    t_proj_no2 := MyIniFile.ReadString('Base', 'Proj_no2', '');
    t_proj_name2 := MyIniFile.ReadString('Base', 'Proj_name2', '---没有设置当前项目---');
    t_database2 := MyIniFile.ReadString('Base', 'Database2', '');
    t_proj_no3 := MyIniFile.ReadString('Base', 'Proj_no3', '');
    t_proj_name3 := MyIniFile.ReadString('Base', 'Proj_name3', '---没有设置当前项目---');
    t_database3 := MyIniFile.ReadString('Base', 'Database3', '');
    MyIniFile.Free;
    s_filename := ExtractFilePath(ParamStr(0)) + 'setting.tmp';
    TIniFile.Create(s_filename);
    MyIniFile.WriteString('Base', 'Proj_no1', t_proj_no1);
    MyIniFile.WriteString('Base', 'Proj_name1', t_proj_name1);
    MyIniFile.WriteString('Base', 'Database1', t_database1);
    MyIniFile.WriteString('Base', 'Proj_no2', t_proj_no2);
    MyIniFile.WriteString('Base', 'Proj_name2', t_proj_name2);
    MyIniFile.WriteString('Base', 'Database2', t_database2);
    MyIniFile.WriteString('Base', 'Proj_no3', t_proj_no3);
    MyIniFile.WriteString('Base', 'Proj_name3', t_proj_name3);
    MyIniFile.WriteString('Base', 'Database3', t_database3);
    MyIniFile.Free;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;

end.
