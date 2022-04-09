Unit JMCode;

interface

uses SysUtils, StrUtils;

function strtoascii(Const inputAnsi: string): integer;
function encryptstr(const s: string; skey: string): string;
function decryptstr(const s: string; skey: string): string;
function myStrtoHex(s: string): string; // 原字符串转16进制字符串
function myHextoStr(s: string): string; // 16进制字符串转原字符串

implementation

function strtoascii(Const inputAnsi: string): integer;
// 字符串转换为ascii值,转换值是一个各单独值相加后的结果
var
  Ansitemp, i, OutPutAnsi: integer;
begin
  OutPutAnsi := 0;
  For i := 1 To Length(inputAnsi) Do
  begin
    Ansitemp := ord(inputAnsi[i]);
    OutPutAnsi := OutPutAnsi + Ansitemp;
  end;
  Result := OutPutAnsi;
end;

function myStrtoHex(s: string): string;
var
  tmpstr: string;
  i: integer;
begin
  tmpstr := '';
  for i := 1 to Length(s) do
  begin
    tmpstr := tmpstr + IntToHex(ord(s[i]), 2);
  end;
  Result := tmpstr;
end;

function myHextoStr(s: string): string;
var
  hexS, tmpstr: string;
  i: integer;
  a: Byte;
begin
  hexS := s; // 应该是该字符串
  if Length(hexS) mod 2 = 1 then
  begin
    hexS := hexS + '0';
  end;
  tmpstr := '';
  for i := 1 to (Length(hexS) div 2) do
  begin
    a := strtoint('$' + hexS[2 * i - 1] + hexS[2 * i]);
    tmpstr := tmpstr + chr(a);
  end;
  Result := tmpstr;
end;

function encryptstr(const s: string; skey: string): string;
var
  i, j, iRight: integer;
  s1, sAscii, hexS, hexskey, midS, tmpstr: string;
  a, b, c: Byte;
begin
  sAscii := IntToStr(strtoascii(s));
  iRight := strtoint(rightstr(sAscii, 1));
  s1 := '';
  for i := 1 to Length(sAscii) do
  begin
    s1 := s1 + IntToStr(strtoint(sAscii[i]) + iRight + i);
  end;

  hexS := myStrtoHex(s1);

  hexskey := myStrtoHex(skey);
  midS := hexS;
  for i := 1 to (Length(hexskey) div 2) do
  begin
    if i <> 1 then
      midS := tmpstr;
    tmpstr := '';
    for j := 1 to (Length(midS) div 2) do
    begin
      a := strtoint('$' + midS[2 * j - 1] + midS[2 * j]);
      b := strtoint('$' + hexskey[2 * i - 1] + hexskey[2 * i]);
      c := a xor b;
      tmpstr := tmpstr + myStrtoHex(chr(c));
    end;
  end;
  Result := tmpstr;
end;

function decryptstr(const s: string; skey: string): string;
var
  i, j: integer;
  hexS, hexskey, midS, tmpstr: string;
  a, b, c: Byte;
begin
  hexS := s; // 应该是该字符串
  if Length(hexS) mod 2 = 1 then
  begin
    // showmessage('密文错误！');
    exit;
  end;
  hexskey := myStrtoHex(skey);
  tmpstr := hexS;
  midS := hexS;
  for i := (Length(hexskey) div 2) downto 1 do
  begin
    if i <> (Length(hexskey) div 2) then
      midS := tmpstr;
    tmpstr := '';
    for j := 1 to (Length(midS) div 2) do
    begin
      a := strtoint('$' + midS[2 * j - 1] + midS[2 * j]);
      b := strtoint('$' + hexskey[2 * i - 1] + hexskey[2 * i]);
      c := a xor b;
      tmpstr := tmpstr + myStrtoHex(chr(c));
    end;
  end;
  Result := myHextoStr(tmpstr);
end;

end.
