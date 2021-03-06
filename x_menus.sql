USE [HNXLSYS]
GO
/****** Object:  Table [dbo].[X_Menus]    Script Date: 2022-03-11 21:45:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[X_Menus](
	[t_id] [int] NULL,
	[t_parent_id] [int] NULL,
	[t_name] [varchar](50) NULL,
	[t_memo] [varchar](200) NULL,
	[t_para] [varchar](300) NULL,
	[t_proc] [text] NULL,
	[t_right] [varchar](20) NULL,
	[t_order] [int] NULL,
	[t_sort] [varchar](12) NULL,
	[t_table1] [char](1) NULL,
	[t_table2] [char](1) NULL,
	[t_auto] [char](1) NULL,
	[t_hide] [char](1) NULL,
	[t_type] [char](1) NULL,
	[isClass] [char](1) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (505, 0, N'检查数据源完整性查验', N'检查系统是否导入的颖分析的数据', N'', N'CREATE PROCEDURE      AS
BEGIN

END
GO', NULL, 0, N'01', N'0', N'0', N'0', N'1', N'1', N'1')
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (506, 65, N'单位账户总体数据导入情况', N'查看数据源导入情况和有关数据信息，账户数量以账号作唯一标识，含所有状态下账户', N'', N'CREATE PROCEDURE P_DW_Date_OK  WITH ENCRYPTION AS
BEGIN
--CREATE PROCEDURE P_DW_Date_OK  WITH ENCRYPTION AS
--BEGIN
DECLARE @s_tb_rhzh_dw VARCHAR(80),@s_tb_rhzh_dw1 VARCHAR(80),@s_tb_rhzh_dw2 VARCHAR(80)--人行账户
DECLARE @s_tb_rhzh_dw_jb VARCHAR(80),@s_tb_rhzh_dw_jb1 VARCHAR(80),@s_tb_rhzh_dw_jb2 VARCHAR(80)--基本
DECLARE @s_tb_rhzh_dw_yb VARCHAR(80),@s_tb_rhzh_dw_yb1 VARCHAR(80),@s_tb_rhzh_dw_yb2 VARCHAR(80)--一般
DECLARE @s_tb_rhzh_dw_ys VARCHAR(80),@s_tb_rhzh_dw_ys1 VARCHAR(80),@s_tb_rhzh_dw_ys2 VARCHAR(80)--预算
DECLARE @s_tb_rhzh_dw_fys VARCHAR(80),@s_tb_rhzh_dw_fys1 VARCHAR(80),@s_tb_rhzh_dw_fys2 VARCHAR(80)--非预算
DECLARE @s_tb_rhzh_dw_ls VARCHAR(80),@s_tb_rhzh_dw_ls1 VARCHAR(80),@s_tb_rhzh_dw_ls2 VARCHAR(80)--临时
DECLARE @s_tb_rhzh_dw_fls VARCHAR(80),@s_tb_rhzh_dw_fls1 VARCHAR(80),@s_tb_rhzh_dw_fls2 VARCHAR(80)--非临时
DECLARE @s_tb_rhzh_dw_ts VARCHAR(80),@s_tb_rhzh_dw_ts1 VARCHAR(80),@s_tb_rhzh_dw_ts2 VARCHAR(80)--特殊
-------------------------------------
DECLARE @s_tb_log VARCHAR(80),@s_tb_log1 VARCHAR(80),@s_tb_log2 VARCHAR(80)--人行Log
DECLARE @s_tb_log_jb VARCHAR(80),@s_tb_log_jb1 VARCHAR(80),@s_tb_log_jb2 VARCHAR(80)--基本
DECLARE @s_tb_log_yb VARCHAR(80),@s_tb_log_yb1 VARCHAR(80),@s_tb_log_yb2 VARCHAR(80)--一般
DECLARE @s_tb_log_ys VARCHAR(80),@s_tb_log_ys1 VARCHAR(80),@s_tb_log_ys2 VARCHAR(80)--预算
DECLARE @s_tb_log_fys VARCHAR(80),@s_tb_log_fys1 VARCHAR(80),@s_tb_log_fys2 VARCHAR(80)--非预算
DECLARE @s_tb_log_ls VARCHAR(80),@s_tb_log_ls1 VARCHAR(80),@s_tb_log_ls2 VARCHAR(80)--临时
DECLARE @s_tb_log_fls VARCHAR(80),@s_tb_log_fls1 VARCHAR(80),@s_tb_log_fls2 VARCHAR(80)--非临时
DECLARE @s_tb_log_ts VARCHAR(80),@s_tb_log_ts1 VARCHAR(80),@s_tb_log_ts2 VARCHAR(80)--非临时
-------------------------------
DECLARE @s_tb_shzh_dw VARCHAR(80),@s_tb_shzh_dw1 VARCHAR(80),@s_tb_shzh_dw2 VARCHAR(80)--商行账户
DECLARE @s_tb_shzh_dw_jb VARCHAR(80),@s_tb_shzh_dw_jb1 VARCHAR(80),@s_tb_shzh_dw_jb2 VARCHAR(80)--基本
DECLARE @s_tb_shzh_dw_yb VARCHAR(80),@s_tb_shzh_dw_yb1 VARCHAR(80),@s_tb_shzh_dw_yb2 VARCHAR(80)--一般
DECLARE @s_tb_shzh_dw_zy VARCHAR(80),@s_tb_shzh_dw_zy1 VARCHAR(80),@s_tb_shzh_dw_zy2 VARCHAR(80)--专用
DECLARE @s_tb_shzh_dw_ls VARCHAR(80),@s_tb_shzh_dw_ls1 VARCHAR(80),@s_tb_shzh_dw_ls2 VARCHAR(80)--临时
DECLARE @s_tb_shzh_dw_qt VARCHAR(80),@s_tb_shzh_dw_qt1 VARCHAR(80),@s_tb_shzh_dw_qt2 VARCHAR(80)--其他
DECLARE @s_tb_shzh_dw_not VARCHAR(80),@s_tb_shzh_dw_not1 VARCHAR(80),@s_tb_shzh_dw_not2 VARCHAR(80)--不合规
----------------
DECLARE @s_tb_shjy_dw VARCHAR(80),@s_tb_shjy_dw1 VARCHAR(80),@s_tb_shjy_dw2 VARCHAR(80)--商行交易
DECLARE @s_tb_yeb VARCHAR(80),@s_tb_yeb1 VARCHAR(80),@s_tb_yeb2 VARCHAR(80)--商行余额表

----------------------------------------------
SET @s_tb_rhzh_dw=''人行单位账户数据（总）''
SET @s_tb_rhzh_dw_jb=''人行单位账户数据（基本）''
SET @s_tb_rhzh_dw_yb=''人行单位账户数据（一般）''
SET @s_tb_rhzh_dw_ys=''人行单位账户数据（预算）''
SET @s_tb_rhzh_dw_fys=''人行单位账户数据（非预算）''
SET @s_tb_rhzh_dw_ls=''人行单位账户数据（临时）''
SET @s_tb_rhzh_dw_fls=''人行单位账户数据（非临时）''
SET @s_tb_rhzh_dw_ts=''人行单位账户数据（特殊）''
-----------------------------------------
SET @s_tb_log=''人行log数据（总）''
SET @s_tb_log_jb=''人行log数据（基本）''
SET @s_tb_log_yb=''人行log数据（一般）''
SET @s_tb_log_ys=''人行log数据（预算）''
SET @s_tb_log_fys=''人行log数据（非预算）''
SET @s_tb_log_ls=''人行log数据（临时）''
SET @s_tb_log_fls=''人行log数据（非临时）''
SET @s_tb_log_ts=''人行log数据（特殊）''
--------------------------------------------
SET @s_tb_shzh_dw=''商行单位账户数据（总）''
SET @s_tb_shzh_dw_jb=''商行单位账户数据（基本）''
SET @s_tb_shzh_dw_yb=''商行单位账户数据（一般）''
SET @s_tb_shzh_dw_zy=''商行单位账户数据（专用）''
SET @s_tb_shzh_dw_ls=''商行单位账户数据（临时）''
SET @s_tb_shzh_dw_qt=''商行单位账户数据（其他）''
SET @s_tb_shzh_dw_not=''商行单位账户数据（不合规）''

--------------------------------------
IF Object_id(N''tb_rhzh_dw'', N''U'') IS NOT NULL
  BEGIN
    SET @s_tb_rhzh_dw1=(SELECT ''开户：'' + Min(开户日期) + ''～'' + Max(开户日期) + ''--销户：''
                               + Min(销户日期) + ''～'' + Max(销户日期)
                        FROM   tb_rhzh_dw)
    SET @s_tb_rhzh_dw2=(SELECT Count(DISTINCT 账号)
                        FROM   tb_rhzh_dw)
    SET @s_tb_rhzh_dw_jb1=(SELECT ''开户：'' + Min(开户日期) + ''～'' + Max(开户日期) + ''--销户：''
                                  + Min(销户日期) + ''～'' + Max(销户日期)
                           FROM   tb_rhzh_dw
                           WHERE  账户性质 = ''基本'')
    SET @s_tb_rhzh_dw_jb2=(SELECT Count(DISTINCT 账号)
                           FROM   tb_rhzh_dw
                           WHERE  账户性质 = ''基本'')
    SET @s_tb_rhzh_dw_yb1=(SELECT ''开户：'' + Min(开户日期) + ''～'' + Max(开户日期) + ''--销户：''
                                  + Min(销户日期) + ''～'' + Max(销户日期)
                           FROM   tb_rhzh_dw
                           WHERE  账户性质 = ''一般'')
    SET @s_tb_rhzh_dw_yb2=(SELECT Count(DISTINCT 账号)
                           FROM   tb_rhzh_dw
                           WHERE  账户性质 = ''一般'')
    SET @s_tb_rhzh_dw_ls1=(SELECT ''开户：'' + Min(开户日期) + ''～'' + Max(开户日期) + ''--销户：''
                                  + Min(销户日期) + ''～'' + Max(销户日期)
                           FROM   tb_rhzh_dw
                           WHERE  账户性质 = ''临时'')
    SET @s_tb_rhzh_dw_ls2=(SELECT Count(DISTINCT 账号)
                           FROM   tb_rhzh_dw
                           WHERE  账户性质 = ''临时'')
    SET @s_tb_rhzh_dw_fls1=(SELECT ''开户：'' + Min(开户日期) + ''～'' + Max(开户日期) + ''--销户：''
                                   + Min(销户日期) + ''～'' + Max(销户日期)
                            FROM   tb_rhzh_dw
                            WHERE  账户性质 = ''非临时'')
    SET @s_tb_rhzh_dw_fls2=(SELECT Count(DISTINCT 账号)
                            FROM   tb_rhzh_dw
                            WHERE  账户性质 = ''非临时'')
    SET @s_tb_rhzh_dw_ys1=(SELECT ''开户：'' + Min(开户日期) + ''～'' + Max(开户日期) + ''--销户：''
                                  + Min(销户日期) + ''～'' + Max(销户日期)
                           FROM   tb_rhzh_dw
                           WHERE  账户性质 = ''预算'')
    SET @s_tb_rhzh_dw_ys2=(SELECT Count(DISTINCT 账号)
                           FROM   tb_rhzh_dw
                           WHERE  账户性质 = ''预算'')
    SET @s_tb_rhzh_dw_fys1=(SELECT ''开户：'' + Min(开户日期) + ''～'' + Max(开户日期) + ''--销户：''
                                   + Min(销户日期) + ''～'' + Max(销户日期)
                            FROM   tb_rhzh_dw
                            WHERE  账户性质 = ''非预算'')
    SET @s_tb_rhzh_dw_fys2=(SELECT Count(DISTINCT 账号)
                            FROM   tb_rhzh_dw
                            WHERE  账户性质 = ''非预算'')
    SET @s_tb_rhzh_dw_ts1=(SELECT ''开户：'' + Min(开户日期) + ''～'' + Max(开户日期) + ''--销户：''
                                  + Min(销户日期) + ''～'' + Max(销户日期)
                           FROM   tb_rhzh_dw
                           WHERE  账户性质 = ''特殊'')
    SET @s_tb_rhzh_dw_ts2=(SELECT Count(DISTINCT 账号)
                           FROM   tb_rhzh_dw
                           WHERE  账户性质 = ''特殊'')
  END
ELSE
  BEGIN
    SET @s_tb_rhzh_dw1=''×人行单位账户数据未导入''
  END

-----------------------------------------------------------------------
IF Object_id(N''tb_log'', N''U'') IS NOT NULL
  BEGIN
    SET @s_tb_log1=(SELECT Min(LEFT(业务处理时间, 8)) + ''～''
                           + Max(LEFT(业务处理时间, 8))
                    FROM   tb_log)
    SET @s_tb_log2=(SELECT Count(DISTINCT 账号)
                    FROM   tb_log)
    SET @s_tb_log_jb1=(SELECT Min(LEFT(业务处理时间, 8)) + ''～''
                              + Max(LEFT(业务处理时间, 8))
                       FROM   tb_log
                       WHERE  业务种类 = ''开立基本存款账户'')
    SET @s_tb_log_jb2=(SELECT Count(DISTINCT 账号)
                       FROM   tb_log
                       WHERE  业务种类 = ''开立基本存款账户'')
    SET @s_tb_log_yb1=(SELECT Min(LEFT(业务处理时间, 8)) + ''～''
                              + Max(LEFT(业务处理时间, 8))
                       FROM   tb_log
                       WHERE  业务种类 = ''备案一般账户'')
    SET @s_tb_log_yb2=(SELECT Count(DISTINCT 账号)
                       FROM   tb_log
                       WHERE  业务种类 = ''备案一般账户'')
    SET @s_tb_log_fys1=(SELECT Min(LEFT(业务处理时间, 8)) + ''～''
                               + Max(LEFT(业务处理时间, 8))
                        FROM   tb_log
                        WHERE  业务种类 = ''备案非预算单位专用存款账户'')
    SET @s_tb_log_fys2=(SELECT Count(DISTINCT 账号)
                        FROM   tb_log
                        WHERE  业务种类 = ''备案非预算单位专用存款账户'')
    SET @s_tb_log_ls1=(SELECT Min(LEFT(业务处理时间, 8)) + ''～''
                              + Max(LEFT(业务处理时间, 8))
                       FROM   tb_log
                       WHERE  业务种类 = ''开立临时机构临时户'')
    SET @s_tb_log_ls2=(SELECT Count(DISTINCT 账号)
                       FROM   tb_log
                       WHERE  业务种类 = ''开立临时机构临时户'')
    SET @s_tb_log_fls1=(SELECT Min(LEFT(业务处理时间, 8)) + ''～''
                               + Max(LEFT(业务处理时间, 8))
                        FROM   tb_log
                        WHERE  业务种类 = ''开立非临时机构临时户'')
    SET @s_tb_log_fls2=(SELECT Count(DISTINCT 账号)
                        FROM   tb_log
                        WHERE  业务种类 = ''开立非临时机构临时户'')
  END
ELSE
  BEGIN
    SET @s_tb_log1=''×人行log数据未导入''
  END

---------------------------------------------------
IF Object_id(N''tb_shzh_dw'', N''U'') IS NOT NULL
  BEGIN
    SET @s_tb_shzh_dw1=(SELECT ''开户：'' + Min(开户日期) + ''～'' + Max(开户日期) + ''--销户：''
                               + Min(销户日期) + ''～'' + Max(销户日期)
                        FROM   tb_shzh_dw)
    SET @s_tb_shzh_dw2=(SELECT Count(DISTINCT 账号)
                        FROM   tb_shzh_dw)
    SET @s_tb_shzh_dw_jb1=(SELECT ''开户：'' + Min(开户日期) + ''～'' + Max(开户日期) + ''--销户：''
                                  + Min(销户日期) + ''～'' + Max(销户日期)
                           FROM   tb_shzh_dw
                           WHERE  账户类型 = ''基本'')
    SET @s_tb_shzh_dw_jb2=(SELECT Count(DISTINCT 账号)
                           FROM   tb_shzh_dw
                           WHERE  账户类型 = ''基本'')
    SET @s_tb_shzh_dw_yb1=(SELECT ''开户：'' + Min(开户日期) + ''～'' + Max(开户日期) + ''--销户：''
                                  + Min(销户日期) + ''～'' + Max(销户日期)
                           FROM   tb_shzh_dw
                           WHERE  账户类型 = ''一般'')
    SET @s_tb_shzh_dw_yb2=(SELECT Count(DISTINCT 账号)
                           FROM   tb_shzh_dw
                           WHERE  账户类型 = ''一般'')
    SET @s_tb_shzh_dw_zy1=(SELECT ''开户：'' + Min(开户日期) + ''～'' + Max(开户日期) + ''--销户：''
                                  + Min(销户日期) + ''～'' + Max(销户日期)
                           FROM   tb_shzh_dw
                           WHERE  账户类型 = ''专用'')
    SET @s_tb_shzh_dw_zy2=(SELECT Count(DISTINCT 账号)
                           FROM   tb_shzh_dw
                           WHERE  账户类型 = ''专用'')
    SET @s_tb_shzh_dw_ls1=(SELECT ''开户：'' + Min(开户日期) + ''～'' + Max(开户日期) + ''--销户：''
                                  + Min(销户日期) + ''～'' + Max(销户日期)
                           FROM   tb_shzh_dw
                           WHERE  账户类型 = ''临时'')
    SET @s_tb_shzh_dw_ls2=(SELECT Count(DISTINCT 账号)
                           FROM   tb_shzh_dw
                           WHERE  账户类型 = ''临时'')
    SET @s_tb_shzh_dw_qt1=(SELECT ''开户：'' + Min(开户日期) + ''～'' + Max(开户日期) + ''--销户：''
                                  + Min(销户日期) + ''～'' + Max(销户日期)
                           FROM   tb_shzh_dw
                           WHERE  账户类型 = ''其他'')
    SET @s_tb_shzh_dw_qt2=(SELECT Count(DISTINCT 账号)
                           FROM   tb_shzh_dw
                           WHERE  账户类型 = ''其他'')
    SET @s_tb_shzh_dw_not1=(SELECT ''开户：'' + Min(开户日期) + ''～'' + Max(开户日期) + ''--销户：''
                                   + Min(销户日期) + ''～'' + Max(销户日期)
                            FROM   tb_shzh_dw
                            WHERE  NOT 账户类型 IN ( ''基本'', ''一般'', ''专用'', ''临时'', ''其他'' ))
    SET @s_tb_shzh_dw_not2=(SELECT Count(DISTINCT 账号)
                            FROM   tb_shzh_dw
                            WHERE  NOT 账户类型 IN ( ''基本'', ''一般'', ''专用'', ''临时'', ''其他'' ))
  END
ELSE
  BEGIN
    SET @s_tb_shzh_dw1=''×商行单位账户数据未导入''
  END

--------------------------------------------
SET @s_tb_shjy_dw=''商行交易数据（总）''

IF Object_id(N''tb_shjy_dw'', N''U'') IS NOT NULL
  BEGIN
    SET @s_tb_shjy_dw1=(SELECT Min(交易日期) + ''～'' + Max(交易日期)
                        FROM   tb_shjy_dw)
    SET @s_tb_shjy_dw2=(SELECT Count(DISTINCT 账号)
                        FROM   tb_shjy_dw)
  END
ELSE
  BEGIN
    SET @s_tb_shjy_dw1=''×商行交易数据未导入''
  END

SET @s_tb_yeb=''商行余额表数据（总）''

IF Object_id(N''tb_yeb'', N''U'') IS NOT NULL
  BEGIN
    SET @s_tb_yeb1=(SELECT Stuff((SELECT DISTINCT '','' + 余额日期
                                  FROM   tb_yeb
                                  FOR XML PATH('''')), 1, 1, ''''))
    SET @s_tb_yeb2=(SELECT Count(DISTINCT 账号)
                    FROM   tb_yeb)
  END
ELSE
  BEGIN
    SET @s_tb_yeb1=''×商行余额表数据未导入''
  END

---------------------------------------------------
SELECT @s_tb_rhzh_dw 数据源,
       @s_tb_rhzh_dw1 时间范围,
       @s_tb_rhzh_dw2 数量
UNION ALL
SELECT @s_tb_rhzh_dw_jb,
       @s_tb_rhzh_dw_jb1,
       @s_tb_rhzh_dw_jb2
UNION ALL
SELECT @s_tb_rhzh_dw_yb,
       @s_tb_rhzh_dw_yb1,
       @s_tb_rhzh_dw_yb2
UNION ALL
SELECT @s_tb_rhzh_dw_ys,
       @s_tb_rhzh_dw_ys1,
       @s_tb_rhzh_dw_ys2
UNION ALL
SELECT @s_tb_rhzh_dw_fys,
       @s_tb_rhzh_dw_fys1,
       @s_tb_rhzh_dw_fys2
UNION ALL
SELECT @s_tb_rhzh_dw_ls,
       @s_tb_rhzh_dw_ls1,
       @s_tb_rhzh_dw_ls2
UNION ALL
SELECT @s_tb_rhzh_dw_fls,
       @s_tb_rhzh_dw_fls1,
       @s_tb_rhzh_dw_fls2
UNION ALL
SELECT ''------------------------'',
       ''------------------------------------'',
       ''--------------''
UNION ALL
SELECT @s_tb_log,
       @s_tb_log1,
       @s_tb_log2
UNION ALL
SELECT @s_tb_log_jb,
       @s_tb_log_jb1,
       @s_tb_log_jb2
UNION ALL
SELECT @s_tb_log_yb,
       @s_tb_log_yb1,
       @s_tb_log_yb2
UNION ALL
SELECT @s_tb_log_fys,
       @s_tb_log_fys1,
       @s_tb_log_fys2
UNION ALL
SELECT @s_tb_log_ls,
       @s_tb_log_ls1,
       @s_tb_log_ls2
UNION ALL
SELECT @s_tb_log_fls,
       @s_tb_log_fls1,
       @s_tb_log_fls2
UNION ALL
SELECT ''------------------------'',
       ''------------------------------------'',
       ''--------------''
UNION ALL
SELECT @s_tb_shzh_dw,
       @s_tb_shzh_dw1,
       @s_tb_shzh_dw2 --商行账户
UNION ALL
SELECT @s_tb_shzh_dw_jb,
       @s_tb_shzh_dw_jb1,
       @s_tb_shzh_dw_jb2 --基本
UNION ALL
SELECT @s_tb_shzh_dw_yb,
       @s_tb_shzh_dw_yb1,
       @s_tb_shzh_dw_yb2 --一般
UNION ALL
SELECT @s_tb_shzh_dw_zy,
       @s_tb_shzh_dw_zy1,
       @s_tb_shzh_dw_zy2 --专用
UNION ALL
SELECT @s_tb_shzh_dw_ls,
       @s_tb_shzh_dw_ls1,
       @s_tb_shzh_dw_ls2 --临时
UNION ALL
SELECT @s_tb_shzh_dw_qt,
       @s_tb_shzh_dw_qt1,
       @s_tb_shzh_dw_qt2 --其他
UNION ALL
SELECT @s_tb_shzh_dw_not,
       @s_tb_shzh_dw_not1,
       @s_tb_shzh_dw_not2 --不合规
-----------------------------------------------
UNION ALL
SELECT ''------------------------'',
       ''------------------------------------'',
       ''--------------''
UNION ALL
SELECT @s_tb_shjy_dw,
       @s_tb_shjy_dw1,
       @s_tb_shjy_dw2
-----------------------------------------------
UNION ALL
SELECT ''------------------------'',
       ''------------------------------------'',
       ''--------------''
UNION ALL
SELECT @s_tb_yeb,
       @s_tb_yeb1,
       @s_tb_yeb2 
END
GO', NULL, 4, N'010101', N'0', N'0', N'0', N'1', N'1', N'1')
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (115, 65, N'账户系统各网点单位账户数据情况', N'账户系统账户数据情况', N'', N'CREATE PROCEDURE P_rhzh_cnt
WITH ENCRYPTION
AS
  BEGIN
    IF Object_id(N''tb_rhzh_dw'', N''U'') IS NOT NULL
      BEGIN
        SELECT DISTINCT a.银行机构代码,
                        Max(b.银行机构名称) 网点名,
                        Count(*) 账户数量合计,
                        Min(开户日期) + ''～'' + Max(开户日期) 开户日期范围,
                        Sum(CASE
                              WHEN ( 账户性质 = ''基本'' ) THEN 1
                              ELSE 0
                            END) 基本户数量,
                        Sum(CASE
                              WHEN ( 账户性质 = ''一般'' ) THEN 1
                              ELSE 0
                            END) 一般户数量,
                        Sum(CASE
                              WHEN ( 账户性质 = ''预算'' ) THEN 1
                              ELSE 0
                            END) 预算专户数量,
                        Sum(CASE
                              WHEN ( 账户性质 = ''非预算'' ) THEN 1
                              ELSE 0
                            END) 非预算专户数量,
                        Sum(CASE
                              WHEN ( 账户性质 = ''临时'' ) THEN 1
                              ELSE 0
                            END) 临时户数量,
                        Sum(CASE
                              WHEN ( 账户性质 = ''非临时'' ) THEN 1
                              ELSE 0
                            END) 非临时机构临时户数量,
                        Sum(CASE
                              WHEN ( 账户性质 = ''特殊'' ) THEN 1
                              ELSE 0
                            END) 特殊专户数量
        FROM   tb_rhzh_dw a
               LEFT JOIN v_bank b
                      ON a.银行机构代码 = b.银行编码或代码
        GROUP  BY 银行机构代码
      END
    ELSE
      BEGIN
        SELECT ''×账户管理系统单位账户数据未导入'' 注意
      END
  END
GO ', NULL, 6, N'010102', N'0', N'0', N'0', N'1', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (503, 65, N'账户系统各网点单位账户日志情况', N'账户管理系统日志数据情况', N'', N'CREATE PROCEDURE P_log_cnt
WITH ENCRYPTION
AS
  BEGIN
    IF Object_id(N''tb_log'', N''U'') IS NOT NULL
      BEGIN
        SELECT DISTINCT a.银行机构代码,
                        Max(b.银行机构名称) 网点名,
                        Count(*) 日志数量合计,
                        LEFT(Min(业务处理时间), 8) + ''～''
                        + LEFT(Max(业务处理时间), 8) 日志日期范围,
                        Sum(CASE
                              WHEN ( 业务种类 = ''开立基本存款账户'' ) THEN 1
                              ELSE 0
                            END)开立基本户日志数量,
                        Sum(CASE
                              WHEN ( 业务种类 = ''开立临时机构临时存款账户'' ) THEN 1
                              ELSE 0
                            END)开立临时户日志数量,
                        Sum(CASE
                              WHEN ( 业务种类 = ''开立非临时机构临时存款账户'' ) THEN 1
                              ELSE 0
                            END)开立非临时户日志数量,
                        Sum(CASE
                              WHEN ( 业务种类 = ''开立预算单位专用存款账户'' ) THEN 1
                              ELSE 0
                            END) 开立预算户日志数量,
                        Sum(CASE
                              WHEN ( 业务种类 = ''备案非预算单位专用存款账户'' ) THEN 1
                              ELSE 0
                            END) 备案非预算户日志数量,
                        Sum(CASE
                              WHEN ( 业务种类 = ''备案一般账户'' ) THEN 1
                              ELSE 0
                            END)备案一般账户日志数量
        FROM   tb_log a
               LEFT JOIN v_bank b
                      ON a.银行机构代码 = b.银行编码或代码
        GROUP  BY 银行机构代码
      END
    ELSE
      BEGIN
        SELECT ''×账户管理系统日志数据未导入'' 注意
      END
  END
GO 
', NULL, 8, N'010103', N'0', N'0', N'0', N'1', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (507, 65, N'商行单位账户字段提供情况', N'商业银行单位账户数据情况', N'', N'CREATE PROCEDURE Pd_shzh_num
WITH ENCRYPTION
AS
  BEGIN
    SELECT '' -----账户总数-----'' 信息类型,
           Cast(Count(*) AS VARCHAR(20)) 数量,
           '''' 说明
    FROM   tb_shzh_dw
    UNION
    SELECT ''1. ---账户类型---'' 信息类型,
           '''' 数量,
           ''若分类信息不完整则整个账户分类检查无法实施'' 说明
    FROM   tb_shzh_dw
    UNION
    SELECT ''1.1 基本账户'' 信息类型,
           Cast(Count(*) AS VARCHAR(20)) 数量,
           CASE
             WHEN Count(*) = 0 THEN ''没有基本账户数据可能有问题''
             ELSE ''''
           END 说明
    FROM   tb_shzh_dw
    WHERE  账户类型 = ''基本''
    UNION
    SELECT ''1.2 一般账户'' 信息类型,
           Cast(Count(*) AS VARCHAR(20)) 数量,
           CASE
             WHEN Count(*) = 0 THEN ''没有一般账户数据可能有问题''
             ELSE ''''
           END 说明
    FROM   tb_shzh_dw
    WHERE  账户类型 = ''一般''
    UNION
    SELECT ''1.3 专用账户'' 信息类型,
           Cast(Count(*) AS VARCHAR(20)) 数量,
           CASE
             WHEN Count(*) = 0 THEN ''没有专用账户数据可能有问题''
             ELSE ''''
           END 说明
    FROM   tb_shzh_dw
    WHERE  账户类型 = ''专用''
    UNION
    SELECT ''1.4 临时账户'' 信息类型,
           Cast(Count(*) AS VARCHAR(20)) 数量,
           CASE
             WHEN Count(*) = 0 THEN ''没有临时账户数据可能有问题''
             ELSE ''''
           END 说明
    FROM   tb_shzh_dw
    WHERE  账户类型 = ''临时''
    UNION
    SELECT ''1.5 其他类型'' 信息类型,
           Cast(Count(*) AS VARCHAR(20)) 数量,
           CASE
             WHEN Count(*) > 0 THEN ''若其他类型较多将影响检查''
             ELSE ''''
           END 说明
    FROM   tb_shzh_dw
    WHERE  账户类型 = ''其他''
    UNION
    SELECT ''1.6 不符合数据规范'' 信息类型,
           Cast(Count(*) AS VARCHAR(20)) 数量,
           CASE
             WHEN Count(*) > 0 THEN ''若不符规范数据较多将影响检查''
             ELSE ''''
           END 说明
    FROM   tb_shzh_dw
    WHERE  账户类型 IS NULL
            OR ( NOT 账户类型 IS NULL
                 AND Len(账户类型) = 0 )
            OR ( 账户类型 <> ''基本''
                 AND 账户类型 <> ''一般''
                 AND 账户类型 <> ''专用''
                 AND 账户类型 <> ''临时''
                 AND 账户类型 <> ''其他'' )
    UNION
    SELECT ''2.---账户状态---'' 信息类型,
           ''---'' 数量,
           ''账户状态数据若不完整，将影响检查'' 说明
    FROM   tb_shzh_dw
    UNION
    SELECT ''2.1 正常'' 信息类型,
           Cast(Count(*) AS VARCHAR(20)) 数量,
           CASE
             WHEN Count(*) = 0 THEN ''若为0数据可能有问题''
             ELSE ''''
           END 说明
    FROM   tb_shzh_dw
    WHERE  账户状态 = ''正常''
    UNION
    SELECT ''2.2 未激活'' 信息类型,
           Cast(Count(*) AS VARCHAR(20)) 数量,
           '''' 说明
    FROM   tb_shzh_dw
    WHERE  账户状态 = ''未激活''
    UNION
    SELECT ''2.3 只收不付'' 信息类型,
           Cast(Count(*) AS VARCHAR(20)) 数量,
           '''' 说明
    FROM   tb_shzh_dw
    WHERE  账户状态 = ''只收不付''
    UNION
    SELECT ''2.4 不收不付'' 信息类型,
           Cast(Count(*) AS VARCHAR(20)) 数量,
           '''' 说明
    FROM   tb_shzh_dw
    WHERE  账户状态 = ''不收不付''
    UNION
    SELECT ''2.5 已冻结'' 信息类型,
           Cast(Count(*) AS VARCHAR(20)) 数量,
           '''' 说明
    FROM   tb_shzh_dw
    WHERE  账户状态 = ''冻结''
    UNION
    SELECT ''2.6 已注销'' 信息类型,
           Cast(Count(*) AS VARCHAR(20)) 数量,
           CASE
             WHEN Count(*) = 0 THEN ''若为0数据可能有问题''
             ELSE ''''
           END 说明
    FROM   tb_shzh_dw
    WHERE  账户状态 = ''注销''
    UNION
    SELECT ''2.7 其他'' 信息类型,
           Cast(Count(*) AS VARCHAR(20)) 数量,
           CASE
             WHEN Count(*) > 0 THEN ''若其他状态较多将影响检查''
             ELSE ''''
           END 说明
    FROM   tb_shzh_dw
    WHERE  账户状态 = ''其他''
    UNION
    SELECT ''2.8 不符合数据规范'' 信息类型,
           Cast(Count(*) AS VARCHAR(20)) 数量,
           CASE
             WHEN Count(*) > 0 THEN ''若不符规范数据较多将影响检查''
             ELSE ''''
           END 说明
    FROM   tb_shzh_dw
    WHERE  账户状态 IS NULL
            OR ( NOT 账户状态 IS NULL
                 AND Len(账户状态) = 0 )
            OR ( 账户状态 <> ''正常''
                 AND 账户状态 <> ''未激活''
                 AND 账户状态 <> ''只收不付''
                 AND 账户状态 <> ''不收不付''
                 AND 账户状态 <> ''冻结''
                 AND 账户状态 <> ''注销''
                 AND 账户状态 <> ''其他'' )
    UNION
    SELECT ''3.---法定代表人或负责人证件种类---'' 信息类型,
           ''---'' 数量,
           ''若法定代表人或负责人证件种类未提供或不符合规范将影响实名制检查'' 说明
    FROM   tb_shzh_dw
    UNION
    SELECT ''3.1 居民身份证'' 信息类型,
           Cast(Count(*) AS VARCHAR(20)) 数量,
           CASE
             WHEN Count(*) = 0 THEN ''若为0数据可能有问题''
             ELSE ''''
           END 说明
    FROM   tb_shzh_dw
    WHERE  [法人代表或负责人证件种类] = ''身份证''
    UNION
    SELECT ''3.2 临时居民身份证'' 信息类型,
           Cast(Count(*) AS VARCHAR(20)) 数量,
           '''' 说明
    FROM   tb_shzh_dw
    WHERE  [法人代表或负责人证件种类] = ''临时身份证''
    UNION
    SELECT ''3.3 户口簿'' 信息类型,
           Cast(Count(*) AS VARCHAR(20)) 数量,
           '''' 说明
    FROM   tb_shzh_dw
    WHERE  [法人代表或负责人证件种类] = ''户口簿''
    UNION
    SELECT ''3.4 军人或武警身份证'' 信息类型,
           Cast(Count(*) AS VARCHAR(20)) 数量,
           '''' 说明
    FROM   tb_shzh_dw
    WHERE  [法人代表或负责人证件种类] = ''军人或武警身份证''
    UNION
    SELECT ''3.5 外国公民护照'' 信息类型,
           Cast(Count(*) AS VARCHAR(20)) 数量,
           '''' 说明
    FROM   tb_shzh_dw
    WHERE  [法人代表或负责人证件种类] = ''外国公民护照''
    UNION
    SELECT ''3.6 港澳台居民来往内地或大陆通行证'' 信息类型,
           Cast(Count(*) AS VARCHAR(20)) 数量,
           '''' 说明
    FROM   tb_shzh_dw
    WHERE  [法人代表或负责人证件种类] = ''港澳台通行证''
    UNION
    SELECT ''3.7 外国人永久居留证'' 信息类型,
           Cast(Count(*) AS VARCHAR(20)) 数量,
           '''' 说明
    FROM   tb_shzh_dw
    WHERE  [法人代表或负责人证件种类] = ''外国人永久居留证''
    UNION
    SELECT ''3.8 港澳台居民居住证'' 信息类型,
           Cast(Count(*) AS VARCHAR(20)) 数量,
           '''' 说明
    FROM   tb_shzh_dw
    WHERE  [法人代表或负责人证件种类] = ''港澳台居民居住证''
    UNION
    SELECT ''3.9 中国护照'' 信息类型,
           Cast(Count(*) AS VARCHAR(20)) 数量,
           '''' 说明
    FROM   tb_shzh_dw
    WHERE  [法人代表或负责人证件种类] = ''中国护照''
    UNION
    SELECT ''3.10 边民出入境通行证'' 信息类型,
           Cast(Count(*) AS VARCHAR(20)) 数量,
           '''' 说明
    FROM   tb_shzh_dw
    WHERE  [法人代表或负责人证件种类] = ''边民出入境通行证''
    UNION
    SELECT ''3.11 其他类个人身份有效证件'' 信息类型,
           Cast(Count(*) AS VARCHAR(20)) 数量,
           '''' 说明
    FROM   tb_shzh_dw
    WHERE  [法人代表或负责人证件种类] = ''其他''
    UNION
    SELECT ''3.12 不符合数据规范'' 信息类型,
           Cast(Count(*) AS VARCHAR(20)) 数量,
           CASE
             WHEN Count(*) > 0 THEN ''若数量大怀疑数据提供问题，数量小可作为检查线索''
             ELSE ''''
           END 说明
    FROM   tb_shzh_dw
    WHERE  [法人代表或负责人证件种类] IS NULL
            OR Len([法人代表或负责人证件种类]) = 0
            OR ( [法人代表或负责人证件种类] <> ''身份证''
                 AND [法人代表或负责人证件种类] <> ''临时身份证''
                 AND [法人代表或负责人证件种类] <> ''户口簿''
                 AND [法人代表或负责人证件种类] <> ''军人或武警身份证''
                 AND [法人代表或负责人证件种类] <> ''港澳台通行证''
                 AND [法人代表或负责人证件种类] <> ''外国公民护照''
                 AND [法人代表或负责人证件种类] <> ''外国人永久居留证''
                 AND [法人代表或负责人证件种类] <> ''港澳台居住证''
                 AND [法人代表或负责人证件种类] <> ''中国护照''
                 AND [法人代表或负责人证件种类] <> ''边民出入境通行证''
                 AND [法人代表或负责人证件种类] <> ''其他'' )
    UNION
    SELECT ''9.---其他信息---'' 信息类型,
           ''---'' 数量,
           ''身份证件其他信息未提供数量较多将影响检查'' 说明
    FROM   tb_shzh_dw
    UNION
    SELECT ''9.1 账号信息为空'' 信息类型,
           Cast(Count(*) AS VARCHAR(20)) 数量,
           CASE
             WHEN Count(*) > 0 THEN ''账号为空，数量大怀疑数据提供问题，数量小可作为检查线索''
             ELSE ''''
           END 说明
    FROM   tb_shzh_dw
    WHERE  账号 IS NULL
            OR Len(账号) = 0
    UNION
    SELECT ''9.2 账户名称为空'' 信息类型,
           Cast(Count(*) AS VARCHAR(20)) 数量,
           CASE
             WHEN Count(*) > 0 THEN ''账户名称为空数量大怀疑数据提供问题''
             ELSE ''''
           END 说明
    FROM   tb_shzh_dw
    WHERE  账户名称 IS NULL
            OR Len(账户名称) = 0
    UNION
    SELECT ''9.3 开户日期为空'' 信息类型,
           Cast(Count(*) AS VARCHAR(20)) 数量,
           CASE
             WHEN Count(*) > 0 THEN ''开户日期为空数量大怀疑数据提供问题''
             ELSE ''''
           END 说明
    FROM   tb_shzh_dw
    WHERE  开户日期 IS NULL
            OR Len(开户日期) = 0
    UNION
    SELECT ''9.4 销户日期为空'' 信息类型,
           Cast(Count(*) AS VARCHAR(20)) 数量,
           CASE
             WHEN Count(*) > 0 THEN ''销户日期为空或99991231数量大怀疑数据提供问题''
             ELSE ''''
           END 说明
    FROM   tb_shzh_dw
    WHERE  销户日期 IS NULL
            OR Len(销户日期) = 0
            OR 销户日期 = ''99991231''
    UNION
    SELECT ''9.5 执照号码为空'' 信息类型,
           Cast(Count(*) AS VARCHAR(20)) 数量,
           CASE
             WHEN Count(*) > 0 THEN ''执照号码为空，数量大怀疑数据提供问题，数量小可作为检查线索''
             ELSE ''''
           END 说明
    FROM   tb_shzh_dw
    WHERE  [执照号码] IS NULL
            OR Len([执照号码]) = 0
    UNION
    SELECT ''9.6 法定代表人或负责人身份证件号码为空'' 信息类型,
           Cast(Count(*) AS VARCHAR(20)) 数量,
           CASE
             WHEN Count(*) > 0 THEN ''证件号码为空，数量大怀疑数据提供问题，数量小可作为检查线索''
             ELSE ''''
           END 说明
    FROM   tb_shzh_dw
    WHERE  [法人代表或负责人证件号码] IS NULL
            OR Len([法人代表或负责人证件号码]) = 0
    UNION
    SELECT ''9.7 代理人证件号码为空'' 信息类型,
           Cast(Count(*) AS VARCHAR(20)) 数量,
           CASE
             WHEN Count(*) > 0 THEN ''代理人证件号码为空，数量大怀疑数据提供问题，数量小可作为检查线索''
             ELSE ''''
           END 说明
    FROM   tb_shzh_dw
    WHERE  代理人证件号码 IS NULL
            OR Len(代理人证件号码) = 0
    UNION
    SELECT ''9.8 法定代表人或负责人身份证件有效期开始日为空'' 信息类型,
           Cast(Count(*) AS VARCHAR(20)) 数量,
           CASE
             WHEN Count(*) > 0 THEN ''身份证件有效期开始日为空影响实名制检查''
             ELSE ''''
           END 说明
    FROM   tb_shzh_dw
    WHERE  [法人代表或负责人证件有效期开始日] IS NULL
            OR Len([法人代表或负责人证件有效期开始日]) = 0
    UNION
    SELECT ''9.9 身份证件有效期截止日'' 信息类型,
           Cast(Count(*) AS VARCHAR(20)) 数量,
           CASE
             WHEN Count(*) > 0 THEN ''身份证件有效期截止日为空影响实名制检查''
             ELSE ''''
           END 说明
    FROM   tb_shzh_dw
    WHERE  [法人代表或负责人证件有效期截止日] IS NULL
            OR Len([法人代表或负责人证件有效期截止日]) = 0
    UNION
    SELECT ''9.10 未绑定手机号码'' 信息类型,
           Cast(Count(*) AS VARCHAR(20)) 数量,
           CASE
             WHEN Count(*) > 0 THEN ''为空数量大怀疑数据提供问题，数量合理，可作为检查线索''
             ELSE ''''
           END 说明
    FROM   tb_shzh_dw
    WHERE  ( 绑定的手机号码 IS NULL
              OR Len(绑定的手机号码) = 0 )
  END
GO 
', NULL, 10, N'010104', N'0', N'0', N'0', N'1', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (508, 65, N'商行各网点单位交易提供情况', N'商业银行单位交易数据情况', N'', N'CREATE PROCEDURE P_shjy_cnt
WITH ENCRYPTION
AS
  BEGIN
    IF Object_id(N''tb_shjy_dw'', N''U'') IS NOT NULL
      BEGIN
        SELECT DISTINCT a.开户行金融机构代码,
                        Max(b.银行机构名称) 网点名,
                        Count(*) 交易数量合计,
                        Min(交易日期) + ''～'' + Max(交易日期) 交易日期范围
        FROM   tb_shjy_dw a
               LEFT JOIN v_bank b
                      ON a.开户行金融机构代码 = b.银行编码或代码
        GROUP  BY 开户行金融机构代码
      END
    ELSE
      BEGIN
        SELECT ''×商业银行单位交易数据未导入'' 注意
      END
  END

GO ', NULL, 16, N'010107', N'0', N'0', N'0', N'1', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (510, 65, N'商行单位交易字段提供情况', N'', N'', N'CREATE PROCEDURE Pd_shjy_num
WITH ENCRYPTION
AS
  BEGIN
    SELECT '' ★交易总数★'' 信息类型,
           Cast(Count(*) AS VARCHAR(20)) 数量,
           '''' 说明
    FROM   tb_shjy_dw
    UNION
    SELECT '' ★账户总数★'' 信息类型,
           Cast(Count(DISTINCT 账号) AS VARCHAR(20)) 数量,
           '''' 说明
    FROM   tb_shjy_dw
    UNION
    SELECT ''1. ---借贷标识---'' 信息类型,
           '''' 数量,
           ''若借贷标识信息不完整则检查无法实施'' 说明
    FROM   tb_shjy_dw
    UNION
    SELECT ''1.1 贷方交易'' 信息类型,
           Cast(Count(*) AS VARCHAR(20)) 数量,
           CASE
             WHEN Count(*) = 0 THEN ''没有贷方交易，数据可能有问题''
             ELSE ''''
           END 说明
    FROM   tb_shjy_dw
    WHERE  借贷标识 = ''贷''
    UNION
    SELECT ''1.2 借方交易'' 信息类型,
           Cast(Count(*) AS VARCHAR(20)) 数量,
           CASE
             WHEN Count(*) = 0 THEN ''没有借方交易，数据可能有问题''
             ELSE ''''
           END 说明
    FROM   tb_shjy_dw
    WHERE  借贷标识 = ''借''
    UNION
    SELECT ''1.6 不符合数据规范'' 信息类型,
           Cast(Count(*) AS VARCHAR(20)) 数量,
           CASE
             WHEN Count(*) > 0 THEN ''若不符规范数据较多将影响检查''
             ELSE ''''
           END 说明
    FROM   tb_shjy_dw
    WHERE  借贷标识 IS NULL
            OR ( NOT 借贷标识 IS NULL
                 AND Len(借贷标识) = 0 )
            OR ( 借贷标识 <> ''借''
                 AND 借贷标识 <> ''贷'' )
    UNION
    SELECT ''2.---现转标识---'' 信息类型,
           ''---'' 数量,
           ''现转标识数据若不完整，将影响检查'' 说明
    FROM   tb_shjy_dw
    UNION
    SELECT ''2.1 转账'' 信息类型,
           Cast(Count(*) AS VARCHAR(20)) 数量,
           CASE
             WHEN Count(*) = 0 THEN ''若为0数据可能有问题''
             ELSE ''''
           END 说明
    FROM   tb_shjy_dw
    WHERE  现转标识 = ''转账''
    UNION
    SELECT ''2.2 现金'' 信息类型,
           Cast(Count(*) AS VARCHAR(20)) 数量,
           CASE
             WHEN Count(*) = 0 THEN ''若为0数据可能有问题''
             ELSE ''''
           END 说明
    FROM   tb_shjy_dw
    WHERE  现转标识 = ''现金''
    UNION
    SELECT ''2.3 不符合数据规范'' 信息类型,
           Cast(Count(*) AS VARCHAR(20)) 数量,
           CASE
             WHEN Count(*) > 0 THEN ''若不符规范数据较多将影响检查''
             ELSE ''''
           END 说明
    FROM   tb_shjy_dw
    WHERE  现转标识 IS NULL
            OR ( NOT 现转标识 IS NULL
                 AND Len(现转标识) = 0 )
            OR ( 现转标识 <> ''现金''
                 AND 现转标识 <> ''转账'' )
    UNION
    SELECT ''3.---交易渠道---'' 信息类型,
           ''---'' 数量,
           ''未提供或不符合规范将影响检查'' 说明
    FROM   tb_shjy_dw
    UNION
    SELECT ''3.1 柜面'' 信息类型,
           Cast(Count(*) AS VARCHAR(20)) 数量,
           CASE
             WHEN Count(*) = 0 THEN ''若为0数据可能有问题''
             ELSE ''''
           END 说明
    FROM   tb_shjy_dw
    WHERE  交易渠道 = ''柜面''
    UNION
    SELECT ''3.2 自助机具'' 信息类型,
           Cast(Count(*) AS VARCHAR(20)) 数量,
           '''' 说明
    FROM   tb_shjy_dw
    WHERE  交易渠道 = ''自助''
    UNION
    SELECT ''3.3 网银'' 信息类型,
           Cast(Count(*) AS VARCHAR(20)) 数量,
           '''' 说明
    FROM   tb_shjy_dw
    WHERE  交易渠道 = ''网银''
    UNION
    SELECT ''3.4 手机银行'' 信息类型,
           Cast(Count(*) AS VARCHAR(20)) 数量,
           '''' 说明
    FROM   tb_shjy_dw
    WHERE  交易渠道 = ''手机''
    UNION
    SELECT ''3.5 其他'' 信息类型,
           Cast(Count(*) AS VARCHAR(20)) 数量,
           '''' 说明
    FROM   tb_shjy_dw
    WHERE  交易渠道 = ''其他''
    UNION
    SELECT ''3.12 不符合数据规范'' 信息类型,
           Cast(Count(*) AS VARCHAR(20)) 数量,
           CASE
             WHEN Count(*) > 0 THEN ''若数量大怀疑数据提供问题''
             ELSE ''''
           END 说明
    FROM   tb_shjy_dw
    WHERE  交易渠道 IS NULL
            OR Len(交易渠道) = 0
            OR ( 交易渠道 <> ''柜面''
                 AND 交易渠道 <> ''自助''
                 AND 交易渠道 <> ''网银''
                 AND 交易渠道 <> ''手机''
                 AND 交易渠道 <> ''其他'' )
    UNION
    SELECT ''9.---其他信息---'' 信息类型,
           ''---'' 数量,
           ''有关信息未提供的数量较多将影响检查'' 说明
    FROM   tb_shjy_dw
    UNION
    SELECT ''9.1 账号信息为空'' 信息类型,
           Cast(Count(*) AS VARCHAR(20)) 数量,
           CASE
             WHEN Count(*) > 0 THEN ''账号为空，数量大怀疑数据提供问题，数量小可作为检查线索''
             ELSE ''''
           END 说明
    FROM   tb_shjy_dw
    WHERE  账号 IS NULL
            OR Len(账号) = 0
    UNION
    SELECT ''9.2 账户名称为空'' 信息类型,
           Cast(Count(*) AS VARCHAR(20)) 数量,
           CASE
             WHEN Count(*) > 0 THEN ''账户名称为空数量大怀疑数据提供问题''
             ELSE ''''
           END 说明
    FROM   tb_shjy_dw
    WHERE  账户名称 IS NULL
            OR Len(账户名称) = 0
    UNION
    SELECT ''9.3 交易日期为空'' 信息类型,
           Cast(Count(*) AS VARCHAR(20)) 数量,
           CASE
             WHEN Count(*) > 0 THEN ''开户日期为空数量大怀疑数据提供问题''
             ELSE ''''
           END 说明
    FROM   tb_shjy_dw
    WHERE  交易日期 IS NULL
            OR Len(交易日期) = 0
    UNION
    SELECT ''9.4 交易时间为空'' 信息类型,
           Cast(Count(*) AS VARCHAR(20)) 数量,
           CASE
             WHEN Count(*) > 0 THEN ''销户日期为空数量大怀疑数据提供问题''
             ELSE ''''
           END 说明
    FROM   tb_shjy_dw
    WHERE  交易时间 IS NULL
            OR Len(交易时间) = 0
    UNION
    SELECT ''9.5 交易金额为空'' 信息类型,
           Cast(Count(*) AS VARCHAR(20)) 数量,
           CASE
             WHEN Count(*) > 0 THEN ''数量大数据提供问题''
             ELSE ''''
           END 说明
    FROM   tb_shjy_dw
    WHERE  [交易金额] IS NULL
            OR [交易金额] = 0
    UNION
    SELECT ''9.6 交易对方信息为空'' 信息类型,
           Cast(Count(*) AS VARCHAR(20)) 数量,
           CASE
             WHEN Count(*) > 0 THEN ''数量太大数据提供问题''
             ELSE ''''
           END 说明
    FROM   tb_shjy_dw
    WHERE  [交易对方账户名称] IS NULL
            OR Len([交易对方账户名称]) = 0
            OR [交易对方账号] IS NULL
            OR Len([交易对方账号]) = 0
            OR [交易对方开户银行] IS NULL
            OR Len([交易对方开户银行]) = 0
    UNION
    SELECT ''9.7 交易附言为空'' 信息类型,
           Cast(Count(*) AS VARCHAR(20)) 数量,
           CASE
             WHEN Count(*) > 0 THEN ''数量太大怀疑数据提供问题''
             ELSE ''''
           END 说明
    FROM   tb_shjy_dw
    WHERE  [交易附言] IS NULL
            OR Len([交易附言]) = 0
  END
GO ', NULL, 12, N'010105', N'0', N'0', N'0', N'1', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (509, 65, N'商行各网点余额表提供情况', N'功能描述：', N'', N'CREATE PROCEDURE P_yeb_cnt
WITH ENCRYPTION
AS
  BEGIN
    IF Object_id(N''tb_yeb'', N''U'') IS NOT NULL
      BEGIN
        SELECT 网点机构代码,
               Max(网点名) 网点名,
               Count(账号) 账户数量,
               Stuff((SELECT DISTINCT '','' + 余额日期
                      FROM   tb_yeb
                      WHERE  网点机构代码 = a.网点机构代码
                      FOR XML PATH('''')), 1, 1, '''') 余额日期
        FROM   tb_yeb a
        GROUP  BY 网点机构代码
      END
    ELSE
      BEGIN
        SELECT ''×商业银行余额表数据未导入'' 注意
      END
  END

GO', NULL, 18, N'010108', N'0', N'0', N'0', N'1', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (285, 65, N'.商行账户、交易、余额表提供情况', N'比较商业银行账户提供情况清单（互为校验数据提供完整性；亦可作为可疑线索现场检查）', N'', N'CREATE PROCEDURE p_Acco_BiJiao WITH ENCRYPTION AS
BEGIN
if object_id(''tempdb..#tmp'') is not null drop table #tmp
if object_id(''tempdb..#tmp0'') is not null drop table #tmp0
if object_id(''tempdb..#tmp00'') is not null drop table #tmp00
if object_id(''tempdb..#tmp000'') is not null drop table #tmp000
if object_id(''tempdb..#tmp2'') is not null drop table #tmp2
if object_id(''tempdb..#tmp22'') is not null drop table #tmp22
if object_id(''tempdb..#tmp222'') is not null drop table #tmp222
if object_id(''tempdb..#tmp3'') is not null drop table #tmp3
if object_id(''tempdb..#tmp33'') is not null drop table #tmp33
if object_id(''tempdb..#tmp333'') is not null drop table #tmp333
if object_id(''tempdb..#tmp3333'') is not null drop table #tmp3333
if object_id(''tempdb..#tmp33333'') is not null drop table #tmp33333
if object_id(''tempdb..#tmp333333'') is not null drop table #tmp333333
if object_id(''tempdb..#tmp4'') is not null drop table #tmp4
if object_id(''tempdb..#tmp44'') is not null drop table #tmp44
if object_id(''tempdb..#tmp444'') is not null drop table #tmp444
if object_id(''tempdb..#tmp9'') is not null drop table #tmp9
if object_id(''tempdb..#tmp99'') is not null drop table #tmp99
if object_id(''tempdb..#tmp999'') is not null drop table #tmp999

select a.银行机构代码,max(a.银行机构名称) 银行机构名称,count(distinct b.acc_no) 账户数 into #tmp2
	from v_bank a left join tb_acc b
        on a.银行机构代码= b.bank_code
	group by a.银行机构代码

select a.银行机构代码,count(distinct b.acc_no) 个人 into #tmp22
	from v_bank a left join tb_acc b
        on a.银行机构代码= b.bank_code
	where b.acc_type=''0'' or b.acc_type=''1''
	group by a.银行机构代码

select a.银行机构代码,count(distinct b.acc_no) 单位 into #tmp222
	from v_bank a left join tb_acc b
        on a.银行机构代码= b.bank_code
	where b.acc_type=''2''
	group by a.银行机构代码

select a.银行机构代码,count(distinct b.acc_no) 基本 into #tmp3
	from v_bank a left join tb_acc b
        on a.银行机构代码= b.bank_code
	where b.ent_cst_type=''0'' and b.acc_type=''2''
	group by a.银行机构代码
	
select a.银行机构代码 ,count(distinct b.acc_no) 一般 into #tmp33
	from v_bank a left join tb_acc b
        on a.银行机构代码= b.bank_code
	where b.ent_cst_type=''1'' and b.acc_type=''2''
	group by a.银行机构代码
 
select a.银行机构代码 ,count(distinct b.acc_no) 专用 into #tmp333
	from v_bank a left join tb_acc b
        on a.银行机构代码= b.bank_code
	where (b.ent_cst_type=''2'' or b.ent_cst_type=''4'') and b.acc_type=''2''
	group by a.银行机构代码

select a.银行机构代码 ,count(distinct b.acc_no) 预算 into #tmp3333
	from v_bank a left join tb_acc b
        on a.银行机构代码= b.bank_code
	where b.ent_cst_type=''4'' and b.acc_type=''2''
	group by a.银行机构代码
	
select a.银行机构代码 ,count(distinct b.acc_no) 非预算 into #tmp33333
	from v_bank a left join tb_acc b
        on a.银行机构代码= b.bank_code
	where b.ent_cst_type=''2'' and b.acc_type=''2''
	group by a.银行机构代码

select a.银行机构代码,count(distinct b.acc_no) 临时 into #tmp333333
	from v_bank a left join tb_acc b
        on a.银行机构代码= b.bank_code
	where b.ent_cst_type=''3'' and b.acc_type=''2''
	group by a.银行机构代码
	
select a.银行机构代码 ,count(distinct b.acc_no) 正常 into #tmp4
	from v_bank a left join tb_acc b
        on a.银行机构代码= b.bank_code
	where b.close_flag=''0'' and b.acc_type=''2''
	group by a.银行机构代码

select a.银行机构代码 ,count(distinct b.acc_no) 撤销 into #tmp44
	from v_bank a left join tb_acc b
        on a.银行机构代码= b.bank_code
	where b.close_flag=''1'' and b.acc_type=''2''
	group by a.银行机构代码

select a.银行机构代码 ,count(distinct b.acc_no) 久悬 into #tmp444
	from v_bank a left join tb_acc b
        on a.银行机构代码= b.bank_code
	where b.close_flag=''3'' and b.acc_type=''2''
	group by a.银行机构代码
	
	
select  a.银行机构代码,a.银行机构名称+''（商行）'' 银行机构名称,a.账户数,b.个人,c.单位,d.基本,e.一般,f.专用,g.预算,h.非预算,i.临时
        ,j.正常,k.撤销,l.久悬
into #tmp99
from #tmp2 a
		left join #tmp22 b on a.银行机构代码=b.银行机构代码
		left join #tmp222 c on a.银行机构代码=c.银行机构代码
        left join #tmp3 d on a.银行机构代码=d.银行机构代码
        left join #tmp33 e on a.银行机构代码=e.银行机构代码
        left join #tmp333 f on a.银行机构代码=f.银行机构代码
        left join #tmp3333 g on a.银行机构代码=g.银行机构代码
        left join #tmp33333 h on a.银行机构代码=h.银行机构代码
        left join #tmp333333 i on a.银行机构代码=i.银行机构代码
        left join #tmp4 j on a.银行机构代码=j.银行机构代码
        left join #tmp44 k on a.银行机构代码=k.银行机构代码
        left join #tmp444 l on a.银行机构代码=l.银行机构代码

--由于账户系统账号不唯一，除账户总数正确外，其他有重复统计情况，需改进
--改进使用v_ZhLast
select 银行机构代码 银行机构代码,max(银行机构名称)+''（人行）'' 银行机构名称,count(distinct 账号) 账户数,'''' 个人,count(distinct 账号) 单位,
sum(case when (账户性质=''基本'') then 1 else 0 end ) 基本,
sum(case when (账户性质=''一般'') then 1 else 0 end ) 一般,
sum(case when (账户性质=''预算'' or 账户性质=''非预算'') then 1 else 0 end ) 专用,
sum(case when (账户性质=''预算'') then 1 else 0 end ) 预算,
sum(case when (账户性质=''非预算'') then 1 else 0 end ) 非预算,
sum(case when (账户性质=''临时'' or 账户性质=''非临时'') then 1 else 0 end ) 临时,
sum(case when (状态=''正常'') then 1 else 0 end ) 正常,
sum(case when (状态=''撤销'') then 1 else 0 end ) 撤销,
sum(case when (状态=''久悬'') then 1 else 0 end ) 久悬
 into #tmp9
 from v_zhlast 
group by 银行机构代码
select a.银行机构代码,''总计=商行-人行'' 银行机构名称,
(case when b.账户数 is null then 0 else b.账户数 end)-a.账户数 账户数,
(case when b.个人 is null then 0 else b.个人 end)-a.个人 个人,
(case when b.单位 is null then 0 else b.单位 end)-a.单位 单位,
(case when b.基本 is null then 0 else b.基本 end)-a.基本 基本,
(case when b.一般 is null then 0 else b.一般 end)-a.一般 一般,
(case when b.专用 is null then 0 else b.专用 end)-a.专用 专用,
(case when b.预算 is null then 0 else b.预算 end)-a.预算 预算,
(case when b.非预算 is null then 0 else b.非预算 end)-a.非预算 非预算,
(case when b.临时 is null then 0 else b.临时 end)-a.临时 临时,
(case when b.正常 is null then 0 else b.正常 end)-a.正常 正常,
(case when b.撤销 is null then 0 else b.撤销 end)-a.撤销 撤销,
(case when (b.久悬 is null) then 0 else b.久悬 end)-a.久悬 久悬
into #tmp999
 from #tmp9 a
left join #tmp99 b on a.银行机构代码=b.银行机构代码

select * from #tmp9 
   union 
   select * from #tmp99 
      union 
   select * from #tmp999
--   --where 账户数>0 and 单位>0
END
GO', NULL, 22, N'010110', N'0', N'0', N'0', N'1', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (432, 285, N'人行账户有---商行账户未提供', N'账管系统数据中存在的账户，商行账户数据中未提供（互为校验数据提供完整性；亦可作为可疑线索现场检查）', N'@检查期限开始日期!D:20190101@账户状态（1非撤销、9全部）!N:9', N'CREATE PROCEDURE P_rhzh_no_shzh(@bgn_date CHAR(8),@zh_state CHAR(1))
WITH ENCRYPTION
AS
  BEGIN
    --DECLARE @bgn_date CHAR(8)
    --SET @bgn_date=''20190101''
    --DECLARE @zh_state CHAR(1)
    --SET @zh_state = ''1''

    SELECT b.银行机构名称,
           [银行机构代码],
           [存款人类别],
           [账号],
           [账户名称],
           [社会信用代码],
           [工商营业执照有效期],
           [注册资金金额],
           [地址],
           [联系电话],
           [法定代表人或负责人姓名],
           [法定代表人或负责人身份证件种类],
           [法定代表人或负责人身份证件编号],
           [开户日期],
           [久悬日期],
           [销户日期],
           [账户性质],
           [账户状态],
           [基本存款账户开户地地区代码],
           [可否取现]
    FROM   tb_rhzh_dw a
           LEFT JOIN v_bank b
                  ON a.银行机构代码 = b.银行编码或代码
    WHERE  NOT 账号 IN (SELECT DISTINCT 账号
                      FROM   tb_shjy_dw)
           AND 开户日期 >= @bgn_date
           AND 账户状态 <> ( CASE
                           WHEN @zh_state = ''1'' THEN ''撤销''
                           WHEN @zh_state = ''9'' THEN ''所有''
                         END )
  END
go ', NULL, 24, N'01011001', N'1', N'0', N'0', N'1', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (511, 285, N'余额表有=账户数据无', N'余额表数据中存在的账户，账户数据中未提供（互为校验数据提供完整性；亦可作为可疑线索现场检查）', N'@返回行数!N:10000', N'CREATE PROCEDURE P_yeb_no_zh(@row_num INT)
WITH ENCRYPTION
AS
  BEGIN
    IF Object_id(''tempdb..#tmp1'') IS NOT NULL
      DROP TABLE #tmp1

    IF Object_id(N''tb_yeb'', N''U'') IS NOT NULL
       AND Object_id(N''tb_shzh_dw'', N''U'') IS NOT NULL
      BEGIN
        SELECT DISTINCT 网点机构代码,
                        网点名,
                        账号,
                        户名
        INTO   #tmp1
        FROM   tb_yeb
        WHERE  账号 NOT IN (SELECT DISTINCT 账号
                          FROM   tb_shzh_dw)
        ORDER  BY 账号

        SET ROWCOUNT @row_num

        SELECT a.*,
               c.账户名称 人行户名,
               c.账户性质 人行性质,
               c.账户状态 人行状态,
               c.开户日期,
               c.销户日期
        FROM   #tmp1 a
               LEFT JOIN tb_rhzh_dw c
                      ON a.账号 = c.账号
        ORDER  BY a.账号,
                  a.网点机构代码

        SET ROWCOUNT 0
      END
    ELSE
      BEGIN
        SELECT ''×商业银行余额表数据或商业银行账户数据未导入'' 注意
      END
  END

GO', NULL, 28, N'01011003', N'1', N'0', N'0', N'1', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (50, 285, N'交易数据有=账户数据无', N'商行单位账户数据中存在的账户，在商数据中未提供（互为校验数据提供完整性；亦可作为可疑线索现场检查）', N'@返回行数!N:1000', N'CREATE PROCEDURE P_jy_no_zh(@row_num INT)
WITH ENCRYPTION
AS
  BEGIN
    --declare @row_num int
    --set @row_num=1000
    IF Object_id(''tempdb..#tmp1'') IS NOT NULL
      DROP TABLE #tmp1

    IF Object_id(N''tb_shzh_dw'', N''U'') IS NOT NULL
       AND Object_id(N''tb_shjy_dw'', N''U'') IS NOT NULL
      BEGIN
        SELECT 账号,
               Count(账号) 交易笔数,
               Sum(CASE
                     WHEN ( 现转标识 = ''现金'' ) THEN 1
                     ELSE 0
                   END) 现金笔数,
               Sum(CASE
                     WHEN ( 现转标识 = ''现金''
                            AND 借贷标识 = ''借'' ) THEN 1
                     ELSE 0
                   END) 取现笔数
        INTO   #tmp1
        FROM   tb_shjy_dw
        WHERE  账号 NOT IN (SELECT DISTINCT 账号
                          FROM   tb_shzh_dw)
        GROUP  BY 账号
        ORDER  BY 账号

        SET ROWCOUNT @row_num

        SELECT c.银行机构代码,
               b.银行机构名称,
               a.账号,
               c.账户名称 人行户名,
               c.账户性质 人行性质,
               c.账户状态 人行状态,
               c.开户日期,
               c.销户日期,
               a.交易笔数,
               a.现金笔数,
               a.取现笔数
        FROM   #tmp1 a
               LEFT JOIN tb_rhzh_dw c
                      ON a.账号 = c.账号
               LEFT JOIN V_Bank b
                      ON c.银行机构代码 = b.银行编码或代码
        ORDER  BY a.账号,
                  c.银行机构代码

        SET ROWCOUNT 0
      END
    ELSE
      BEGIN
        SELECT ''×商业银行账户数据或交易数据未导入'' 注意
      END
  END

GO ', NULL, 30, N'01011004', N'0', N'1', N'0', N'1', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (573, 0, N'检查数据分析', N'', N'', N'CREATE PROCEDURE      AS
BEGIN

END
GO', NULL, 50, N'02', N'0', N'0', N'0', N'1', N'1', N'1')
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (430, 65, N'商行各网点账户数量情况', N'', N'', N'CREATE PROCEDURE P_shzh_cnt
WITH ENCRYPTION
AS
  BEGIN
    IF Object_id(N''tb_shzh_dw'', N''U'') IS NOT NULL
      BEGIN
        SELECT DISTINCT a.开户行金融机构代码,
                        Max(b.银行机构名称) 网点名,
                        Count(*) 账户数量合计,
                        Min(开户日期) + ''～'' + Max(开户日期) 开户日期范围,
                        Min(销户日期) + ''～'' + Max(销户日期) 销户日期范围,
                        Sum(CASE
                              WHEN ( 账户类型 = ''基本'' ) THEN 1
                              ELSE 0
                            END) 基本户数量,
                        Sum(CASE
                              WHEN ( 账户类型 = ''一般'' ) THEN 1
                              ELSE 0
                            END) 一般户数量,
                        Sum(CASE
                              WHEN ( 账户类型 = ''专用'' ) THEN 1
                              ELSE 0
                            END) 预算专户数量,
                        Sum(CASE
                              WHEN ( 账户类型 = ''临时'' ) THEN 1
                              ELSE 0
                            END) 临时户数量,
                        Sum(CASE
                              WHEN ( 账户类型 = ''其他'' ) THEN 1
                              ELSE 0
                            END) 其他账户数量,
                        Sum(CASE
                              WHEN ( 账户类型 NOT IN ( ''基本'', ''一般'', ''专用'', ''临时'', ''其他'' ) ) THEN 1
                              ELSE 0
                            END) 其他账户数量
        FROM   tb_shzh_dw a
               LEFT JOIN v_bank b
                      ON a.开户行金融机构代码 = b.银行编码或代码
        GROUP  BY 开户行金融机构代码
      END
    ELSE
      BEGIN
        SELECT ''×账户管理系统单位账户数据未导入'' 注意
      END
  END
GO ', NULL, 14, N'010106', N'0', N'0', N'0', N'1', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (574, 359, N'字符串列表去重', N'', N'', N'CREATE FUNCTION Stringlistdistinct(@str VARCHAR(1000))
returns VARCHAR(1000)
WITH ENCRYPTION
AS
  BEGIN
    DECLARE @temp VARCHAR(1000)
    SET @temp= (SELECT String_agg (value, '','')
                FROM   (SELECT DISTINCT value
                        FROM   String_split(@str, '','')) AS T(value))
    --SELECT STRING_AGG (value,'','') FROM (VALUES(''AAAA''),(''BBBBB''),(''CCCCCC'') )AS T(MyName)
    RETURN @temp
  END
go', N'2019', 2026, N'1217', N'0', N'0', N'1', N'0', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (575, 563, N'红名单(单位个人手机相关)其他个人账户', N'功能描述：', N'@账户状态(1正常或久悬,9所有)!S:1@开户日期!D:20190101@涉案批次!S:', N'CREATE PROCEDURE P_sazh_other_gr(@zh_state CHAR(1),@kh_date CHAR(8),@pc VARCHAR(10))
WITH ENCRYPTION
AS
  BEGIN
    IF Object_id(''tempdb..#tmp0'') IS NOT NULL
      DROP TABLE #tmp0
    IF Object_id(''tempdb..#tmp00'') IS NOT NULL
      DROP TABLE #tmp00
    IF Object_id(''tempdb..#tmp000'') IS NOT NULL
      DROP TABLE #tmp1
    IF Object_id(''tempdb..#tmp2'') IS NOT NULL
      DROP TABLE #tmp2
    IF Object_id(''tempdb..#tmp3'') IS NOT NULL
      DROP TABLE #tmp3
    IF Object_id(''tempdb..#tmp_end1'') IS NOT NULL
      DROP TABLE #tmp_end1
    IF Object_id(''tempdb..#tmp_end2'') IS NOT NULL
      DROP TABLE #tmp_end2
    --DECLARE @pc VARCHAR(10)
    --SET @pc=''''
    --DECLARE @zh_state CHAR(1)
    --SET @zh_state = ''9''
    --DECLARE @kh_date CHAR(8)
    --SET @kh_date =''20200101''
    IF Object_id(N''tb_rhzh_gr'', N''U'') IS NULL
        OR Object_id(N''tb_red_dw'', N''U'') IS NULL
        OR Object_id(N''tb_red_gr'', N''U'') IS NULL
        OR Object_id(N''tb_red_phone'', N''U'') IS NULL
      BEGIN
        SELECT ''×账户系统单位账户数据未导入或红名单还未生成红名单信息'' 注意
      END
    ELSE
      BEGIN
        IF @zh_state <> ''1''
           AND @zh_state <> ''9''
          BEGIN
            SELECT ''×账号状态只能为1、9'' 参数错误
          END
        ELSE
          BEGIN
            --提取个人账户#tmp0
            SELECT [账号],
                   [银行机构代码],
                   b.银行机构名称,
                   [存款人名称],
                   [地址],
                   RIGHT(Trim([电话]), 11) 电话,
                   [身份证件编号],
                   [账户类型],
                   [开户日期],
                   [账户有效日期],
                   [销户日期]
            INTO   #tmp0
            FROM   tb_rhzh_gr a
                   LEFT JOIN V_Bank b
                          ON a.银行机构代码 = b.银行编码或代码
            WHERE  [开户日期] >= @kh_date
                   AND CASE
                         WHEN Len(Isnull([销户日期], '''')) = 0
                              AND @zh_state = ''1'' THEN ''1''
                         WHEN Len(Isnull([销户日期], '''')) >= 0
                              AND @zh_state = ''9'' THEN ''1''
                       END = ''1''
            --提取涉案账户账号用于剔除，以发现其他涉案账户（单位）
            SELECT DISTINCT 账号
            INTO   #tmp00
            FROM   [HNXLSYS].[dbo].[tb_sazh]
            WHERE  账户类型 = ''个人''
            --提取红名单，处理一致户名#tmp1
            ---提取个人红名单
            SELECT [证件号码],
                   [证件号码] 证件号码处理,
                   [姓名],
                   [手机号码],
                   [个人或单位地址],
                   [涉案账户],
                   [涉案类型],
                   [涉案批次]
            INTO   #tmp2
            FROM   [tb_red_gr]
            WHERE  涉案批次 LIKE ''%'' + @pc + ''%''
            --处理涉案证件编号
            UPDATE a
            SET    a.证件号码处理 = b.[身份证件编号]
            FROM   #tmp2 a
                   INNER JOIN #tmp0 b
                           ON a.姓名 = b.[存款人名称]
            WHERE  DBO.Fn_resemble_onebyone(b.[身份证件编号], a.证件号码) > 0.8
                   AND DBO.Fn_resemble_onebyone(b.[身份证件编号], a.证件号码) < 1
            -- OR ( Charindex (a.证件号码, b.社会信用代码) > 0 )
            SELECT DISTINCT a.*,
                            b.[涉案账户],
                            b.[涉案类型],
                            b.[涉案批次]
            INTO   #tmp_end2
            FROM   #tmp0 a
                   INNER JOIN #tmp2 b
                           ON a.[身份证件编号] = b.证件号码处理
            WHERE  账号 NOT IN (SELECT DISTINCT 账号
                              FROM   #tmp00)
            --提取手机红名单
            SELECT RIGHT(Trim([手机号码]), 11) 手机号码,
                   [姓名],
                   [证件号码],
                   [个人或单位地址],
                   [涉案账户],
                   [涉案类型],
                   [涉案批次]
            INTO   #tmp3
            FROM   [tb_red_phone]
            WHERE  [涉案批次] LIKE ''%'' + @pc + ''%''
            SELECT a.*,
                   b.[涉案账户],
                   b.[涉案类型],
                   b.[涉案批次]
            INTO   #tmp_end3
            FROM   #tmp0 a
                   INNER JOIN #tmp3 b
                           ON a.电话 = b.手机号码
            WHERE  账号 NOT IN (SELECT DISTINCT 账号
                              FROM   #tmp00)
            -------
            SELECT *
            FROM   #tmp_end2
            UNION
            SELECT *
            FROM   #tmp_end3
            ORDER  BY 银行机构代码,
                      [存款人名称]
          END
      END
  END
GO 
', NULL, 698, N'060611', N'0', N'0', N'0', N'1', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (65, 505, N'单位账户', N'', N'', N'CREATE PROCEDURE P_tmp  WITH ENCRYPTION AS
begin
select ''必要时补充检查逻辑'' 提示信息
end
go', NULL, 2, N'0101', N'0', N'0', N'0', N'1', N'1', N'1')
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (416, 505, N'个人账户', N'查看单位账户各有关字段提供情况', N'', N'CREATE PROCEDURE P_dwzh_xhrq_zt
WITH ENCRYPTION
AS
  BEGIN
    IF Object_id(N''tb_shzh_dw'', N''U'') IS NOT NULL
      BEGIN
        DECLARE @s_zhzl VARCHAR(80)
        DECLARE @s_zhxz VARCHAR(80)
        DECLARE @s_zhzt VARCHAR(80)
        DECLARE @s_kfqx VARCHAR(80)
        DECLARE @s_zmwjzl VARCHAR(80)
        DECLARE @s_frzjzl VARCHAR(80)

        SET @s_zhzl=(SELECT Stuff((SELECT DISTINCT '','' + 账户类型
                                   FROM   tb_shzh_dw
                                   FOR XML PATH('''')), 1, 1, ''''))
        SET @s_zhzt=(SELECT Stuff((SELECT DISTINCT '','' + 账户状态
                                   FROM   tb_shzh_dw
                                   FOR XML PATH('''')), 1, 1, ''''))
        SET @s_zmwjzl=(SELECT Stuff((SELECT DISTINCT '','' + 执照号码
                                     FROM   tb_shzh_dw
                                     FOR XML PATH('''')), 1, 1, ''''))
        SET @s_frzjzl=(SELECT Stuff((SELECT DISTINCT '','' + 法人代表或负责人证件号码
                                     FROM   tb_shzh_dw
                                     FOR XML PATH('''')), 1, 1, ''''))

        SELECT @s_zhzl 账户种类,
               -- 账户性质,
              -- @s_zhzt 账户状态,
               --@s_kfqx 可否取现,
               @s_zmwjzl 单位证明文件种类,
               @s_frzjzl 法人或负责人身份证件种类
      END
    ELSE
      BEGIN
        SELECT ''×商业银行单位账户数据未导入'' 注意
      END
  END

GO ', NULL, 32, N'0102', N'0', N'0', N'0', N'1', N'1', N'1')
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (418, 563, N'涉案个人账户提取', N'', N'@地名!S:淮南|凤台|寿县@所属银行!S:农业@批次!S:@户名!S:@证件号码!S:@法人代表!S:@法人代表证件号!S:@法人代表手机!S:@涉案类型(涉案、涉诈、涉赌)!S:@账户类型（单位个人)!S:个人', N'CREATE PROCEDURE P_sazh_list(@dm VARCHAR(100),@bank VARCHAR(60),@pc VARCHAR(20),@hm VARCHAR(100),@zjhm VARCHAR(30),@frdb VARCHAR(60),@frdbzjh VARCHAR(30),@frdbsj VARCHAR(30),@salx VARCHAR(60),@zhlx VARCHAR(60))
WITH ENCRYPTION
AS
  BEGIN
    --与单位共用模型，参数不同，方便显示对应人行账户
    --DECLARE @dm VARCHAR(100)
    --SET @dm=''淮南|凤台|寿县''
    --DECLARE @bank VARCHAR(60)
    --SET @bank=''''
    --DECLARE @pc VARCHAR(12)
    --SET @pc=''2020974''
    --DECLARE @hm VARCHAR(100)
    --SET @hm=''''
    --DECLARE @zjhm VARCHAR(30)
    --SET @zjhm=''''
    --DECLARE @frdb VARCHAR(60)
    --SET @frdb=''''
    --DECLARE @frdbzjh VARCHAR(30)
    --SET @frdbzjh=''''
    --DECLARE @frdbsj VARCHAR(30)
    --SET @frdbsj=''''
    --DECLARE @salx VARCHAR(60)
    --SET @salx=''''
    --DECLARE @zhlx VARCHAR(60)
    --SET @zhlx=''''
    SELECT [账号],
           [户名],
           [证件号码],
           [银行],
           [开户网点编号],
           [开户网点名称],
           [开户日期],
           [注册日期],
           [账户性质],
           [开户状态],
           [省份],
           [城市],
           [区县],
           [营业执照地址],
           [银行留存地址],
           [法人代表],
           [法人代表证件类型],
           [法人代表证件号],
           [个人或法人代表手机],
           [财务联系人],
           [联系人手机],
           [网址],
           [IP地址],
           [地点],
           [冻结单位],
           [冻结时间],
           [录入单位],
           [录入时间],
           [涉案类型],
           [账户类型],
           [批次],
           [备注]
    FROM   [HNXLSYS].[dbo].[tb_sazh] a,
           dbo.Ufn_splitstringtotable(@dm, ''|'') b
    WHERE  ( Charindex(b.id, a.开户网点名称) > 0
              OR Charindex(b.id, a.省份 + a.城市 + a.区县) > 0  or len(b.id)=0 )
           AND a.银行 LIKE ''%'' + @bank + ''%''
           AND a.批次 LIKE ''%'' + @pc + ''%''
           AND a.户名 LIKE ''%'' + @hm + ''%''
           AND a.证件号码 LIKE ''%'' + @zjhm + ''%''
           AND a.法人代表 LIKE ''%'' + @frdb + ''%''
           AND a.法人代表证件号 LIKE ''%'' + @frdbzjh + ''%''
           AND a.个人或法人代表手机 LIKE ''%'' + @frdbsj + ''%''
           AND a.账户类型 LIKE ''%'' + @zhlx + ''%''
           AND a.涉案类型 LIKE ''%'' + @salx + ''%''
    ORDER  BY [银行]
  END
GO', NULL, 673, N'060602', N'0', N'0', N'0', N'1', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (578, 563, N'按银行统计涉案账户数量', N'其他范围如地点、涉案批次、单位或个人等可参数控制', N'@地名!S:淮南|凤台|寿县@所属银行!S:@批次!S:断卡@户名!S:@证件号码!S:@法人代表!S:@法人代表证件号!S:@法人代表手机!S:@涉案类型(涉案、涉诈、涉赌)!S:@账户类型（单位个人)!S:单位', N'CREATE PROCEDURE P_sazh_count_bank(@dm VARCHAR(100),@bank VARCHAR(60),@pc VARCHAR(20),@hm VARCHAR(100),@zjhm VARCHAR(30),@frdb VARCHAR(60),@frdbzjh VARCHAR(30),@frdbsj VARCHAR(30),@salx VARCHAR(60),@zhlx VARCHAR(60))
WITH ENCRYPTION
AS
  BEGIN
    --与个人共用模型，参数不同，方便显示对应人行账户
    --DECLARE @dm VARCHAR(100)
    --SET @dm=''淮南|凤台|寿县''
    --DECLARE @bank VARCHAR(60)
    --SET @bank=''''
    --DECLARE @pc VARCHAR(12)
    --SET @pc=''''
    --DECLARE @hm VARCHAR(100)
    --SET @hm=''''
    --DECLARE @zjhm VARCHAR(30)
    --SET @zjhm=''''
    --DECLARE @frdb VARCHAR(60)
    --SET @frdb=''''
    --DECLARE @frdbzjh VARCHAR(30)
    --SET @frdbzjh=''''
    --DECLARE @frdbsj VARCHAR(30)
    --SET @frdbsj=''''
    --DECLARE @salx VARCHAR(60)
    --SET @salx=''''
    --DECLARE @zhlx VARCHAR(60)
    --SET @zhlx=''个人''
    SELECT [银行],
           Count(distinct 账号) 涉案账户数量,
           Row_number() OVER(ORDER BY Count(DISTINCT 账号) desc) 名次
    FROM   [HNXLSYS].[dbo].[tb_sazh] a,
           dbo.Ufn_splitstringtotable(@dm, ''|'') b
    WHERE  ( Charindex(b.id, a.开户网点名称) > 0
              OR Charindex(b.id, a.省份 + a.城市 + a.区县) > 0
              OR Len(b.id) = 0 )
           AND a.银行 LIKE ''%'' + @bank + ''%''
           AND a.批次 LIKE ''%'' + @pc + ''%''
           AND a.户名 LIKE ''%'' + @hm + ''%''
           AND a.证件号码 LIKE ''%'' + @zjhm + ''%''
           AND a.法人代表 LIKE ''%'' + @frdb + ''%''
           AND a.法人代表证件号 LIKE ''%'' + @frdbzjh + ''%''
           AND a.个人或法人代表手机 LIKE ''%'' + @frdbsj + ''%''
           AND a.账户类型 LIKE ''%'' + @zhlx + ''%''
           AND a.涉案类型 LIKE ''%'' + @salx + ''%''
    GROUP  BY [银行]
    ORDER  BY 涉案账户数量 DESC
  END
GO 
', NULL, 690, N'060605', N'0', N'0', N'0', N'1', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (579, 563, N'按网点统计涉案账户数量', N'其他范围如地点、涉案批次、单位或个人等可参数控制', N'@地名!S:淮南|凤台|寿县@所属银行!S:@批次!S:断卡@户名!S:@证件号码!S:@法人代表!S:@法人代表证件号!S:@法人代表手机!S:@涉案类型(涉案、涉诈、涉赌)!S:@账户类型（单位个人)!S:单位', N'CREATE PROCEDURE P_sazh_count_wd(@dm VARCHAR(100),@bank VARCHAR(60),@pc VARCHAR(20),@hm VARCHAR(100),@zjhm VARCHAR(30),@frdb VARCHAR(60),@frdbzjh VARCHAR(30),@frdbsj VARCHAR(30),@salx VARCHAR(60),@zhlx VARCHAR(60))
WITH ENCRYPTION
AS
  BEGIN
    --与个人共用模型，参数不同，方便显示对应人行账户
    --DECLARE @dm VARCHAR(100)
    --SET @dm=''淮南|凤台|寿县''
    --DECLARE @bank VARCHAR(60)
    --SET @bank=''''
    --DECLARE @pc VARCHAR(12)
    --SET @pc=''''
    --DECLARE @hm VARCHAR(100)
    --SET @hm=''''
    --DECLARE @zjhm VARCHAR(30)
    --SET @zjhm=''''
    --DECLARE @frdb VARCHAR(60)
    --SET @frdb=''''
    --DECLARE @frdbzjh VARCHAR(30)
    --SET @frdbzjh=''''
    --DECLARE @frdbsj VARCHAR(30)
    --SET @frdbsj=''''
    --DECLARE @salx VARCHAR(60)
    --SET @salx=''''
    --DECLARE @zhlx VARCHAR(60)
    --SET @zhlx=''个人''
    SELECT [银行],
           [开户网点名称],
           Count(distinct 账号) 涉案账户数量,
           Row_number() OVER(ORDER BY Count(DISTINCT 账号) desc) 名次
    FROM   [HNXLSYS].[dbo].[tb_sazh] a,
           dbo.Ufn_splitstringtotable(@dm, ''|'') b
    WHERE  ( Charindex(b.id, a.开户网点名称) > 0
              OR Charindex(b.id, a.省份 + a.城市 + a.区县) > 0
              OR Len(b.id) = 0 )
           AND a.银行 LIKE ''%'' + @bank + ''%''
           AND a.批次 LIKE ''%'' + @pc + ''%''
           AND a.户名 LIKE ''%'' + @hm + ''%''
           AND a.证件号码 LIKE ''%'' + @zjhm + ''%''
           AND a.法人代表 LIKE ''%'' + @frdb + ''%''
           AND a.法人代表证件号 LIKE ''%'' + @frdbzjh + ''%''
           AND a.个人或法人代表手机 LIKE ''%'' + @frdbsj + ''%''
           AND a.账户类型 LIKE ''%'' + @zhlx + ''%''
           AND a.涉案类型 LIKE ''%'' + @salx + ''%''
    GROUP  BY [银行],
              [开户网点名称]
    ORDER  BY 涉案账户数量 DESC
  END
GO 
', NULL, 691, N'060606', N'0', N'0', N'0', N'1', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (437, 65, N'商行单位交易附言字段信息列表', N'', N'', N'CREATE PROCEDURE  P_tb_jyb_jdbz with  ENCRYPTION   AS
BEGIN
if object_id(N''tb_shzh_dw'',N''U'') is not null
select distinct 交易附言 from tb_shjy_dw
else
select ''×商业银行单位交易数据未导入'' 注意
END
GO', NULL, 20, N'010109', N'0', N'0', N'0', N'1', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (438, 416, N'商行个人交易字段提供情况', NULL, NULL, N'CREATE PROCEDURE Pg_shjy_num
WITH ENCRYPTION
AS
  BEGIN
    SELECT '' ★交易总数★'' 信息类型,
           Cast(Count(*) AS VARCHAR(20)) 数量,
           '''' 说明
    FROM   tb_shjy_gr
    UNION
    SELECT '' ★账户总数★'' 信息类型,
           Cast(Count(DISTINCT 账号) AS VARCHAR(20)) 数量,
           '''' 说明
    FROM   tb_shjy_gr
    UNION
    SELECT ''1. ---借贷标识---'' 信息类型,
           '''' 数量,
           ''若借贷标识信息不完整则检查无法实施'' 说明
    FROM   tb_shjy_gr
    UNION
    SELECT ''1.1 贷方交易'' 信息类型,
           Cast(Count(*) AS VARCHAR(20)) 数量,
           CASE
             WHEN Count(*) = 0 THEN ''没有贷方交易，数据可能有问题''
             ELSE ''''
           END 说明
    FROM   tb_shjy_gr
    WHERE  借贷标识 = ''贷''
    UNION
    SELECT ''1.2 借方交易'' 信息类型,
           Cast(Count(*) AS VARCHAR(20)) 数量,
           CASE
             WHEN Count(*) = 0 THEN ''没有借方交易，数据可能有问题''
             ELSE ''''
           END 说明
    FROM   tb_shjy_gr
    WHERE  借贷标识 = ''借''
    UNION
    SELECT ''1.6 不符合数据规范'' 信息类型,
           Cast(Count(*) AS VARCHAR(20)) 数量,
           CASE
             WHEN Count(*) > 0 THEN ''若不符规范数据较多将影响检查''
             ELSE ''''
           END 说明
    FROM   tb_shjy_gr
    WHERE  借贷标识 IS NULL
            OR ( NOT 借贷标识 IS NULL
                 AND Len(借贷标识) = 0 )
            OR ( 借贷标识 <> ''借''
                 AND 借贷标识 <> ''贷'' )
    UNION
    SELECT ''2.---现转标识---'' 信息类型,
           ''---'' 数量,
           ''现转标识数据若不完整，将影响检查'' 说明
    FROM   tb_shjy_gr
    UNION
    SELECT ''2.1 转账'' 信息类型,
           Cast(Count(*) AS VARCHAR(20)) 数量,
           CASE
             WHEN Count(*) = 0 THEN ''若为0数据可能有问题''
             ELSE ''''
           END 说明
    FROM   tb_shjy_gr
    WHERE  现转标识 = ''转账''
    UNION
    SELECT ''2.2 现金'' 信息类型,
           Cast(Count(*) AS VARCHAR(20)) 数量,
           CASE
             WHEN Count(*) = 0 THEN ''若为0数据可能有问题''
             ELSE ''''
           END 说明
    FROM   tb_shjy_gr
    WHERE  现转标识 = ''现金''
    UNION
    SELECT ''2.3 不符合数据规范'' 信息类型,
           Cast(Count(*) AS VARCHAR(20)) 数量,
           CASE
             WHEN Count(*) > 0 THEN ''若不符规范数据较多将影响检查''
             ELSE ''''
           END 说明
    FROM   tb_shjy_gr
    WHERE  现转标识 IS NULL
            OR ( NOT 现转标识 IS NULL
                 AND Len(现转标识) = 0 )
            OR ( 现转标识 <> ''现金''
                 AND 现转标识 <> ''转账'' )
    UNION
    SELECT ''3.---交易渠道---'' 信息类型,
           ''---'' 数量,
           ''未提供或不符合规范将影响检查'' 说明
    FROM   tb_shjy_gr
    UNION
    SELECT ''3.1 柜面'' 信息类型,
           Cast(Count(*) AS VARCHAR(20)) 数量,
           CASE
             WHEN Count(*) = 0 THEN ''若为0数据可能有问题''
             ELSE ''''
           END 说明
    FROM   tb_shjy_gr
    WHERE  交易渠道 = ''柜面''
    UNION
    SELECT ''3.2 自助机具'' 信息类型,
           Cast(Count(*) AS VARCHAR(20)) 数量,
           '''' 说明
    FROM   tb_shjy_gr
    WHERE  交易渠道 = ''自助''
    UNION
    SELECT ''3.3 网银'' 信息类型,
           Cast(Count(*) AS VARCHAR(20)) 数量,
           '''' 说明
    FROM   tb_shjy_gr
    WHERE  交易渠道 = ''网银''
    UNION
    SELECT ''3.4 手机银行'' 信息类型,
           Cast(Count(*) AS VARCHAR(20)) 数量,
           '''' 说明
    FROM   tb_shjy_gr
    WHERE  交易渠道 = ''手机''
    UNION
    SELECT ''3.5 其他'' 信息类型,
           Cast(Count(*) AS VARCHAR(20)) 数量,
           '''' 说明
    FROM   tb_shjy_gr
    WHERE  交易渠道 = ''其他''
    UNION
    SELECT ''3.12 不符合数据规范'' 信息类型,
           Cast(Count(*) AS VARCHAR(20)) 数量,
           CASE
             WHEN Count(*) > 0 THEN ''若数量大怀疑数据提供问题''
             ELSE ''''
           END 说明
    FROM   tb_shjy_gr
    WHERE  交易渠道 IS NULL
            OR Len(交易渠道) = 0
            OR ( 交易渠道 <> ''柜面''
                 AND 交易渠道 <> ''自助''
                 AND 交易渠道 <> ''网银''
                 AND 交易渠道 <> ''手机''
                 AND 交易渠道 <> ''其他'' )
    UNION
    SELECT ''9.---其他信息---'' 信息类型,
           ''---'' 数量,
           ''有关信息未提供的数量较多将影响检查'' 说明
    FROM   tb_shjy_gr
    UNION
    SELECT ''9.1 账号信息为空'' 信息类型,
           Cast(Count(*) AS VARCHAR(20)) 数量,
           CASE
             WHEN Count(*) > 0 THEN ''账号为空，数量大怀疑数据提供问题，数量小可作为检查线索''
             ELSE ''''
           END 说明
    FROM   tb_shjy_gr
    WHERE  账号 IS NULL
            OR Len(账号) = 0
    UNION
    SELECT ''9.2 账户名称为空'' 信息类型,
           Cast(Count(*) AS VARCHAR(20)) 数量,
           CASE
             WHEN Count(*) > 0 THEN ''账户名称为空数量大怀疑数据提供问题''
             ELSE ''''
           END 说明
    FROM   tb_shjy_gr
    WHERE  账户名称 IS NULL
            OR Len(账户名称) = 0
    UNION
    SELECT ''9.3 交易日期为空'' 信息类型,
           Cast(Count(*) AS VARCHAR(20)) 数量,
           CASE
             WHEN Count(*) > 0 THEN ''开户日期为空数量大怀疑数据提供问题''
             ELSE ''''
           END 说明
    FROM   tb_shjy_gr
    WHERE  交易日期 IS NULL
            OR Len(交易日期) = 0
    UNION
    SELECT ''9.4 交易时间为空'' 信息类型,
           Cast(Count(*) AS VARCHAR(20)) 数量,
           CASE
             WHEN Count(*) > 0 THEN ''销户日期为空数量大怀疑数据提供问题''
             ELSE ''''
           END 说明
    FROM   tb_shjy_gr
    WHERE  交易时间 IS NULL
            OR Len(交易时间) = 0
    UNION
    SELECT ''9.5 交易金额为空'' 信息类型,
           Cast(Count(*) AS VARCHAR(20)) 数量,
           CASE
             WHEN Count(*) > 0 THEN ''数量大数据提供问题''
             ELSE ''''
           END 说明
    FROM   tb_shjy_gr
    WHERE  [交易金额] IS NULL
            OR [交易金额] = 0
    UNION
    SELECT ''9.6 交易对方信息为空'' 信息类型,
           Cast(Count(*) AS VARCHAR(20)) 数量,
           CASE
             WHEN Count(*) > 0 THEN ''数量太大数据提供问题''
             ELSE ''''
           END 说明
    FROM   tb_shjy_gr
    WHERE  [交易对方账户名称] IS NULL
            OR Len([交易对方账户名称]) = 0
            OR [交易对方账号] IS NULL
            OR Len([交易对方账号]) = 0
            OR [交易对方开户银行] IS NULL
            OR Len([交易对方开户银行]) = 0
    UNION
    SELECT ''9.7 交易附言为空'' 信息类型,
           Cast(Count(*) AS VARCHAR(20)) 数量,
           CASE
             WHEN Count(*) > 0 THEN ''数量太大怀疑数据提供问题''
             ELSE ''''
           END 说明
    FROM   tb_shjy_gr
    WHERE  [交易附言] IS NULL
            OR Len([交易附言]) = 0
  END
GO ', NULL, 38, N'010206', N'0', N'0', N'0', N'0', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (580, 563, N'按城市统计涉案账户数量', N'其他范围如地点、涉案批次、单位或个人等可参数控制', N'@地名!S:@所属银行!S:邮政@批次!S:断卡@户名!S:@证件号码!S:@法人代表!S:@法人代表证件号!S:@法人代表手机!S:@涉案类型(涉案、涉诈、涉赌)!S:@账户类型（单位个人)!S:个人', N'CREATE PROCEDURE P_sazh_count_city(@dm VARCHAR(100),@bank VARCHAR(60),@pc VARCHAR(20),@hm VARCHAR(100),@zjhm VARCHAR(30),@frdb VARCHAR(60),@frdbzjh VARCHAR(30),@frdbsj VARCHAR(30),@salx VARCHAR(60),@zhlx VARCHAR(60))
WITH ENCRYPTION
AS
  BEGIN
    --与个人共用模型，参数不同，方便显示对应人行账户
    --DECLARE @dm VARCHAR(100)
    --SET @dm=''淮南|凤台|寿县''
    --DECLARE @bank VARCHAR(60)
    --SET @bank=''''
    --DECLARE @pc VARCHAR(12)
    --SET @pc=''''
    --DECLARE @hm VARCHAR(100)
    --SET @hm=''''
    --DECLARE @zjhm VARCHAR(30)
    --SET @zjhm=''''
    --DECLARE @frdb VARCHAR(60)
    --SET @frdb=''''
    --DECLARE @frdbzjh VARCHAR(30)
    --SET @frdbzjh=''''
    --DECLARE @frdbsj VARCHAR(30)
    --SET @frdbsj=''''
    --DECLARE @salx VARCHAR(60)
    --SET @salx=''''
    --DECLARE @zhlx VARCHAR(60)
    --SET @zhlx=''个人''
    SELECT [城市],
           Count(distinct 账号) 涉案账户数量,
           Row_number() OVER(ORDER BY Count(DISTINCT 账号) desc) 名次
    FROM   [HNXLSYS].[dbo].[tb_sazh] a,
           dbo.Ufn_splitstringtotable(@dm, ''|'') b
    WHERE  ( Charindex(b.id, a.开户网点名称) > 0
              OR Charindex(b.id, a.省份 + a.城市 + a.区县) > 0
              OR Len(b.id) = 0 )
           AND a.银行 LIKE ''%'' + @bank + ''%''
           AND a.批次 LIKE ''%'' + @pc + ''%''
           AND a.户名 LIKE ''%'' + @hm + ''%''
           AND a.证件号码 LIKE ''%'' + @zjhm + ''%''
           AND a.法人代表 LIKE ''%'' + @frdb + ''%''
           AND a.法人代表证件号 LIKE ''%'' + @frdbzjh + ''%''
           AND a.个人或法人代表手机 LIKE ''%'' + @frdbsj + ''%''
           AND a.账户类型 LIKE ''%'' + @zhlx + ''%''
           AND a.涉案类型 LIKE ''%'' + @salx + ''%''
    GROUP  BY [城市]
    ORDER  BY 涉案账户数量 DESC
  END
GO 
', NULL, 692, N'060607', N'0', N'0', N'0', N'1', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (581, 563, N'按区县统计涉案账户数量', N'其他范围如地点、涉案批次、单位或个人等可参数控制', N'@地名!S:淮南|凤台|寿县@所属银行!S:农业@批次!S:@户名!S:@证件号码!S:@法人代表!S:@法人代表证件号!S:@法人代表手机!S:@涉案类型(涉案、涉诈、涉赌)!S:@账户类型（单位个人)!S:个人', N'CREATE PROCEDURE P_sazh_count_distr(@dm VARCHAR(100),@bank VARCHAR(60),@pc VARCHAR(20),@hm VARCHAR(100),@zjhm VARCHAR(30),@frdb VARCHAR(60),@frdbzjh VARCHAR(30),@frdbsj VARCHAR(30),@salx VARCHAR(60),@zhlx VARCHAR(60))
WITH ENCRYPTION
AS
  BEGIN
    --与个人共用模型，参数不同，方便显示对应人行账户
    --DECLARE @dm VARCHAR(100)
    --SET @dm=''淮南|凤台|寿县''
    --DECLARE @bank VARCHAR(60)
    --SET @bank=''''
    --DECLARE @pc VARCHAR(12)
    --SET @pc=''''
    --DECLARE @hm VARCHAR(100)
    --SET @hm=''''
    --DECLARE @zjhm VARCHAR(30)
    --SET @zjhm=''''
    --DECLARE @frdb VARCHAR(60)
    --SET @frdb=''''
    --DECLARE @frdbzjh VARCHAR(30)
    --SET @frdbzjh=''''
    --DECLARE @frdbsj VARCHAR(30)
    --SET @frdbsj=''''
    --DECLARE @salx VARCHAR(60)
    --SET @salx=''''
    --DECLARE @zhlx VARCHAR(60)
    --SET @zhlx=''个人''
    SELECT [区县],
           Count(distinct 账号) 涉案账户数量,
           Row_number() OVER(ORDER BY Count(DISTINCT 账号) desc) 名次
    FROM   [HNXLSYS].[dbo].[tb_sazh] a,
           dbo.Ufn_splitstringtotable(@dm, ''|'') b
    WHERE  ( Charindex(b.id, a.开户网点名称) > 0
              OR Charindex(b.id, a.省份 + a.城市 + a.区县) > 0
              OR Len(b.id) = 0 )
           AND a.银行 LIKE ''%'' + @bank + ''%''
           AND a.批次 LIKE ''%'' + @pc + ''%''
           AND a.户名 LIKE ''%'' + @hm + ''%''
           AND a.证件号码 LIKE ''%'' + @zjhm + ''%''
           AND a.法人代表 LIKE ''%'' + @frdb + ''%''
           AND a.法人代表证件号 LIKE ''%'' + @frdbzjh + ''%''
           AND a.个人或法人代表手机 LIKE ''%'' + @frdbsj + ''%''
           AND a.账户类型 LIKE ''%'' + @zhlx + ''%''
           AND a.涉案类型 LIKE ''%'' + @salx + ''%''
    GROUP  BY [区县]
    ORDER  BY 涉案账户数量 DESC
  END
GO 
', NULL, 693, N'060608', N'1', N'1', N'0', N'1', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (584, 571, N'黑名单浏览', N'浏览黑名单', N'@提示1!参数类型1:默认值1@提示2!参数类型2:默认值2', N'CREATE PROCEDURE      AS
BEGIN

END
GO', NULL, 584, N'060201', N'1', N'1', N'0', N'1', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (585, 554, N'所有个人短期多开户或多电话（mark）', N'速度较慢，但', N'@提示1!参数类型1:默认值1@提示2!参数类型2:默认值2', N'CREATE PROCEDURE      AS
BEGIN

END
GO', NULL, 585, N'060501', N'1', N'0', N'0', N'0', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (586, 1, N'clr运行允许设置2014', N'功能描述：', N'', N'CREATE PROCEDURE  P_clr_run  WITH ENCRYPTION AS
BEGIN
exec (''sp_configure ''+''''''show advanced options''''''+'', 1'') 
reconfigure
--exec (''sp_configure ''+''''''clr strict security''''''+'', 0'') 
--reconfigure
exec (''sp_configure ''+''''''clr enabled''''''+'', 1'')
reconfigure
--获取安装路径（数据库目录所在路径）
DECLARE @Path NVARCHAR(MAX)
DECLARE @ReversedPath NVARCHAR(MAX)
DECLARE @PathLength INT
declare @Pathname NVARCHAR(MAX)
set @path=(select top 1 physical_name from sys.database_files where physical_name like ''%.mdf'')
SET @ReversedPath = REVERSE(@Path)
SELECT @PathLength = CHARINDEX(''\'', @ReversedPath)
set @Path= LEFT(@Path, LEN(@Path) - @PathLength)
SET @ReversedPath = REVERSE(@Path)
set @PathLength = CHARINDEX(''\'', @ReversedPath)
set @pathname = LEFT(@Path, LEN(@Path) - @PathLength)
set @Pathname = @Pathname+''\MSSQLRegexExtend.dll''
--注册.net类库 
--CREATE ASSEMBLY Regex from ''D:\Inspection\MSSQLRegexExtend.dll'' WITH PERMISSION_SET = SAFE
if not exists(select * from sys.assemblies where name=''Regex'')
begin
  EXEC(''CREATE ASSEMBLY Regex from ''+''''''''+@Pathname+''''''''+'' WITH PERMISSION_SET = SAFE'')    
  RECONFIGURE         --设置可用clr组件。别忘记运行这行进行应用  
end 
select ''OK''
END
GO', N'2014', 1002, N'1102', N'0', N'0', N'1', N'0', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (333, 91, N'单位账户未核准或未备案_比对商行余额表', N'余额表中查找未纳入账户系统管理或在账户管理系统已撤销或已久悬账户', N'@是否剔除余额为0的账户？（1是、0否）!S:1@是否显示交易笔数？（1是、0否）!S:1@最小交易笔数!N:2', N'CREATE PROCEDURE P_yeb_not_bak (@is_ok CHAR(1),@txn_ok CHAR(1),@jybs INT)
WITH ENCRYPTION
AS
  BEGIN
    IF Object_id(''tempdb..#tmp'') IS NOT NULL
      DROP TABLE #tmp

    IF Object_id(''tempdb..#tmp0'') IS NOT NULL
      DROP TABLE #tmp0

    IF Object_id(''tempdb..#tmp1'') IS NOT NULL
      DROP TABLE #tmp1

    IF Object_id(''tempdb..#tmp2'') IS NOT NULL
      DROP TABLE #tmp2

    IF Object_id(N''tb_yeb'', N''U'') IS NULL
        OR Object_id(N''tb_rhzh_dw'', N''U'') IS NULL
      BEGIN
        SELECT ''×商业银行余额表或账户系统数据未导入'' 注意
      END
    ELSE
      BEGIN
        -- DECLARE @yeb_date VARCHAR(8)
        --DECLARE @is_ok CHAR(1)
        --DECLARE @txn_ok CHAR(1)
        --SET @is_ok=''1''
        --SET @txn_ok=''1''
        IF @is_ok <> ''1''
           AND @is_ok <> ''0''
            OR @txn_ok <> ''1''
               AND @txn_ok <> ''0''
          BEGIN
            SELECT ''×是否提出余额为0的账户参数只能为0、1或是否显示交易笔数参数只能为0、1'' 参数错误
          END
        ELSE
          BEGIN
            IF Object_id(N''tb_shjy_dw'', N''U'') IS NULL--未导入商行交易时，默认为不计算笔数
              BEGIN
                SET @txn_ok=''0''
              END

            SELECT 网点机构代码,
                   网点名,
                   户名,
                   账号,
                   余额,
                   余额日期
            INTO   #tmp
            FROM   [tb_yeb]
            WHERE  账号 NOT IN (SELECT DISTINCT 账号
                              FROM   v_rhzh_dw
                              WHERE  账户状态 = ''正常'')

            --RETURN
            SELECT a.*,
                   b.开户日期 人行开户,
                   b.销户日期 人行销户,
                   b.久悬日期 人行久悬,
                   b.账户性质 人行性质,
                   b.账户状态 人行状态
            INTO   #tmp0
            FROM   #tmp a
                   LEFT JOIN v_rhzh_dw b
                          ON a.账号 = b.账号
            ORDER  BY 网点机构代码,
                      账号

            IF Ltrim(@is_ok) = ''1''
              DELETE FROM #tmp0
              WHERE  人行销户 >= 余额日期
                      OR 人行久悬 >= 余额日期
                      OR 余额 = 0
            ELSE
              DELETE FROM #tmp0
              WHERE  人行销户 >= 余额日期
                      OR 人行久悬 >= 余额日期

            --SELECT *
            --FROM   #tmp0
            IF @txn_ok = ''1''
              BEGIN
                SELECT DISTINCT 账号
                INTO   #tmp1
                FROM   #tmp0

                SELECT a.账号,
                       Count(b.账号) 笔数,
                       Max(交易金额) 最大交易金额,
                       Sum(CASE
                             WHEN ( 借贷标识 = ''贷'' ) THEN 1
                             ELSE 0
                           END) 贷方,
                       Sum(CASE
                             WHEN ( 借贷标识 = ''借'' ) THEN 1
                             ELSE 0
                           END) 借方,
                       Sum(CASE
                             WHEN ( 现转标识 = ''现金''
                                    AND 借贷标识 = ''贷'' ) THEN 1
                             ELSE 0
                           END) 贷方现金,
                       Sum(CASE
                             WHEN ( 现转标识 = ''现金''
                                    AND 借贷标识 = ''借'' ) THEN 1
                             ELSE 0
                           END) 借方现金,
                       Min(交易日期) 最早时间,
                       Max(交易日期) 最迟时间
                INTO   #tmp2
                FROM   #tmp1 a
                       LEFT JOIN tb_shjy_dw b
                              ON a.账号 = b.账号
                GROUP  BY a.账号

                SELECT a.*,
                       b.笔数,
                       b.最大交易金额,
                       b.贷方,
                       b.借方,
                       b.贷方现金,
                       b.借方现金,
                       b.最迟时间,
                       b.最早时间
                FROM   #tmp0 a
                       LEFT JOIN #tmp2 b
                              ON a.账号 = b.账号
                WHERE  笔数 >= @jybs
              END
            ELSE
              BEGIN
                SELECT *
                FROM   #tmp0
              END
          END
      END
  END
GO', NULL, 111, N'02030101', N'1', N'1', N'0', N'1', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (512, 522, N'商行数据余额表查询', NULL, N'@网点银行机构代码!S:%@账号!S:178@余额日期!S:%', N'CREATE PROCEDURE P_list_ye(@bank VARCHAR(14),@s_acc_no VARCHAR(40),@bgn_date CHAR(8))
WITH ENCRYPTION
AS
  BEGIN
      IF Object_id(N''tb_yeb'', N''U'') IS NOT NULL
        BEGIN
            SELECT *
            FROM   [tb_yeb]
            WHERE  网点机构代码 LIKE ''%'' + trim(@bank) + ''%''
                   AND 账号 LIKE ''%'' + trim(@s_acc_no) + ''%''
                   AND 余额日期 LIKE ''%'' +trim( @bgn_date) + ''%''
            ORDER  BY 余额日期
        END
      ELSE
        BEGIN
            SELECT ''×商业银行余额表数据未导入'' 注意
        END
  END
GO ', NULL, 255, N'0320', N'1', N'0', N'0', N'1', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (502, 573, N'人行单位账户分析', N'功能描述：', N'', NULL, NULL, 88, N'0201', N'0', N'0', N'0', N'1', N'1', N'1')
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (519, 502, N'非企业类账户未核准（疑似）', N'通过名称判断不是取消许可的账户未核准', N'@疑似非企业账户名称关键词!S:财政|保险管理|管理中心|办公室|委员会|街道办事处|医院|学校|学院', N'CREATE PROCEDURE  P_yszh_acc_name(@acc_name_key varchar(200))  WITH ENCRYPTION AS
BEGIN

SET NOCOUNT ON;
if object_id(''tempdb..##tmp'') is not null drop table ##tmp
SET NOCOUNT ON;
DECLARE @acc_name VARCHAR(400),@sql VARCHAR(max)              
set @acc_name=''''
set @SQL=''''
DECLARE acc_name CURSOR FOR 
   SELECT * FROM [dbo].[ufn_SplitStringToTable] (@acc_name_key,''|'')
    OPEN acc_name
    FETCH NEXT FROM acc_name INTO @acc_name
    WHILE @@FETCH_STATUS = 0
    BEGIN
       --print @acc_name
      if LEN(@acc_name)>0 
         set @SQL=@SQL+'' select [银行机构代码],[银行机构名称],[账号] ,[账户名称],[账户性质],[存款人类别],[开户日期],[销户日期],[久悬日期],[账户状态]  from v_rhzh_dw where 账户名称 not like ''''%公司%'''' and 账户名称 like ''''''+''%''+@acc_name+''%''+'''''' and [存款人类别] in (''''企业法人'''',''''非法人企业'''',''''无字号个体工商户'''',''''有字号个体工商户'''')'' 
      FETCH NEXT FROM acc_name INTO @acc_name     
      if @@FETCH_STATUS=0 
         set @SQL=@SQL+'' union ''  
    END                
    CLOSE acc_name
    DEALLOCATE acc_name
  -- select @sql
   set @sql=left(@sql,81) +'' into ##tmp ''+RIGHT(@sql,len(@sql)-len(left(@sql,81)))
  --select @sql
  exec(@sql) 
   --delete ##tmp where ([账户状态]=''撤销'' and [销户日期]<@bgn_date) or ([账户状态]=''久悬'' and [久悬日期]<@bgn_date)
  select * from ##tmp
END
GO', NULL, 90, N'020101', N'0', N'0', N'0', N'1', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (501, 502, N'账户迟备案或迟核准', N'账户系统日志和单位账户信息分析：企业基本、非临时、一般、专用账户迟备案', N'@取消许可日期!D:20190520@基本户规定天数!N:1@一般户规定天数!N:1', N'CREATE PROCEDURE P_dwzh_late_bak(@bgn_date CHAR(8),@inter_day1 INT,@inter_day2 INT)
WITH ENCRYPTION
AS
  BEGIN
  /****** Script for SelectTopNRows command from SSMS  ******/
  /*企业基本临时开立当日备案、变更撤销2日备案*/
  /*所有账户变更、撤销2日备案*/
  /*一般、企业专用5工作日备案*/
      --declare @bgn_date char(8)
      --declare @inter_day1 int
      --declare @inter_day2 int
      --set @bgn_date=''20150101''
      --set @inter_day1=0
      --set @inter_day2=5
      IF Object_id(''tempdb..#tmp1'') IS NOT NULL
        DROP TABLE #tmp1
      IF Object_id(''tempdb..#tmp2'') IS NOT NULL
        DROP TABLE #tmp2
      IF Object_id(''tempdb..#tmp0'') IS NOT NULL
        DROP TABLE #tmp0
      IF Object_id(''tempdb..#tmp11'') IS NOT NULL
        DROP TABLE #tmp11
      IF Object_id(''tempdb..#tmp22'') IS NOT NULL
        DROP TABLE #tmp22
      IF Object_id(''tempdb..#tmp00'') IS NOT NULL
        DROP TABLE #tmp00
      IF Object_id(''tempdb..#tmp111'') IS NOT NULL
        DROP TABLE #tmp111
      IF Object_id(''tempdb..#tmp222'') IS NOT NULL
        DROP TABLE #tmp222
      IF Object_id(''tempdb..#tmp000'') IS NOT NULL
        DROP TABLE #tmp000
      IF Object_id(''tempdb..#tmp1111'') IS NOT NULL
        DROP TABLE #tmp1111
      IF Object_id(''tempdb..#tmp2222'') IS NOT NULL
        DROP TABLE #tmp2222
      IF Object_id(''tempdb..#tmp0000'') IS NOT NULL
        DROP TABLE #tmp0000
      IF Object_id(N''tb_rhzh_dw'', N''U'') IS NULL or  Object_id(N''tb_log'', N''U'') IS NULL
        BEGIN
            SELECT ''×账户系统单位账户数据或日志数据未导入'' 注意
        END
      ELSE
        BEGIN
            --基本户
            SELECT a.[银行机构代码],
                   [银行机构名称],
                   a.[账号],
                   [账户名称],
                   [账户性质],
                   [开户日期],
                   LEFT(b.业务处理时间, 8)                                                      备案日期,
                   Datediff(day, CONVERT(DATE, a.开户日期), CONVERT(DATE, LEFT(b.业务处理时间, 8))) 间隔,
                   [销户日期],
                   [久悬日期],
                   [账户状态],
                   [销户原因],
                   [存款人类别]
            INTO   #tmp111
            FROM   [v_rhzh_dw] a
                   LEFT JOIN tb_log b
                          ON a.账号 = b.账号
            WHERE  a.账户性质 = ''基本''
                   AND ( 存款人类别 = ''企业法人''
                          OR 存款人类别 = ''非法人企业''
                          OR 存款人类别 = ''有字号个体工商户''
                          OR 存款人类别 = ''无字号个体工商户'' )
                   AND Charindex(''基本'', b.业务种类) > 0
                   AND [开户日期] <= LEFT(b.业务处理时间, 8)
                   AND a.开户日期 >= @bgn_date
            ORDER  BY a.账号,
                      a.银行机构代码
            SELECT a.*
            INTO   #tmp222
            FROM   #tmp111 a
            WHERE  备案日期 = (SELECT Min (备案日期)
                           FROM   #tmp111 b
                           WHERE  a.账号 = b.账号
                                  AND a.开户日期 = b.开户日期)
            ORDER  BY a.账号,
                      a.银行机构代码
            SELECT *
            INTO   #tmp000
            FROM   #tmp222
            WHERE  间隔 > @inter_day1
            --非临时
            SELECT a.[银行机构代码],
                   [银行机构名称],
                   a.[账号],
                   [账户名称],
                   [账户性质],
                   [开户日期],
                   LEFT(b.业务处理时间, 8)                                                      备案日期,
                   Datediff(day, CONVERT(DATE, a.开户日期), CONVERT(DATE, LEFT(b.业务处理时间, 8))) 间隔,
                   [销户日期],
                   [久悬日期],
                   [账户状态],
                   [销户原因],
                   [存款人类别]
            INTO   #tmp1111
            FROM   [v_rhzh_dw] a
                   LEFT JOIN tb_log b
                          ON a.账号 = b.账号
            WHERE  a.账户性质 = ''非临时''
                   AND ( 存款人类别 = ''企业法人''
                          OR 存款人类别 = ''非法人企业''
                          OR 存款人类别 = ''有字号个体工商户''
                          OR 存款人类别 = ''无字号个体工商户'' )
                   AND Charindex(''非临时'', b.业务种类) > 0
                   AND [开户日期] <= LEFT(b.业务处理时间, 8)
                   AND a.开户日期 >= @bgn_date
            ORDER  BY a.账号,
                      a.银行机构代码
            SELECT a.*
            INTO   #tmp2222
            FROM   #tmp1111 a
            WHERE  备案日期 = (SELECT Min (备案日期)
                           FROM   #tmp1111 b
                           WHERE  a.账号 = b.账号
                                  AND a.开户日期 = b.开户日期)
            ORDER  BY a.账号,
                      a.银行机构代码
            SELECT *
            INTO   #tmp0000
            FROM   #tmp2222
            WHERE  间隔 > @inter_day1
            --一般户
            SELECT a.[银行机构代码],
                   [银行机构名称],
                   a.[账号],
                   [账户名称],
                   [账户性质],
                   [开户日期],
                   LEFT(b.业务处理时间, 8)                                                      备案日期,
                   Datediff(day, CONVERT(DATE, a.开户日期), CONVERT(DATE, LEFT(b.业务处理时间, 8))) 间隔,
                   [销户日期],
                   [久悬日期],
                   [账户状态],
                   [销户原因],
                   [存款人类别]
            INTO   #tmp1
            FROM   [v_rhzh_dw] a
                   LEFT JOIN tb_log b
                          ON a.账号 = b.账号
            WHERE  a.账户性质 = ''一般''
                   AND Charindex(''一般'', b.业务种类) > 0
                   AND [开户日期] <= LEFT(b.业务处理时间, 8)
                   AND a.开户日期 >= @bgn_date
            ORDER  BY a.账号,
                      a.银行机构代码
            SELECT a.*
            INTO   #tmp2
            FROM   #tmp1 a
            WHERE  备案日期 = (SELECT Min (备案日期)
                           FROM   #tmp1 b
                           WHERE  a.账号 = b.账号
                                  AND a.开户日期 = b.开户日期)
            ORDER  BY a.账号,
                      a.银行机构代码
            SELECT *
            INTO   #tmp0
            FROM   #tmp2
            WHERE  间隔 > @inter_day2
            --非预算专户
            SELECT a.[银行机构代码],
                   [银行机构名称],
                   a.[账号],
                   [账户名称],
                   [账户性质],
                   [开户日期],
                   LEFT(b.业务处理时间, 8)                                                      备案日期,
                   Datediff(day, CONVERT(DATE, a.开户日期), CONVERT(DATE, LEFT(b.业务处理时间, 8))) 间隔,
                   [销户日期],
                   [久悬日期],
                   [账户状态],
                   [销户原因],
                   [存款人类别]
            INTO   #tmp11
            FROM   [v_rhzh_dw] a
                   LEFT JOIN tb_log b
                          ON a.账号 = b.账号
            WHERE  a.账户性质 = ''非预算''
                   AND Charindex(''非预算'', b.业务种类) > 0
                   AND [开户日期] <= LEFT(b.业务处理时间, 8)
                   AND a.开户日期 >= @bgn_date
            ORDER  BY a.账号,
                      a.银行机构代码
            SELECT a.*
            INTO   #tmp22
            FROM   #tmp11 a
            WHERE  备案日期 = (SELECT Min (备案日期)
                           FROM   #tmp11 b
                           WHERE  a.账号 = b.账号
                                  AND a.开户日期 = b.开户日期)
            ORDER  BY a.账号,
                      a.银行机构代码
            SELECT *
            INTO   #tmp00
            FROM   #tmp22
            WHERE  间隔 > @inter_day2
            SELECT *
            FROM   #tmp000
            UNION
            SELECT *
            FROM   #tmp0000
            UNION
            SELECT *
            FROM   #tmp0
            UNION
            SELECT *
            FROM   #tmp00
        END
  END
GO 
', NULL, 92, N'020102', N'1', N'0', N'0', N'1', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (12, 573, N'商行单位账户实名制分析', N'从检查数据源中查找客户身份中可能存在的问题（因要显示错误的数据，返回的数据列标题均为数据规范中定义的英文）', N'', NULL, NULL, 94, N'0202', N'0', N'0', N'0', N'1', N'1', N'1')
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (251, 12, N'3104开户时年龄较大账户', N'数据中的证件号码齐全才可能有结果', N'@开户时最小年龄!N:90@返回行数!N:10000', N'CREATE PROCEDURE P_acc_per_age_60 (@min_age int,@row_num int) WITH ENCRYPTION AS
BEGIN
if object_id(''tempdb..#tmp'') is not null drop table #tmp
if object_id(''tempdb..#tmp0'') is not null drop table #tmp0
if object_id(''tempdb..#tmp00'') is not null drop table #tmp00
if object_id(''tempdb..#tmp000'') is not null drop table #tmp000
if object_id(''tempdb..#tmp1'') is not null drop table #tmp1
if object_id(''tempdb..#tmp2'') is not null drop table #tmp2  
if object_id(''tempdb..#tmp3'') is not null drop table #tmp3
select a.bank_code 网点机构代码,b.银行机构名称,a.acc_no 账号,a.acc_name 户名,a.cst_no 客户号,
a.id_no 证件号,a.open_time 开户时间,a.close_time 销户时间,
(case when close_flag=''0'' then ''开户'' when close_flag=''1'' then ''销户'' when close_flag=''2'' then ''更改'' end ) 开销户标志,
(case when len(rtrim(ltrim(id_no)))=15 then year(open_time)-convert(int,''19''+substring(ltrim(id_no),7,2))
      when len(rtrim(ltrim(id_no)))=18 then year(open_time)-convert(int,substring(ltrim(id_no),7,4))
      end
) 年龄
into #tmp1
from tb_acc a left join V_Bank b on a.bank_code=b.银行机构代码
where (acc_type=''0'' or acc_type=''1'' ) and (patindex(''%[^0-9xX]%'',rtrim(ltrim(id_no)))<=0) and
(
  (
   len(rtrim(ltrim(id_no)))=15 and year(open_time)-convert(int,''19''+substring(ltrim(id_no),7,2))>=@min_age
   )
   or
   (
   len(rtrim(ltrim(id_no)))=18 and year(open_time)-convert(int,substring(ltrim(id_no),7,4))>=@min_age
    )
 )

select 账号,count(账号) 交易笔数,sum(case when (现转=''现金'') then 1 else 0 end) 现金笔数 
into #tmp2
from V_Txn
where 账号 in (select distinct 账号 from #tmp1)
group by 账号
order by 账号
set rowcount @row_num
select a.*,b.交易笔数,b.现金笔数
from #tmp1 a left join #tmp2 b
on a.账号=b.账号
order by a.网点机构代码,a.账号
set rowcount 0
END
GO', NULL, 96, N'020203', N'1', N'1', N'0', N'0', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (249, 12, N'3105个人同证件号名称不同', N'根据证件号相同但户名不相同的情况筛选异常账户', N'@返回行数!N:10000', N'CREATE PROCEDURE P_acc_same_id_no_name_per(@row_num int) WITH ENCRYPTION AS
BEGIN
if object_id(''tempdb..#tmp'') is not null drop table #tmp
if object_id(''tempdb..#tmp0'') is not null drop table #tmp0
if object_id(''tempdb..#tmp00'') is not null drop table #tmp00
if object_id(''tempdb..#tmp000'') is not null drop table #tmp000
if object_id(''tempdb..#tmp1'') is not null drop table #tmp1
if object_id(''tempdb..#tmp2'') is not null drop table #tmp2  
if object_id(''tempdb..#tmp3'') is not null drop table #tmp3
select distinct id_no,count(distinct replace(acc_name,'' '','''')) cst_cnt
into #tmp3
from tb_acc
where (acc_type=''0'' or acc_type=''1'') and (patindex(''%[^0-9xX]%'',rtrim(ltrim(id_no)))<=0) and (len(rtrim(ltrim(id_no)))=15 or len(rtrim(ltrim(id_no)))=18)
group by id_no
having count(distinct replace(acc_name,'' '',''''))>=2


select a.bank_code 网点机构代码,b.银行机构名称,acc_no 账号,acc_name 户名,cst_no 客户号,id_no 证件号 
,open_time 开户时间,close_time 销户时间,
(case when close_flag=''0'' then ''开户'' when close_flag=''1'' then ''销户'' when close_flag=''2'' then ''更改'' end ) 开销户标志
into #tmp1
    from tb_acc a left join V_Bank b on a.bank_code=b.银行机构代码
WHERE  id_no in (select id_no from #tmp3)

select 账号,count(账号) 交易笔数,sum(case when (现转=''现金'') then 1 else 0 end) 现金笔数 
into #tmp2
from V_Txn
where 账号 in (select distinct 账号 from #tmp1)
group by 账号
order by 账号
set rowcount @row_num
select a.*,b.交易笔数,b.现金笔数
from #tmp1 a left join #tmp2 b
on a.账号=b.账号
order by a.证件号,a.网点机构代码,a.账号
set rowcount 0
END
GO', NULL, 98, N'020204', N'1', N'1', N'0', N'0', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (302, 12, N'3106个人账户开成对公账户', N'疑似', N'@返回行数!N:1000', N'CREATE PROCEDURE  P_acc_per_no_per (@row_num int) WITH ENCRYPTION AS
BEGIN
if object_id(''tempdb..#tmp'') is not null drop table #tmp
if object_id(''tempdb..#tmp0'') is not null drop table #tmp0
if object_id(''tempdb..#tmp00'') is not null drop table #tmp00
if object_id(''tempdb..#tmp000'') is not null drop table #tmp000
if object_id(''tempdb..#tmp1'') is not null drop table #tmp1
if object_id(''tempdb..#tmp2'') is not null drop table #tmp2  
if object_id(''tempdb..#tmp3'') is not null drop table #tmp3
select a.bank_code 网点机构代码,b.银行机构名称,a.acc_no 账号,a.acc_name 户名,a.cst_no 客户号,a.id_no 证件号,
a.ent_cst_type 账户性质,a.acc_type 账户标识,a.open_time 开户时间,a.close_time 销户时间 into #tmp1
    from tb_acc a left join V_Bank b
    on a.bank_code=b.银行机构代码
    where  len(ltrim(rtrim(acc_name)))<=4 AND (acc_type=''2'')
select 账号,count(账号) 交易笔数,sum(case when (现转=''现金'') then 1 else 0 end) 现金笔数 
into #tmp2
from V_Txn
where 账号 in (select distinct 账号 from #tmp1)
group by 账号
order by 账号
set rowcount @row_num
select a.*,b.交易笔数,b.现金笔数
from #tmp1 a left join #tmp2 b
on a.账号=b.账号
order by a.网点机构代码,a.账号
set rowcount 0
END
GO', NULL, 100, N'020205', N'1', N'1', N'0', N'0', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (287, 12, N'单位账户名称疑似问题', N'通过查找不规范账户名称，发现可能的账户资料问题', N'@返回行数!N:10000', N'CREATE PROCEDURE  P_acc_name_not_real_ent(@row_num int) WITH ENCRYPTION AS
BEGIN
if object_id(N''tb_shzh_dw'',N''U'') is not null 
begin
set rowcount @row_num
select * from tb_shzh_dw 
where len(账户名称)<5  or 账户名称 is null or isnumeric(账户名称)=1 or 账户名称 like ''[A-Z,a-z,0-9,!@#$%^&*/?<>~`]%''
set rowcount 0
end
else
begin
select ''×商业银行单位账户数据未导入'' 注意
end
END
GO', NULL, 102, N'020201', N'1', N'1', N'0', N'1', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (51, 12, N'单位账户证件号码疑似问题', N'根据疑似问题证件号码信息，发现可能存在的单位账户资料问题', N'@返回行数!N:100000', N'CREATE PROCEDURE P_acc_ent_id_wt (@row_num INT)
WITH ENCRYPTION
AS
  BEGIN
      IF Object_id(N''tb_shzh_dw'', N''U'') IS NOT NULL
        BEGIN
            SET ROWCOUNT @row_num
            SELECT *
            FROM   tb_shzh_dw a
            WHERE  ( a.执照号码 IS NULL )
                    OR Len(Ltrim(执照号码)) < 6
                    OR ( 执照号码 LIKE ''%00000000%'' )
                    OR ( 执照号码 LIKE ''%1111%'' )
                    OR ( 执照号码 LIKE ''%2222%'' )
                    OR ( 执照号码 LIKE ''%8888%'' )
                    OR ( 执照号码 LIKE ''%9999%'' )
                    OR ( Substring(Ltrim(执照号码), 1, 1) = Substring(Ltrim(执照号码), 2, 1)
                         AND Substring(Ltrim(执照号码), 3, 1) = Substring(Ltrim(执照号码), 2, 1)
                         AND Substring(Ltrim(执照号码), 3, 1) = Substring(Ltrim(执照号码), 4, 1)
                         AND Substring(Ltrim(执照号码), 5, 1) = Substring(Ltrim(执照号码), 4, 1)
                         AND Substring(Ltrim(执照号码), 5, 1) = Substring(Ltrim(执照号码), 6, 1) )
            SET ROWCOUNT 0
        END
      ELSE
        BEGIN
            SELECT ''×商业银行单位账户数据未导入'' 注意
        END
  END
GO ', NULL, 104, N'020202', N'1', N'1', N'0', N'1', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (229, 12, N'单位证件号相同名称不同', N'', N'@比较汉字的数量（左起）!N:6@返回行数!N:100000', N'CREATE PROCEDURE P_acc_same_id_no_name_ent(@bj_num int,@row_num int) WITH ENCRYPTION AS
BEGIN
if object_id(N''tb_shzh_dw'',N''U'') is not null 
begin
if object_id(''tempdb..#tmp'') is not null drop table #tmp
select distinct 执照号码,count(distinct left(replace(账户名称,'' '',''''),@bj_num )) 账户数量
into #tmp
from tb_shzh_dw
group by 执照号码
having count(distinct left(replace(账户名称,'' '',''''),@bj_num ))>1
select a.*,b.账户名称,b.账号 from #tmp a
left join tb_shzh_dw b
on a.执照号码=b.执照号码
order by a.执照号码
end
else
begin
select ''×商业银行单位账户数据未导入'' 注意
end
END
GO', NULL, 106, N'020203', N'1', N'1', N'0', N'1', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (90, 573, N'商行单位账户比对分析', N'主要功能，筛选商业银行账户开立、撤销、使用方面的问题', N'@业务开始时间!D:20110101@业务结束时间!D:20120530@返回行数!N:100', N'CREATE PROCEDURE P_acc_ent_rmb_sum (@bgn_date char(8), @end_date char(8), @row_num int) AS
BEGIN
if object_id(''tempdb..#tmp'') is not null drop table #tmp
set rowcount @row_num
select self_acc_no 账号, count(*) 总笔数, sum(amt) 总金额, avg(amt) 平均金额
into #tmp
from tb_rmb_txn
where (tb_rmb_txn.acc_type=''2'' )
and tb_rmb_txn.date between @bgn_date and @end_date
group by self_acc_no
order by count(*) desc
set rowcount 0
select b.id_no 证件号码, b.acc_name 账户名称, b.bank_code 银行代码, a.*
from  #tmp a left join tb_acc b on  a.账号 = b.acc_no
order by 总金额 desc
END
GO', NULL, 108, N'0203', N'0', N'0', N'0', N'1', N'1', N'1')
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (91, 90, N'.账户开立方面', N'', N'@业务开始时间!D:20120101@业务结束时间!D:20130228@返回行数!N:20', N'CREATE PROCEDURE P_acc_ent_rmb_single (@bgn_date char(8), @end_date char(8), @row_num int) AS
BEGIN
set rowcount @row_num
select self_acc_no 账号, max(amt) 单笔金额
into #tmp
from tb_rmb_txn
where (tb_rmb_txn.acc_type=''2'')
and tb_rmb_txn.date between @bgn_date and @end_date
group by self_acc_no
order by max(amt) desc
set rowcount 0
select b.id_no 证件号码, b.acc_name 账户名称, b.bank_code 银行代码, a.*
from  #tmp a left join tb_acc b on  a.账号 = b.acc_no
order by 单笔金额 desc
END
GO', NULL, 110, N'020301', N'0', N'0', N'0', N'1', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (269, 521, N'人行单位账户查询_账号', N'', N'@账号!S:1304212309300007331', N'CREATE PROCEDURE Pd_rhzh_acc_no(@s_acc_no VARCHAR(60))
WITH ENCRYPTION
AS
  BEGIN
    IF Object_id(N''tb_rhzh_dw'', N''U'') IS NOT NULL
      BEGIN
        SELECT a.银行机构代码,
               b.银行机构名称,
               [存款人编号],
               [存款人类别],
               [存款人名称],
               [注册地地区代码],
               [存款人身份证件种类],
               [存款人身份证件编号],
               [工商营业执照有效期],
               [组织机构代码],
               [注册资金币种],
               [注册资金金额],
               [无需办理税务登记的证明文件编号],
               [存款人状态],
               [国税登记证号],
               [地税登记证号],
               [经营范围],
               [地址],
               [邮编],
               [联系电话],
               [法定代表人或负责人姓名],
               [法定代表人或负责人身份证件种类],
               [法定代表人或负责人身份证件编号],
               [上级单位名称],
               [上级法人基本存款账户开户许可证核准号],
               [上级法定代表人或负责人证件种类],
               [上级法定代表人或负责人姓名],
               [上级法人组织机构代码],
               [上级法定代表人或负责人证件编号],
               [存款人证明文件2种类],
               [存款人证明文件2编号],
               [存款人证明文件1种类],
               [社会信用代码],
               --[银行机构代码],
               [账户性质],
               [账号],
               [账户名称],
               [账户证明文件1种类],
               [账户证明文件1编号],
               [账户证明文件2种类],
               [账户证明文件2编号],
               [开户日期],
               [销户原因],
               [久悬日期],
               [销户日期],
               [账户状态],
               [账户开户地地区代码],
               [基本存款账户开户地地区代码],
               [账户所在人民银行机构代码],
               [基本存款账户开户许可证核准号],
               [开户许可证核准号],
               [账户名称前缀],
               [账户名称后缀],
               [资金性质代码],
               [可否取现],
               [部门或资金管理人名称],
               [部门或资金管理人负责人姓名],
               [部门或资金管理人证件种类],
               [部门或资金管理人证件编号],
               [部门或资金管理人电话],
               [部门或资金管理人邮编],
               [部门或资金管理人地址],
               [临时存款账户有效期],
               [临时存款账户开户原因],
               [备注]
        FROM   tb_rhzh_dw a
               LEFT JOIN v_bank b
                      ON a.银行机构代码 = b.银行编码或代码
        WHERE  Trim(账号) LIKE ''%'' + @s_acc_no + ''%''
        ORDER  BY 账号
      END
    ELSE
      BEGIN
        SELECT ''×账户管理系统单位账户数据未导入'' 注意
      END
  END
GO ', NULL, 702, N'0702', N'0', N'0', N'0', N'1', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (296, 91, N'单位账户未核准或未备案_比对商行交易数据', N'类型1：有交易但未提供账户信息的账户未备案；--类型2：人行销户日期后仍发生交易；类型9：合并。', N'@最小交易笔数!N:5@最大交易金额!N:1000@未备案类型（1类型1、2类型2、9合并）!N:9', N'CREATE PROCEDURE P_jy_not_bak(@jybs INT,@jyje INT,@mode CHAR(1))
WITH ENCRYPTION
AS
  BEGIN
    IF Object_id(''tempdb..#tmp'') IS NOT NULL
      DROP TABLE #tmp

    IF Object_id(''tempdb..#tmp0'') IS NOT NULL
      DROP TABLE #tmp0

    IF Object_id(''tempdb..#tmp00'') IS NOT NULL
      DROP TABLE #tmp00

    IF Object_id(''tempdb..#tmp000'') IS NOT NULL
      DROP TABLE #tmp000

    IF Object_id(''tempdb..#tmp1'') IS NOT NULL
      DROP TABLE #tmp1

    IF Object_id(''tempdb..#tmp11'') IS NOT NULL
      DROP TABLE #tmp11

    IF Object_id(''tempdb..#tmp2'') IS NOT NULL
      DROP TABLE #tmp2

    IF Object_id(''tempdb..#tmp22'') IS NOT NULL
      DROP TABLE #tmp22

    IF Object_id(''tempdb..#tmp3'') IS NOT NULL
      DROP TABLE #tmp3

    IF Object_id(''tempdb..#tmp33'') IS NOT NULL
      DROP TABLE #tmp33

    IF Object_id(''tempdb..#tmp4'') IS NOT NULL
      DROP TABLE #tmp4

    IF Object_id(''tempdb..#tmp44'') IS NOT NULL
      DROP TABLE #tmp44

    IF Object_id(''tempdb..#tmp5'') IS NOT NULL
      DROP TABLE #tmp5

    IF Object_id(''tempdb..#tmp55'') IS NOT NULL
      DROP TABLE #tmp55

    IF Object_id(''tempdb..#tmp6'') IS NOT NULL
      DROP TABLE #tmp6

    IF Object_id(''tempdb..#tmp7'') IS NOT NULL
      DROP TABLE #tmp7

    IF Object_id(''tempdb..#tmp8'') IS NOT NULL
      DROP TABLE #tmp8

    IF Object_id(''tempdb..#tmp9'') IS NOT NULL
      DROP TABLE #tmp9

    IF Object_id(''tempdb..#tmp_end1'') IS NOT NULL
      DROP TABLE #tmp_end1

    IF Object_id(''tempdb..#tmp_end11'') IS NOT NULL
      DROP TABLE #tmp_end11

    --DECLARE @jybs INT
    --DECLARE @jyje INT
    --DECLARE @mode CHAR(1)
    --SET @jybs=3
    --SET @jyje=1000
    --SET @mode=''1''
    --类型1：有交易但未提供账户信息的账户未备案
    /*提取无取现有交易的账号tmp1*/
    SELECT 账号 账号,
           Count(账号) 笔数,
           Max(交易金额) 最大交易金额,
           Sum(CASE
                 WHEN ( 借贷标识 = ''贷'' ) THEN 1
                 ELSE 0
               END) 贷方,
           Sum(CASE
                 WHEN ( 借贷标识 = ''借'' ) THEN 1
                 ELSE 0
               END) 借方,
           Sum(CASE
                 WHEN ( 现转标识 = ''现金''
                        AND 借贷标识 = ''贷'' ) THEN 1
                 ELSE 0
               END) 贷方现金,
           Sum(CASE
                 WHEN ( 现转标识 = ''现金''
                        AND 借贷标识 = ''借'' ) THEN 1
                 ELSE 0
               END) 借方现金,
           Min(交易日期) 最早时间,
           Max(交易日期) 最迟时间,
           '''' 最迟销户日期件
    INTO   #tmp1
    FROM   tb_shjy_dw
    GROUP  BY 账号
    HAVING Count(*) >= @jybs
           AND Max(交易金额) >= @jyje

    --RETURN 
    /*获取tb_acc中未提供的账号*/
    SELECT DISTINCT *
    INTO   #tmp2
    FROM   #tmp1
    WHERE  账号 NOT IN (SELECT DISTINCT 账号
                      FROM   tb_shzh_dw)

    /*获取zhsys中未提供的账号#tmp3*/
    SELECT DISTINCT *
    INTO   #tmp3
    FROM   #tmp2
    -- FROM   #tmp2
    WHERE  账号 NOT IN(SELECT DISTINCT 账号
                     FROM   tb_rhzh_dw)

    /*获取交易表中交易行、开户行代码#tmp5*/
    SELECT DISTINCT 账号,
                    Max(账户名称) 账户名称,
                    Max(开户行金融机构代码) 开户行金融机构代码
    INTO   #tmp5
    FROM   tb_shjy_dw
    GROUP  BY 账号

    --/*合并完整信息显示*/
    SELECT b.开户行金融机构代码,
           c.银行机构名称,
           a.*
    INTO   #tmp_end1
    FROM   #tmp3 a
           LEFT JOIN #tmp5 b
                  ON a.账号 = b.账号
           LEFT JOIN v_bank c
                  ON b.开户行金融机构代码 = c.银行编码或代码
    --where c.笔数 >= @jybs
    ORDER  BY a.账号

    --c.开户行金融机构代码
    --类型2：人行销户日期后仍发生交易
    /*提取符合条件的账号tmp1*/
    SELECT 账号 账号,
           Count(账号) 笔数,
           Max(交易金额) 最大交易金额,
           Sum(CASE
                 WHEN ( 借贷标识 = ''贷'' ) THEN 1
                 ELSE 0
               END) 贷方,
           Sum(CASE
                 WHEN ( 借贷标识 = ''借'' ) THEN 1
                 ELSE 0
               END) 借方,
           Sum(CASE
                 WHEN ( 现转标识 = ''现金''
                        AND 借贷标识 = ''贷'' ) THEN 1
                 ELSE 0
               END) 贷方现金,
           Sum(CASE
                 WHEN ( 现转标识 = ''现金''
                        AND 借贷标识 = ''借'' ) THEN 1
                 ELSE 0
               END) 借方现金,
           Min(交易日期) 最早时间,
           Max(交易日期) 最迟时间
    INTO   #tmp11
    FROM   tb_shjy_dw
    GROUP  BY 账号
    HAVING Count(账号) >= @jybs
           AND Max(交易金额) >= @jyje

    --RETURN 
    --提取如上人行已销户账户
    SELECT 账号,
           Max(销户日期) 最迟销户日期
    INTO   #tmp22
    FROM   tb_rhzh_dw
    WHERE  账号 IN (SELECT DISTINCT 账号
                  FROM   #tmp11)
           AND 账户状态 = ''撤销''
    GROUP  BY 账号

    SELECT a.*,
           b.最迟销户日期
    INTO   #tmp33
    FROM   #tmp11 a
           LEFT JOIN #tmp22 b
                  ON a.账号 = b.账号
    WHERE  a.最迟时间 > b.最迟销户日期

    --/*合并完整信息显示*/
    SELECT DISTINCT b.银行机构代码 开户行金融机构代码,
                    c.银行机构名称,
                    a.*
    INTO   #tmp_end11
    FROM   #tmp33 a
           LEFT JOIN tb_rhzh_dw b
                  ON a.账号 = b.账号
           LEFT JOIN v_bank c
                  ON b.银行机构代码 = c.银行编码或代码
    --where c.笔数 >= @jybs
    ORDER  BY a.账号

    IF @mode = ''1''
      BEGIN
        SELECT *
        FROM   #tmp_end1
      END

    IF @mode = ''2''
      BEGIN
        SELECT *
        FROM   #tmp_end11
      END

    IF @mode = ''9''
      BEGIN
        SELECT *
        FROM   #tmp_end1
        UNION
        SELECT *
        FROM   #tmp_end11
      END
  ----c.开户行金融机构代码
  END
GO ', NULL, 114, N'02030103', N'1', N'1', N'0', N'1', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (427, 91, N'专户未核准或未备案_比对账户数据', N'商行数据中，检查期内有效的专户在账户管理系统中不存在或迟于人行撤销', N'', N'CREATE PROCEDURE P_zyzh_not_bak WITH ENCRYPTION AS
BEGIN
if object_id(N''tb_rhzh_dw'',N''U'') is not null and object_id(N''tb_shzh_dw'',N''U'') is not null
begin
--最终状态为基本户（含正常、撤销）
--状态为正常基本户、状态为撤销且撤销日期在检查期内基本户
if object_id(''tempdb..#tmp'') is not null drop table #tmp
if object_id(''tempdb..#tmp1'') is not null drop table #tmp1
if object_id(''tempdb..#tmp11'') is not null drop table #tmp11
if object_id(''tempdb..#tmp111'') is not null drop table #tmp111
if object_id(''tempdb..#tmp2'') is not null drop table #tmp2 
if object_id(''tempdb..#tmp22'') is not null drop table #tmp22 
if object_id(''tempdb..#tmp222'') is not null drop table #tmp222
if object_id(''tempdb..#tmp3'') is not null drop table #tmp3
if object_id(''tempdb..#tmp33'') is not null drop table #tmp33
if object_id(''tempdb..#tmp333'') is not null drop table #tmp333
if object_id(''tempdb..#tmp4'') is not null drop table #tmp4
if object_id(''tempdb..#tmp44'') is not null drop table #tmp44
if object_id(''tempdb..#tmp444'') is not null drop table #tmp444

--类型1：检查数据正常账户在账户系统正常账户中不存在(比较销户日期防止人行采集的账户日期大于检查期而的情况)
--提取账户系统正常状态基本账户into tmp1（包括检查日后撤销的账户）
select distinct 账号 
  into #tmp1
  from V_rhzh_dw
  where 账户性质 like ''%预算%'' and (账户状态=''正常'' or 账户状态=''久悬'')

-- 提取账户表单位账户非撤销状态基本户tmp2
select distinct 账号
  into #tmp2
  from tb_shzh_dw 
  where (账户性质 like ''%预算%'' or  账户性质 =''专用'' ) and (账户状态<>''撤销'')
  
---非撤销状态基本户在系统正常账号中不存在 #tmp3 --------------
select 账号
into #tmp3 
from #tmp2 
where 账号 not in (select 账号 from #tmp1)

--获取完整信息#tmp4
select distinct c.开户银行金融机构编码,b.银行机构名称,a.账号,c.账户名称,
c.账户性质,c.开户日期,c.销户日期,c.账户状态,
b.账户性质 人行性质 ,b.开户日期 人行开户,b.销户日期 人行销户,b.久悬日期 人行久悬 ,b.账户状态 人行状态
into #tmp4
from #tmp3 a
left join v_rhzh_dw b
on a.账号=b.账号
left join tb_shzh_dw c 
on a.账号=c.账号

---类型2:检查数据中已撤销账户在账户系统中所有状态账户中不存在
--提取账户系统所有状态基本账户into tmp1
select distinct 账号 
into #tmp11
from V_rhzh_dw
where 账户性质 like ''%预算%''

---- 提取账户表单位账户撤销基本户tmp2
select distinct 账号,销户日期
  into #tmp22
  from tb_shzh_dw 
  where (账户性质 like ''%预算%'' or  账户性质 =''专用'' ) and 账户状态=''撤销''  
  --and 销户日期>=@bgn_date

---数据检查期内撤销账号在系统所有状态账号中不存在  #tmp3 --------------
select 账号,销户日期
into #tmp33 
from #tmp22 
where 账号 not in (select 账号 from #tmp11)

--获取完整信息
select distinct c.开户银行金融机构编码,b.银行机构名称,a.账号,c.账户名称,
c.账户性质,c.开户日期,c.销户日期,c.账户状态,
b.账户性质 人行性质 ,b.开户日期 人行开户,b.销户日期 人行销户,b.久悬日期 人行久悬 ,b.账户状态 人行状态
into #tmp44
from #tmp33 a
left join v_rhzh_dw b
on a.账号=b.账号
left join tb_shzh_dw c 
on a.账号=c.账号


---类型3:检查数据中已撤销账户比账户已撤销账户销户时间迟
--提取账户系统所有状态基本账户into tmp1
select distinct 账号 ,销户日期
into #tmp111
from V_rhzh_dw
where 账户性质 like ''%预算%'' and 账户状态=''撤销''

---- 提取账户表单位账户撤销基本户tmp2
select distinct 账号,销户日期
  into #tmp222
  from tb_shzh_dw 
  where (账户性质 like ''%预算%'' or  账户性质 =''专用'' ) and 账户状态=''撤销''

---获取人行销户日期>商行销户日期的记录  #tmp3 --------------
select a.账号
into #tmp333 
from #tmp222 a
inner join #tmp111 b
on a.账号=b.账号
where a.销户日期>b.销户日期

--获取完整信息
select distinct c.开户银行金融机构编码,b.银行机构名称,a.账号,c.账户名称,
c.账户性质,c.开户日期,c.销户日期,c.账户状态,
b.账户性质 人行性质 ,b.开户日期 人行开户,b.销户日期 人行销户,b.久悬日期 人行久悬 ,b.账户状态 人行状态
into #tmp444
from #tmp333 a
left join v_rhzh_dw b
on a.账号=b.账号
left join tb_shzh_dw c 
on a.账号=c.账号

--合并三种未核准的类型
select * 
--into #tmp5
from #tmp4
union
select * from #tmp44
union
select * from #tmp444
order by 开户银行金融机构编码,账号
end
else
begin
select ''×账户系统单位账户数据或商业银行单位账户数据未导入'' 注意
end
END
GO', NULL, 116, N'02030105', N'1', N'1', N'0', N'0', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (426, 91, N'一般账户未备案_比对账户数据', N'商行数据中，检查期内有效的一般账户在账户管理系统中不存在或迟于人行撤销', N'', N'CREATE PROCEDURE P_yszh_not_bak WITH ENCRYPTION AS
BEGIN
if object_id(N''tb_rhzh_dw'',N''U'') is not null and object_id(N''tb_shzh_dw'',N''U'') is not null
begin
--最终状态为基本户（含正常、撤销）
--状态为正常基本户、状态为撤销且撤销日期在检查期内基本户
if object_id(''tempdb..#tmp'') is not null drop table #tmp
if object_id(''tempdb..#tmp1'') is not null drop table #tmp1
if object_id(''tempdb..#tmp11'') is not null drop table #tmp11
if object_id(''tempdb..#tmp111'') is not null drop table #tmp111
if object_id(''tempdb..#tmp2'') is not null drop table #tmp2 
if object_id(''tempdb..#tmp22'') is not null drop table #tmp22 
if object_id(''tempdb..#tmp222'') is not null drop table #tmp222
if object_id(''tempdb..#tmp3'') is not null drop table #tmp3
if object_id(''tempdb..#tmp33'') is not null drop table #tmp33
if object_id(''tempdb..#tmp333'') is not null drop table #tmp333
if object_id(''tempdb..#tmp4'') is not null drop table #tmp4
if object_id(''tempdb..#tmp44'') is not null drop table #tmp44
if object_id(''tempdb..#tmp444'') is not null drop table #tmp444

--类型1：检查数据正常账户在账户系统正常账户中不存在(比较销户日期防止人行采集的账户日期大于检查期而的情况)
--提取账户系统正常状态基本账户into tmp1（包括检查日后撤销的账户）
select distinct 账号 
  into #tmp1
  from V_rhzh_dw
  where 账户性质= ''一般'' and (账户状态=''正常'' or 账户状态=''久悬'')

-- 提取账户表单位账户非撤销状态基本户tmp2
select distinct 账号
  into #tmp2
  from tb_shzh_dw 
  where 账户性质=''一般'' and (账户状态<>''撤销'')
  
---非撤销状态基本户在系统正常账号中不存在 #tmp3 --------------
select 账号
into #tmp3 
from #tmp2 
where 账号 not in (select 账号 from #tmp1)

--获取完整信息#tmp4
select distinct c.开户银行金融机构编码,b.银行机构名称,a.账号,c.账户名称,
c.账户性质,c.开户日期,c.销户日期,c.账户状态,
b.账户性质 人行性质 ,b.开户日期 人行开户,b.销户日期 人行销户,b.久悬日期 人行久悬 ,b.账户状态 人行状态
into #tmp4
from #tmp3 a
left join v_rhzh_dw b
on a.账号=b.账号
left join tb_shzh_dw c 
on a.账号=c.账号

---类型2:检查数据中已撤销账户在账户系统中所有状态账户中不存在
--提取账户系统所有状态基本账户into tmp1
select distinct 账号 
into #tmp11
from V_rhzh_dw
where 账户性质 = ''一般''

---- 提取账户表单位账户撤销基本户tmp2
select distinct 账号,销户日期
  into #tmp22
  from tb_shzh_dw 
  where 账户性质 = ''一般'' and 账户状态=''撤销''  
  --and 销户日期>=@bgn_date

---数据检查期内撤销账号在系统所有状态账号中不存在  #tmp3 --------------
select 账号,销户日期
into #tmp33 
from #tmp22 
where 账号 not in (select 账号 from #tmp11)

--获取完整信息
select distinct c.开户银行金融机构编码,b.银行机构名称,a.账号,c.账户名称,
c.账户性质,c.开户日期,c.销户日期,c.账户状态,
b.账户性质 人行性质 ,b.开户日期 人行开户,b.销户日期 人行销户,b.久悬日期 人行久悬 ,b.账户状态 人行状态
into #tmp44
from #tmp33 a
left join v_rhzh_dw b
on a.账号=b.账号
left join tb_shzh_dw c 
on a.账号=c.账号


---类型3:检查数据中已撤销账户比账户已撤销账户销户时间迟
--提取账户系统所有状态基本账户into tmp1
select distinct 账号 ,销户日期
into #tmp111
from V_rhzh_dw
where 账户性质 = ''一般'' and 账户状态=''撤销''

---- 提取账户表单位账户撤销基本户tmp2
select distinct 账号,销户日期
  into #tmp222
  from tb_shzh_dw 
  where 账户性质=''一般''and 账户状态=''撤销''

---获取人行销户日期>商行销户日期的记录  #tmp3 --------------
select a.账号
into #tmp333 
from #tmp222 a
inner join #tmp111 b
on a.账号=b.账号
where a.销户日期>b.销户日期

--获取完整信息
select distinct c.开户银行金融机构编码,b.银行机构名称,a.账号,c.账户名称,
c.账户性质,c.开户日期,c.销户日期,c.账户状态,
b.账户性质 人行性质 ,b.开户日期 人行开户,b.销户日期 人行销户,b.久悬日期 人行久悬 ,b.账户状态 人行状态
into #tmp444
from #tmp333 a
left join v_rhzh_dw b
on a.账号=b.账号
left join tb_shzh_dw c 
on a.账号=c.账号

--合并三种未核准的类型
select * 
--into #tmp5
from #tmp4
union
select * from #tmp44
union
select * from #tmp444
order by 开户银行金融机构编码,账号
end
else
begin
select ''×账户系统单位账户数据或商业银行单位账户数据未导入'' 注意
end
END
GO', NULL, 118, N'02030106', N'1', N'1', N'0', N'0', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (275, 91, N'4105核准类未核准_撤销仍交易', N'基本、临时、预算类账户已撤销或久悬仍发生交易，可归属为未核准账户', N'@最小正常交易金额!N:60', N'CREATE PROCEDURE P_jblsys_cx_jy(@jyje int)  WITH ENCRYPTION  AS
BEGIN
if object_id(''tempdb..#tmp'') is not null drop table #tmp
if object_id(''tempdb..#tmp0'') is not null drop table #tmp0
if object_id(''tempdb..#tmp00'') is not null drop table #tmp00
if object_id(''tempdb..#tmp000'') is not null drop table #tmp000
if object_id(''tempdb..#tmp1'') is not null drop table #tmp1
if object_id(''tempdb..#tmp11'') is not null drop table #tmp11
if object_id(''tempdb..#tmp2'') is not null drop table #tmp2 
if object_id(''tempdb..#tmp22'') is not null drop table #tmp22  
if object_id(''tempdb..#tmp3'') is not null drop table #tmp3
if object_id(''tempdb..#tmp33'') is not null drop table #tmp33
if object_id(''tempdb..#tmp4'') is not null drop table #tmp4
if object_id(''tempdb..#tmp44'') is not null drop table #tmp44
if object_id(''tempdb..#tmp5'') is not null drop table #tmp5
if object_id(''tempdb..#tmp6'') is not null drop table #tmp6
if object_id(''tempdb..#tmp7'') is not null drop table #tmp7
if object_id(''tempdb..#tmp8'') is not null drop table #tmp8
if object_id(''tempdb..#tmp9'') is not null drop table #tmp9

/*提取含有取现交易的账号->tmp1*/
select 账号 ,sum(case when (金额>=@jyje) then 1 else 0 end) 交易笔数
into #tmp1
from V_txn
group by 账号
having sum(case when (金额>=@jyje) then 1 else 0 end)>0
/*获取zhsys中已撤销或已久悬账号-->#tmp2，--还可能包含后来正常的账户，最后处理--*/
select distinct 账号
into #tmp2
from zhsys where 状态=''撤销'' or 状态=''久悬''
/*获得交易中在已撤销或已久悬中的账户-->#tmp3*/
select 账号
into #tmp3
from #tmp1 where 账号 in (select 账号 from #tmp2)

---获取完整信息->tmp4
select c.bank_code 网点机构代码,b.银行机构代码,b.银行机构名称,a.账号 账号,c.acc_name 户名,
(CASE c.ent_cst_type WHEN ''0'' THEN ''基本'' WHEN ''1'' THEN ''一般'' WHEN ''2'' THEN ''非预算''  WHEN ''3'' THEN ''临时'' WHEN ''4'' THEN ''预算'' END) 性质,
c.open_time 开户,c.close_time 销户,
(CASE c.close_flag WHEN ''0'' THEN ''开户'' WHEN ''1'' THEN ''销户'' WHEN ''2'' THEN ''变更''  WHEN ''3'' THEN ''久悬'' END)  状态,
b.账户性质 人行性质 ,b.销户日期 人行销户,b.久悬日期 人行久悬 ,b.状态 人行状态
into #tmp4
from #tmp3 a
left join zhsys b
on a.账号=b.账号
left join tb_acc c 
on a.账号=c.acc_no
/*获得含有正常状态的账户->tmp5*/
select distinct 账号 
into #tmp5
from #tmp4 where 人行状态=''正常''
/*去除正常状态账户->tmp4*/
delete #tmp4 where 账号 in (select 账号 from #tmp5)
--select * from #tmp4
--#tmp4账户的交易情况->#tmp6-----------------
select 账号 账号,count(账号) 笔数,
       sum(case when (借贷=''贷'') then 1 else 0 end) 贷方,  
       sum(case when (借贷=''借'') then 1 else 0 end) 借方, 
       sum(case when (现转=''现金'' and 借贷=''贷'') then 1 else 0 end) 贷方现金,
       sum(case when (现转=''现金'' and 借贷=''借'') then 1 else 0 end) 借方现金,
       min(交易日期) 最早时间,max(交易日期) 最迟时间
into #tmp6
from V_txn
where 账号 in (select distinct 账号 from #tmp4)
group by 账号

/*合并完整信息显示->tmp7*/
select a.*,b.笔数,b.借方,b.贷方,b.借方现金,b.贷方现金,b.最早时间,b.最迟时间
into #tmp7
from #tmp4 a
left join #tmp6 b 
on a.账号=b.账号
--where (a.人行状态 is null) or (a.人行状态=''正常'') or (a.人行状态=''撤销'' and b.最迟时间>a.人行销户) or (a.人行状态=''久悬'' and b.最迟时间>a.人行久悬)



/*取得销户日期大于最迟交易时间的账户予以删除*/
select distinct 账号
into #tmp8
from #tmp7 
where (人行状态=''撤销'' and 最迟时间<=人行销户) or (人行状态=''久悬'' and 最迟时间<=人行久悬)

delete #tmp7 where 账号 in (select  账号 from #tmp8)

/*显示最终结果*/
select * from #tmp7 
where 人行性质 like ''基本%'' or 人行性质 like ''%临时%'' or 人行性质= ''预算''
order by  账号,银行机构代码
END
GO', NULL, 120, N'02030107', N'1', N'1', N'0', N'0', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (306, 91, N'4106备案类未报备_商行有人行无', N'商行数据中，检查期内有效的备案类账户在账户管理系统中不存在或迟于人行撤销（含预算专户）', N'@业务开始日期!D:20120101@业务结束日期!D:20130430@最小交易笔数!N:1', N'CREATE PROCEDURE P_ybzyzh_not_bak(@bgn_date char(8),@end_date char(8),@jybs int)  WITH ENCRYPTION AS
BEGIN
--declare @bgn_date char(8)
--declare @end_date char(8)
--declare @row_num int
--declare @jybs int
--declare @wdm varchar(8)
--set @bgn_date=''20120101''
--set @end_date=''20130430''
--set @row_num=100000
--set @jybs=0
--set @wdm=''宣城''
--最终状态为基本户（含正常、撤销）
--状态为正常基本户、状态为撤销且撤销日期在检查期内基本户
if object_id(''tempdb..#tmp'') is not null drop table #tmp
if object_id(''tempdb..#tmp0'') is not null drop table #tmp0
if object_id(''tempdb..#tmp00'') is not null drop table #tmp00
if object_id(''tempdb..#tmp000'') is not null drop table #tmp000
if object_id(''tempdb..#tmp1'') is not null drop table #tmp1
if object_id(''tempdb..#tmp11'') is not null drop table #tmp11
if object_id(''tempdb..#tmp111'') is not null drop table #tmp111
if object_id(''tempdb..#tmp2'') is not null drop table #tmp2 
if object_id(''tempdb..#tmp22'') is not null drop table #tmp22 
if object_id(''tempdb..#tmp222'') is not null drop table #tmp222
if object_id(''tempdb..#tmp30'') is not null drop table #tmp30
if object_id(''tempdb..#tmp300'') is not null drop table #tmp300
if object_id(''tempdb..#tmp3'') is not null drop table #tmp3
if object_id(''tempdb..#tmp33'') is not null drop table #tmp33
if object_id(''tempdb..#tmp333'') is not null drop table #tmp333
if object_id(''tempdb..#tmp4'') is not null drop table #tmp4
if object_id(''tempdb..#tmp44'') is not null drop table #tmp44
if object_id(''tempdb..#tmp444'') is not null drop table #tmp444
if object_id(''tempdb..#tmp5'') is not null drop table #tmp5
if object_id(''tempdb..#tmp6'') is not null drop table #tmp6
if object_id(''tempdb..#tmp7'') is not null drop table #tmp7
if object_id(''tempdb..#tmp8'') is not null drop table #tmp8
if object_id(''tempdb..#tmp9'') is not null drop table #tmp9
--类型1：检查数据正常账户在账户人行正常账户中不存在(比较销户日期防止人行采集的账户日期大于检查期而的情况)
--提取账户人行正常状态基本账户into tmp1（包括检查日后撤销的账户）
select distinct 账号 
into #tmp1
from V_ZhLast
where (账户性质 like ''%预算%'' or 账户性质=''一般'') and (状态=''正常'' or (开户日期<=@end_date and 销户日期>@end_date) or (开户日期<=@end_date and 久悬日期>@end_date))

-- 提取账户表单位账户正常基本户tmp2
select distinct acc_no
  into #tmp2
  from tb_acc 
  where (ent_cst_type=''1'' or ent_cst_type=''2'' or ent_cst_type=''4'') and acc_type=''2'' and (close_flag=''0'')

  
---正常基本户在人行正常账号中不存在 #tmp3 --------------
select acc_no
into #tmp3 
from #tmp2 
where acc_no not in (select 账号 from #tmp1)
--剔除因账户采集日期大于业务截止期造成中间时段基本户变化的情况
---获取每个账号的账户人行所有信息tmp30
select a.acc_no,b.账户性质,b.销户日期,b.久悬日期,b.状态
into #tmp30
from #tmp3 a
left join zhsys b
on a.acc_no=b.账号
delete #tmp30 where acc_no in (select acc_no from #tmp30 where (账户性质 like ''%预算%'' or 账户性质=''一般'') and (销户日期>=@end_date or 久悬日期>=@end_date))
--获取完整信息#tmp4
select distinct c.bank_code 网点机构代码,b.银行机构名称,a.acc_no 账号,c.acc_name 户名,
(CASE c.ent_cst_type WHEN ''0'' THEN ''基本'' WHEN ''1'' THEN ''一般'' WHEN ''2'' THEN ''非预算''  WHEN ''3'' THEN ''临时'' WHEN ''4'' THEN ''预算'' END) 性质,
c.open_time 开户日期,c.close_time 销户日期,
(CASE c.close_flag WHEN ''0'' THEN ''开户'' WHEN ''1'' THEN ''销户'' WHEN ''2'' THEN ''变更''  WHEN ''3'' THEN ''久悬'' END)  状态,
b.账户性质 人行性质 ,b.销户日期 人行销户,b.久悬日期 人行久悬 ,b.状态 人行状态
into #tmp4
from #tmp30 a
left join v_zhLast b
on a.acc_no=b.账号
left join tb_acc c 
on a.acc_no=c.acc_no

---类型2:检查数据中已撤销账户在账户人行中所有状态账户中不存在
--提取账户人行所有状态基本账户into tmp1
select distinct 账号 
into #tmp11
from V_zhLast
where (账户性质 like ''%预算%'' or 账户性质=''一般'')

---- 提取账户表单位账户撤销基本户tmp2
select distinct acc_no,close_time
  into #tmp22
  from tb_acc 
  where (ent_cst_type=''1'' or ent_cst_type=''2'' or ent_cst_type=''4'') and acc_type=''2'' and close_flag=''1''  and close_time>=@bgn_date

---数据检查期内撤销账号在人行所有状态账号中不存在  #tmp3 --------------
select acc_no,close_time
into #tmp33 
from #tmp22 
where acc_no not in (select 账号 from #tmp11)

--剔除因账户采集日期大于业务截止期造成中间时段基本户变化的情况
---获取每个账号的账户人行所有信息tmp300
select a.acc_no,a.close_time,b.账户性质,b.销户日期,b.久悬日期,b.状态
into #tmp300
from #tmp33 a
left join zhsys b
on a.acc_no=b.账号
delete #tmp300 where acc_no in (select acc_no from #tmp300 where (账户性质 like ''%预算%'' or 账户性质=''一般'') and (销户日期>close_time))

--获取完整信息
select distinct c.bank_code 网点机构代码,b.银行机构名称,a.acc_no 账号,c.acc_name 户名,
(CASE c.ent_cst_type WHEN ''0'' THEN ''基本'' WHEN ''1'' THEN ''一般'' WHEN ''2'' THEN ''非预算''  WHEN ''3'' THEN ''临时'' WHEN ''4'' THEN ''预算'' END) 性质,
c.open_time 开户日期,c.close_time 销户日期,
(CASE c.close_flag WHEN ''0'' THEN ''开户'' WHEN ''1'' THEN ''销户'' WHEN ''2'' THEN ''变更''  WHEN ''3'' THEN ''久悬'' END)  状态,
b.账户性质 人行性质 ,b.销户日期 人行销户,b.久悬日期 人行久悬 ,b.状态 人行状态
into #tmp44
from #tmp300 a
left join V_ZhLast b
on a.acc_no=b.账号
left join tb_acc c 
on a.acc_no=c.acc_no

---类型3:检查数据中已撤销账户比账户已撤销账户销户时间迟
--提取账户人行所有状态基本账户into tmp1
select distinct 账号 ,销户日期,久悬日期
into #tmp111
from V_zhLast
where (账户性质 like ''%预算%'' or 账户性质=''一般'') and ((状态=''撤销'' and 销户日期<=@end_date) or (状态=''久悬'' and 久悬日期<=@end_date))
---- 提取账户表单位账户撤销基本户tmp2
select distinct acc_no,close_time
  into #tmp222
  from tb_acc 
  where (ent_cst_type=''1'' or ent_cst_type=''2'' or ent_cst_type=''4'') and acc_type=''2'' and close_flag=''1'' and close_time>=@bgn_date

---获取人行销户日期>商行销户日期的记录  #tmp3 --------------
select a.acc_no
into #tmp333 
from #tmp222 a
inner join #tmp111 b
on a.acc_no=b.账号
where a.close_time<b.销户日期 or a.close_time<b.久悬日期

--获取完整信息
select distinct c.bank_code 网点机构代码,b.银行机构名称,a.acc_no 账号,c.acc_name 户名,
(CASE c.ent_cst_type WHEN ''0'' THEN ''基本'' WHEN ''1'' THEN ''一般'' WHEN ''2'' THEN ''非预算''  WHEN ''3'' THEN ''临时'' WHEN ''4'' THEN ''预算'' END) 性质,
c.open_time 开户日期,c.close_time 销户日期,
(CASE c.close_flag WHEN ''0'' THEN ''开户'' WHEN ''1'' THEN ''销户'' WHEN ''2'' THEN ''变更''  WHEN ''3'' THEN ''久悬'' END)  状态,
b.账户性质 人行性质 ,b.销户日期 人行销户,b.久悬日期 人行久悬 ,b.状态 人行状态
into #tmp444
from #tmp333 a
left join V_ZhLast b
on a.acc_no=b.账号
left join tb_acc c 
on a.acc_no=c.acc_no

--合并三种未核准的类型
select * 
into #tmp5
from #tmp4
union
select * from #tmp44
union
select * from #tmp444
order by 网点机构代码,账号
--select * from #tmp5

--#tmp5账户的交易情况#tmp6-----------------
select 账号,count(账号) 笔数, 
       sum(case when (现转=''现金'' and 借贷=''贷'') then 1 else 0 end) 贷方现金,
       sum(case when (现转=''现金'' and 借贷=''借'') then 1 else 0 end) 借方现金
       --min(交易日期) 最早交易,max(交易日期) 最迟交易
into #tmp6
from V_txn
where 账号 in (select  账号 from #tmp5)
group by 账号
--/*合并完整信息显示*/
select a.网点机构代码,a.银行机构名称,a.账号,a.户名,a.性质,
a.开户日期,a.销户日期,a.状态,a.人行性质 ,a.人行状态,
b.笔数,b.借方现金,b.贷方现金
--into #tmp9
from #tmp5 a
left JOIN #tmp6 b 
on a.账号=b.账号
where isnull(b.笔数,0)>=@jybs
order by  a.账号,a.网点机构代码
END
GO', NULL, 122, N'02030108', N'1', N'1', N'0', N'0', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (93, 91, N'单位账户未核准或未备案_比对商行账户数据', N'类型1：商行非注销状态账户在人行系统不存在或已撤销;类型2：商行检查期内已注销账户在账户系统不存在;类型3:商行已注销账户比账户系统销户时间时间迟;类型9：所有。', N'@检查开始日期!D:20190101@未备案类型（1类型1、2类型2、3类型3、9合并）!S:9@是否比对账户性质（0否、1是）!S:0@是否显示交易笔数？（1是、0否）!S:1@最小交易笔数!N:2', N'CREATE PROCEDURE P_zh_not_bak(@bgn_date CHAR(8),@mode CHAR(1),@zhxz CHAR(1),@txn_ok CHAR(1),@jybs INT)
WITH ENCRYPTION
AS
  BEGIN
    --最终状态为基本户（含正常、撤销）
    --状态为正常基本户、状态为撤销且撤销日期在检查期内基本户
    IF Object_id(''tempdb..#tmp'') IS NOT NULL
      DROP TABLE #tmp

    IF Object_id(''tempdb..#tmp1'') IS NOT NULL
      DROP TABLE #tmp1

    IF Object_id(''tempdb..#tmp11'') IS NOT NULL
      DROP TABLE #tmp11

    IF Object_id(''tempdb..#tmp111'') IS NOT NULL
      DROP TABLE #tmp111

    IF Object_id(''tempdb..#tmp2'') IS NOT NULL
      DROP TABLE #tmp2

    IF Object_id(''tempdb..#tmp22'') IS NOT NULL
      DROP TABLE #tmp22

    IF Object_id(''tempdb..#tmp222'') IS NOT NULL
      DROP TABLE #tmp222

    IF Object_id(''tempdb..#tmp3'') IS NOT NULL
      DROP TABLE #tmp3

    IF Object_id(''tempdb..#tmp33'') IS NOT NULL
      DROP TABLE #tmp33

    IF Object_id(''tempdb..#tmp333'') IS NOT NULL
      DROP TABLE #tmp333

    IF Object_id(''tempdb..#tmp4'') IS NOT NULL
      DROP TABLE #tmp4

    IF Object_id(''tempdb..#tmp44'') IS NOT NULL
      DROP TABLE #tmp44

    IF Object_id(''tempdb..#tmp444'') IS NOT NULL
      DROP TABLE #tmp444

    IF Object_id(''tempdb..#tmp5'') IS NOT NULL
      DROP TABLE #tmp5

    IF Object_id(''tempdb..#tmp6'') IS NOT NULL
      DROP TABLE #tmp6

    IF Object_id(''tempdb..##tmp_end'') IS NOT NULL
      DROP TABLE ##tmp_end

    --DECLARE @bgn_date CHAR(8)
    --DECLARE @mode CHAR(1)
    --DECLARE @zhxz CHAR(1)
    --DECLARE @txn_ok CHAR(1)
    --DECLARE @jybs INT

    --SET @bgn_date=''20190101''
    --SET @mode=''1''
    --SET @zhxz=''0''
    --SET @txn_ok=''1''
    --SET @jybs=2

    IF Object_id(N''tb_rhzh_dw'', N''U'') IS NULL
        OR Object_id(N''tb_shzh_dw'', N''U'') IS NULL
      BEGIN
        SELECT ''×账户系统单位账户数据或商业银行单位账户数据未导入'' 注意
      END
    ELSE
      BEGIN
        IF @mode <> ''1''
           AND @mode <> ''2''
           AND @mode <> ''3''
           AND @mode <> ''9''
          BEGIN
            SELECT ''×未备案模式只能为1、2、3、9'' 参数错误
          END
        ELSE
          BEGIN
            IF Object_id(N''tb_shjy_dw'', N''U'') IS NULL--未导入商行交易时，默认为不计算笔数
              BEGIN
                SET @txn_ok=''0''
              END

            ----类型1：商行非注销状态账户在人行系统不存在或已撤销
            --检查数据正常账户在账户系统正常账户中不存在(比较销户日期防止人行采集的账户日期大于检查期而的情况)
            ----提取账户系统正常状态基本账户into tmp1（包括检查日后撤销的账户）
            ----同一账户存在正常和撤销状态时，一般正常状态为最后状态
            SELECT DISTINCT 账号,
                            ( CASE
                                WHEN 账户性质 = ''预算''
                                      OR 账户性质 = ''非预算'' THEN ''专用''
                                WHEN 账户性质 = ''临时''
                                      OR 账户性质 = ''非临时'' THEN ''临时''
                                ELSE 账户性质
                              END ) 账户性质
            INTO   #tmp1
            FROM   tb_rhzh_dw
            WHERE  ( 账户状态 = ''正常''
                      OR 账户状态 = ''久悬'' )

            -- 提取账户表单位账户非撤销状态基本户tmp2
            SELECT DISTINCT 账号,
                            账户类型
            INTO   #tmp2
            FROM   tb_shzh_dw
            WHERE  账户状态 <> ''注销''

            ---非撤销状态基本户在系统正常账号中不存在 #tmp3 --------------
            SELECT a.账号,
                   a.账户类型
            INTO   #tmp3
            FROM   #tmp2 a
            WHERE  NOT EXISTS (SELECT 账号,
                                      账户性质
                               FROM   #tmp1 b
                               WHERE  a.账号 = b.账号
                                      AND a.账户类型 = CASE
                                                     WHEN @zhxz = ''0'' THEN a.账户类型 --不比较账户性质
                                                     WHEN @zhxz = ''1'' THEN b.账户性质 --比较账户性质
                                                   END)

            -- AND 账号 = ''178257227216''
            --获取完整信息#tmp4
            SELECT DISTINCT c.开户行金融机构代码,
                            d.银行机构名称,
                            a.账号,
                            c.账户名称,
                            c.账户类型,
                            c.开户日期,
                            c.销户日期,
                            c.账户状态,
                            b.账户性质 人行性质,
                            b.开户日期 人行开户,
                            b.销户日期 人行销户,
                            b.久悬日期 人行久悬,
                            b.账户状态 人行状态
            INTO   #tmp4
            FROM   #tmp3 a
                   LEFT JOIN tb_rhzh_dw b
                          ON a.账号 = b.账号
                   LEFT JOIN tb_shzh_dw c
                          ON a.账号 = c.账号
                   LEFT JOIN V_Bank d
                          ON c.开户行金融机构代码 = d.银行编码或代码
            ORDER  BY 开户行金融机构代码,
                      账户名称

            --RETURN
            ---类型2：商行检查期内已注销账户在账户系统不存在
            --提取账户系统所有状态基本账户into tmp1
            SELECT DISTINCT 账号
            INTO   #tmp11
            FROM   tb_rhzh_dw

            -- WHERE  账户性质 = ''基本''
            ---- 提取账户表单位账户撤销基本户tmp2
            SELECT DISTINCT 账号,
                            销户日期
            INTO   #tmp22
            FROM   tb_shzh_dw
            WHERE
              --账户类型 = ''基本''
              --AND 
              账户状态 = ''注销''
              AND 销户日期 >= @bgn_date --检查期内注销过去开立的账户仍在处罚范围内

            ---数据检查期内撤销账号在系统所有状态账号中不存在  #tmp3 --------------
            SELECT 账号,
                   销户日期
            INTO   #tmp33
            FROM   #tmp22
            WHERE  账号 NOT IN (SELECT 账号
                              FROM   #tmp11)

            --获取完整信息
            SELECT DISTINCT c.开户行金融机构代码,
                            d.银行机构名称,
                            a.账号,
                            c.账户名称,
                            c.账户类型,
                            c.开户日期,
                            c.销户日期,
                            c.账户状态,
                            b.账户性质 人行性质,
                            b.开户日期 人行开户,
                            b.销户日期 人行销户,
                            b.久悬日期 人行久悬,
                            b.账户状态 人行状态
            --datediff(day,CONVERT(date,c.开户日期),CONVERT(date,c.销户日期)) 
            INTO   #tmp44
            FROM   #tmp33 a
                   LEFT JOIN tb_rhzh_dw b
                          ON a.账号 = b.账号
                   LEFT JOIN tb_shzh_dw c
                          ON a.账号 = c.账号
                   LEFT JOIN V_Bank d
                          ON c.开户行金融机构代码 = d.银行编码或代码
            --剔除银行内部开户后发现问题又销户纠正的账户
            WHERE  Datediff(day, CONVERT(DATE, c.开户日期), CONVERT(DATE, c.销户日期)) > 3

            --return
            ---类型3:商行已注销账户比账户系统销户时间时间迟
            --提取账户系统所有状态基本账户into tmp1
            SELECT DISTINCT 账号,
                            Max(销户日期) 销户日期
            INTO   #tmp111
            FROM   tb_rhzh_dw
            WHERE  账户状态 = ''撤销''
            -- AND 账号 = ''176726208967''
            GROUP  BY 账号

            ---- 提取账户表单位账户撤销基本户tmp2
            SELECT DISTINCT 账号,
                            销户日期
            INTO   #tmp222
            FROM   tb_shzh_dw
            WHERE  账户状态 = ''注销''

            -- AND 账号 = ''176726208967''
            ---获取人行销户日期>商行销户日期的记录  #tmp3 --------------
            SELECT a.账号
            INTO   #tmp333
            FROM   #tmp222 a
                   INNER JOIN #tmp111 b
                           ON a.账号 = b.账号
            WHERE  a.销户日期 > b.销户日期

            --  RETURN
            --获取完整信息
            SELECT DISTINCT c.开户行金融机构代码,
                            d.银行机构名称,
                            a.账号,
                            c.账户名称,
                            c.账户类型,
                            c.开户日期,
                            c.销户日期,
                            c.账户状态,
                            b.账户性质 人行性质,
                            b.开户日期 人行开户,
                            b.销户日期 人行销户,
                            b.久悬日期 人行久悬,
                            b.账户状态 人行状态
            INTO   #tmp444
            FROM   #tmp333 a
                   LEFT JOIN v_rhzh_dw b
                          ON a.账号 = b.账号
                   LEFT JOIN tb_shzh_dw c
                          ON a.账号 = c.账号
                   LEFT JOIN V_Bank d
                          ON c.开户行金融机构代码 = d.银行编码或代码

            --return
            DECLARE @s VARCHAR(400)

            IF @mode = ''1''
              BEGIN
                SET @s =''
				SELECT *
				into ##tmp_end
                FROM   #tmp4
                ORDER  BY 开户行金融机构代码,
                          账户名称''
              END

            IF @mode = ''2''
              BEGIN
                SET @s =''
				SELECT *
				into ##tmp_end
                FROM   #tmp44
                ORDER  BY 开户行金融机构代码,
                          账户名称''
              END

            IF @mode = ''3''
              BEGIN
                SET @s =''
				SELECT *
				into ##tmp_end
                FROM   #tmp444
                ORDER  BY 开户行金融机构代码,
                          账户名称''
              END

            --合并三种未核准的类型
            IF @mode = ''9''
              BEGIN
                SET @s =''
				SELECT *
                into ##tmp_end
                FROM   #tmp4
                UNION
                SELECT *
                FROM   #tmp44
                UNION
                SELECT *
                FROM   #tmp444
                ORDER  BY 开户行金融机构代码,
                          账户名称''
              END

            EXEC(@s)

            IF @txn_ok = ''1''
              BEGIN
                SELECT DISTINCT 账号
                INTO   #tmp5
                FROM   ##tmp_end

                SELECT a.账号,
                       Count(b.账号) 笔数,
                       Max(交易金额) 最大交易金额,
                       Sum(CASE
                             WHEN ( 借贷标识 = ''贷'' ) THEN 1
                             ELSE 0
                           END) 贷方,
                       Sum(CASE
                             WHEN ( 借贷标识 = ''借'' ) THEN 1
                             ELSE 0
                           END) 借方,
                       Sum(CASE
                             WHEN ( 现转标识 = ''现金''
                                    AND 借贷标识 = ''贷'' ) THEN 1
                             ELSE 0
                           END) 贷方现金,
                       Sum(CASE
                             WHEN ( 现转标识 = ''现金''
                                    AND 借贷标识 = ''借'' ) THEN 1
                             ELSE 0
                           END) 借方现金,
                       Min(交易日期) 最早时间,
                       Max(交易日期) 最迟时间
                INTO   #tmp6
                FROM   #tmp5 a
                       LEFT JOIN tb_shjy_dw b
                              ON a.账号 = b.账号
                GROUP  BY a.账号

                SELECT a.*,
                       b.笔数,
                       b.最大交易金额,
                       b.贷方,
                       b.借方,
                       b.贷方现金,
                       b.借方现金,
                       b.最迟时间,
                       b.最早时间
                FROM   ##tmp_end a
                       LEFT JOIN #tmp6 b
                              ON a.账号 = b.账号
                WHERE  笔数 >= @jybs
              END
            ELSE
              BEGIN
                SELECT *
                FROM   ##tmp_end
              END
          END
      END
  END
GO ', NULL, 112, N'02030102', N'1', N'1', N'0', N'1', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (295, 91, N'4107备案类未报备_撤销仍交易', N'一般非预算账户已撤销仍发生交易，可归属为未备案账户', N'@最小正常交易金额!N:60', N'CREATE PROCEDURE P_ybfys_cx_jy(@jyje int)  WITH ENCRYPTION AS
BEGIN
if object_id(''tempdb..#tmp'') is not null drop table #tmp
if object_id(''tempdb..#tmp0'') is not null drop table #tmp0
if object_id(''tempdb..#tmp00'') is not null drop table #tmp00
if object_id(''tempdb..#tmp000'') is not null drop table #tmp000
if object_id(''tempdb..#tmp1'') is not null drop table #tmp1
if object_id(''tempdb..#tmp11'') is not null drop table #tmp11
if object_id(''tempdb..#tmp2'') is not null drop table #tmp2 
if object_id(''tempdb..#tmp22'') is not null drop table #tmp22  
if object_id(''tempdb..#tmp3'') is not null drop table #tmp3
if object_id(''tempdb..#tmp33'') is not null drop table #tmp33
if object_id(''tempdb..#tmp4'') is not null drop table #tmp4
if object_id(''tempdb..#tmp44'') is not null drop table #tmp44
if object_id(''tempdb..#tmp5'') is not null drop table #tmp5
if object_id(''tempdb..#tmp6'') is not null drop table #tmp6
if object_id(''tempdb..#tmp7'') is not null drop table #tmp7
if object_id(''tempdb..#tmp8'') is not null drop table #tmp8
if object_id(''tempdb..#tmp9'') is not null drop table #tmp9

/*提取含有取现交易的账号->tmp1*/
select 账号 ,sum(case when (金额>=@jyje) then 1 else 0 end) 交易笔数
into #tmp1
from V_txn
group by 账号
having sum(case when (金额>=@jyje) then 1 else 0 end)>0
/*获取zhsys中已撤销或已久悬账号-->#tmp2，--还可能包含后来正常的账户，最后处理--*/
select distinct 账号
into #tmp2
from zhsys where 状态=''撤销'' or 状态=''久悬''
/*获得交易中在已撤销或已久悬中的账户-->#tmp3*/
select 账号
into #tmp3
from #tmp1 where 账号 in (select 账号 from #tmp2)

---获取完整信息->tmp4
select c.bank_code 网点机构代码,b.银行机构代码,b.银行机构名称,a.账号 账号,c.acc_name 户名,
(CASE c.ent_cst_type WHEN ''0'' THEN ''基本'' WHEN ''1'' THEN ''一般'' WHEN ''2'' THEN ''非预算''  WHEN ''3'' THEN ''临时'' WHEN ''4'' THEN ''预算'' END) 性质,
c.open_time 开户,c.close_time 销户,
(CASE c.close_flag WHEN ''0'' THEN ''开户'' WHEN ''1'' THEN ''销户'' WHEN ''2'' THEN ''变更''  WHEN ''3'' THEN ''久悬'' END)  状态,
b.账户名称 人行户名 ,b.账户性质 人行性质 ,b.开户日期 人行开户 ,b.销户日期 人行销户,b.久悬日期 人行久悬 ,b.状态 人行状态
into #tmp4
from #tmp3 a
left join zhsys b
on a.账号=b.账号
left join tb_acc c 
on a.账号=c.acc_no
/*获得含有正常状态的账户->tmp5*/
select distinct 账号 
into #tmp5
from #tmp4 where 人行状态=''正常''
/*去除正常状态账户->tmp4*/
delete #tmp4 where 账号 in (select 账号 from #tmp5)
--select * from #tmp4
--#tmp4账户的交易情况->#tmp6-----------------
select 账号 账号,count(账号) 笔数,
       sum(case when (借贷=''贷'') then 1 else 0 end) 贷方,  
       sum(case when (借贷=''借'') then 1 else 0 end) 借方, 
       sum(case when (现转=''现金'' and 借贷=''贷'') then 1 else 0 end) 贷方现金,
       sum(case when (现转=''现金'' and 借贷=''借'') then 1 else 0 end) 借方现金,
       min(交易日期) 最早时间,max(交易日期) 最迟时间
into #tmp6
from V_txn
where 账号 in (select distinct 账号 from #tmp4)
group by 账号

/*合并完整信息显示->tmp7*/
select a.*,b.笔数,b.借方,b.贷方,b.借方现金,b.贷方现金,b.最早时间,b.最迟时间
into #tmp7
from #tmp4 a
left join #tmp6 b 
on a.账号=b.账号
--where (a.人行状态 is null) or (a.人行状态=''正常'') or (a.人行状态=''撤销'' and b.最迟时间>a.人行销户) or (a.人行状态=''久悬'' and b.最迟时间>a.人行久悬)



/*取得销户日期大于最迟交易时间的账户予以删除*/
select distinct 账号
into #tmp8
from #tmp7 
where (人行状态=''撤销'' and 最迟时间<=人行销户) or (人行状态=''久悬'' and 最迟时间<=人行久悬)

delete #tmp7 where 账号 in (select  账号 from #tmp8)

/*显示最终结果*/
select * from #tmp7 
where 人行性质= ''一般'' or 人行性质= ''非预算''
order by  账号,银行机构代码
END
GO', NULL, 124, N'02030109', N'1', N'1', N'0', N'0', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (277, 91, N'单位账户迟核准或迟报备_比对商行账户数据', N'比对商行账户信息，筛选未核准或未备案账户', N'@检查开始日期!D:20190101@基本临时备案天数!N:1@一般非预算备案天数!N:5', N'CREATE PROCEDURE P_zh_late_khrq(@bgn_date CHAR(8),@inter_day1 INT,@inter_day2 INT)
WITH ENCRYPTION
AS
  BEGIN
    ------筛选：最早大于600的付款交易早于账户人行最早开户，考虑验资过程收取手续费的情况
    --DECLARE @bgn_date CHAR(8)
    --DECLARE @end_date CHAR(8)
    --DECLARE @inter_day1 INT
    --DECLARE @inter_day2 INT
    ----DECLARE @jyje INT
    --SET @bgn_date=''20190101''
    --SET @end_date=''20200630''
    --SET @inter_day1=1
    --SET @inter_day2=5
    --SET @jyje=600
    IF Object_id(''tempdb..#tmp'') IS NOT NULL
      DROP TABLE #tmp

    IF Object_id(''tempdb..#tmp0'') IS NOT NULL
      DROP TABLE #tmp0

    IF Object_id(''tempdb..#tmp00'') IS NOT NULL
      DROP TABLE #tmp00

    IF Object_id(''tempdb..#tmp000'') IS NOT NULL
      DROP TABLE #tmp000

    IF Object_id(''tempdb..#tmp1'') IS NOT NULL
      DROP TABLE #tmp1

    IF Object_id(''tempdb..#tmp2'') IS NOT NULL
      DROP TABLE #tmp2

    IF Object_id(''tempdb..#tmp3'') IS NOT NULL
      DROP TABLE #tmp3

    IF Object_id(''tempdb..#tmp4'') IS NOT NULL
      DROP TABLE #tmp4

    IF Object_id(''tempdb..#tmp5'') IS NOT NULL
      DROP TABLE #tmp5

    IF Object_id(''tempdb..#tmp6'') IS NOT NULL
      DROP TABLE #tmp6

    IF Object_id(''tempdb..#tmp7'') IS NOT NULL
      DROP TABLE #tmp7

    IF Object_id(''tempdb..#tmp8'') IS NOT NULL
      DROP TABLE #tmp8

    IF Object_id(''tempdb..#tmp9'') IS NOT NULL
      DROP TABLE #tmp9

    IF Object_id(''tempdb..#tmp99'') IS NOT NULL
      DROP TABLE #tmp99

    IF Object_id(''tempdb..#tmp11'') IS NOT NULL
      DROP TABLE #tmp11

    IF Object_id(''tempdb..#tmp22'') IS NOT NULL
      DROP TABLE #tmp22

    IF Object_id(''tempdb..#tmp33'') IS NOT NULL
      DROP TABLE #tmp33

    IF Object_id(''tempdb..#tmp44'') IS NOT NULL
      DROP TABLE #tmp44

    IF Object_id(''tempdb..#tmp55'') IS NOT NULL
      DROP TABLE #tmp55

    IF Object_id(''tempdb..#tmp222'') IS NOT NULL
      DROP TABLE #tmp222

    IF Object_id(''tempdb..#tmp333'') IS NOT NULL
      DROP TABLE #tmp333

    IF Object_id(''tempdb..#tmp444'') IS NOT NULL
      DROP TABLE #tmp444

    IF Object_id(''tempdb..#tmp555'') IS NOT NULL
      DROP TABLE #tmp555

    --类型1：基本、临时迟备案
    --提取基本、临时账户（从两个角度）
    SELECT DISTINCT 账号
    INTO   #tmp1
    FROM   tb_rhzh_dw
    WHERE  ( 账户性质 = ''基本''
              OR 账户性质 = ''临时''
              OR 账户性质 = ''非临时''
              OR 账户性质 = ''预算'' )
           AND 开户日期 >= @bgn_date
    UNION
    SELECT DISTINCT 账号
    FROM   tb_shzh_dw
    WHERE  ( 账户类型 = ''基本''
              OR 账户类型 = ''临时'' )
           AND 开户日期 >= @bgn_date

    --获取人行账户最早开户日期
    SELECT a.账号,
           Min(b.开户日期) 人行最早
    INTO   #tmp2
    FROM   #tmp1 a
           INNER JOIN tb_rhzh_dw b
                   ON a.账号 = b.账号
    GROUP  BY a.账号

    --与商行账户连接，获取间隔
    SELECT a.账号,
           a.人行最早,
           b.开户日期,
           Datediff(day, CONVERT(DATE, 开户日期), CONVERT(DATE, 人行最早)) 间隔
    INTO   #tmp3
    FROM   #tmp2 a
           INNER JOIN tb_shzh_dw b
                   ON a.账号 = b.账号
    WHERE  Datediff(day, CONVERT(DATE, 开户日期), CONVERT(DATE, 人行最早)) > @inter_day1

    --获取人行和商行信息
    SELECT b.银行机构代码,
           d.银行机构名称,
           a.账号,
           b.账户名称,
           b.开户日期 人行开户,
           a.人行最早 人行最早开户,
           c.开户日期 商行开户,
           a.间隔,
           b.销户日期 人行销户,
           c.销户日期 商行销户,
           b.账户性质 人行性质,
           c.账户类型 商行性质,
           b.账户状态 人行状态,
           c.账户状态 商行状态
    INTO   #tmp9
    FROM   #tmp3 a
           LEFT JOIN tb_rhzh_dw b
                  ON a.账号 = b.账号
           LEFT JOIN tb_shzh_dw c
                  ON a.账号 = c.账号
           LEFT JOIN v_bank d
                  ON b.银行机构代码 = d.银行编码或代码

    --类型2：一般、非预算迟备案
    --提取一般、非预算（从两个角度）
    SELECT DISTINCT 账号
    INTO   #tmp11
    FROM   tb_rhzh_dw
    WHERE  ( 账户性质 = ''一般''
              OR 账户性质 = ''非预算'' )
           AND 开户日期 >= @bgn_date
    UNION
    SELECT DISTINCT 账号
    FROM   tb_shzh_dw
    WHERE  ( 账户类型 = ''一般''
              OR 账户类型 = ''专用'' )
           AND 开户日期 >= @bgn_date

    --获取人行账户最早开户日期
    SELECT a.账号,
           Min(b.开户日期) 人行最早
    INTO   #tmp22
    FROM   #tmp11 a
           INNER JOIN tb_rhzh_dw b
                   ON a.账号 = b.账号
    GROUP  BY a.账号

    --与商行账户连接，获取间隔
    SELECT a.账号,
           a.人行最早,
           b.开户日期,
           Datediff(day, CONVERT(DATE, 开户日期), CONVERT(DATE, 人行最早)) 间隔
    INTO   #tmp33
    FROM   #tmp22 a
           INNER JOIN tb_shzh_dw b
                   ON a.账号 = b.账号
    WHERE  Datediff(day, CONVERT(DATE, 开户日期), CONVERT(DATE, 人行最早)) > @inter_day2

    --获取人行和商行信息
    SELECT b.银行机构代码,
           d.银行机构名称,
           a.账号,
           b.账户名称,
           b.开户日期 人行开户,
           a.人行最早 人行最早开户,
           c.开户日期 商行开户,
           a.间隔,
           b.销户日期 人行销户,
           c.销户日期 商行销户,
           b.账户性质 人行性质,
           c.账户类型 商行性质,
           b.账户状态 人行状态,
           c.账户状态 商行状态
    INTO   #tmp99
    FROM   #tmp33 a
           LEFT JOIN tb_rhzh_dw b
                  ON a.账号 = b.账号
           LEFT JOIN tb_shzh_dw c
                  ON a.账号 = c.账号
           LEFT JOIN v_bank d
                  ON b.银行机构代码 = d.银行编码或代码

    --合并
    SELECT *
    FROM   #tmp9
    UNION
    SELECT *
    FROM   #tmp9
    ORDER  BY 银行机构代码
  END
GO ', NULL, 115, N'02030104', N'1', N'1', N'0', N'1', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (326, 91, N'4109核准类迟核准_商行早付款', N'基本、临时和预算专户未在规定的时间内核准，以大于一定付款金额的最早付款日期判断', N'@最小付款金额!N:600@天数!N:2', N'CREATE PROCEDURE P_jblsys_late_fkrq(@jyje int,@inter_day int)  WITH ENCRYPTION  AS
BEGIN
------筛选：最早大于600的付款交易早于账户人行最早开户，考虑验资过程收取手续费的情况
--declare @bgn_date char(8)
--declare @end_date char(8)
--declare @inter_day int
--declare @jyje int
--set @bgn_date=''20120101''
--set @end_date=''20130430''
--set @inter_day=1
--set @jyje=600
if object_id(''tempdb..#tmp'') is not null drop table #tmp
if object_id(''tempdb..#tmp0'') is not null drop table #tmp0
if object_id(''tempdb..#tmp00'') is not null drop table #tmp00
if object_id(''tempdb..#tmp000'') is not null drop table #tmp000
if object_id(''tempdb..#tmp1'') is not null drop table #tmp1
if object_id(''tempdb..#tmp2'') is not null drop table #tmp2  
if object_id(''tempdb..#tmp3'') is not null drop table #tmp3
if object_id(''tempdb..#tmp4'') is not null drop table #tmp4
if object_id(''tempdb..#tmp5'') is not null drop table #tmp5
if object_id(''tempdb..#tmp6'') is not null drop table #tmp6
if object_id(''tempdb..#tmp7'') is not null drop table #tmp7
if object_id(''tempdb..#tmp8'') is not null drop table #tmp8
if object_id(''tempdb..#tmp9'') is not null drop table #tmp9
if object_id(''tempdb..#tmp99'') is not null drop table #tmp99
if object_id(''tempdb..#tmp22'') is not null drop table #tmp22  
if object_id(''tempdb..#tmp33'') is not null drop table #tmp33
if object_id(''tempdb..#tmp44'') is not null drop table #tmp44
if object_id(''tempdb..#tmp55'') is not null drop table #tmp55
if object_id(''tempdb..#tmp222'') is not null drop table #tmp222  
if object_id(''tempdb..#tmp333'') is not null drop table #tmp333
if object_id(''tempdb..#tmp444'') is not null drop table #tmp444
if object_id(''tempdb..#tmp555'') is not null drop table #tmp555

--获得最早付款时间
select 账号,min(交易日期) 最早付款
into #tmp1
from V_txn
where 借贷=''借'' and 金额>=@jyje
group by 账号
--从账户人行提取有关账户
select 账号,开户日期 人行开户
into #tmp2
from zhsys where 账号 in (select 账号 from #tmp1)
--连接2表
select a.账号,a.最早付款,b.人行开户
into #tmp3
from #tmp1 a
inner join #tmp2 b
on a.账号=b.账号
--找到最早开户
select 账号,MIN(最早付款) 最早付款,MIN(人行开户) 人行最早
into #tmp4
from #tmp3
group by 账号
--加入间隔时间
select 账号,最早付款,人行最早,datediff(day,CONVERT(date,最早付款),CONVERT(date,人行最早)) 间隔
into #tmp5
from #tmp4
--发现结果
select 账号,最早付款,人行最早,间隔
into #tmp6
from #tmp5
where 间隔>=@inter_day

--#tmp6账户的交易情况#tmp7-----------------
select 账号 账号,count(账号) 笔数,
       sum(case when (借贷=''贷'') then 1 else 0 end) 贷方,  
       sum(case when (借贷=''借'') then 1 else 0 end) 借方, 
       sum(case when (现转=''现金'' and 借贷=''贷'') then 1 else 0 end) 贷方现金,
       sum(case when (现转=''现金'' and 借贷=''借'') then 1 else 0 end) 借方现金,
       min(交易日期) 最早交易,max(交易日期) 最迟交易
into #tmp7
from V_txn
where 账号 in (select 账号 from #tmp6)
group by 账号

---获取完整信息
select b.银行机构代码,b.银行机构名称,a.账号 账号,a.最早付款,人行最早,a.间隔,
b.账户性质 人行性质 ,b.开户日期 人行开户 ,b.销户日期 人行销户,b.久悬日期 人行久悬 ,b.状态 人行状态
into #tmp8
from #tmp6 a
left join zhsys b
on a.账号=b.账号

select a.*,c.bank_code 网点机构代码,c.acc_name 户名,
(CASE c.ent_cst_type WHEN ''0'' THEN ''基本'' WHEN ''1'' THEN ''一般'' WHEN ''2'' THEN ''非预算''  WHEN ''3'' THEN ''临时'' WHEN ''4'' THEN ''预算'' END) 性质,
c.open_time 开户日期,c.close_time 销户日期,
(CASE c.close_flag WHEN ''0'' THEN ''开户'' WHEN ''1'' THEN ''销户'' WHEN ''2'' THEN ''变更''  WHEN ''3'' THEN ''久悬'' END)  状态
into #tmp9
from #tmp8 a
left join tb_acc c 
on a.账号=c.acc_no

select a.*,
d.笔数,d.借方,d.贷方,d.借方现金,d.贷方现金,d.最早交易,d.最迟交易
into #tmp99
from #tmp9 a
left join #tmp7 d
on a.账号=d.账号
select * from #tmp99
where 人行性质 like ''基本%'' or 人行性质 like ''%临时%'' or 人行性质=''预算''
order by 账号,银行机构代码
END
GO', NULL, 128, N'02030110', N'1', N'1', N'0', N'0', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (272, 91, N'4110备案类迟报备_商行早开户', N'非核准类未在规定的时间内核准，以银行开户日期判断，弥补账户系统监测结果', N'@检查开始日期!D:20120101@检查结束日期!D:20130430@天数!N:5', N'CREATE PROCEDURE P_ybfys_late_khrq(@bgn_date char(8),@end_date char(8),@inter_day int) WITH ENCRYPTION  AS
BEGIN
------筛选：最早大于600的付款交易早于账户人行最早开户，考虑验资过程收取手续费的情况
--declare @bgn_date char(8)
--declare @end_date char(8)
--declare @inter_day int
--declare @jyje int
--set @bgn_date=''20120101''
--set @end_date=''20130430''
--set @inter_day=1
--set @jyje=600
if object_id(''tempdb..#tmp'') is not null drop table #tmp
if object_id(''tempdb..#tmp0'') is not null drop table #tmp0
if object_id(''tempdb..#tmp00'') is not null drop table #tmp00
if object_id(''tempdb..#tmp000'') is not null drop table #tmp000
if object_id(''tempdb..#tmp1'') is not null drop table #tmp1
if object_id(''tempdb..#tmp2'') is not null drop table #tmp2  
if object_id(''tempdb..#tmp3'') is not null drop table #tmp3
if object_id(''tempdb..#tmp4'') is not null drop table #tmp4
if object_id(''tempdb..#tmp5'') is not null drop table #tmp5
if object_id(''tempdb..#tmp6'') is not null drop table #tmp6
if object_id(''tempdb..#tmp7'') is not null drop table #tmp7
if object_id(''tempdb..#tmp8'') is not null drop table #tmp8
if object_id(''tempdb..#tmp9'') is not null drop table #tmp9
if object_id(''tempdb..#tmp99'') is not null drop table #tmp99
if object_id(''tempdb..#tmp22'') is not null drop table #tmp22  
if object_id(''tempdb..#tmp33'') is not null drop table #tmp33
if object_id(''tempdb..#tmp44'') is not null drop table #tmp44
if object_id(''tempdb..#tmp55'') is not null drop table #tmp55
if object_id(''tempdb..#tmp222'') is not null drop table #tmp222  
if object_id(''tempdb..#tmp333'') is not null drop table #tmp333
if object_id(''tempdb..#tmp444'') is not null drop table #tmp444
if object_id(''tempdb..#tmp555'') is not null drop table #tmp555

--提取tb_acc中检查期内开立账户的有关信息
select distinct acc_no,open_time 开户时间
into #tmp1
from tb_acc where acc_type=''2'' and open_time>= @bgn_date
--从账户人行提取有关账户
select 账号,开户日期 人行开户
into #tmp2
from zhsys where 账号 in (select acc_no from #tmp1)
--连接2表
select a.acc_no,a.开户时间,b.人行开户
into #tmp3
from #tmp1 a
inner join #tmp2 b
on a.acc_no=b.账号

--找到最早开户
select acc_no,MIN(开户时间) 开户时间,MIN(人行开户) 人行最早
into #tmp4
from #tmp3
group by acc_no
--加入间隔时间
select acc_no,开户时间,人行最早,datediff(day,CONVERT(date,开户时间),CONVERT(date,人行最早)) 间隔
into #tmp5
from #tmp4
--发现结果
select acc_no,开户时间,人行最早,间隔
into #tmp6
from #tmp5
where 间隔>=@inter_day

--#tmp6账户的交易情况#tmp7-----------------
select 账号 账号,count(账号) 笔数,
       sum(case when (借贷=''贷'') then 1 else 0 end) 贷方,  
       sum(case when (借贷=''借'') then 1 else 0 end) 借方, 
       sum(case when (现转=''现金'' and 借贷=''贷'') then 1 else 0 end) 贷方现金,
       sum(case when (现转=''现金'' and 借贷=''借'') then 1 else 0 end) 借方现金,
       min(交易日期) 最早交易,max(交易日期) 最迟交易
into #tmp7
from V_txn
where 账号 in (select acc_no from #tmp6)
group by 账号
---获取完整信息
select b.银行机构代码,b.银行机构名称,a.acc_no 账号,
a.人行最早,a.间隔,
b.账户名称 人行户名 ,b.账户性质 人行性质 ,b.开户日期 人行开户 ,b.销户日期 人行销户,b.久悬日期 人行久悬 ,b.状态 人行状态
into #tmp8
from #tmp6 a
left join zhsys b
on a.acc_no=b.账号

select a.*,c.bank_code 网点机构代码,c.acc_name 户名,
c.open_time 开户日期,c.close_time 销户日期,
(CASE c.ent_cst_type WHEN ''0'' THEN ''基本'' WHEN ''1'' THEN ''一般'' WHEN ''2'' THEN ''非预算''  WHEN ''3'' THEN ''临时'' WHEN ''4'' THEN ''预算'' END) 性质,
(CASE c.close_flag WHEN ''0'' THEN ''开户'' WHEN ''1'' THEN ''销户'' WHEN ''2'' THEN ''变更''  WHEN ''3'' THEN ''久悬'' END)  状态
into #tmp9
from #tmp8 a
left join tb_acc c 
on a.账号=c.acc_no

select a.*,
d.笔数,d.借方,d.贷方,d.借方现金,d.贷方现金,d.最早交易,d.最迟交易
into #tmp99
from #tmp9 a
left join #tmp7 d
on a.账号=d.账号

select * from #tmp99
where 人行性质=''一般'' or 人行性质=''非预算''
order by 账号,银行机构代码
END
GO', NULL, 130, N'02030111', N'1', N'1', N'0', N'0', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (327, 91, N'4111备案类迟报备_商行早付款', N'非核准类未在规定的时间内核准，以银行付款日期判断，弥补账户系统监测结果', N'@最小付款金额!N:600@天数!N:5', N'CREATE PROCEDURE P_ybfys_late_fkrq(@jyje int,@inter_day int)  WITH ENCRYPTION AS
BEGIN
------筛选：最早大于600的付款交易早于账户人行最早开户，考虑验资过程收取手续费的情况
--declare @bgn_date char(8)
--declare @end_date char(8)
--declare @inter_day int
--declare @jyje int
--set @bgn_date=''20120101''
--set @end_date=''20130430''
--set @inter_day=1
--set @jyje=600
if object_id(''tempdb..#tmp'') is not null drop table #tmp
if object_id(''tempdb..#tmp0'') is not null drop table #tmp0
if object_id(''tempdb..#tmp00'') is not null drop table #tmp00
if object_id(''tempdb..#tmp000'') is not null drop table #tmp000
if object_id(''tempdb..#tmp1'') is not null drop table #tmp1
if object_id(''tempdb..#tmp2'') is not null drop table #tmp2  
if object_id(''tempdb..#tmp3'') is not null drop table #tmp3
if object_id(''tempdb..#tmp4'') is not null drop table #tmp4
if object_id(''tempdb..#tmp5'') is not null drop table #tmp5
if object_id(''tempdb..#tmp6'') is not null drop table #tmp6
if object_id(''tempdb..#tmp7'') is not null drop table #tmp7
if object_id(''tempdb..#tmp8'') is not null drop table #tmp8
if object_id(''tempdb..#tmp9'') is not null drop table #tmp9
if object_id(''tempdb..#tmp99'') is not null drop table #tmp99
if object_id(''tempdb..#tmp22'') is not null drop table #tmp22  
if object_id(''tempdb..#tmp33'') is not null drop table #tmp33
if object_id(''tempdb..#tmp44'') is not null drop table #tmp44
if object_id(''tempdb..#tmp55'') is not null drop table #tmp55
if object_id(''tempdb..#tmp222'') is not null drop table #tmp222  
if object_id(''tempdb..#tmp333'') is not null drop table #tmp333
if object_id(''tempdb..#tmp444'') is not null drop table #tmp444
if object_id(''tempdb..#tmp555'') is not null drop table #tmp555

--获得最早付款时间
select 账号,min(交易日期) 最早付款
into #tmp1
from V_txn
where 借贷=''1'' and 金额>=@jyje
group by 账号
--从账户人行提取有关账户
select 账号,开户日期 人行开户
into #tmp2
from zhsys where 账号 in (select 账号 from #tmp1)
--连接2表
select a.账号,a.最早付款,b.人行开户
into #tmp3
from #tmp1 a
inner join #tmp2 b
on a.账号=b.账号
--找到最早开户
select 账号,MIN(最早付款) 最早付款,MIN(人行开户) 人行最早
into #tmp4
from #tmp3
group by 账号
--加入间隔时间
select 账号,最早付款,人行最早,datediff(day,CONVERT(date,最早付款),CONVERT(date,人行最早)) 间隔
into #tmp5
from #tmp4
--发现结果
select 账号,最早付款,人行最早,间隔
into #tmp6
from #tmp5
where 间隔>=@inter_day

--#tmp6账户的交易情况#tmp7-----------------
select 账号 账号,count(账号) 笔数,
       sum(case when (借贷=''贷'') then 1 else 0 end) 贷方,  
       sum(case when (借贷=''借'') then 1 else 0 end) 借方, 
       sum(case when (现转=''现金'' and 借贷=''贷'') then 1 else 0 end) 贷方现金,
       sum(case when (现转=''现金'' and 借贷=''借'') then 1 else 0 end) 借方现金,
       min(交易日期) 最早交易,max(交易日期) 最迟交易
into #tmp7
from V_txn
where 账号 in (select 账号 from #tmp6)
group by 账号
---获取完整信息
select b.银行机构代码,b.银行机构名称,a.账号 账号,
a.人行最早,a.间隔,
b.账户名称 人行户名 ,b.账户性质 人行性质 ,b.开户日期 人行开户 ,b.销户日期 人行销户,b.久悬日期 人行久悬 ,b.状态 人行状态
into #tmp8
from #tmp6 a
left join zhsys b
on a.账号=b.账号

select a.*,c.bank_code 网点机构代码,c.acc_name 户名,
c.open_time 开户日期,c.close_time 销户日期,
(CASE c.ent_cst_type WHEN ''0'' THEN ''基本'' WHEN ''1'' THEN ''一般'' WHEN ''2'' THEN ''非预算''  WHEN ''3'' THEN ''临时'' WHEN ''4'' THEN ''预算'' END) 性质,
(CASE c.close_flag WHEN ''0'' THEN ''开户'' WHEN ''1'' THEN ''销户'' WHEN ''2'' THEN ''变更''  WHEN ''3'' THEN ''久悬'' END)  状态
into #tmp9
from #tmp8 a
left join tb_acc c 
on a.账号=c.acc_no

select a.*,
d.笔数,d.借方,d.贷方,d.借方现金,d.贷方现金,d.最早交易,d.最迟交易
into #tmp99
from #tmp9 a
left join #tmp7 d
on a.账号=d.账号

select * from #tmp99
where 人行性质=''一般'' or 人行性质=''非预算''
order by 账号,银行机构代码

END
GO', NULL, 132, N'02030112', N'1', N'1', N'0', N'0', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (288, 91, N'4112未核准或未备案_无账户有交易', N'商行未提供账户数据，但交易表中存在交易记录', N'@最小交易笔数!N:3', N'CREATE PROCEDURE P_wqxybzyzh_not_bak(@jybs int)  WITH ENCRYPTION  AS
BEGIN
if object_id(''tempdb..#tmp'') is not null drop table #tmp
if object_id(''tempdb..#tmp0'') is not null drop table #tmp0
if object_id(''tempdb..#tmp00'') is not null drop table #tmp00
if object_id(''tempdb..#tmp000'') is not null drop table #tmp000
if object_id(''tempdb..#tmp1'') is not null drop table #tmp1
if object_id(''tempdb..#tmp11'') is not null drop table #tmp11
if object_id(''tempdb..#tmp2'') is not null drop table #tmp2 
if object_id(''tempdb..#tmp22'') is not null drop table #tmp22  
if object_id(''tempdb..#tmp3'') is not null drop table #tmp3
if object_id(''tempdb..#tmp33'') is not null drop table #tmp33
if object_id(''tempdb..#tmp4'') is not null drop table #tmp4
if object_id(''tempdb..#tmp44'') is not null drop table #tmp44
if object_id(''tempdb..#tmp5'') is not null drop table #tmp5
if object_id(''tempdb..#tmp55'') is not null drop table #tmp55
if object_id(''tempdb..#tmp6'') is not null drop table #tmp6
if object_id(''tempdb..#tmp7'') is not null drop table #tmp7
if object_id(''tempdb..#tmp8'') is not null drop table #tmp8
if object_id(''tempdb..#tmp9'') is not null drop table #tmp9

/*提取无取现有交易的账号tmp1*/
select 账号 ,sum(case when (现转=''现金'' and 借贷=''借'') then 1 else 0 end) 借方现金
into #tmp1
from V_txn
group by 账号
having sum(case when (现转=''现金'' and 借贷=''借'') then 1 else 0 end)<=0
/*获取tb_acc中未提供的账号*/
select distinct 账号 
into #tmp2
from #tmp1 where 账号 not in(select distinct acc_no from tb_acc )
/*获取zhsys中未提供的账号#tmp3*/
select distinct 账号 
into #tmp3
from #tmp2 where 账号 not in(select distinct 账号 from zhsys )

--#tmp3账户的交易情况#tmp4-----------------
select 账号 账号,count(账号) 笔数,
       sum(case when (借贷=''贷'') then 1 else 0 end) 贷方,  
       sum(case when (借贷=''借'') then 1 else 0 end) 借方, 
       sum(case when (现转=''现金'' and 借贷=''贷'') then 1 else 0 end) 贷方现金,
       sum(case when (现转=''现金'' and 借贷=''借'') then 1 else 0 end) 借方现金,
       min(交易日期) 最早时间,max(交易日期) 最迟时间
into #tmp4
from V_txn
where 账号 in (select  账号 from #tmp3)
group by 账号

/*获取交易表中交易行、开户行代码#tmp5*/
select distinct 账号,交易行
into #tmp5
from V_Txn
/*加上交易表中交易行名称#tmp55*/
select distinct a.账号,a.交易行,b.银行机构名称 交易行名称
into #tmp55
from #tmp5 a
left join V_Bank b on a.交易行=b.银行机构代码

/*合并完整信息显示*/
select a.账号 账号,b.交易行 交易行代码,b.交易行名称,c.笔数,c.借方,c.贷方,c.借方现金,c.贷方现金,c.最早时间,c.最迟时间
from #tmp3 a
left join #tmp55 b on a.账号=b.账号
left join #tmp4 c on a.账号=c.账号
where c.笔数 >= @jybs
order by a.账号
END
GO', NULL, 134, N'02030113', N'1', N'1', N'0', N'0', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (352, 91, N'4113未核准或未备案_无账户有取现', N'商行未提供账户数据，但交易表中存在取现记录', N'@筛选取现的最小笔数!N:1', N'CREATE PROCEDURE P_jyzh_not_in_tb_acc(@qxbs int)  WITH ENCRYPTION  AS
BEGIN
if object_id(''tempdb..#tmp'') is not null drop table #tmp
if object_id(''tempdb..#tmp0'') is not null drop table #tmp0
if object_id(''tempdb..#tmp00'') is not null drop table #tmp00
if object_id(''tempdb..#tmp000'') is not null drop table #tmp000
if object_id(''tempdb..#tmp1'') is not null drop table #tmp1
if object_id(''tempdb..#tmp11'') is not null drop table #tmp11
if object_id(''tempdb..#tmp2'') is not null drop table #tmp2 
if object_id(''tempdb..#tmp22'') is not null drop table #tmp22  
if object_id(''tempdb..#tmp3'') is not null drop table #tmp3
if object_id(''tempdb..#tmp33'') is not null drop table #tmp33
if object_id(''tempdb..#tmp4'') is not null drop table #tmp4
if object_id(''tempdb..#tmp44'') is not null drop table #tmp44
if object_id(''tempdb..#tmp5'') is not null drop table #tmp5
if object_id(''tempdb..#tmp55'') is not null drop table #tmp55
if object_id(''tempdb..#tmp6'') is not null drop table #tmp6
if object_id(''tempdb..#tmp7'') is not null drop table #tmp7
if object_id(''tempdb..#tmp8'') is not null drop table #tmp8
if object_id(''tempdb..#tmp9'') is not null drop table #tmp9

/*提取含有取现交易的账号tmp1*/
select 账号 ,sum(case when (现转=''现金'' and 借贷=''借'') then 1 else 0 end) 借方现金
into #tmp1
from V_txn
group by 账号
having sum(case when (现转=''现金'' and 借贷=''借'') then 1 else 0 end)>=@qxbs
/*获取tb_acc中未提供的账号*/
select distinct 账号 
into #tmp2
from #tmp1 where 账号 not in(select distinct acc_no from tb_acc )
/*获取zhsys中未提供的账号#tmp3*/
select distinct 账号 
into #tmp3
from #tmp2 where 账号 not in(select distinct 账号 from zhsys )

--#tmp3账户的交易情况#tmp4-----------------
select 账号 账号,count(账号) 笔数,
       sum(case when (借贷=''贷'') then 1 else 0 end) 贷方,  
       sum(case when (借贷=''借'') then 1 else 0 end) 借方, 
       sum(case when (现转=''现金'' and 借贷=''贷'') then 1 else 0 end) 贷方现金,
       sum(case when (现转=''现金'' and 借贷=''借'') then 1 else 0 end) 借方现金,
       min(交易日期) 最早时间,max(交易日期) 最迟时间
into #tmp4
from V_txn
where 账号 in (select  账号 from #tmp3)
group by 账号

/*获取交易表中交易行、开户行代码#tmp5*/
select distinct 账号,交易行
into #tmp5
from V_Txn
/*加上交易表中交易行名称#tmp55*/
select distinct a.账号,a.交易行,b.银行机构名称 交易行名称
into #tmp55
from #tmp5 a
left join V_Bank b on a.交易行=b.银行机构代码

/*合并完整信息显示*/
select a.账号 账号,b.交易行 交易行代码,b.交易行名称,c.笔数,c.借方,c.贷方,c.借方现金,c.贷方现金,c.最早时间,c.最迟时间
from #tmp3 a
left join #tmp55 b on a.账号=b.账号
left join #tmp4 c on a.账号=c.账号
order by a.账号
END
GO', NULL, 136, N'02030114', N'1', N'1', N'0', N'0', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (320, 90, N'.账户撤销方面', N'', N'', NULL, NULL, 138, N'020302', N'0', N'0', N'0', N'0', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (273, 320, N'4201账户撤销未报备', N'检查数据提供的撤销账户在人行账户系统中显示正常', N'', N'CREATE PROCEDURE  P_zhcx_no_bak  WITH ENCRYPTION  AS
BEGIN

if object_id(''tempdb..#tmp'') is not null drop table #tmp
if object_id(''tempdb..#tmp0'') is not null drop table #tmp0
if object_id(''tempdb..#tmp00'') is not null drop table #tmp00
if object_id(''tempdb..#tmp000'') is not null drop table #tmp000
if object_id(''tempdb..#tmp1'') is not null drop table #tmp1
if object_id(''tempdb..#tmp11'') is not null drop table #tmp11
if object_id(''tempdb..#tmp2'') is not null drop table #tmp2 
if object_id(''tempdb..#tmp22'') is not null drop table #tmp22  
if object_id(''tempdb..#tmp3'') is not null drop table #tmp3
if object_id(''tempdb..#tmp33'') is not null drop table #tmp33
if object_id(''tempdb..#tmp4'') is not null drop table #tmp4
if object_id(''tempdb..#tmp44'') is not null drop table #tmp44
if object_id(''tempdb..#tmp5'') is not null drop table #tmp5
if object_id(''tempdb..#tmp6'') is not null drop table #tmp6
if object_id(''tempdb..#tmp7'') is not null drop table #tmp7
if object_id(''tempdb..#tmp8'') is not null drop table #tmp8
if object_id(''tempdb..#tmp9'') is not null drop table #tmp9
--账户表中提取状态为撤销的账户
Select a.bank_code 网点机构代码,c.银行机构代码,c.银行机构名称,a.acc_no 账号,a.acc_name 户名,
(CASE a.ent_cst_type WHEN ''0'' THEN ''基本'' WHEN ''1'' THEN ''一般'' WHEN ''2'' THEN ''专用''
WHEN ''3'' THEN ''临时'' WHEN ''4'' THEN ''预算'' END) 性质,
a.open_time 开户时间,a.close_time 销户时间,
(CASE a.close_flag WHEN ''0'' THEN ''正常'' WHEN ''1'' THEN ''撤销'' WHEN ''2'' THEN ''变更''   END)  状态,
c.账户性质 人行性质,c.状态 人行状态
from tb_acc a
left join zhsys c on a.acc_no=c.账号
where close_flag=''1'' and acc_type=''2'' and acc_no in 
--提取账户系统中最终状态为正常的账户
(select 账号 from zhsys  where len(销户日期)=0 and 久悬日期 is null ) and c.状态=''正常''
order by a.acc_no
END
GO', NULL, 164, N'02030201', N'1', N'1', N'0', N'0', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (291, 320, N'4202账户撤销迟报备', N'检查期内银行销户后在人行账户系统中迟报备', N'@检查开始日期!D:20120101@检查结束日期!D:20130430@天数!N:7', N'CREATE PROCEDURE P_zhcx_late_bak(@bgn_date char(8),@end_date char(8),@inter_day int)  WITH ENCRYPTION AS
BEGIN
--declare @bgn_date char(8)
--declare @end_date char(8)
--declare @inter_day int
--declare @jyje int
--set @bgn_date=''20120101''
--set @end_date=''20130430''
--set @inter_day=7
--set @jyje=600
if object_id(''tempdb..#tmp'') is not null drop table #tmp
if object_id(''tempdb..#tmp0'') is not null drop table #tmp0
if object_id(''tempdb..#tmp00'') is not null drop table #tmp00
if object_id(''tempdb..#tmp000'') is not null drop table #tmp000
if object_id(''tempdb..#tmp1'') is not null drop table #tmp1
if object_id(''tempdb..#tmp2'') is not null drop table #tmp2  
if object_id(''tempdb..#tmp3'') is not null drop table #tmp3
if object_id(''tempdb..#tmp4'') is not null drop table #tmp4
if object_id(''tempdb..#tmp5'') is not null drop table #tmp5
if object_id(''tempdb..#tmp6'') is not null drop table #tmp6
if object_id(''tempdb..#tmp7'') is not null drop table #tmp7
if object_id(''tempdb..#tmp8'') is not null drop table #tmp8
if object_id(''tempdb..#tmp9'') is not null drop table #tmp9
if object_id(''tempdb..#tmp22'') is not null drop table #tmp22  
if object_id(''tempdb..#tmp33'') is not null drop table #tmp33
if object_id(''tempdb..#tmp44'') is not null drop table #tmp44
if object_id(''tempdb..#tmp55'') is not null drop table #tmp55
if object_id(''tempdb..#tmp222'') is not null drop table #tmp222  
if object_id(''tempdb..#tmp333'') is not null drop table #tmp333
if object_id(''tempdb..#tmp444'') is not null drop table #tmp444
if object_id(''tempdb..#tmp555'') is not null drop table #tmp555

--提取tb_acc中检查期内账户撤销的有关信息
select distinct acc_no,close_time 销户日期
into #tmp1
from tb_acc where acc_type=''2'' and close_time>= @bgn_date 
--获得账户信息
select a.acc_no,a.销户日期 ,b.销户日期 人行销户,b.久悬日期 人行久悬,b.状态 人行状态
into #tmp2
from #tmp1 a
inner join zhsys b
on a.acc_no=b.账号
--删除系统中正常账户有关的账号
select distinct acc_no 
into #tmp22
from #tmp2
where 人行状态=''正常''
delete #tmp2 where acc_no in (select acc_no from #tmp22)
--select * from #tmp2

--找到最早开户
select acc_no,MAX(销户日期) 销户日期,MAX(人行销户) 人行销户,MAX(人行久悬) 人行久悬
into #tmp3
from #tmp2
group by acc_no
--加入间隔时间
select acc_no,销户日期,人行销户,人行久悬,
datediff(day,CONVERT(date,销户日期),CONVERT(date,case when len(人行销户)=0 then 人行久悬 else 人行销户 end )) 间隔
into #tmp4
from #tmp3
--发现结果
select acc_no,销户日期,人行销户,人行久悬,间隔
into #tmp5
from #tmp4
where 间隔>=@inter_day
---获取完整信息
select c.bank_code 网点机构代码,b.银行机构名称,a.acc_no 账号,c.acc_name 户名,
c.close_time 销户日期,b.销户日期 人行销户,b.久悬日期 人行久悬,a.间隔,c.open_time 开户日期,
(CASE c.ent_cst_type WHEN ''0'' THEN ''基本'' WHEN ''1'' THEN ''一般'' WHEN ''2'' THEN ''非预算''  WHEN ''3'' THEN ''临时'' WHEN ''4'' THEN ''预算'' END) 性质,
(CASE c.close_flag WHEN ''0'' THEN ''开户'' WHEN ''1'' THEN ''销户'' WHEN ''2'' THEN ''变更''  WHEN ''3'' THEN ''久悬'' END)  状态,
b.账户性质 人行性质 ,b.状态 人行状态
into #tmp6
from #tmp5 a
left join V_ZhLast b
on a.acc_no=b.账号
left join tb_acc c 
on a.acc_no=c.acc_no
select * from #tmp6
order by 网点机构代码,账号
END
GO', NULL, 165, N'02030202', N'1', N'1', N'0', N'0', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (313, 90, N'.账户使用方面', N'', N'', NULL, NULL, 166, N'020303', N'0', N'0', N'0', N'1', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (274, 313, N'备案类账户取现', N'一般和非预算账户发生取现业务（提供线索）', N'@业务开始日期!D:20190101@业务结束日期!D:20200630@每笔最小取现金额!N:100@最少取现笔数!N:1', N'CREATE PROCEDURE P_ybzh_qx(@bgn_date char(8),@end_date char(8),@jfxjje int,@jfxjbs int)   WITH ENCRYPTION AS
BEGIN
--declare @bgn_date char(8)
--declare @end_date char(8)
--set @bgn_date=''20180101''
--set @end_date=''20190830''
--declare @jfxjje int
--set @jfxjje=10
if object_id(''tempdb..#tmp'') is not null drop table #tmp
if object_id(''tempdb..#tmp0'') is not null drop table #tmp0
if object_id(''tempdb..#tmp00'') is not null drop table #tmp00
if object_id(''tempdb..#tmp000'') is not null drop table #tmp000
if object_id(''tempdb..#tmp1'') is not null drop table #tmp1
if object_id(''tempdb..#tmp2'') is not null drop table #tmp2  
if object_id(''tempdb..#tmp3'') is not null drop table #tmp3
if object_id(''tempdb..#tmp4'') is not null drop table #tmp4
if object_id(''tempdb..#tmp5'') is not null drop table #tmp5
if object_id(''tempdb..#tmp6'') is not null drop table #tmp6
if object_id(''tempdb..#tmp7'') is not null drop table #tmp7
if object_id(''tempdb..#tmp8'') is not null drop table #tmp8
if object_id(''tempdb..#tmp9'') is not null drop table #tmp9
--账户系统中提取一般和非预算
select a.账号,a.开户日期,a.销户日期,a.久悬日期 
into #tmp1
from v_rhzh_dw a
where (a.账户性质=''一般'' or a.账户性质=''非预算'') and (账户状态=''正常'' or 销户日期>@bgn_date) 

--提取这些账户大于金额的交易
select *
into #tmp2
from tb_shjy_dw a 
where 账号 in (select distinct 账号 from #tmp1) and a.借贷标识=''借'' and a.现转标识 =''现金'' and 交易金额>=@jfxjje
--提起正常和在日期范围内的交易
select distinct b.*
into #tmp3
from #tmp1 a
join #tmp2 b on a.账号=b.账号
where (a.销户日期 is null or len(a.销户日期)=0) and (b.交易日期>a.开户日期) or
 (len(a.销户日期)>0 and b.交易日期>a.开户日期 and b.交易日期<a.销户日期) 
--提取最最小日期和笔数
select 账号,COUNT(账号) 取现笔数 ,MIN(交易日期) 最早取现,MAX(交易日期) 最迟取现
into #tmp4
from #tmp3
group by 账号
having COUNT(账号)>=@jfxjbs
--获取完整信息

select b.银行机构代码,b.银行机构名称, a.账号,b.账户名称,
a.取现笔数,a.最早取现,a.最迟取现,b.账户性质,
b.可否取现,b.开户日期,b.销户日期,b.账户状态
from #tmp4 a
left join v_rhzh_dw b on a.账号=b.账号
--left join V_Bank d on b.bank_code=d.银行机构代码
END
GO', NULL, 167, N'02030301', N'1', N'1', N'0', N'1', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (276, 313, N'预算专用账户取现', N'预算专用账户发生取现业务', N'@业务开始日期!D:20190101@业务结束日期!D:20200630@每笔最小取现金额!N:100@最少取现笔数!N:1', N'CREATE PROCEDURE P_zyzh_qx(@bgn_date char(8),@end_date char(8),@jfxjje int,@jfxjbs int)  WITH ENCRYPTION AS
BEGIN
--declare @bgn_date char(8)
--declare @end_date char(8)
--set @bgn_date=''20180101''
--set @end_date=''20190830''
--declare @jfxjje int
--set @jfxjje=10
if object_id(''tempdb..#tmp'') is not null drop table #tmp
if object_id(''tempdb..#tmp0'') is not null drop table #tmp0
if object_id(''tempdb..#tmp00'') is not null drop table #tmp00
if object_id(''tempdb..#tmp000'') is not null drop table #tmp000
if object_id(''tempdb..#tmp1'') is not null drop table #tmp1
if object_id(''tempdb..#tmp2'') is not null drop table #tmp2  
if object_id(''tempdb..#tmp3'') is not null drop table #tmp3
if object_id(''tempdb..#tmp4'') is not null drop table #tmp4
if object_id(''tempdb..#tmp5'') is not null drop table #tmp5
if object_id(''tempdb..#tmp6'') is not null drop table #tmp6
if object_id(''tempdb..#tmp7'') is not null drop table #tmp7
if object_id(''tempdb..#tmp8'') is not null drop table #tmp8
if object_id(''tempdb..#tmp9'') is not null drop table #tmp9
--账户系统中提取一般和非预算
select a.账号,a.开户日期,a.销户日期,a.久悬日期 
into #tmp1
from v_rhzh_dw a
where (a.账户性质=''预算'') and (账户状态=''正常'' or 销户日期>@bgn_date) 

--提取这些账户大于金额的交易
select *
into #tmp2
from tb_shjy_dw a 
where 账号 in (select distinct 账号 from #tmp1) and a.借贷标识=''借'' and a.现转标识 =''现金'' and 交易金额>=@jfxjje
--提起正常和在日期范围内的交易
select distinct b.*
into #tmp3
from #tmp1 a
join #tmp2 b on a.账号=b.账号
where (a.销户日期 is null or len(a.销户日期)=0) and (b.交易日期>a.开户日期) or
 (len(a.销户日期)>0 and b.交易日期>a.开户日期 and b.交易日期<a.销户日期) 
--提取最最小日期和笔数
select 账号,COUNT(账号) 取现笔数 ,MIN(交易日期) 最早取现,MAX(交易日期) 最迟取现
into #tmp4
from #tmp3
group by 账号
having COUNT(账号)>=@jfxjbs
--获取完整信息

select b.银行机构代码,b.银行机构名称, a.账号,b.账户名称,
a.取现笔数,a.最早取现,a.最迟取现,b.账户性质,
b.可否取现,b.开户日期,b.销户日期,b.账户状态
from #tmp4 a
left join v_rhzh_dw b on a.账号=b.账号
--left join V_Bank d on b.bank_code=d.银行机构代码
END
GO', NULL, 168, N'02030302', N'1', N'1', N'0', N'1', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (301, 313, N'4304基本户生效日内发生付款业务', N'基本户生效日内发生付款业务(现场手工剔除验资户转基本户)', N'@检查开始日期!D:20120101@检查结束日期!D:20130430@生效日天数!N:3@最小付款金额!N:200', N'CREATE PROCEDURE P_sxr_zf_jb(@bgn_date char(8),@end_date char(8),@inter_day int,@jyje int)  WITH ENCRYPTION  AS
BEGIN
--declare @bgn_date char(8)
--declare @end_date char(8)
--declare @row_num int
--declare @zh_len int
--declare @jyje int
--declare @inter_day int
--set @bgn_date=''20120101''
--set @end_date=''20130430''
--set @zh_len=20
--set @jyje=600
--set @inter_day=2
if object_id(''tempdb..#tmp'') is not null drop table #tmp
if object_id(''tempdb..#tmp0'') is not null drop table #tmp0
if object_id(''tempdb..#tmp00'') is not null drop table #tmp00
if object_id(''tempdb..#tmp000'') is not null drop table #tmp000
if object_id(''tempdb..#tmp1'') is not null drop table #tmp1
if object_id(''tempdb..#tmp2'') is not null drop table #tmp2  
if object_id(''tempdb..#tmp3'') is not null drop table #tmp3
if object_id(''tempdb..#tmp4'') is not null drop table #tmp4
if object_id(''tempdb..#tmp5'') is not null drop table #tmp5
if object_id(''tempdb..#tmp6'') is not null drop table #tmp6
if object_id(''tempdb..#tmp7'') is not null drop table #tmp7
if object_id(''tempdb..#tmp8'') is not null drop table #tmp8
if object_id(''tempdb..#tmp9'') is not null drop table #tmp9
--找出开户日期最小的账号及最早开户日期
select distinct [账号],min(开户日期) 最早开户
into #tmp1
from zhsys
group by 账号
having convert(date,min(开户日期))>=convert(date,@bgn_date)

--此账号生效日天数的付款交易
select a.账号,min(b.最早开户) 最早开户 ,MIN(a.交易日期) 最早付款,
count(a.账号) 付款笔数 
into #tmp2
from V_Txn a
left join #tmp1 b on a.账号=b.账号
where a.借贷=''借'' and datediff(day,convert(date,b.最早开户),convert(date,a.交易日期))>0 and datediff(day,convert(date,b.最早开户),convert(date,a.交易日期))<=@inter_day and 金额>=@jyje
group by a.账号
having sum(case when (借贷=''借'') then 1 else 0 end)>0

---获取完整信息
select b.银行机构代码,b.银行机构名称,a.账号 账号,
a.最早开户,a.最早付款,a.付款笔数,
b.账户性质 人行性质, 
b.开户日期 人行开户,b.状态 人行状态
into #tmp3
from #tmp2 a
left join zhsys b
on a.账号=b.账号

select c.bank_code 网点机构代码,a.银行机构名称,a.账号,c.acc_name 户名,a.最早开户,a.最早付款,a.付款笔数,a.人行开户,a.人行状态,a.人行性质,
(CASE c.ent_cst_type WHEN ''0'' THEN ''基本'' WHEN ''1'' THEN ''一般'' WHEN ''2'' THEN ''非预算''  WHEN ''3'' THEN ''临时'' WHEN ''4'' THEN ''预算'' END) 性质,
 c.open_time 开户日期,c.close_time 销户日期,
(CASE c.close_flag WHEN ''0'' THEN ''开户'' WHEN ''1'' THEN ''销户'' WHEN ''2'' THEN ''变更''  WHEN ''3'' THEN ''久悬'' END)  状态
into #tmp4
from #tmp3 a
left join tb_acc c 
on a.账号=c.acc_no
delete #tmp4 where 最早开户<>人行开户

select a.网点机构代码,a.银行机构名称,a.账号,a.户名,a.最早开户,a.最早付款,a.付款笔数,a.开户日期,a.销户日期,a.性质,a.状态,
a.人行性质,a.人行状态
 from #tmp4 a
where 人行性质=''基本''
order by 网点机构代码,账号
END
GO', NULL, 169, N'02030303', N'1', N'1', N'0', N'0', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (294, 313, N'4303非基本户生效日内发生付款业务', N'开户为非基本户生效日内发生付款业务(注意手工剔除周末)', N'@检查开始日期!D:20120101@检查结束日期!D:20130430@生效日天数!N:3@最小付款金额!N:200', N'CREATE PROCEDURE P_sxr_zf_no_jb(@bgn_date char(8),@end_date char(8),@inter_day int,@jyje int)  WITH ENCRYPTION AS
BEGIN
--declare @bgn_date char(8)
--declare @end_date char(8)
--declare @row_num int
--declare @zh_len int
--declare @jyje int
--declare @inter_day int
--set @bgn_date=''20120101''
--set @end_date=''20130430''
--set @zh_len=20
--set @jyje=600
--set @inter_day=2
if object_id(''tempdb..#tmp'') is not null drop table #tmp
if object_id(''tempdb..#tmp0'') is not null drop table #tmp0
if object_id(''tempdb..#tmp00'') is not null drop table #tmp00
if object_id(''tempdb..#tmp000'') is not null drop table #tmp000
if object_id(''tempdb..#tmp1'') is not null drop table #tmp1
if object_id(''tempdb..#tmp2'') is not null drop table #tmp2  
if object_id(''tempdb..#tmp3'') is not null drop table #tmp3
if object_id(''tempdb..#tmp4'') is not null drop table #tmp4
if object_id(''tempdb..#tmp5'') is not null drop table #tmp5
if object_id(''tempdb..#tmp6'') is not null drop table #tmp6
if object_id(''tempdb..#tmp7'') is not null drop table #tmp7
if object_id(''tempdb..#tmp8'') is not null drop table #tmp8
if object_id(''tempdb..#tmp9'') is not null drop table #tmp9
--找出开户日期最小的账号及最早开户日期
select distinct [账号],min(开户日期) 最早开户
into #tmp1
from zhsys
group by 账号
having convert(date,min(开户日期))>=convert(date,@bgn_date)

--此账号生效日天数的付款交易
select a.账号,min(b.最早开户) 最早开户 ,MIN(a.交易日期) 最早付款,
count(a.账号) 付款笔数 
into #tmp2
from V_Txn a
left join #tmp1 b on a.账号=b.账号
where a.借贷=''借'' and datediff(day,convert(date,b.最早开户),convert(date,a.交易日期))>0 and datediff(day,convert(date,b.最早开户),convert(date,a.交易日期))<=@inter_day and 金额>=@jyje
group by a.账号
having sum(case when (借贷=''借'') then 1 else 0 end)>0

---获取完整信息
select b.银行机构代码,b.银行机构名称,a.账号 账号,
a.最早开户,a.最早付款,a.付款笔数,
b.账户性质 人行性质, 
b.开户日期 人行开户 ,b.状态 人行状态
into #tmp3
from #tmp2 a
left join zhsys b
on a.账号=b.账号

select a.*,c.bank_code 网点机构代码,c.acc_name 户名,
(CASE c.ent_cst_type WHEN ''0'' THEN ''基本'' WHEN ''1'' THEN ''一般'' WHEN ''2'' THEN ''非预算''  WHEN ''3'' THEN ''临时'' WHEN ''4'' THEN ''预算'' END) 性质,
 c.open_time 开户日期,c.close_time 销户日期,
(CASE c.close_flag WHEN ''0'' THEN ''开户'' WHEN ''1'' THEN ''销户'' WHEN ''2'' THEN ''变更''  WHEN ''3'' THEN ''久悬'' END)  状态
into #tmp4
from #tmp3 a
left join tb_acc c 
on a.账号=c.acc_no
delete #tmp4 where 最早开户<>人行开户

select a.网点机构代码,a.银行机构名称,a.账号,a.户名,a.最早开户,a.最早付款,a.付款笔数,a.开户日期,a.销户日期,a.性质,a.状态,
a.人行性质,a.人行状态
 from #tmp4 a
where 人行性质=''一般'' or 人行性质=''非预算'' or 人行性质=''预算'' or 人行性质=''临时'' or 人行性质=''非临时''
order by 网点机构代码,账号
END
GO', NULL, 170, N'02030304', N'1', N'1', N'0', N'0', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (319, 90, N'4.账户管理方面', N'', N'@提示1!参数类型1:默认值1@提示2!参数类型2:默认值2', N'CREATE PROCEDURE      AS
BEGIN

END
GO', NULL, 171, N'020304', N'0', N'0', N'0', N'0', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (330, 319, N'4401同一账号核准或备案户名不一致', N'对同账号银行机构的户名与账户系统中的户名不一致', N'', N'CREATE PROCEDURE  P_SameAcc_NotName  WITH ENCRYPTION   AS
BEGIN
if object_id(''tempdb..#tmp'') is not null drop table #tmp
if object_id(''tempdb..#tmp0'') is not null drop table #tmp0
if object_id(''tempdb..#tmp00'') is not null drop table #tmp00
if object_id(''tempdb..#tmp000'') is not null drop table #tmp000
if object_id(''tempdb..#tmp1'') is not null drop table #tmp1
if object_id(''tempdb..#tmp2'') is not null drop table #tmp2  
if object_id(''tempdb..#tmp3'') is not null drop table #tmp3
if object_id(''tempdb..#tmp33'') is not null drop table #tmp33
if object_id(''tempdb..#tmp333'') is not null drop table #tmp333
if object_id(''tempdb..#tmp4'') is not null drop table #tmp4
if object_id(''tempdb..#tmp5'') is not null drop table #tmp5
if object_id(''tempdb..#tmp6'') is not null drop table #tmp6
if object_id(''tempdb..#tmp7'') is not null drop table #tmp7
if object_id(''tempdb..#tmp8'') is not null drop table #tmp8
if object_id(''tempdb..#tmp9'') is not null drop table #tmp9
select distinct a.银行机构代码,a.银行机构名称, a.账号, b.acc_name 商行户名,a.账户名称 人行户名, 
                b.open_time 商行开户,
                b.close_time 商行销户 ,(CASE b.ent_cst_type WHEN ''0'' THEN ''基本'' WHEN ''1'' THEN ''一般'' WHEN ''2'' THEN ''非预算''  WHEN ''3'' THEN ''临时'' WHEN ''4'' THEN ''预算'' ELSE ''    '' END) 商行性质,              
(CASE b.close_flag WHEN ''0'' THEN ''开户'' WHEN ''1'' THEN ''撤户'' WHEN ''2'' THEN ''变更'' WHEN ''3'' THEN ''久悬'' ELSE ''    '' END)  商行状态,
                a.账户性质 人行性质,
                a.状态 人行状态           
into #tmp1
from V_zhlast a
left join tb_acc b on ltrim(a.账号)=ltrim(b.acc_no) 
where ltrim(a.账户名称)<>ltrim(b.acc_name)

select 账号,COUNT(账号) 笔数,
       SUM(case 借贷 when ''贷'' then 1 when ''借'' then 0 end) 贷方, 
       SUM(case 借贷 when ''借'' then 1 when ''贷'' then 0 end) 借方,
       sum(case when (现转=''现金'' and 借贷=''贷'') then 1 else 0 end) 贷方现金,
       sum(case when (现转=''现金'' and 借贷=''借'') then 1 else 0 end) 借方现金
       into #tmp2
       from V_Txn
       where 账号 in (SELECT distinct 账号 from #tmp1)
       group by 账号
select a.*,笔数,贷方, 借方, 贷方现金,借方现金
       from #tmp1 a
       left join #tmp2 b on a.账号=b.账号
       order by a.银行机构代码,a.账号
end
GO', NULL, 172, N'02030401', N'1', N'1', N'0', N'0', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (309, 319, N'同一机构同时开立基本一般', N'功能描述： 隐藏', N'@提示1!参数类型1:默认值1@提示2!参数类型2:默认值2', N'CREATE PROCEDURE      AS
BEGIN

END
GO', NULL, 173, N'02030402', N'1', N'1', N'0', N'0', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (310, 319, N'同一机构同时开立基本临时', N'功能描述： 隐藏', N'@提示1!参数类型1:默认值1@提示2!参数类型2:默认值2', N'CREATE PROCEDURE      AS
BEGIN

END
GO', NULL, 174, N'02030403', N'1', N'1', N'0', N'0', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (315, 90, N'5.多头账户情况', N'功能描述：隐藏', N'@提示1!参数类型1:默认值1@提示2!参数类型2:默认值2', N'CREATE PROCEDURE      AS
BEGIN

END
GO', NULL, 175, N'020305', N'0', N'0', N'0', N'0', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (329, 315, N'6704其他账户作为基本账户使用……', N'未核准或核准备案为非基本账户发生工资奖金等交易，对筛选结果需人工分析和现场查看 隐藏', N'@提示1!参数类型1:默认值1@提示2!参数类型2:默认值2', N'CREATE PROCEDURE      AS
BEGIN

END
GO', NULL, 176, N'02030501', N'1', N'1', N'0', N'0', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (325, 315, N'6703基本账户核准或备案为其他账户……', N'对筛选结果需人工分析和现场查看 隐藏', N'@提示1!参数类型1:默认值1@提示2!参数类型2:默认值2', N'CREATE PROCEDURE      AS
BEGIN

END
GO', NULL, 177, N'02030502', N'1', N'1', N'0', N'0', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (300, 315, N'6702同一证件号两个以上非基本户', N'对筛选结果需人工分析和现场查看 隐藏', N'@返回行数!N:10000', N'CREATE PROCEDURE  P_ysdtzh_zjh(@row_num int) AS
BEGIN
if object_id(''tempdb..#tmp'') is not null drop table #tmp
if object_id(''tempdb..#tmp0'') is not null drop table #tmp0
if object_id(''tempdb..#tmp00'') is not null drop table #tmp00
if object_id(''tempdb..#tmp000'') is not null drop table #tmp000
if object_id(''tempdb..#tmp1'') is not null drop table #tmp1
if object_id(''tempdb..#tmp2'') is not null drop table #tmp2  
if object_id(''tempdb..#tmp3'') is not null drop table #tmp3
if object_id(''tempdb..#tmp4'') is not null drop table #tmp4
if object_id(''tempdb..#tmp5'') is not null drop table #tmp5
if object_id(''tempdb..#tmp6'') is not null drop table #tmp6
if object_id(''tempdb..#tmp7'') is not null drop table #tmp7
if object_id(''tempdb..#tmp8'') is not null drop table #tmp8
if object_id(''tempdb..#tmp9'') is not null drop table #tmp9
select distinct wddm into #tmp0 
   from AccountInfo 
   union
   select distinct jyhdm wddm from AccountTra 
order by wddm
select wddm into #tmp00
from bankinfo
group by wddm
having count(wddm)>1
order by wddm
select wddm,wdmc into #tmp000
from bankinfo 
where wddm not in (select wddm from #tmp00)
union
select wddm,''？''+wdmc wdmc from bankinfo 
where wddm in (select wddm from #tmp00)
order by wddm
select a.wddm,max(b.wdmc) wdmc into #tmp 
from #tmp0 a left join #tmp000 b
on a.wddm=b.wddm
group by a.wddm
order by a.wddm

--提取系统状态正常的基本账户tmp1
select distinct 账号 into #tmp1
from zhsys
where 状态=''正常'' and 账户性质 like ''基本%''
order by 账号

-- 提取账户表、交易表所有账号，合并到tmp2
select distinct jyzh zh into #tmp2  --提取有交易的单位账号 
  from AccountTra
  where zhbz=''1'' 
union
select distinct zh zh
  from AccountInfo 
  where zhbs=''1'' --提取单位交易账号
order by zh

--提取有系统信息或账户信息的账户#tmp3--------------------------------
select zh --从合并账户#tmp2中提取在系统中的账号--有系统信息
into #tmp3
from #tmp2
where zh in (select 账号 from #tmp1)
union
select zh --从合并账户#tmp2中提取游离系统之外且有账户信息的账户
from #tmp2
where (zh not in (select 账号 from zhsys group by 账号 having max(状态)=''正常'')) and (zh in (select zh from AccountInfo))
--#tmp3账户的交易情况#tmp4-----------------
select jyzh,count(jyzh) jybs,sum(case when (xzbz=''0'') then 1 else 0 end) xjbs,
       sum(case when (jdbz=''0'') then 1 else 0 end) dfbs,
       min(rq) rq1,max(rq) rq2,max(kxgsj) kxgsj,max(kxhbs) kxhbs
into #tmp4
from AccountTra
where jyzh in (select distinct zh from #tmp3)
group by jyzh
order by jyzh
--合并信息#tmp5------
select  a.zh 账号,c.wddm 网点代码,b.银行机构代码,d.wdmc 网点名称,b.银行机构名称,c.hm 户名,b.账户名称 系统户名,c.khh 客户号,c.zjhm 证件号,
       (CASE c.jszhxz WHEN ''0'' THEN ''基本'' WHEN ''1'' THEN ''一般'' WHEN ''2'' THEN ''专用''
         WHEN ''3'' THEN ''临时'' END) 账户性质,
        b.账户性质 系统账户性质,b.开户许可证核准号,b.开户日期 系统开户日期,b.销户日期 系统销户日期,
        (CASE c.zhbs WHEN ''0'' THEN ''个人''  WHEN ''1'' THEN ''单位''  END)  账户标识,
        c.kxgsj 开销户时间,
        (CASE c.kxhbs WHEN ''0'' THEN ''正常'' WHEN ''1'' THEN ''撤销'' WHEN ''2'' THEN ''变更''   END)  账户状态,
        b.状态 系统状态,
        e.rq1 最早交易时间,e.rq2 最迟交易时间,e.jybs 交易笔数,e.xjbs 现金交易笔数,e.dfbs 贷方笔数,
        e.kxgsj 交易表_开销户时间,(CASE e.kxhbs WHEN ''0'' THEN ''正常'' WHEN ''1'' THEN ''撤销'' WHEN ''2'' THEN ''变更''   END) 交易表_账户状态
into #tmp5
from #tmp3 a
left join zhsys b on a.zh=b.账号
left join AccountInfo c on a.zh=c.zh
left join #tmp d on c.wddm=d.wddm
left join #tmp4 e on a.zh=e.jyzh
where e.xjbs>0
----补齐系统户名
update #tmp5 set 开销户时间=交易表_开销户时间,账户状态=交易表_账户状态 where 开销户时间 is null
update #tmp5 set 系统户名=户名 where 系统户名 is null

--以户名为基础判断多头户
select 证件号,count(证件号) 户数
into #tmp6
from #tmp5
group by 证件号
having count(证件号)>2
set rowcount @row_num
select a.证件号,b.系统户名 户名,b.账号,网点代码,银行机构代码,网点名称,银行机构名称,客户号,开户许可证核准号,账户标识,
       账户性质,系统账户性质,账户状态,系统状态,开销户时间,系统开户日期,系统销户日期,最早交易时间,最迟交易时间,交易笔数,现金交易笔数
from #tmp6 a left join #tmp5 b on a.证件号=b.证件号
order by a.证件号
set rowcount 0
END
GO', NULL, 178, N'02030503', N'1', N'1', N'0', N'0', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (299, 315, N'6702疑似多头账户(客户号）', N'依客户号同一客户多个未备案账户都取现（按基本户使用），数据不完整难以发现，在使用其他检查功能时人工注意 隐藏', N'@返回行数!N:10000', N'CREATE PROCEDURE  P_ysdtzh_khh(@row_num int) AS
BEGIN
if object_id(''tempdb..#tmp'') is not null drop table #tmp
if object_id(''tempdb..#tmp0'') is not null drop table #tmp0
if object_id(''tempdb..#tmp00'') is not null drop table #tmp00
if object_id(''tempdb..#tmp000'') is not null drop table #tmp000
if object_id(''tempdb..#tmp1'') is not null drop table #tmp1
if object_id(''tempdb..#tmp2'') is not null drop table #tmp2  
if object_id(''tempdb..#tmp3'') is not null drop table #tmp3
if object_id(''tempdb..#tmp4'') is not null drop table #tmp4
if object_id(''tempdb..#tmp5'') is not null drop table #tmp5
if object_id(''tempdb..#tmp6'') is not null drop table #tmp6
if object_id(''tempdb..#tmp7'') is not null drop table #tmp7
if object_id(''tempdb..#tmp8'') is not null drop table #tmp8
if object_id(''tempdb..#tmp9'') is not null drop table #tmp9
select distinct wddm into #tmp0 
   from AccountInfo 
   union
   select distinct jyhdm wddm from AccountTra 
order by wddm
select wddm into #tmp00
from bankinfo
group by wddm
having count(wddm)>1
order by wddm
select wddm,wdmc into #tmp000
from bankinfo 
where wddm not in (select wddm from #tmp00)
union
select wddm,''？''+wdmc wdmc from bankinfo 
where wddm in (select wddm from #tmp00)
order by wddm
select a.wddm,max(b.wdmc) wdmc into #tmp 
from #tmp0 a left join #tmp000 b
on a.wddm=b.wddm
group by a.wddm
order by a.wddm

--提取系统状态正常的基本账户tmp1
select distinct 账号 into #tmp1
from zhsys
where 状态=''正常'' and 账户性质 like ''基本%''
order by 账号

-- 提取账户表、交易表所有账号，合并到tmp2
select distinct jyzh zh into #tmp2  --提取有交易的单位账号 
  from AccountTra
  where zhbz=''1'' 
union
select distinct zh zh
  from AccountInfo 
  where zhbs=''1'' --提取单位交易账号
order by zh

--提取有系统信息或账户信息的账户#tmp3--------------------------------
select zh --从合并账户#tmp2中提取在系统中的账号--有系统信息
into #tmp3
from #tmp2
where zh in (select 账号 from #tmp1)
union
select zh --从合并账户#tmp2中提取游离系统之外且有账户信息的账户
from #tmp2
where (zh not in (select 账号 from zhsys group by 账号 having max(状态)=''正常'')) and (zh in (select zh from AccountInfo))
--#tmp3账户的交易情况#tmp4-----------------
select jyzh,count(jyzh) jybs,sum(case when (xzbz=''0'') then 1 else 0 end) xjbs,
       sum(case when (jdbz=''0'') then 1 else 0 end) dfbs,
       min(rq) rq1,max(rq) rq2,max(kxgsj) kxgsj,max(kxhbs) kxhbs
into #tmp4
from AccountTra
where jyzh in (select distinct zh from #tmp3)
group by jyzh
order by jyzh
--合并信息#tmp5------
select  a.zh 账号,c.wddm 网点代码,b.银行机构代码,d.wdmc 网点名称,b.银行机构名称,c.hm 户名,b.账户名称 系统户名,c.khh 客户号,c.zjhm 证件号,
       (CASE c.jszhxz WHEN ''0'' THEN ''基本'' WHEN ''1'' THEN ''一般'' WHEN ''2'' THEN ''专用''
         WHEN ''3'' THEN ''临时'' END) 账户性质,
        b.账户性质 系统账户性质,b.开户许可证核准号,b.开户日期 系统开户日期,b.销户日期 系统销户日期,
        (CASE c.zhbs WHEN ''0'' THEN ''个人''  WHEN ''1'' THEN ''单位''  END)  账户标识,
        c.kxgsj 开销户时间,
        (CASE c.kxhbs WHEN ''0'' THEN ''正常'' WHEN ''1'' THEN ''撤销'' WHEN ''2'' THEN ''变更''   END)  账户状态,
        b.状态 系统状态,
        e.rq1 最早交易时间,e.rq2 最迟交易时间,e.jybs 交易笔数,e.xjbs 现金交易笔数,e.dfbs 贷方笔数,
        e.kxgsj 交易表_开销户时间,(CASE e.kxhbs WHEN ''0'' THEN ''正常'' WHEN ''1'' THEN ''撤销'' WHEN ''2'' THEN ''变更''   END) 交易表_账户状态
into #tmp5
from #tmp3 a
left join zhsys b on a.zh=b.账号
left join AccountInfo c on a.zh=c.zh
left join #tmp d on c.wddm=d.wddm
left join #tmp4 e on a.zh=e.jyzh
where e.xjbs>0
----补齐系统户名
update #tmp5 set 开销户时间=交易表_开销户时间,账户状态=交易表_账户状态 where 开销户时间 is null
update #tmp5 set 系统户名=户名 where 系统户名 is null

--以户名为基础判断多头户
select 客户号,count(客户号) 户数
into #tmp6
from #tmp5
group by 客户号
having count(客户号)>2
set rowcount @row_num
select a.客户号,b.系统户名 户名,b.账号,网点代码,银行机构代码,网点名称,银行机构名称,证件号,开户许可证核准号,账户标识,
       账户性质,系统账户性质,账户状态,系统状态,开销户时间,系统开户日期,系统销户日期,最早交易时间,最迟交易时间,交易笔数,现金交易笔数
from #tmp6 a left join #tmp5 b on a.客户号=b.客户号
order by a.客户号
set rowcount 0
END
GO', NULL, 179, N'02030504', N'1', N'1', N'0', N'0', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (298, 315, N'6701疑似多头账户(户名）', N'对筛选结果需人工分析和现场查看隐藏', N'@检查开始日期!D:20120101@检查结束日期!D:23130228@返回行数!N:10000', N'CREATE PROCEDURE  P_ysdtzh_hm(@bgn_date char(8),@end_date char(8),@row_num int) AS
BEGIN
--declare @bgn_date char(8)
--declare @end_date char(8)
--declare @row_num int
--declare @zh_len int
--declare @old_new_zh char(1)
--declare @inter_day int
--declare @cash int
--set @bgn_date=''20110101''
--set @end_date=''20120531''
--set @row_num=100000
--set @zh_len=12
--set @old_new_zh=''1''--''0''新旧不比对；‘1’比对（包含了旧账号的迟备案）
--set @inter_day=7
--set @cash=20

if object_id(''tempdb..#tmp'') is not null drop table #tmp
if object_id(''tempdb..#tmp0'') is not null drop table #tmp0
if object_id(''tempdb..#tmp00'') is not null drop table #tmp00
if object_id(''tempdb..#tmp000'') is not null drop table #tmp000
if object_id(''tempdb..#tmp1'') is not null drop table #tmp1
if object_id(''tempdb..#tmp2'') is not null drop table #tmp2  
if object_id(''tempdb..#tmp3'') is not null drop table #tmp3
if object_id(''tempdb..#tmp4'') is not null drop table #tmp4
if object_id(''tempdb..#tmp5'') is not null drop table #tmp5
if object_id(''tempdb..#tmp6'') is not null drop table #tmp6
if object_id(''tempdb..#tmp7'') is not null drop table #tmp7
if object_id(''tempdb..#tmp8'') is not null drop table #tmp8
if object_id(''tempdb..#tmp9'') is not null drop table #tmp9
select distinct wddm into #tmp0 
   from AccountInfo 
   union
   select distinct jyhdm wddm from AccountTra 
order by wddm
select wddm into #tmp00
from bankinfo
group by wddm
having count(wddm)>1
order by wddm
select wddm,wdmc into #tmp000
from bankinfo 
where wddm not in (select wddm from #tmp00)
union
select wddm,''？''+wdmc wdmc from bankinfo 
where wddm in (select wddm from #tmp00)
order by wddm
select a.wddm,max(b.wdmc) wdmc into #tmp 
from #tmp0 a left join #tmp000 b
on a.wddm=b.wddm
group by a.wddm
order by a.wddm

--提取系统状态正常和撤户日期在检查期内的基本账户tmp1
select distinct a.账号,a.账户名称 户名,a.账户性质 性质,CONVERT(date,a.开户日期) 开户,CONVERT(date,a.销户日期) 销户,
                CONVERT(date,a.久悬日期) 久悬,b.khh 客户号,b.zjhm 证件号
into #tmp1
from zhsys a
left join AccountInfo b on a.账号=b.zh
where (状态=''正常'' or CONVERT(date,销户日期)>CONVERT(date,@bgn_date) or CONVERT(date,久悬日期)>CONVERT(date,@bgn_date)) 
      and (账户性质 like ''基本%'' or 账户性质 like ''%临时%'')
order by 账号 

--select * from #tmp1 
--where 账号=''34001635308053000701''

--提取账户表中基本、临时、（正常或撤户日期在检查期内）、不在账户系统数据
select a.zh 账号,a.hm 户名,
      (CASE a.jszhxz WHEN ''0'' THEN ''基本'' WHEN ''1'' THEN ''一般'' WHEN ''2'' THEN ''非预算'' WHEN ''3'' THEN ''临时'' WHEN ''4'' THEN ''预算'' END) 性质,
      CONVERT(date,a.khsj) 开户,CONVERT(date,a.xhsj) 销户,
        null 久悬,a.khh 客户号,a.zjhm 证件号
        into #tmp2 
        from AccountInfo a
        where zhbs=''1'' and (a.jszhxz=''0'' or a.jszhxz=''3'') 
              and (a.kxhbs=''0'' or (a.kxhbs=''1'' and CONVERT(date,a.xhsj)>CONVERT(date,@bgn_date))) 
              and a.zh not in (select distinct 账号 from #tmp1)
union
select * from #tmp1 

--每个账号只保留一个
select left(账号,20) 账号 ,MAX(户名) 户名, MAX(客户号) 客户号,MAX(证件号) 证件号
into #tmp3
from #tmp2
group by left(账号,20)

--依据户名判断多头
select 户名 
into #tmp4
from #tmp3
group by 户名
having COUNT(户名)>1
--提取多头的账号
select b.账号
into #tmp5
from #tmp4 a
left join #tmp3 b on a.户名=b.户名
--这些账号的交易情况
select jyzh,count(jyzh) jybs,sum(case when (jdbz=''0'' and xzbz=''0'') then 1 else 0 end) dfxj,
       sum(case when (jdbz=''1'' and xzbz=''0'') then 1 else 0 end) jfxj
into #tmp6
from AccountTra
where jyzh in (select distinct 账号 from #tmp5)
group by jyzh
order by jyzh

--合并信息#tmp7------
select  b.账号 系统账号,b.账户名称 系统户名,b.银行机构代码 银行代码,b.银行机构名称 银行名称,b.账户性质 系统性质,b.开户许可证核准号 核准号,
        CONVERT(date,b.开户日期) 系统开户,(case len(b.销户日期) when 0 then null else CONVERT(date,b.销户日期) end) 系统销户,
       (case len(b.久悬日期) when 0 then null else CONVERT(date,b.久悬日期) end) 系统久悬,b.状态 系统状态,       
        c.zh 账号,c.wddm 网点号,d.wdmc 网点名,c.hm 户名,c.khh 客户号,c.zjhm 证件号,
        (CASE c.zhbs WHEN ''0'' THEN ''个人''  WHEN ''1'' THEN ''单位''  END)  标识, 
        (CASE c.jszhxz WHEN ''0'' THEN ''基本'' WHEN ''1'' THEN ''一般'' WHEN ''2'' THEN ''非预算''
         WHEN ''3'' THEN ''临时'' WHEN ''4'' THEN ''预算'' END) 性质,
         CONVERT(date,c.khsj) 开户,CONVERT(date,c.xhsj) 销户,
        (CASE c.kxhbs WHEN ''0'' THEN ''正常'' WHEN ''1'' THEN ''撤销'' WHEN ''2'' THEN ''变更'' WHEN ''3'' THEN ''久悬''  END)  状态,
         e.jybs 笔数,e.dfxj 存现,e.jfxj 取现    
into #tmp7
from #tmp5 a
left join Zhsys b on a.账号=b.账号 
left join AccountInfo c on a.账号=c.zh
left join #tmp d on c.wddm=d.wddm
left join #tmp6 e on a.账号=e.jyzh

set rowcount @row_num
select  网点号,网点名,户名,系统户名,客户号,证件号,账号,系统账号,银行代码,银行名称,性质,系统性质,核准号,笔数,存现,取现
        开户,系统开户,销户,系统销户,系统久悬,状态,系统状态
        from  #tmp7
        order by 户名
set rowcount 0
END
GO', NULL, 180, N'02030505', N'1', N'1', N'0', N'0', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (321, 90, N'6.核准或备案信息一致性情况', N'功能描述：隐藏', N'@提示1!参数类型1:默认值1@提示2!参数类型2:默认值2', N'CREATE PROCEDURE      AS
BEGIN

END
GO', NULL, 181, N'020306', N'0', N'0', N'0', N'0', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (322, 321, N'已核准或备案但未在业务系统开立', N'功能描述：隐藏', N'@提示1!参数类型1:默认值1@提示2!参数类型2:默认值2', N'CREATE PROCEDURE      AS
BEGIN

END
GO', NULL, 182, N'02030601', N'1', N'1', N'0', N'0', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (521, 0, N'人行单位账户查询', N'', N'@提示1!参数类型1:默认值1@提示2!参数类型2:默认值2', N'CREATE PROCEDURE      AS
BEGIN

END
GO', NULL, 700, N'07', N'0', N'0', N'0', N'1', N'1', N'1')
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (129, 521, N'人行单位账户查询_单位证件号', N'', N'@全国统一社会信用代码(证件号)!S:91340100MA2TBHT75A', N'CREATE PROCEDURE Pd_rhzh_zjh(@s_zjh VARCHAR(60))
WITH ENCRYPTION
AS
  BEGIN
    IF Object_id(N''tb_rhzh_dw'', N''U'') IS NOT NULL
      BEGIN
        SELECT a.银行机构代码,
               b.银行机构名称,
               [存款人编号],
               [存款人类别],
               [存款人名称],
               [注册地地区代码],
               [存款人身份证件种类],
               [存款人身份证件编号],
               [工商营业执照有效期],
               [组织机构代码],
               [注册资金币种],
               [注册资金金额],
               [无需办理税务登记的证明文件编号],
               [存款人状态],
               [国税登记证号],
               [地税登记证号],
               [经营范围],
               [地址],
               [邮编],
               [联系电话],
               [法定代表人或负责人姓名],
               [法定代表人或负责人身份证件种类],
               [法定代表人或负责人身份证件编号],
               [上级单位名称],
               [上级法人基本存款账户开户许可证核准号],
               [上级法定代表人或负责人证件种类],
               [上级法定代表人或负责人姓名],
               [上级法人组织机构代码],
               [上级法定代表人或负责人证件编号],
               [存款人证明文件2种类],
               [存款人证明文件2编号],
               [存款人证明文件1种类],
               [社会信用代码],
               --[银行机构代码],
               [账户性质],
               [账号],
               [账户名称],
               [账户证明文件1种类],
               [账户证明文件1编号],
               [账户证明文件2种类],
               [账户证明文件2编号],
               [开户日期],
               [销户原因],
               [久悬日期],
               [销户日期],
               [账户状态],
               [账户开户地地区代码],
               [基本存款账户开户地地区代码],
               [账户所在人民银行机构代码],
               [基本存款账户开户许可证核准号],
               [开户许可证核准号],
               [账户名称前缀],
               [账户名称后缀],
               [资金性质代码],
               [可否取现],
               [部门或资金管理人名称],
               [部门或资金管理人负责人姓名],
               [部门或资金管理人证件种类],
               [部门或资金管理人证件编号],
               [部门或资金管理人电话],
               [部门或资金管理人邮编],
               [部门或资金管理人地址],
               [临时存款账户有效期],
               [临时存款账户开户原因],
               [备注]
        FROM   tb_rhzh_dw a
               LEFT JOIN v_bank b
                      ON a.银行机构代码 = b.银行编码或代码
        WHERE  Trim([社会信用代码]) LIKE ''%'' + @s_zjh + ''%''
        ORDER  BY 账号
      END
    ELSE
      BEGIN
        SELECT ''×账户管理系统单位账户数据未导入'' 注意
      END
  END
GO', NULL, 703, N'0703', N'0', N'0', N'0', N'1', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (283, 521, N'浏览系统账户信息', N'浏览指定行数的账户信息，查看总体状况', N'@返回行数!N:10', N'CREATE PROCEDURE P_brow_zhsys (@row_num int) WITH ENCRYPTION AS
BEGIN
if object_id(N''tb_rhzh_dw'',N''U'') is not null 
begin
set rowcount @row_num
select * from v_rhzh_dw
set rowcount 0
end
else
begin
select ''×账户管理系统单位账户数据未导入'' 注意
end
END
GO', NULL, 701, N'0701', N'0', N'0', N'0', N'1', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (281, 521, N'人行单位账户查询_经营范围', N'', N'@经营范围!S:贸易@返回行数!N:100', N'CREATE PROCEDURE PD_rhzh_jyfw(@jyfw VARCHAR(60), @row_num  INT)
WITH ENCRYPTION
AS
  BEGIN
    IF Object_id(N''tb_rhzh_dw'', N''U'') IS NOT NULL
      BEGIN
        SET ROWCOUNT @row_num
        SELECT a.银行机构代码,
               b.银行机构名称,
               [存款人编号],
               [存款人类别],
               [存款人名称],
               [注册地地区代码],
               [存款人身份证件种类],
               [存款人身份证件编号],
               [工商营业执照有效期],
               [组织机构代码],
               [注册资金币种],
               [注册资金金额],
               [无需办理税务登记的证明文件编号],
               [存款人状态],
               [国税登记证号],
               [地税登记证号],
               [经营范围],
               [地址],
               [邮编],
               [联系电话],
               [法定代表人或负责人姓名],
               [法定代表人或负责人身份证件种类],
               [法定代表人或负责人身份证件编号],
               [上级单位名称],
               [上级法人基本存款账户开户许可证核准号],
               [上级法定代表人或负责人证件种类],
               [上级法定代表人或负责人姓名],
               [上级法人组织机构代码],
               [上级法定代表人或负责人证件编号],
               [存款人证明文件2种类],
               [存款人证明文件2编号],
               [存款人证明文件1种类],
               [社会信用代码],
               --[银行机构代码],
               [账户性质],
               [账号],
               [账户名称],
               [账户证明文件1种类],
               [账户证明文件1编号],
               [账户证明文件2种类],
               [账户证明文件2编号],
               [开户日期],
               [销户原因],
               [久悬日期],
               [销户日期],
               [账户状态],
               [账户开户地地区代码],
               [基本存款账户开户地地区代码],
               [账户所在人民银行机构代码],
               [基本存款账户开户许可证核准号],
               [开户许可证核准号],
               [账户名称前缀],
               [账户名称后缀],
               [资金性质代码],
               [可否取现],
               [部门或资金管理人名称],
               [部门或资金管理人负责人姓名],
               [部门或资金管理人证件种类],
               [部门或资金管理人证件编号],
               [部门或资金管理人电话],
               [部门或资金管理人邮编],
               [部门或资金管理人地址],
               [临时存款账户有效期],
               [临时存款账户开户原因],
               [备注]
        FROM   tb_rhzh_dw a
               LEFT JOIN v_bank b
                      ON a.银行机构代码 = b.银行编码或代码
        WHERE  Trim([经营范围]) LIKE ''%'' + @jyfw + ''%''
        ORDER  BY 银行机构代码
        SET ROWCOUNT 0
      END
    ELSE
      BEGIN
        SELECT ''×账户管理系统单位账户数据未导入'' 注意
      END
  END
GO 
', NULL, 709, N'0709', N'0', N'0', N'0', N'1', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (284, 521, N'人行单位账户查询_地址', N'参数分别输入：正常、撤销、久悬。', N'@地址!S:正常@返回行数!N:100', N'CREATE PROCEDURE PD_rhzh_dz(@dz VARCHAR(60), @row_num  INT)
WITH ENCRYPTION
AS
  BEGIN
    IF Object_id(N''tb_rhzh_dw'', N''U'') IS NOT NULL
      BEGIN
        SET ROWCOUNT @row_num
        SELECT a.银行机构代码,
               b.银行机构名称,
               [存款人编号],
               [存款人类别],
               [存款人名称],
               [注册地地区代码],
               [存款人身份证件种类],
               [存款人身份证件编号],
               [工商营业执照有效期],
               [组织机构代码],
               [注册资金币种],
               [注册资金金额],
               [无需办理税务登记的证明文件编号],
               [存款人状态],
               [国税登记证号],
               [地税登记证号],
               [经营范围],
               [地址],
               [邮编],
               [联系电话],
               [法定代表人或负责人姓名],
               [法定代表人或负责人身份证件种类],
               [法定代表人或负责人身份证件编号],
               [上级单位名称],
               [上级法人基本存款账户开户许可证核准号],
               [上级法定代表人或负责人证件种类],
               [上级法定代表人或负责人姓名],
               [上级法人组织机构代码],
               [上级法定代表人或负责人证件编号],
               [存款人证明文件2种类],
               [存款人证明文件2编号],
               [存款人证明文件1种类],
               [社会信用代码],
               --[银行机构代码],
               [账户性质],
               [账号],
               [账户名称],
               [账户证明文件1种类],
               [账户证明文件1编号],
               [账户证明文件2种类],
               [账户证明文件2编号],
               [开户日期],
               [销户原因],
               [久悬日期],
               [销户日期],
               [账户状态],
               [账户开户地地区代码],
               [基本存款账户开户地地区代码],
               [账户所在人民银行机构代码],
               [基本存款账户开户许可证核准号],
               [开户许可证核准号],
               [账户名称前缀],
               [账户名称后缀],
               [资金性质代码],
               [可否取现],
               [部门或资金管理人名称],
               [部门或资金管理人负责人姓名],
               [部门或资金管理人证件种类],
               [部门或资金管理人证件编号],
               [部门或资金管理人电话],
               [部门或资金管理人邮编],
               [部门或资金管理人地址],
               [临时存款账户有效期],
               [临时存款账户开户原因],
               [备注]
        FROM   tb_rhzh_dw a
               LEFT JOIN v_bank b
                      ON a.银行机构代码 = b.银行编码或代码
        WHERE  Trim(地址) LIKE ''%'' + @dz + ''%''
        ORDER  BY 银行机构代码
        SET ROWCOUNT 0
      END
    ELSE
      BEGIN
        SELECT ''×账户管理系统单位账户数据未导入'' 注意
      END
  END
GO 
', NULL, 710, N'0710', N'0', N'0', N'0', N'1', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (270, 521, N'人行单位账户查询_银行机构代码', N'', N'@银行机构代码!S:104364000093@账户状态（9所有、1正常、2销户、3久悬）!S:9@返回行数!N:100', N'CREATE PROCEDURE Pd_rhzh_bankcode(@s_Bank_Code VARCHAR(12),@close_type VARCHAR(1),@row_num INT)
WITH ENCRYPTION
AS
  BEGIN
    IF Object_id(N''tb_rhzh_dw'', N''U'') IS NOT NULL
      BEGIN
        SET ROWCOUNT @row_num
        SELECT a.银行机构代码,
               b.银行机构名称,
               [存款人编号],
               [存款人类别],
               [存款人名称],
               [注册地地区代码],
               [存款人身份证件种类],
               [存款人身份证件编号],
               [工商营业执照有效期],
               [组织机构代码],
               [注册资金币种],
               [注册资金金额],
               [无需办理税务登记的证明文件编号],
               [存款人状态],
               [国税登记证号],
               [地税登记证号],
               [经营范围],
               [地址],
               [邮编],
               [联系电话],
               [法定代表人或负责人姓名],
               [法定代表人或负责人身份证件种类],
               [法定代表人或负责人身份证件编号],
               [上级单位名称],
               [上级法人基本存款账户开户许可证核准号],
               [上级法定代表人或负责人证件种类],
               [上级法定代表人或负责人姓名],
               [上级法人组织机构代码],
               [上级法定代表人或负责人证件编号],
               [存款人证明文件2种类],
               [存款人证明文件2编号],
               [存款人证明文件1种类],
               [社会信用代码],
               --[银行机构代码],
               [账户性质],
               [账号],
               [账户名称],
               [账户证明文件1种类],
               [账户证明文件1编号],
               [账户证明文件2种类],
               [账户证明文件2编号],
               [开户日期],
               [销户原因],
               [久悬日期],
               [销户日期],
               [账户状态],
               [账户开户地地区代码],
               [基本存款账户开户地地区代码],
               [账户所在人民银行机构代码],
               [基本存款账户开户许可证核准号],
               [开户许可证核准号],
               [账户名称前缀],
               [账户名称后缀],
               [资金性质代码],
               [可否取现],
               [部门或资金管理人名称],
               [部门或资金管理人负责人姓名],
               [部门或资金管理人证件种类],
               [部门或资金管理人证件编号],
               [部门或资金管理人电话],
               [部门或资金管理人邮编],
               [部门或资金管理人地址],
               [临时存款账户有效期],
               [临时存款账户开户原因],
               [备注]
        FROM   tb_rhzh_dw a
               LEFT JOIN v_bank b
                      ON a.银行机构代码 = b.银行编码或代码
        WHERE  Trim(银行机构代码) LIKE ''%'' + @s_Bank_Code + ''%''
               AND ( 账户状态 LIKE( CASE
                                  WHEN @close_type = ''1'' THEN ''正常''
                                  WHEN @close_type = ''2'' THEN ''撤销''
                                  WHEN @close_type = ''3'' THEN ''久悬''
                                  WHEN @close_type = ''9'' THEN ''%''
                                END ) )
        ORDER  BY 账户名称
        SET ROWCOUNT 0
      END
    ELSE
      BEGIN
        SELECT ''×账户管理系统单位账户数据未导入'' 注意
      END
  END
GO ', NULL, 711, N'0711', N'0', N'0', N'0', N'1', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (286, 521, N'账号位数分布情况', N'查询账户系统中保存账户的账号最小长度和最大长度，已确定比对时账号位数', N'', N'CREATE PROCEDURE Pd_zh_len
WITH ENCRYPTION
AS
  BEGIN
    IF Object_id(N''tb_rhzh_dw'', N''U'') IS NOT NULL
      BEGIN
        SELECT Len(账号) 账号长度,
               Count(账号) 此长度的账号数量
        FROM   v_rhzh_dw
        GROUP  BY Len(账号)
        ORDER  BY Len(账号)
      END
    ELSE
      BEGIN
        SELECT ''×账户管理系统单位账户数据未导入'' 注意
      END
  END
GO ', NULL, 712, N'0712', N'0', N'0', N'0', N'1', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (267, 521, N'人行单位账户查询_1个名称关键字', N'根据账户名称模糊查询账户信息（根据一个关键字）', N'@账户名称!S:合肥毅遂企业管理有限公司@返回行数!N:10000', N'CREATE PROCEDURE Pd_rhzh_acc_name1(@acc_name VARCHAR(60),@row_num INT)
WITH ENCRYPTION
AS
  BEGIN
    IF Object_id(N''tb_rhzh_dw'', N''U'') IS NOT NULL
      BEGIN
        SET ROWCOUNT @row_num
        SELECT a.银行机构代码,
               b.银行机构名称,
               [存款人编号],
               [存款人类别],
               [存款人名称],
               [注册地地区代码],
               [存款人身份证件种类],
               [存款人身份证件编号],
               [工商营业执照有效期],
               [组织机构代码],
               [注册资金币种],
               [注册资金金额],
               [无需办理税务登记的证明文件编号],
               [存款人状态],
               [国税登记证号],
               [地税登记证号],
               [经营范围],
               [地址],
               [邮编],
               [联系电话],
               [法定代表人或负责人姓名],
               [法定代表人或负责人身份证件种类],
               [法定代表人或负责人身份证件编号],
               [上级单位名称],
               [上级法人基本存款账户开户许可证核准号],
               [上级法定代表人或负责人证件种类],
               [上级法定代表人或负责人姓名],
               [上级法人组织机构代码],
               [上级法定代表人或负责人证件编号],
               [存款人证明文件2种类],
               [存款人证明文件2编号],
               [存款人证明文件1种类],
               [社会信用代码],
               --[银行机构代码],
               [账户性质],
               [账号],
               [账户名称],
               [账户证明文件1种类],
               [账户证明文件1编号],
               [账户证明文件2种类],
               [账户证明文件2编号],
               [开户日期],
               [销户原因],
               [久悬日期],
               [销户日期],
               [账户状态],
               [账户开户地地区代码],
               [基本存款账户开户地地区代码],
               [账户所在人民银行机构代码],
               [基本存款账户开户许可证核准号],
               [开户许可证核准号],
               [账户名称前缀],
               [账户名称后缀],
               [资金性质代码],
               [可否取现],
               [部门或资金管理人名称],
               [部门或资金管理人负责人姓名],
               [部门或资金管理人证件种类],
               [部门或资金管理人证件编号],
               [部门或资金管理人电话],
               [部门或资金管理人邮编],
               [部门或资金管理人地址],
               [临时存款账户有效期],
               [临时存款账户开户原因],
               [备注]
        FROM   tb_rhzh_dw a
               LEFT JOIN v_bank b
                      ON a.银行机构代码 = b.银行编码或代码
        WHERE  Trim(账户名称) LIKE ''%'' + @acc_name + ''%''
        ORDER  BY 银行机构代码
        SET ROWCOUNT 0
      END
    ELSE
      BEGIN
        SELECT ''×账户管理系统单位账户数据未导入'' 注意
      END
  END
GO ', NULL, 704, N'0704', N'0', N'0', N'0', N'1', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (268, 521, N'人行单位账户查询_2个名称关键字', N'根据账户名称模糊查询账户信息（根据两个关键字）', N'@账户名称关键字1!S:寿县@账户名称关键字2!S:公司@返回行数!N:200', N'CREATE PROCEDURE Pd_rhzh_acc_name2(@acc_name1 VARCHAR(60),@acc_name2 VARCHAR(60),@row_num INT)
WITH ENCRYPTION
AS
  BEGIN
    IF Object_id(N''tb_rhzh_dw'', N''U'') IS NOT NULL
      BEGIN
        SET ROWCOUNT @row_num
        SELECT a.银行机构代码,
               b.银行机构名称,
               [存款人编号],
               [存款人类别],
               [存款人名称],
               [注册地地区代码],
               [存款人身份证件种类],
               [存款人身份证件编号],
               [工商营业执照有效期],
               [组织机构代码],
               [注册资金币种],
               [注册资金金额],
               [无需办理税务登记的证明文件编号],
               [存款人状态],
               [国税登记证号],
               [地税登记证号],
               [经营范围],
               [地址],
               [邮编],
               [联系电话],
               [法定代表人或负责人姓名],
               [法定代表人或负责人身份证件种类],
               [法定代表人或负责人身份证件编号],
               [上级单位名称],
               [上级法人基本存款账户开户许可证核准号],
               [上级法定代表人或负责人证件种类],
               [上级法定代表人或负责人姓名],
               [上级法人组织机构代码],
               [上级法定代表人或负责人证件编号],
               [存款人证明文件2种类],
               [存款人证明文件2编号],
               [存款人证明文件1种类],
               [社会信用代码],
               --[银行机构代码],
               [账户性质],
               [账号],
               [账户名称],
               [账户证明文件1种类],
               [账户证明文件1编号],
               [账户证明文件2种类],
               [账户证明文件2编号],
               [开户日期],
               [销户原因],
               [久悬日期],
               [销户日期],
               [账户状态],
               [账户开户地地区代码],
               [基本存款账户开户地地区代码],
               [账户所在人民银行机构代码],
               [基本存款账户开户许可证核准号],
               [开户许可证核准号],
               [账户名称前缀],
               [账户名称后缀],
               [资金性质代码],
               [可否取现],
               [部门或资金管理人名称],
               [部门或资金管理人负责人姓名],
               [部门或资金管理人证件种类],
               [部门或资金管理人证件编号],
               [部门或资金管理人电话],
               [部门或资金管理人邮编],
               [部门或资金管理人地址],
               [临时存款账户有效期],
               [临时存款账户开户原因],
               [备注]
        FROM   tb_rhzh_dw a
               LEFT JOIN v_bank b
                      ON a.银行机构代码 = b.银行编码或代码
        WHERE  Trim(账户名称) LIKE ''%'' + @acc_name1 + ''%''
               AND Trim(账户名称) LIKE ''%'' + @acc_name2 + ''%''
        ORDER  BY 银行机构代码
        SET ROWCOUNT 0
      END
    ELSE
      BEGIN
        SELECT ''×账户管理系统单位账户数据未导入'' 注意
      END
  END
GO ', NULL, 705, N'0705', N'0', N'0', N'0', N'1', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (15, 521, N'.账户系统操作日志查询x', N'', N'', NULL, NULL, 714, N'0714', N'0', N'0', N'0', N'0', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (154, 15, N'2208比对商行和人行账号位数一致性', N'比对检查数据和账户系统数据账号位数情况，分析数据提供的准确性', N'', N'CREATE PROCEDURE P_acc_zhws WITH ENCRYPTION AS
BEGIN
if object_id(''tempdb..#tmp1'') is not null drop table #tmp1
if object_id(''tempdb..#tmp2'') is not null drop table #tmp2  
declare @len1 int
declare @len2 int
set rowcount 100
select len(acc_no) 商行数据账号长度,count(acc_no) 商行数据账号数量 into #tmp1
from tb_acc 
group by len(acc_no)
order by len(acc_no)
set @len1=@@rowcount
select len(账号) 人行数据账号长度,count(账号) 人行数据账号数量 into #tmp2
from zhsys 
group by len(账号)
order by len(账号)
set @len2=@@rowcount
if @len1>@len2
select * from #tmp1 left join #tmp2 on 商行数据账号长度=人行数据账号长度
else
select * from #tmp1 right join #tmp2 on 商行数据账号长度=人行数据账号长度
set rowcount 0
END
GO', NULL, 716, N'071402', N'0', N'0', N'0', N'0', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (20, 15, N'2207商行交易表有关交易统计', N'统计人民币交易表中各类数据，如某一数据为0，可能采集数据有问题（0金额交易数量应为0）', N'', N'CREATE PROCEDURE P_rmb_data_err WITH ENCRYPTION AS
BEGIN
if object_id(''tempdb..#tmp'') is not null drop table #tmp
declare @rmb_cnt_all int  
declare @rmb_jf_cnt int   
declare @rmb_df_cnt int  
declare @rmb_ent_cnt int  
declare @rmb_per_cnt int 
declare @rmb_tsf_cnt int 
declare @rmb_cash_cnt int 
declare @rmb_amt_cnt int 
select distinct acc_no,acc_type into #tmp
  from tb_acc
set @rmb_cnt_all=(select count(*)  from v_txn)
set @rmb_jf_cnt=(select count(*)  from v_txn where 借贷=''借'')
set @rmb_df_cnt=(select count(*)  from v_txn where 借贷=''贷'')
set @rmb_ent_cnt=(select count(*)  from v_txn a left join #tmp b on a.账号=b.acc_no where b.acc_type=''1'')
set @rmb_per_cnt=(select count(*)  from v_txn a left join #tmp b on a.账号=b.acc_no where b.acc_type=''0'')
set @rmb_tsf_cnt=(select count(*)  from v_txn where 现转=''转账'')
set @rmb_cash_cnt=(select count(*)  from v_txn where 现转=''现金'')
set @rmb_amt_cnt=(select count(*)  from v_txn where 金额<=0)
select  @rmb_cnt_all 交易数,
@rmb_jf_cnt  借方数 ,
@rmb_df_cnt 贷方数,
--@rmb_ent_cnt 单位数,
--@rmb_per_cnt 个人数,
@rmb_tsf_cnt 转账数,
@rmb_cash_cnt 现金数,
@rmb_amt_cnt 交易金额为0数
END
GO', NULL, 715, N'071401', N'0', N'0', N'0', N'0', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (116, 521, N'人行单位账户查询_联系电话', N'', N'@联系电话!S:0@返回行数!N:5', N'CREATE PROCEDURE PD_rhzh_lxdh(@lxdh VARCHAR(60), @row_num  INT)
WITH ENCRYPTION
AS
  BEGIN
    IF Object_id(N''tb_rhzh_dw'', N''U'') IS NOT NULL
      BEGIN
        SET ROWCOUNT @row_num
        SELECT a.银行机构代码,
               b.银行机构名称,
               [存款人编号],
               [存款人类别],
               [存款人名称],
               [注册地地区代码],
               [存款人身份证件种类],
               [存款人身份证件编号],
               [工商营业执照有效期],
               [组织机构代码],
               [注册资金币种],
               [注册资金金额],
               [无需办理税务登记的证明文件编号],
               [存款人状态],
               [国税登记证号],
               [地税登记证号],
               [经营范围],
               [地址],
               [邮编],
               [联系电话],
               [法定代表人或负责人姓名],
               [法定代表人或负责人身份证件种类],
               [法定代表人或负责人身份证件编号],
               [上级单位名称],
               [上级法人基本存款账户开户许可证核准号],
               [上级法定代表人或负责人证件种类],
               [上级法定代表人或负责人姓名],
               [上级法人组织机构代码],
               [上级法定代表人或负责人证件编号],
               [存款人证明文件2种类],
               [存款人证明文件2编号],
               [存款人证明文件1种类],
               [社会信用代码],
               --[银行机构代码],
               [账户性质],
               [账号],
               [账户名称],
               [账户证明文件1种类],
               [账户证明文件1编号],
               [账户证明文件2种类],
               [账户证明文件2编号],
               [开户日期],
               [销户原因],
               [久悬日期],
               [销户日期],
               [账户状态],
               [账户开户地地区代码],
               [基本存款账户开户地地区代码],
               [账户所在人民银行机构代码],
               [基本存款账户开户许可证核准号],
               [开户许可证核准号],
               [账户名称前缀],
               [账户名称后缀],
               [资金性质代码],
               [可否取现],
               [部门或资金管理人名称],
               [部门或资金管理人负责人姓名],
               [部门或资金管理人证件种类],
               [部门或资金管理人证件编号],
               [部门或资金管理人电话],
               [部门或资金管理人邮编],
               [部门或资金管理人地址],
               [临时存款账户有效期],
               [临时存款账户开户原因],
               [备注]
        FROM   tb_rhzh_dw a
               LEFT JOIN v_bank b
                      ON a.银行机构代码 = b.银行编码或代码
        WHERE  Trim(联系电话) LIKE ''%'' + @lxdh + ''%''
        ORDER  BY 银行机构代码
        SET ROWCOUNT 0
      END
    ELSE
      BEGIN
        SELECT ''×账户管理系统单位账户数据未导入'' 注意
      END
  END
GO 
', NULL, 708, N'0708', N'0', N'0', N'0', N'1', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (153, 521, N'人行单位账户查询_法人代表证件号', N'', N'@法人代表证件号!S:A123427377@返回行数!N:5', N'CREATE PROCEDURE PD_rhzh_fr_zjh(@fr_zjh VARCHAR(60), @row_num  INT)
WITH ENCRYPTION
AS
  BEGIN
    IF Object_id(N''tb_rhzh_dw'', N''U'') IS NOT NULL
      BEGIN
        SET ROWCOUNT @row_num
        SELECT a.银行机构代码,
               b.银行机构名称,
               [存款人编号],
               [存款人类别],
               [存款人名称],
               [注册地地区代码],
               [存款人身份证件种类],
               [存款人身份证件编号],
               [工商营业执照有效期],
               [组织机构代码],
               [注册资金币种],
               [注册资金金额],
               [无需办理税务登记的证明文件编号],
               [存款人状态],
               [国税登记证号],
               [地税登记证号],
               [经营范围],
               [地址],
               [邮编],
               [联系电话],
               [法定代表人或负责人姓名],
               [法定代表人或负责人身份证件种类],
               [法定代表人或负责人身份证件编号],
               [上级单位名称],
               [上级法人基本存款账户开户许可证核准号],
               [上级法定代表人或负责人证件种类],
               [上级法定代表人或负责人姓名],
               [上级法人组织机构代码],
               [上级法定代表人或负责人证件编号],
               [存款人证明文件2种类],
               [存款人证明文件2编号],
               [存款人证明文件1种类],
               [社会信用代码],
               --[银行机构代码],
               [账户性质],
               [账号],
               [账户名称],
               [账户证明文件1种类],
               [账户证明文件1编号],
               [账户证明文件2种类],
               [账户证明文件2编号],
               [开户日期],
               [销户原因],
               [久悬日期],
               [销户日期],
               [账户状态],
               [账户开户地地区代码],
               [基本存款账户开户地地区代码],
               [账户所在人民银行机构代码],
               [基本存款账户开户许可证核准号],
               [开户许可证核准号],
               [账户名称前缀],
               [账户名称后缀],
               [资金性质代码],
               [可否取现],
               [部门或资金管理人名称],
               [部门或资金管理人负责人姓名],
               [部门或资金管理人证件种类],
               [部门或资金管理人证件编号],
               [部门或资金管理人电话],
               [部门或资金管理人邮编],
               [部门或资金管理人地址],
               [临时存款账户有效期],
               [临时存款账户开户原因],
               [备注]
        FROM   tb_rhzh_dw a
               LEFT JOIN v_bank b
                      ON a.银行机构代码 = b.银行编码或代码
        WHERE  Trim([法定代表人或负责人身份证件编号]) LIKE ''%'' + @fr_zjh + ''%''
        ORDER  BY 银行机构代码
        SET ROWCOUNT 0
      END
    ELSE
      BEGIN
        SELECT ''×账户管理系统单位账户数据未导入'' 注意
      END
  END
GO 
', NULL, 707, N'0707', N'0', N'0', N'0', N'1', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (520, 521, N'操作日志查询_账号', N'根据账号查询操作日志', N'@账号!S:1021701021000849487', N'CREATE PROCEDURE P_log_from_acc_no(@s_acc_no VARCHAR(60))
WITH ENCRYPTION
AS
  BEGIN
    IF Object_id(N''tb_log'', N''U'') IS NOT NULL
      BEGIN
        SELECT *
        FROM   tb_log
        WHERE  账号 = @s_acc_no
      END
    ELSE
      BEGIN
        SELECT ''×账户管理系统日志数据未导入'' 注意
      END
  END
GO ', NULL, 713, N'0713', N'1', N'1', N'0', N'1', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (571, 304, N'.黑名单生成与查询', N'名称、证件号、手机号码、来源（银行监测排查、共享机制共享、公安部发放）、包含账户数和状态（单位和个人）', N'@提示1!参数类型1:默认值1@提示2!参数类型2:默认值2', N'CREATE PROCEDURE      AS
BEGIN

END
GO', NULL, 610, N'0602', N'1', N'1', N'0', N'1', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (513, 0, N'银行机构代码或金融机构编码查询', N'', N'@提示1!参数类型1:默认值1@提示2!参数类型2:默认值2', N'CREATE PROCEDURE      AS
BEGIN

END
GO', NULL, 900, N'09', N'0', N'0', N'0', N'1', N'1', N'1')
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (514, 513, N'银行代码查询（代码模糊）', N'银行机构代码或金融机构编码查询银行机构信息（模糊查询）', N'@银行机构代码（模糊）!S:3640', N'CREATE PROCEDURE P_bank_code (@bank_code varchar(14),@bank_name varchar(60)) WITH ENCRYPTION AS
BEGIN
select [银行编码或代码]
      ,[银行机构名称]
      ,[机构所在省]
      ,[机构所在地区]
      ,[机构所在城市]
      ,[行别] from [HNXLSYS].[dbo].[tb_bank] where 银行编码或代码  like ''%''+@bank_code+''%''and 银行机构名称 like ''%''+@bank_name+''%''
END
GO', NULL, 906, N'0903', N'0', N'0', N'0', N'0', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (517, 513, N'银行代码查询（名称模糊）', N'', N'@银行机构名称（模糊）!S:工商', N'CREATE PROCEDURE P_bank_name (@bank_name varchar(60)) WITH ENCRYPTION AS
BEGIN
select [银行编码或代码]
      ,[银行机构名称]
      ,[机构所在省]
      ,[机构所在地区]
      ,[机构所在城市]
      ,[行别] from [HNXLSYS].[dbo].[tb_bank] where 银行机构名称 like ''%''+@bank_name+''%''
END
GO', NULL, 904, N'0902', N'0', N'0', N'0', N'0', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (518, 513, N'银行代码查询（名称代码）', N'', N'@银行机构代码（模糊,为空忽略!S:103364@银行机构名称（模糊，为空忽略）!S:', N'CREATE PROCEDURE P_bank_name (@bank_code varchar(14),@bank_name varchar(60)) WITH ENCRYPTION AS
BEGIN
select [银行编码或代码]
      ,[银行机构名称]
      ,[机构所在省]
      ,[机构所在地区]
      ,[机构所在城市]
      ,[行别]
from [HNXLSYS].[dbo].[tb_bank] where  银行编码或代码 like ''%''+@bank_code+''%''and 银行机构名称 like ''%''+@bank_name+''%''
END
GO', NULL, 902, N'0901', N'0', N'0', N'0', N'1', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (541, 0, N'身份证地区查询', N'', N'', N'CREATE PROCEDURE      AS
BEGIN

END
GO', NULL, 910, N'10', N'0', N'0', N'0', N'1', N'1', N'1')
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (542, 541, N'代码查地区', N'2位至6位代码查询关联行政区划', N'@6位代码!S:3404', N'CREATE PROCEDURE  P_CodeToArea(@code varchar(22))    WITH ENCRYPTION AS
BEGIN
select * from hnxlsys.dbo.AreaCodeOldNew
where 编码 like @code+''%''
order by 编码
END
GO', NULL, 914, N'1002', N'0', N'0', N'0', N'1', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (543, 541, N'地区查代码', N'名称查询关联行政区划', N'@地名!S:海南', N'CREATE PROCEDURE  P_AreaToCode(@name varchar(22))    WITH ENCRYPTION AS
BEGIN
select * from hnxlsys.dbo.AreaCodeOldNew
where 省份 like ''%''+ @name+''%'' or 城市 like ''%''+ @name+''%'' or 地名 like ''%''+ @name+''%''
order by 编码
END
GO', NULL, 912, N'1001', N'0', N'0', N'0', N'1', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (522, 0, N'商行单位账户和交易查询', NULL, N'@提示1!参数类型1:默认值1@提示2!参数类型2:默认值2', N'CREATE PROCEDURE      AS
BEGIN

END
GO', NULL, 228, N'03', N'0', N'0', N'0', N'1', N'1', N'1')
GO
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (94, 522, N'商行单位账户查询_银行机构代码', N'查询商业银行账户表和交易表有关信息', N'@开户行银行机构代码!S:1041029786@返回行数!N:100', N'CREATE PROCEDURE Pd_shzh_bankcode(@bankcode VARCHAR(60), @row_num  INT)
WITH ENCRYPTION
AS
  BEGIN
    IF Object_id(N''tb_shzh_dw'', N''U'') IS NOT NULL
      BEGIN
		SET ROWCOUNT @row_num
        SELECT [开户行金融机构代码],
               b.[银行机构名称],
               [客户编号],
               [账户名称],
               [账号],
               [账户类型],
               [开户日期],
               [开户时间],
               [销户日期],
               [销户时间],
               [账户状态],
               [执照名称],
               [执照号码],
               [执照有效期],
               [经营范围],
               [联系地址],
               [执照注册地区代码],
               [经营地区代码],
               [注册资本金],
               [法人代表或负责人姓名],
               [法人代表或负责人证件种类],
               [法人代表或负责人证件号码],
               [法人代表或负责人证件有效期开始日],
               [法人代表或负责人证件有效期截止日],
               [法人代表或负责人联系电话],
               [代理人姓名],
               [代理人证件种类],
               [代理人证件号码],
               [代理人证件有效期开始日],
               [代理人证件有效期截止日],
               [代理人联系电话],
               [绑定的手机号码],
               [开户地地区代码],
               [临时户账户到期日]
        FROM   [tb_shzh_dw] a
               LEFT JOIN v_bank b
                      ON a.[开户行金融机构代码] = b.银行编码或代码
        WHERE  [开户行金融机构代码] LIKE ''%'' + @bankcode + ''%''
		order by [开户行金融机构代码]
		SET ROWCOUNT 0
      END
    ELSE
      BEGIN
        SELECT ''×商业银行单位账户数据未导入'' 注意
      END
  END
GO', NULL, 246, N'0301', N'1', N'0', N'0', N'1', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (122, 522, N'商行单位账户查询_账号', N'根据账号查询账户信息', N'@账号!S:184251703252', N'CREATE PROCEDURE Pd_shzh_acc_no(@s_acc_no VARCHAR(60))
WITH ENCRYPTION
AS
  BEGIN
    IF Object_id(N''tb_shzh_dw'', N''U'') IS NOT NULL
      BEGIN
        SELECT [开户行金融机构代码],
               b.[银行机构名称],
               [客户编号],
               [账户名称],
               [账号],
               [账户类型],
               [开户日期],
               [开户时间],
               [销户日期],
               [销户时间],
               [账户状态],
               [执照名称],
               [执照号码],
               [执照有效期],
               [经营范围],
               [联系地址],
               [执照注册地区代码],
               [经营地区代码],
               [注册资本金],
               [法人代表或负责人姓名],
               [法人代表或负责人证件种类],
               [法人代表或负责人证件号码],
               [法人代表或负责人证件有效期开始日],
               [法人代表或负责人证件有效期截止日],
               [法人代表或负责人联系电话],
               [代理人姓名],
               [代理人证件种类],
               [代理人证件号码],
               [代理人证件有效期开始日],
               [代理人证件有效期截止日],
               [代理人联系电话],
               [绑定的手机号码],
               [开户地地区代码],
               [临时户账户到期日]
        FROM   [tb_shzh_dw] a
               LEFT JOIN v_bank b
                      ON a.[开户行金融机构代码] = b.银行编码或代码
        WHERE  账号 LIKE ''%'' + @s_acc_no + ''%''
      END
    ELSE
      BEGIN
        SELECT ''×商业银行单位账户数据未导入'' 注意
      END
  END
GO', NULL, 231, N'0302', N'1', N'1', N'0', N'1', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (120, 522, N'按账户名称查账户_1名称关键字', N'根据账户名称模糊查询账户信息（根据一个关键字）', N'@账户名称!S:凤台县勤盈商贸有限公司', N'CREATE PROCEDURE Pd_shzh_name(@s_acc_name VARCHAR(60))
WITH ENCRYPTION
AS
  BEGIN
    IF Object_id(N''tb_shzh_dw'', N''U'') IS NOT NULL
      BEGIN
        SELECT [开户行金融机构代码],
               b.[银行机构名称],
               [客户编号],
               [账户名称],
               [账号],
               [账户类型],
               [开户日期],
               [开户时间],
               [销户日期],
               [销户时间],
               [账户状态],
               [执照名称],
               [执照号码],
               [执照有效期],
               [经营范围],
               [联系地址],
               [执照注册地区代码],
               [经营地区代码],
               [注册资本金],
               [法人代表或负责人姓名],
               [法人代表或负责人证件种类],
               [法人代表或负责人证件号码],
               [法人代表或负责人证件有效期开始日],
               [法人代表或负责人证件有效期截止日],
               [法人代表或负责人联系电话],
               [代理人姓名],
               [代理人证件种类],
               [代理人证件号码],
               [代理人证件有效期开始日],
               [代理人证件有效期截止日],
               [代理人联系电话],
               [绑定的手机号码],
               [开户地地区代码],
               [临时户账户到期日]
        FROM   [tb_shzh_dw] a
               LEFT JOIN v_bank b
                      ON a.[开户行金融机构代码] = b.银行编码或代码
        WHERE  账户名称 LIKE ''%'' + @s_acc_name + ''%''
      END
    ELSE
      BEGIN
        SELECT ''×商业银行单位账户数据未导入'' 注意
      END
  END
GO', NULL, 233, N'0303', N'1', N'1', N'0', N'1', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (121, 522, N'按账户名称查账户_2名称关键字', N'根据账户名称模糊查询账户信息（根据两个关键字', N'@客户名称关键字1!S:商贸@客户名称关键字2!S:公司', N'CREATE PROCEDURE Pd_shzh_name2(@acc_name1 VARCHAR(60),@acc_name2 VARCHAR(60))
WITH ENCRYPTION
AS
  BEGIN
    IF Object_id(N''tb_shzh_dw'', N''U'') IS NOT NULL
      BEGIN
        SELECT [开户行金融机构代码],
               b.[银行机构名称],
               [客户编号],
               [账户名称],
               [账号],
               [账户类型],
               [开户日期],
               [开户时间],
               [销户日期],
               [销户时间],
               [账户状态],
               [执照名称],
               [执照号码],
               [执照有效期],
               [经营范围],
               [联系地址],
               [执照注册地区代码],
               [经营地区代码],
               [注册资本金],
               [法人代表或负责人姓名],
               [法人代表或负责人证件种类],
               [法人代表或负责人证件号码],
               [法人代表或负责人证件有效期开始日],
               [法人代表或负责人证件有效期截止日],
               [法人代表或负责人联系电话],
               [代理人姓名],
               [代理人证件种类],
               [代理人证件号码],
               [代理人证件有效期开始日],
               [代理人证件有效期截止日],
               [代理人联系电话],
               [绑定的手机号码],
               [开户地地区代码],
               [临时户账户到期日]
        FROM   [tb_shzh_dw] a
               LEFT JOIN v_bank b
                      ON a.[开户行金融机构代码] = b.银行编码或代码
        WHERE  账户名称 LIKE ''%'' + @acc_name1 + ''%''
               AND 账户名称 LIKE ''%'' + @acc_name2 + ''%''
      END
    ELSE
      BEGIN
        SELECT ''×商业银行单位账户数据未导入'' 注意
      END
  END
GO 
', NULL, 234, N'0304', N'1', N'1', N'0', N'1', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (123, 522, N'商行单位账户查询_单位证件号', N'根据证件号码查询账户信息', N'@单位证明文件编号!S:MA63BC9U6', N'CREATE PROCEDURE Pd_shzh_zjh(@s_zjh VARCHAR(60))
WITH ENCRYPTION
AS
  BEGIN
    IF Object_id(N''tb_shzh_dw'', N''U'') IS NOT NULL
      BEGIN
        SELECT [开户行金融机构代码],
               b.[银行机构名称],
               [客户编号],
               [账户名称],
               [账号],
               [账户类型],
               [开户日期],
               [开户时间],
               [销户日期],
               [销户时间],
               [账户状态],
               [执照名称],
               [执照号码],
               [执照有效期],
               [经营范围],
               [联系地址],
               [执照注册地区代码],
               [经营地区代码],
               [注册资本金],
               [法人代表或负责人姓名],
               [法人代表或负责人证件种类],
               [法人代表或负责人证件号码],
               [法人代表或负责人证件有效期开始日],
               [法人代表或负责人证件有效期截止日],
               [法人代表或负责人联系电话],
               [代理人姓名],
               [代理人证件种类],
               [代理人证件号码],
               [代理人证件有效期开始日],
               [代理人证件有效期截止日],
               [代理人联系电话],
               [绑定的手机号码],
               [开户地地区代码],
               [临时户账户到期日]
        FROM   [tb_shzh_dw] a
               LEFT JOIN v_bank b
                      ON a.[开户行金融机构代码] = b.银行编码或代码
        WHERE  [执照号码] LIKE ''%'' + @s_zjh + ''%''
      END
    ELSE
      BEGIN
        SELECT ''×商业银行单位账户数据未导入'' 注意
      END
  END
GO', NULL, 232, N'0305', N'1', N'1', N'0', N'1', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (124, 522, N'商行单位账户查询_客户编号', N'查询给定客户号的所有账户信息', N'@客户遍号!S:43862754', N'CREATE PROCEDURE Pd_shzh_khbh(@s_khbh VARCHAR(60))
WITH ENCRYPTION
AS
  BEGIN
    IF Object_id(N''tb_shzh_dw'', N''U'') IS NOT NULL
      BEGIN
        SELECT [开户行金融机构代码],
               b.[银行机构名称],
               [客户编号],
               [账户名称],
               [账号],
               [账户类型],
               [开户日期],
               [开户时间],
               [销户日期],
               [销户时间],
               [账户状态],
               [执照名称],
               [执照号码],
               [执照有效期],
               [经营范围],
               [联系地址],
               [执照注册地区代码],
               [经营地区代码],
               [注册资本金],
               [法人代表或负责人姓名],
               [法人代表或负责人证件种类],
               [法人代表或负责人证件号码],
               [法人代表或负责人证件有效期开始日],
               [法人代表或负责人证件有效期截止日],
               [法人代表或负责人联系电话],
               [代理人姓名],
               [代理人证件种类],
               [代理人证件号码],
               [代理人证件有效期开始日],
               [代理人证件有效期截止日],
               [代理人联系电话],
               [绑定的手机号码],
               [开户地地区代码],
               [临时户账户到期日]
        FROM   [tb_shzh_dw] a
               LEFT JOIN v_bank b
                      ON a.[开户行金融机构代码] = b.银行编码或代码
        WHERE  [客户编号] LIKE ''%'' + @s_khbh + ''%''
      END
    ELSE
      BEGIN
        SELECT ''×商业银行单位账户数据未导入'' 注意
      END
  END
GO', NULL, 245, N'0306', N'1', N'1', N'0', N'1', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (257, 522, N'按照用途查找账户_如验资户', N'根据交易表用途查找有关账户，如验资户、工资户等，根据需要现场检查', N'@用途关键字!S:工资', N'CREATE PROCEDURE P_acc_yz2(@s_id_no VARCHAR(60))
WITH ENCRYPTION
AS
  BEGIN
      IF Object_id(''tempdb..#tmp'') IS NOT NULL
        DROP TABLE #tmp
      IF Object_id(''tempdb..#tmp0'') IS NOT NULL
        DROP TABLE #tmp0
      IF Object_id(''tempdb..#tmp00'') IS NOT NULL
        DROP TABLE #tmp00
      IF Object_id(''tempdb..#tmp000'') IS NOT NULL
        DROP TABLE #tmp000
      IF Object_id(''tempdb..#tmp1'') IS NOT NULL
        DROP TABLE #tmp1
      IF Object_id(''tempdb..#tmp2'') IS NOT NULL
        DROP TABLE #tmp2
      IF Object_id(''tempdb..#tmp3'') IS NOT NULL
        DROP TABLE #tmp3
      IF Object_id(''tempdb..#tmp4'') IS NOT NULL
        DROP TABLE #tmp4
      IF Object_id(''tempdb..#tmp5'') IS NOT NULL
        DROP TABLE #tmp5
      --declare @s_id_no varchar(60)
      --set @s_id_no= ''验资''
      SELECT DISTINCT 账号
      INTO   #tmp
      FROM   tb_shjy_dw
      WHERE  [交易附言] LIKE ''%'' + @s_id_no + ''%''
      --交易信息
      SELECT 账号,
             Count(账号) 交易笔数,
             Sum(CASE
                   WHEN ( 现转标识 = ''现金'' ) THEN 1
                   ELSE 0
                 END)  现金笔数,
             Sum(CASE
                   WHEN ( ( 现转标识 = ''现金'' )
                          AND ( 借贷标识 = ''借'' ) ) THEN 1
                   ELSE 0
                 END)  借方现金
      INTO   #tmp2
      FROM   tb_shjy_dw
      WHERE  账号 IN (SELECT DISTINCT 账号
                    FROM   #tmp)
      GROUP  BY 账号
      ORDER  BY 账号
      --获取账户信息
      SELECT c.银行机构代码,
             c.银行机构名称,
             a.账号,
             b.账户名称 户名,
             b.执照号码,
             b.账户类型,
             b.开户日期,
             b.销户日期,
             b.账户状态,
             c.账户性质 人行性质,
             c.账户状态 人行状态,
             a.交易笔数,
             a.现金笔数,
             a.借方现金
      FROM   #tmp2 a
             LEFT JOIN tb_shzh_dw b
                    ON a.账号 = b.账号
             LEFT JOIN v_rhzh_dw c
                    ON a.账号 = c.账号
  END
GO ', NULL, 244, N'0307', N'1', N'1', N'0', N'1', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (336, 522, N'商行单位账户查询_法人代表姓名', NULL, N'@法人代表姓名!S:张三', N'CREATE PROCEDURE Pd_shzh_fr_name(@s_fr_name VARCHAR(60))
WITH ENCRYPTION
AS
  BEGIN
    IF Object_id(N''tb_shzh_dw'', N''U'') IS NOT NULL
      BEGIN
        SELECT [开户行金融机构代码],
               b.[银行机构名称],
               [客户编号],
               [账户名称],
               [账号],
               [账户类型],
               [开户日期],
               [开户时间],
               [销户日期],
               [销户时间],
               [账户状态],
               [执照名称],
               [执照号码],
               [执照有效期],
               [经营范围],
               [联系地址],
               [执照注册地区代码],
               [经营地区代码],
               [注册资本金],
               [法人代表或负责人姓名],
               [法人代表或负责人证件种类],
               [法人代表或负责人证件号码],
               [法人代表或负责人证件有效期开始日],
               [法人代表或负责人证件有效期截止日],
               [法人代表或负责人联系电话],
               [代理人姓名],
               [代理人证件种类],
               [代理人证件号码],
               [代理人证件有效期开始日],
               [代理人证件有效期截止日],
               [代理人联系电话],
               [绑定的手机号码],
               [开户地地区代码],
               [临时户账户到期日]
        FROM   [tb_shzh_dw] a
               LEFT JOIN v_bank b
                      ON a.[开户行金融机构代码] = b.银行编码或代码
        WHERE  [法人代表或负责人姓名] LIKE ''%'' + @fr_name + ''%''
      END
    ELSE
      BEGIN
        SELECT ''×商业银行单位账户数据未导入'' 注意
      END
  END
GO', NULL, 235, N'0308', N'1', N'1', N'0', N'0', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (316, 522, N'商行单位账户查询_法人代表证件号', NULL, N'@法人代表证件号码!S:0000', N'CREATE PROCEDURE Pd_shzh_fr_zjh(@fr_zjh VARCHAR(60))
WITH ENCRYPTION
AS
  BEGIN
    IF Object_id(N''tb_shzh_dw'', N''U'') IS NOT NULL
      BEGIN
        SELECT [开户行金融机构代码],
               b.[银行机构名称],
               [客户编号],
               [账户名称],
               [账号],
               [账户类型],
               [开户日期],
               [开户时间],
               [销户日期],
               [销户时间],
               [账户状态],
               [执照名称],
               [执照号码],
               [执照有效期],
               [经营范围],
               [联系地址],
               [执照注册地区代码],
               [经营地区代码],
               [注册资本金],
               [法人代表或负责人姓名],
               [法人代表或负责人证件种类],
               [法人代表或负责人证件号码],
               [法人代表或负责人证件有效期开始日],
               [法人代表或负责人证件有效期截止日],
               [法人代表或负责人联系电话],
               [代理人姓名],
               [代理人证件种类],
               [代理人证件号码],
               [代理人证件有效期开始日],
               [代理人证件有效期截止日],
               [代理人联系电话],
               [绑定的手机号码],
               [开户地地区代码],
               [临时户账户到期日]
        FROM   [tb_shzh_dw] a
               LEFT JOIN v_bank b
                      ON a.[开户行金融机构代码] = b.银行编码或代码
        WHERE  [法人代表或负责人证件号码] LIKE ''%'' + @fr_zjh + ''%''
		order by [开户行金融机构代码]
      END
    ELSE
      BEGIN
        SELECT ''×商业银行单位账户数据未导入'' 注意
      END
  END
GO', NULL, 236, N'0309', N'1', N'1', N'0', N'1', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (358, 522, N'商行单位账户查询_法人代表电话', N'根据账号查询开销户登记簿中账户信息', N'@法人代表电话号码!S:17155514171', N'CREATE PROCEDURE Pd_shzh_fr_dh(@fr_dh VARCHAR(60))
WITH ENCRYPTION
AS
  BEGIN
    IF Object_id(N''tb_shzh_dw'', N''U'') IS NOT NULL
      BEGIN
        SELECT [开户行金融机构代码],
               b.[银行机构名称],
               [客户编号],
               [账户名称],
               [账号],
               [账户类型],
               [开户日期],
               [开户时间],
               [销户日期],
               [销户时间],
               [账户状态],
               [执照名称],
               [执照号码],
               [执照有效期],
               [经营范围],
               [联系地址],
               [执照注册地区代码],
               [经营地区代码],
               [注册资本金],
               [法人代表或负责人姓名],
               [法人代表或负责人证件种类],
               [法人代表或负责人证件号码],
               [法人代表或负责人证件有效期开始日],
               [法人代表或负责人证件有效期截止日],
               [法人代表或负责人联系电话],
               [代理人姓名],
               [代理人证件种类],
               [代理人证件号码],
               [代理人证件有效期开始日],
               [代理人证件有效期截止日],
               [代理人联系电话],
               [绑定的手机号码],
               [开户地地区代码],
               [临时户账户到期日]
        FROM   [tb_shzh_dw] a
               LEFT JOIN v_bank b
                      ON a.[开户行金融机构代码] = b.银行编码或代码
        WHERE  [法人代表或负责人联系电话] LIKE ''%'' + @fr_dh + ''%''
		order by [开户行金融机构代码]
      END
    ELSE
      BEGIN
        SELECT ''×商业银行单位账户数据未导入'' 注意
      END
  END
GO', NULL, 237, N'0310', N'1', N'1', N'0', N'1', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (133, 522, N'商行单位账户查询_代理人姓名', NULL, N'@法人代表姓名!S:张', N'CREATE PROCEDURE Pd_shzh_dlr_name(@dlr_name VARCHAR(60))
WITH ENCRYPTION
AS
  BEGIN
    IF Object_id(N''tb_shzh_dw'', N''U'') IS NOT NULL
      BEGIN
        SELECT [开户行金融机构代码],
               b.[银行机构名称],
               [客户编号],
               [账户名称],
               [账号],
               [账户类型],
               [开户日期],
               [开户时间],
               [销户日期],
               [销户时间],
               [账户状态],
               [执照名称],
               [执照号码],
               [执照有效期],
               [经营范围],
               [联系地址],
               [执照注册地区代码],
               [经营地区代码],
               [注册资本金],
               [法人代表或负责人姓名],
               [法人代表或负责人证件种类],
               [法人代表或负责人证件号码],
               [法人代表或负责人证件有效期开始日],
               [法人代表或负责人证件有效期截止日],
               [法人代表或负责人联系电话],
               [代理人姓名],
               [代理人证件种类],
               [代理人证件号码],
               [代理人证件有效期开始日],
               [代理人证件有效期截止日],
               [代理人联系电话],
               [绑定的手机号码],
               [开户地地区代码],
               [临时户账户到期日]
        FROM   [tb_shzh_dw] a
               LEFT JOIN v_bank b
                      ON a.[开户行金融机构代码] = b.银行编码或代码
        WHERE  [代理人姓名] LIKE ''%'' + @dlr_name + ''%''
		order by [开户行金融机构代码]
      END
    ELSE
      BEGIN
        SELECT ''×商业银行单位账户数据未导入'' 注意
      END
  END
GO', NULL, 238, N'0311', N'1', N'1', N'0', N'1', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (146, 522, N'商行单位账户查询_代理人证件号', NULL, N'@法人代表证件号!S:342622197508281855', N'CREATE PROCEDURE Pd_shzh_dlr_zjh(@dlr_zjh VARCHAR(60))
WITH ENCRYPTION
AS
  BEGIN
    IF Object_id(N''tb_shzh_dw'', N''U'') IS NOT NULL
      BEGIN
        SELECT [开户行金融机构代码],
               b.[银行机构名称],
               [客户编号],
               [账户名称],
               [账号],
               [账户类型],
               [开户日期],
               [开户时间],
               [销户日期],
               [销户时间],
               [账户状态],
               [执照名称],
               [执照号码],
               [执照有效期],
               [经营范围],
               [联系地址],
               [执照注册地区代码],
               [经营地区代码],
               [注册资本金],
               [法人代表或负责人姓名],
               [法人代表或负责人证件种类],
               [法人代表或负责人证件号码],
               [法人代表或负责人证件有效期开始日],
               [法人代表或负责人证件有效期截止日],
               [法人代表或负责人联系电话],
               [代理人姓名],
               [代理人证件种类],
               [代理人证件号码],
               [代理人证件有效期开始日],
               [代理人证件有效期截止日],
               [代理人联系电话],
               [绑定的手机号码],
               [开户地地区代码],
               [临时户账户到期日]
        FROM   [tb_shzh_dw] a
               LEFT JOIN v_bank b
                      ON a.[开户行金融机构代码] = b.银行编码或代码
        WHERE  [代理人证件号码] LIKE ''%'' + @dlr_zjh + ''%''
		order by [开户行金融机构代码]
      END
    ELSE
      BEGIN
        SELECT ''×商业银行单位账户数据未导入'' 注意
      END
  END
GO', NULL, 239, N'0312', N'1', N'1', N'0', N'1', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (262, 522, N'商行单位账户查询_代理人电话', NULL, N'@法人代表电话!S:000', N'CREATE PROCEDURE Pd_shzh_dlr_dh(@dlr_dh VARCHAR(60))
WITH ENCRYPTION
AS
  BEGIN
    IF Object_id(N''tb_shzh_dw'', N''U'') IS NOT NULL
      BEGIN
        SELECT [开户行金融机构代码],
               b.[银行机构名称],
               [客户编号],
               [账户名称],
               [账号],
               [账户类型],
               [开户日期],
               [开户时间],
               [销户日期],
               [销户时间],
               [账户状态],
               [执照名称],
               [执照号码],
               [执照有效期],
               [经营范围],
               [联系地址],
               [执照注册地区代码],
               [经营地区代码],
               [注册资本金],
               [法人代表或负责人姓名],
               [法人代表或负责人证件种类],
               [法人代表或负责人证件号码],
               [法人代表或负责人证件有效期开始日],
               [法人代表或负责人证件有效期截止日],
               [法人代表或负责人联系电话],
               [代理人姓名],
               [代理人证件种类],
               [代理人证件号码],
               [代理人证件有效期开始日],
               [代理人证件有效期截止日],
               [代理人联系电话],
               [绑定的手机号码],
               [开户地地区代码],
               [临时户账户到期日]
        FROM   [tb_shzh_dw] a
               LEFT JOIN v_bank b
                      ON a.[开户行金融机构代码] = b.银行编码或代码
        WHERE  [代理人联系电话] LIKE ''%'' + @dlr_dh + ''%''
		order by [开户行金融机构代码]
      END
    ELSE
      BEGIN
        SELECT ''×商业银行单位账户数据未导入'' 注意
      END
  END
GO', NULL, 240, N'0313', N'1', N'1', N'0', N'1', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (263, 522, N'商行单位账户查询_绑定手机', NULL, N'@绑定手机号码!S:17155514171', N'CREATE PROCEDURE Pd_shzh_bdsj(@bdsj VARCHAR(60))
WITH ENCRYPTION
AS
  BEGIN
    IF Object_id(N''tb_shzh_dw'', N''U'') IS NOT NULL
      BEGIN
        SELECT [开户行金融机构代码],
               b.[银行机构名称],
               [客户编号],
               [账户名称],
               [账号],
               [账户类型],
               [开户日期],
               [开户时间],
               [销户日期],
               [销户时间],
               [账户状态],
               [执照名称],
               [执照号码],
               [执照有效期],
               [经营范围],
               [联系地址],
               [执照注册地区代码],
               [经营地区代码],
               [注册资本金],
               [法人代表或负责人姓名],
               [法人代表或负责人证件种类],
               [法人代表或负责人证件号码],
               [法人代表或负责人证件有效期开始日],
               [法人代表或负责人证件有效期截止日],
               [法人代表或负责人联系电话],
               [代理人姓名],
               [代理人证件种类],
               [代理人证件号码],
               [代理人证件有效期开始日],
               [代理人证件有效期截止日],
               [代理人联系电话],
               [绑定的手机号码],
               [开户地地区代码],
               [临时户账户到期日]
        FROM   [tb_shzh_dw] a
               LEFT JOIN v_bank b
                      ON a.[开户行金融机构代码] = b.银行编码或代码
        WHERE  [绑定的手机号码] LIKE ''%'' + @bdsj + ''%''
		order by [开户行金融机构代码]
      END
    ELSE
      BEGIN
        SELECT ''×商业银行单位账户数据未导入'' 注意
      END
  END
GO', NULL, 241, N'0314', N'1', N'1', N'0', N'1', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (264, 522, N'商行单位账户查询_经营范围', NULL, N'@经营范围!S:贸易@返回行数!N:100', N'CREATE PROCEDURE Pd_shzh_jyfw(@jyfw VARCHAR(60), @row_num  INT)
WITH ENCRYPTION
AS
  BEGIN
    IF Object_id(N''tb_shzh_dw'', N''U'') IS NOT NULL
      BEGIN
		SET ROWCOUNT @row_num
        SELECT [开户行金融机构代码],
               b.[银行机构名称],
               [客户编号],
               [账户名称],
               [账号],
               [账户类型],
               [开户日期],
               [开户时间],
               [销户日期],
               [销户时间],
               [账户状态],
               [执照名称],
               [执照号码],
               [执照有效期],
               [经营范围],
               [联系地址],
               [执照注册地区代码],
               [经营地区代码],
               [注册资本金],
               [法人代表或负责人姓名],
               [法人代表或负责人证件种类],
               [法人代表或负责人证件号码],
               [法人代表或负责人证件有效期开始日],
               [法人代表或负责人证件有效期截止日],
               [法人代表或负责人联系电话],
               [代理人姓名],
               [代理人证件种类],
               [代理人证件号码],
               [代理人证件有效期开始日],
               [代理人证件有效期截止日],
               [代理人联系电话],
               [绑定的手机号码],
               [开户地地区代码],
               [临时户账户到期日]
        FROM   [tb_shzh_dw] a
               LEFT JOIN v_bank b
                      ON a.[开户行金融机构代码] = b.银行编码或代码
        WHERE  [经营范围] LIKE ''%'' + @jyfw + ''%''
		order by [开户行金融机构代码]
		SET ROWCOUNT 0
      END
    ELSE
      BEGIN
        SELECT ''×商业银行单位账户数据未导入'' 注意
      END
  END
GO', NULL, 242, N'0315', N'1', N'1', N'0', N'1', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (265, 522, N'商行单位账户查询_地址', N'功能描述：隐藏', N'@地址!S:正常@返回行数!N:100', N'CREATE PROCEDURE Pd_shzh_dz(@dz VARCHAR(60), @row_num  INT)
WITH ENCRYPTION
AS
  BEGIN
    IF Object_id(N''tb_shzh_dw'', N''U'') IS NOT NULL
      BEGIN
		SET ROWCOUNT @row_num
        SELECT [开户行金融机构代码],
               b.[银行机构名称],
               [客户编号],
               [账户名称],
               [账号],
               [账户类型],
               [开户日期],
               [开户时间],
               [销户日期],
               [销户时间],
               [账户状态],
               [执照名称],
               [执照号码],
               [执照有效期],
               [经营范围],
               [联系地址],
               [执照注册地区代码],
               [经营地区代码],
               [注册资本金],
               [法人代表或负责人姓名],
               [法人代表或负责人证件种类],
               [法人代表或负责人证件号码],
               [法人代表或负责人证件有效期开始日],
               [法人代表或负责人证件有效期截止日],
               [法人代表或负责人联系电话],
               [代理人姓名],
               [代理人证件种类],
               [代理人证件号码],
               [代理人证件有效期开始日],
               [代理人证件有效期截止日],
               [代理人联系电话],
               [绑定的手机号码],
               [开户地地区代码],
               [临时户账户到期日]
        FROM   [tb_shzh_dw] a
               LEFT JOIN v_bank b
                      ON a.[开户行金融机构代码] = b.银行编码或代码
        WHERE  [联系地址] LIKE ''%'' + @dz + ''%''
		order by [开户行金融机构代码]
		SET ROWCOUNT 0
      END
    ELSE
      BEGIN
        SELECT ''×商业银行单位账户数据未导入'' 注意
      END
  END
GO', NULL, 243, N'0316', N'1', N'1', N'0', N'1', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (317, 522, N'.商行数据交易信息查询√', N'隐藏 功能描述：', N'@提示1!参数类型1:默认值1@提示2!参数类型2:默认值2', N'CREATE PROCEDURE      AS
BEGIN

END
GO', NULL, 250, N'0317', N'0', N'0', N'0', N'0', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (323, 522, N'●商行单位交易分析', NULL, N'@大金额交易标准（万元）!N:100', N'CREATE PROCEDURE P_All_Fx_DW(@huge_amt decimal)  WITH ENCRYPTION  AS
BEGIN
/****** Script for SelectTopNRows command from SSMS  ******/
if object_id(N''tb_shjy_dw'',N''U'') is not null
begin
SELECT 账号,账户名称,count(账号) 笔数, 
       sum(case when (交易金额>=@huge_amt*10000) then 1 else 0 end) 大金额笔数,
   	   sum(case when (现转标识=''现金'' and 交易金额>=@huge_amt*10000100) then 1 else 0 end) 大金额现金笔数,
       sum(case when (现转标识=''转账'' and 借贷标识=''贷'') then 1 else 0 end) 贷方转账,
       sum(case when (现转标识=''转账'' and 借贷标识=''借'') then 1 else 0 end) 借方转账,
       sum(case when (现转标识=''现金'' and 借贷标识=''贷'') then 1 else 0 end) 贷方现金,
       sum(case when (现转标识=''现金'' and 借贷标识=''借'') then 1 else 0 end) 借方现金,
	   sum(case when (现转标识 not in (''现金'',''转账'')) then 1 else 0 end) 无现转标识,
       sum(case when (借贷标识 not in (''借'',''贷'')) then 1 else 0 end) 无借贷标识,
	   min(交易金额) 最小交易金额,max(交易金额) 最大交易金额,
	   min(交易日期) 最早交易,max(交易日期) 最迟交易
  FROM [tb_shjy_dw]
  --where 账号=''2002860391000880'' and 交易日期>=''20180101'' and 交易日期<=''20190630''
  group by 账号,账户名称
 end
 else
begin
select ''×商业银行单位交易数据未导入'' 注意
end

END
GO', NULL, 251, N'0318', N'1', N'1', N'0', N'1', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (324, 522, N'商行单位交易查询_账户流水', N'根据账号查询账户流水', N'@账号!S:2002860391000880@开始日期!D:20180101@结束日期!D:20190630', N'CREATE PROCEDURE P_jyls_dw(@s_acc_no varchar(40),@bgn_date char(8), @end_date char(8))  WITH ENCRYPTION  AS
BEGIN
if object_id(N''tb_shjy_dw'',N''U'') is not null
begin
  SELECT *
  FROM [tb_shjy_dw]
  where 账号= @s_acc_no and 交易日期>=@bgn_date and 交易日期<=@end_date
  order by 交易日期,交易时间
end
else
begin
select ''×商业银行单位交易数据未导入'' 注意
end
END
GO', NULL, 252, N'0319', N'1', N'0', N'0', N'1', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (132, 317, N'SC12限定金额现金交易流水', N'查询某个账户在一段时间内某个交易金额范围内的现金交易流水', N'@账号!S:1861101021000197462@最小现金交易金额!N:100@最大现金交易金额!N:100000000@开始日期!D:20120101@结束日期!D:20130430@返回行数!N:30000', N'CREATE PROCEDURE  P_rmb_lim_cash_txn(@s_acc_no varchar(40),@min_amt decimal,@max_amt decimal,@bgn_date char(8), @end_date char(8), @row_num int) WITH ENCRYPTION AS
BEGIN
if object_id(''tempdb..#tmp1'') is not null drop table #tmp1
if object_id(''tempdb..#tmp2'') is not null drop table #tmp2
--declare @s_acc_no varchar(40)
--declare @bgn_date char(8)
--declare @end_date char(8)
--declare @row_num int
--set @s_acc_no=''176705791770''
--set @bgn_date=''20120101''
--set @end_date=''20120430''
--set @row_num=1000

set rowcount @row_num
select  交易行,账号,对方行号,交易日期,对方账号,金额,现转,借贷,冲账标志,余额,业务种类,用途
        into #tmp1
	from V_Txn
	where 账号=@s_acc_no and (交易日期 between @bgn_date and @end_date) 
	and (金额 between @min_amt and @max_amt)
	and 现转=''现金''
	order by 交易日期
select  distinct
        a.交易行,
        d.银行机构名称,a.账号,a.对方行号,a.交易日期,a.对方账号,a.金额,a.现转,a.借贷,a.冲账标志,
        a.余额,a.业务种类,a.用途,
        b.acc_name 户名,
        b.cst_no 客户号,
        b.id_no 证件号码,
        (case b.acc_type when ''0'' then ''个人'' when ''1'' then ''银行卡'' when ''2'' then  ''单位'' end) 类型,
        (CASE b.ent_cst_type WHEN ''0'' THEN ''基本'' WHEN ''1'' THEN ''一般'' WHEN ''2'' THEN ''非预算''  WHEN ''3'' THEN ''临时'' WHEN ''4'' THEN ''预算'' ELSE ''    '' END) AS 性质,
        b.open_time 开户,b.close_time 销户,
        (case b.close_flag when ''0'' then ''开户'' when ''1'' then ''销户'' WHEN ''3'' THEN ''久悬'' end) 状态
   from #tmp1 a
   left join tb_acc b on a.账号=b.acc_no
   left join V_Bank d on a.交易行=d.银行机构代码
   order by 交易日期
set rowcount 0
END
GO', NULL, 253, N'031701', N'1', N'0', N'0', N'0', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (131, 317, N'SC11限定金额交易流水', N'查询某个账户在一段时间内某个交易金额范围内的所有人民币交易流水', N'@账号!S:1861101021000197462@最小交易金额!N:100@最大交易金额!N:100000@开始日期!D:20120101@结束日期!D:20130430@返回行数!N:200', N'CREATE PROCEDURE  P_rmb_lim_txn_all(@s_acc_no varchar(40),@min_amt decimal,@max_amt decimal,@bgn_date char(8), @end_date char(8), @row_num int) WITH ENCRYPTION AS
BEGIN
if object_id(''tempdb..#tmp1'') is not null drop table #tmp1
if object_id(''tempdb..#tmp2'') is not null drop table #tmp2
--declare @s_acc_no varchar(40)
--declare @bgn_date char(8)
--declare @end_date char(8)
--declare @row_num int
--set @s_acc_no=''176705791770''
--set @bgn_date=''20120101''
--set @end_date=''20120430''
--set @row_num=1000

set rowcount @row_num
select  交易行,账号,对方行号,交易日期,对方账号,金额,现转,借贷,冲账标志,余额,业务种类,用途
        into #tmp1
	from V_Txn
	where 账号=@s_acc_no and (交易日期 between @bgn_date and @end_date) and (金额 between @min_amt and @max_amt)
	order by 交易日期
select  distinct
        a.交易行,
        d.银行机构名称,a.账号,a.对方行号,a.交易日期,a.对方账号,a.金额,a.现转,a.借贷,a.冲账标志,
        a.余额,a.业务种类,a.用途,
        b.acc_name 户名,
        b.cst_no 客户号,
        b.id_no 证件号码,
        (case b.acc_type when ''0'' then ''个人'' when ''1'' then ''银行卡'' when ''2'' then  ''单位'' end) 类型,
        (CASE b.ent_cst_type WHEN ''0'' THEN ''基本'' WHEN ''1'' THEN ''一般'' WHEN ''2'' THEN ''非预算''  WHEN ''3'' THEN ''临时'' WHEN ''4'' THEN ''预算'' ELSE ''    '' END) AS 性质,
        b.open_time 开户,b.close_time 销户,
        (case b.close_flag when ''0'' then ''开户'' when ''1'' then ''销户'' WHEN ''3'' THEN ''久悬'' end) 状态
   from #tmp1 a
   left join tb_acc b on a.账号=b.acc_no
   left join V_Bank d on a.交易行=d.银行机构代码
   order by 交易日期
END
GO', NULL, 254, N'031702', N'1', N'0', N'0', N'0', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (130, 317, N'SC10现金交易流水', N'查询某个账户在一段时间的现金交易流水', N'@账号!S:1861101021000197462@开始日期!D:20120101@结束日期!D:20130430@返回行数!N:600', N'CREATE PROCEDURE  P_rmb_cash_txn(@s_acc_no varchar(40),@bgn_date char(8), @end_date char(8), @row_num int) WITH ENCRYPTION AS
BEGIN
if object_id(''tempdb..#tmp1'') is not null drop table #tmp1
if object_id(''tempdb..#tmp2'') is not null drop table #tmp2
--declare @s_acc_no varchar(40)
--declare @bgn_date char(8)
--declare @end_date char(8)
--declare @row_num int
--set @s_acc_no=''176705791770''
--set @bgn_date=''20120101''
--set @end_date=''20120430''
--set @row_num=1000

set rowcount @row_num
select  交易行,账号,对方行号,交易日期,对方账号,金额,现转,借贷,冲账标志,余额,业务种类,用途
        into #tmp1
	from V_Txn
	where 账号=@s_acc_no and (交易日期 between @bgn_date and @end_date)
        and 现转=''现金''
	order by 交易日期
select  distinct
        a.交易行,
        d.银行机构名称,a.账号,a.对方行号,a.交易日期,a.对方账号,a.金额,a.现转,a.借贷,a.冲账标志,
        a.余额,a.业务种类,a.用途,
        b.acc_name 户名,
        b.cst_no 客户号,
        b.id_no 证件号码,
        (case b.acc_type when ''0'' then ''个人'' when ''1'' then ''银行卡'' when ''2'' then  ''单位'' end) 类型,
        (CASE b.ent_cst_type WHEN ''0'' THEN ''基本'' WHEN ''1'' THEN ''一般'' WHEN ''2'' THEN ''非预算''  WHEN ''3'' THEN ''临时'' WHEN ''4'' THEN ''预算'' ELSE ''    '' END) AS 性质,
        b.open_time 开户,b.close_time 销户,
        (case b.close_flag when ''0'' then ''开户'' when ''1'' then ''销户'' WHEN ''3'' THEN ''久悬'' end) 状态
   from #tmp1 a
   left join tb_acc b on a.账号=b.acc_no
   left join V_Bank d on a.交易行=d.银行机构代码
   order by 交易日期
set rowcount 0
END
GO', NULL, 255, N'031703', N'1', N'0', N'0', N'0', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (125, 317, N'SC09单个账号交易流水', N'查询某个账户在一段时间的所有交易流水', N'@账号!S:1860201021000231028@开始日期!D:20120101@结束日期!D:20130430@返回行数!N:30000', N'CREATE PROCEDURE  P_rmb_txn_all(@s_acc_no varchar(40),@bgn_date char(8), @end_date char(8), @row_num int) WITH ENCRYPTION AS
BEGIN
if object_id(''tempdb..#tmp1'') is not null drop table #tmp1
if object_id(''tempdb..#tmp2'') is not null drop table #tmp2
--declare @s_acc_no varchar(40)
--declare @bgn_date char(8)
--declare @end_date char(8)
--declare @row_num int
--set @s_acc_no=''176705791770''
--set @bgn_date=''20120101''
--set @end_date=''20120430''
--set @row_num=1000

set rowcount @row_num
select  交易行,账号,对方行号,交易日期,对方账号,金额,现转,借贷,冲账标志,余额,业务种类,用途
        into #tmp1
	from V_Txn
	where 账号=@s_acc_no and (交易日期 between @bgn_date and @end_date)
	order by 交易日期
select  distinct
        a.交易行,
        d.银行机构名称,a.账号,a.对方行号,a.交易日期,a.对方账号,a.金额,a.现转,a.借贷,a.冲账标志,
        a.余额,a.业务种类,a.用途,
        b.acc_name 户名,
        b.cst_no 客户号,
        b.id_no 证件号码,
        (case b.acc_type when ''0'' then ''个人'' when ''1'' then ''银行卡'' when ''2'' then  ''单位'' end) 类型,
        (CASE b.ent_cst_type WHEN ''0'' THEN ''基本'' WHEN ''1'' THEN ''一般'' WHEN ''2'' THEN ''非预算''  WHEN ''3'' THEN ''临时'' WHEN ''4'' THEN ''预算'' ELSE ''    '' END) AS 性质,
        b.open_time 开户,b.close_time 销户,
        (case b.close_flag when ''0'' then ''开户'' when ''1'' then ''销户'' WHEN ''3'' THEN ''久悬'' end) 状态
   from #tmp1 a
   left join tb_acc b on a.账号=b.acc_no
   left join V_Bank d on a.交易行=d.银行机构代码
   order by 交易日期
set rowcount 0
END
GO', NULL, 256, N'031704', N'1', N'0', N'0', N'0', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (304, 0, N'---账户风险监测---', N'因风险管理需要查询的部分信息', N'', N'CREATE PROCEDURE      AS
BEGIN

END
GO', NULL, 600, N'06', N'0', N'0', N'0', N'1', N'1', N'1')
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (526, 551, N'单位个人身份证号疑似差错（编号规则）', N'单位法人、资金管理人或上级法人身份证件不通过逻辑校验', N'@地区校验位数(2位校验省份,4位校验省份城市,6位校验县级)!S:2@账户状态(1正常久悬,9所有)!S:1@涉案账户(1是,0否,9全部)!S:9', N'CREATE PROCEDURE P_dw_gr_id_chk(@area_mode CHAR(1),@zh_state CHAR(1),@sazh CHAR(1))
--WITH ENCRYPTION
AS
  BEGIN
      IF Object_id(''tempdb..#tmp'') IS NOT NULL
        DROP TABLE #tmp
      IF Object_id(''tempdb..#tmp1'') IS NOT NULL
        DROP TABLE #tmp1
      --DECLARE @area_mode CHAR(1)
      --SET @area_mode = ''4''
      --DECLARE @zh_state CHAR(1)
      --SET @zh_state = ''1''
      --DECLARE @sazh CHAR(1)
      --SET @sazh = ''1''
      IF Object_id(N''tb_rhzh_dw'', N''U'') IS NULL
        BEGIN
            SELECT ''×账户系统单位账户数据或商业银行单位账户数据未导入'' 注意
        END
      ELSE
        BEGIN
            IF @area_mode <> ''2''
               AND @area_mode <> ''4''
               AND @area_mode <> ''6''
                OR @zh_state <> ''1''
                   AND @zh_state <> ''9''
                OR @sazh <> ''0''
                   AND @sazh <> ''1''
                   AND @sazh <> ''9''
              BEGIN
                  SELECT ''×地区校验位数只能为2、4、6或账户状态只能为1、9或涉案只能为0、1、9'' 参数错误
              END
            ELSE
              BEGIN
                  SELECT [银行机构代码],
                         [账号],
                         [账户名称],
                         [账户性质],
                         [社会信用代码],
                         [注册地地区代码],
                         [账户开户地地区代码],
                         [基本存款账户开户地地区代码],
                         [开户日期],
                         [久悬日期],
                         [销户日期],
                         [账户状态],
                         [法定代表人或负责人姓名],
                         [法定代表人或负责人身份证件编号],
                         CASE
                           WHEN [法定代表人或负责人身份证件种类] = ''身份证''
                                AND NOT [法定代表人或负责人身份证件种类] IS NULL THEN dbo.Verifyperid([法定代表人或负责人身份证件编号], @area_mode)
                           ELSE ''''
                         END 法定代表人或负责人身份证件编号错误,
                         [上级法定代表人或负责人姓名],
                         [上级法定代表人或负责人证件编号],
                         CASE
                           WHEN [上级法定代表人或负责人证件种类] = ''身份证''
                                AND NOT [上级法定代表人或负责人证件种类] IS NULL THEN dbo.Verifyperid([上级法定代表人或负责人证件编号], @area_mode)
                           ELSE ''''
                         END 上级法定代表人或负责人证件编号错误,
                         [部门或资金管理人负责人姓名],
                         [部门或资金管理人证件编号],
                         CASE
                           WHEN [部门或资金管理人证件种类] = ''身份证''
                                AND NOT [部门或资金管理人证件种类] IS NULL THEN dbo.Verifyperid([部门或资金管理人证件编号], @area_mode)
                           ELSE ''''
                         END 部门或资金管理人证件编号错误
                  INTO   #tmp1
                  FROM   tb_rhzh_dw
                  WHERE  账户状态 LIKE( CASE
                                      WHEN @zh_state = ''1'' THEN ''正常''
                                      WHEN @zh_state = ''9'' THEN ''%''
                                    END )
                          OR 账户状态 LIKE( CASE
                                          WHEN @zh_state = ''1'' THEN ''久悬''
                                          WHEN @zh_state = ''9'' THEN ''%''
                                        END )
                  SELECT a.[银行机构代码],
                         b.银行机构名称,
                         [法定代表人或负责人姓名],
                         [法定代表人或负责人身份证件编号],
                         法定代表人或负责人身份证件编号错误,
                         [上级法定代表人或负责人姓名],
                         [上级法定代表人或负责人证件编号],
                         上级法定代表人或负责人证件编号错误,
                         [部门或资金管理人负责人姓名],
                         [部门或资金管理人证件编号],
                         部门或资金管理人证件编号错误,
                         a.[账号],
                         [账户名称],
                         a.[账户性质],
                         --[社会信用代码],
                         [注册地地区代码],
                         [账户开户地地区代码],
                         [基本存款账户开户地地区代码],
                         a.[开户日期],
                         [久悬日期],
                         [销户日期],
                         [账户状态],
                         c.批次 涉案批次 --
                  FROM   #tmp1 a
                         LEFT JOIN V_Bank b
                                ON a.银行机构代码 = b.银行编码或代码
                         LEFT JOIN hnxlsys.dbo.tb_sazh c --
                                ON a.账号 = c.账号 --
                  WHERE  ( [法定代表人或负责人身份证件编号错误] <> ''正确''
                           AND [法定代表人或负责人身份证件编号错误] <> ''''
                            OR 上级法定代表人或负责人证件编号错误 <> ''正确''
                               AND 上级法定代表人或负责人证件编号错误 <> ''''
                            OR 部门或资金管理人证件编号错误 <> ''正确''
                               AND 部门或资金管理人证件编号错误 <> '''' )
                         AND CASE --
                               WHEN @sazh = ''1''
                                    AND NOT c.账号 IS NULL THEN ''1''
                               WHEN @sazh = ''0''
                                    AND c.账号 IS NULL THEN ''0''
                               WHEN @sazh = ''9'' THEN ''9''
                             END = @sazh --
                  ORDER  BY 银行机构代码,
                            账户名称
              END
        END
  END
GO ', NULL, 622, N'060301', N'1', N'0', N'0', N'1', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (545, 551, N'单位法人非身份证账户', N'列出法人证件不是身份证的账户，必要时予以排查（只涉及基本户、临时机构临时户）', N'@账户状态(1正常久悬,9所有)!S:1@涉案账户(1是,0否,9全部)!S:9', N'CREATE PROCEDURE P_dw_gr_id_no_card(@zh_state CHAR(1),@sazh CHAR(1))
WITH ENCRYPTION
AS
  BEGIN
      IF Object_id(''tempdb..#tmp'') IS NOT NULL
        DROP TABLE #tmp;
      IF Object_id(''tempdb..#tmp1'') IS NOT NULL
        DROP TABLE #tmp1;
      IF Object_id(N''tb_rhzh_dw'', N''U'') IS NULL
        BEGIN
            SELECT ''×账户系统单位账户数据或商业银行单位账户数据未导入'' 注意;
        END;
      ELSE
        BEGIN
            IF @zh_state <> ''1''
               AND @zh_state <> ''9''
                OR @sazh <> ''1''
                   AND @sazh <> ''0''
                   AND @sazh <> ''9''
              BEGIN
                  SELECT ''×账户状态只能为1、9涉案只能为1、0、9'' 参数错误;
              END;
            ELSE
              BEGIN
                  SELECT a.[银行机构代码],
                         b.银行机构名称,
                         [法定代表人或负责人姓名],
                         [法定代表人或负责人身份证件种类],
                         [法定代表人或负责人身份证件编号],
                         a.[账号],
                         [账户名称],
                         [账户性质],
                         --  [社会信用代码],
                         [注册地地区代码],
                         [账户开户地地区代码],
                         [基本存款账户开户地地区代码],
                         a.[开户日期],
                         [久悬日期],
                         [销户日期],
                         [账户状态],
                         [上级法定代表人或负责人姓名],
                         [上级法定代表人或负责人证件编号],
                         [部门或资金管理人负责人姓名],
                         [部门或资金管理人证件编号],
                         c.批次 涉案批次 --
                  FROM   tb_rhzh_dw a
                         LEFT JOIN V_Bank b
                                ON a.银行机构代码 = b.银行编码或代码
                         LEFT JOIN hnxlsys.dbo.tb_sazh c --
                                ON a.账号 = c.账号 --
                  WHERE  [法定代表人或负责人身份证件种类] <> ''身份证''
                         AND ( 账户状态 LIKE( CASE
                                            WHEN @zh_state = ''1'' THEN ''正常''
                                            WHEN @zh_state = ''9'' THEN ''%''
                                          END )
                                OR 账户状态 LIKE( CASE
                                                WHEN @zh_state = ''1'' THEN ''久悬''
                                                WHEN @zh_state = ''9'' THEN ''%''
                                              END ) )
                         AND ( 账户性质 = ''基本''
                                OR 账户性质 = ''临时机构'' )
                         AND CASE --
                               WHEN @sazh = ''1''
                                    AND NOT c.账号 IS NULL THEN ''1''
                               WHEN @sazh = ''0''
                                    AND c.账号 IS NULL THEN ''0''
                               WHEN @sazh = ''9'' THEN ''9''
                             END = @sazh --
                  ORDER  BY 银行机构代码,
                            账户名称;
              --OR (NOT [部门或资金管理人证件种类] IS NULL
              --  AND [上级法定代表人或负责人证件种类] <> ''身份证'')
              --OR [部门或资金管理人证件种类] <> ''身份证''
              END;
        END;
  END;
GO ', NULL, 630, N'060305', N'1', N'0', N'0', N'1', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (527, 551, N'单位法人同证件号但姓名不同', N'证件号相同法人代表姓名不同（主要寻找差距较小疑似录入错误的情况，主要涉及基本账户）', N'@账户状态(1正常,9所有)!S:1@涉案账户(1是,0否,9全部)!S:9', N'CREATE PROCEDURE P_dw_gr_sameid_noname(@zh_state CHAR(1),@sazh CHAR(1))
WITH ENCRYPTION
AS
  BEGIN
      --DECLARE @zh_state CHAR(1);
      --SET @zh_state = ''9'';
      IF Object_id(''tempdb..#tmp'') IS NOT NULL
        DROP TABLE #tmp;
      IF Object_id(''tempdb..#tmp1'') IS NOT NULL
        DROP TABLE #tmp1;
      IF Object_id(N''tb_rhzh_dw'', N''U'') IS NULL
        BEGIN
            SELECT ''×账户系统单位账户数据或商业银行单位账户数据未导入'' 注意;
        END;
      ELSE
        BEGIN
            IF @zh_state <> ''1''
               AND @zh_state <> ''9''
                OR @sazh <> ''1''
                   AND @sazh <> ''0''
                   AND @sazh <> ''9''
              BEGIN
                  SELECT ''×账户状态只能为1、9或涉案只能为1、0、9'' 参数错误;
              END;
            ELSE
              BEGIN
                  SELECT DISTINCT 法定代表人或负责人姓名,
                                  法定代表人或负责人身份证件编号
                  INTO   #tmp
                  FROM   tb_rhzh_dw
                  WHERE  账户状态 LIKE( CASE
                                      WHEN @zh_state = ''1'' THEN ''正常''
                                      WHEN @zh_state = ''9'' THEN ''%''
                                    END )
                         AND ( 账户性质 = ''基本''
                                OR 账户性质 = ''临时机构'' );
                  SELECT 法定代表人或负责人身份证件编号,
                         Count(法定代表人或负责人姓名) 数量
                  INTO   #tmp1
                  FROM   #tmp
                  GROUP  BY 法定代表人或负责人身份证件编号
                  --法定代表人或负责人姓名
                  HAVING Count(法定代表人或负责人姓名) > 1
                  ORDER  BY 法定代表人或负责人身份证件编号;
                  SELECT b.[银行机构代码],
                         c.银行机构名称,
                         a.法定代表人或负责人身份证件编号,
                         b.[法定代表人或负责人身份证件种类],
                         b.法定代表人或负责人姓名,
                         b.[账号],
                         [账户名称],
                         [账户性质],
                         b.[开户日期],
                         [账户状态],
                         [注册地地区代码],
                         [账户开户地地区代码],
                         [基本存款账户开户地地区代码],
                         [社会信用代码],
                         [工商营业执照有效期],
                         [注册资金金额],
                         b.[地址],
                         [联系电话],
                         d.批次 涉案批次 --
                  FROM   #tmp1 a
                         LEFT JOIN tb_rhzh_dw b
                                ON a.法定代表人或负责人身份证件编号 = b.法定代表人或负责人身份证件编号
                         LEFT JOIN v_bank c
                                ON b.银行机构代码 = c.银行编码或代码
                         LEFT JOIN hnxlsys.dbo.tb_sazh d --
                                ON b.账号 = d.账号 --
                  WHERE  账户状态 LIKE( CASE
                                      WHEN @zh_state = ''1'' THEN ''正常''
                                      WHEN @zh_state = ''9'' THEN ''%''
                                    END )
                         AND ( 账户性质 = ''基本''
                                OR 账户性质 = ''临时机构'' )
                         AND CASE --
                               WHEN @sazh = ''1''
                                    AND NOT d.账号 IS NULL THEN ''1''
                               WHEN @sazh = ''0''
                                    AND d.账号 IS NULL THEN ''0''
                               WHEN @sazh = ''9'' THEN ''9''
                             END = @sazh --
                  ORDER  BY 法定代表人或负责人身份证件编号;
              END;
        END;
  END;
GO ', NULL, 628, N'060304', N'1', N'0', N'0', N'1', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (528, 551, N'单位账户名称疑似不合常规x', N'账户名称可疑（需要新算法）', N'@提示1!参数类型1:默认值1@提示2!参数类型2:默认值2', N'CREATE PROCEDURE      AS
BEGIN

END
GO', NULL, 632, N'060306', N'1', N'0', N'0', N'0', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (529, 551, N'单位账户名称与证件号不一致x', N'同一账户名称证件号不一致或同一证件号名称不一致', N'@提示1!参数类型1:默认值1@提示2!参数类型2:默认值2', N'CREATE PROCEDURE      AS
BEGIN

END
GO', NULL, 634, N'060307', N'1', N'0', N'0', N'0', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (303, 552, N'同一单位证短期多涉账户', N'同一单位名称或信用代码拥有大量账户', N'@开始日!D:20210101@结束日!D:20210304@账户性质(1基本和临时机构,9所有)!S:9@账户状态(1正常或久悬,9所有)!S:1@筛选(1账户数,2电话数)!S:1@数量!N:5@天数!N:10000@固话位数!N:7', N'CREATE PROCEDURE P_dw_neardayzh(@bgn_date CHAR(8),@end_date CHAR(8),@zh_xz CHAR(1),@zh_state CHAR(1),@fr_or_zh CHAR(1),@zh_count INT,@days INT,@len INT)
WITH ENCRYPTION
AS
  BEGIN
    --本地个法人短期内多开户
    IF Object_id(''tempdb..#tmp'') IS NOT NULL
      DROP TABLE #tmp
    IF Object_id(''tempdb..#tmp_cnt'') IS NOT NULL
      DROP TABLE #tmp_cnt
    IF Object_id(''tempdb..#tmp1'') IS NOT NULL
      DROP TABLE #tmp1
    IF Object_id(''tempdb..#tmp11'') IS NOT NULL
      DROP TABLE #tmp11
    IF Object_id(''tempdb..#tmp2'') IS NOT NULL
      DROP TABLE #tmp2
    IF Object_id(''tempdb..#tmp22'') IS NOT NULL
      DROP TABLE #tmp22
    IF Object_id(''tempdb..#tmp3'') IS NOT NULL
      DROP TABLE #tmp3
    IF Object_id(''tempdb..#tmp33'') IS NOT NULL
      DROP TABLE #tmp33
    IF Object_id(''tempdb..#tmp4'') IS NOT NULL
      DROP TABLE #tmp4
    IF Object_id(''tempdb..#tmp44'') IS NOT NULL
      DROP TABLE #tmp44
    IF Object_id(''tempdb..#tmp5'') IS NOT NULL
      DROP TABLE #tmp5
    IF Object_id(''tempdb..#tmp55'') IS NOT NULL
      DROP TABLE #tmp55
    IF Object_id(''tempdb..#tmp_all'') IS NOT NULL
      DROP TABLE #tmp_all
    --IF Object_id(''tempdb..#tmp_end'') IS NOT NULL
    --DROP TABLE #tmp_end
    --DECLARE @bgn_date CHAR(8) --数据开始日期
    --SET @bgn_date = ''20210201''
    --DECLARE @end_date CHAR(8) --数据结束日期
    --SET @end_date = ''20210210''
    --DECLARE @zh_xz CHAR(1) --账户性质 1基本临时，9全部
    --SET @zh_xz = ''9''
    --DECLARE @zh_state CHAR(1) --账户状态 1正常 9全部（含撤销）
    --SET @zh_state = ''1''
    --DECLARE @zh_count INT--账户数量
    --SET @zh_count = 3
    --DECLARE @days INT --短期的天数
    --SET @days = 100
    --DECLARE @Min_age INT --最小年龄
    --SET @Min_age = 18
    --DECLARE @Max_age INT --最大年龄
    --SET @Max_age = 35
    --DECLARE @age_state CHAR(1) --年龄范围1小于最小，2大于最大，3最小最大之间
    --SET @age_state = ''3''
    --DECLARE @len INT --固定电话位数
    --SET @len=7
    --DECLARE @fr_or_zh CHAR(1) --筛选账户还是电话
    --SET @fr_or_zh =''1''
    --DECLARE @sazh CHAR(1)
    --SET @sazh =''9''
    IF Object_id(N''tb_rhzh_dw'', N''U'') IS NULL
        OR Object_id(N''hnxlsys.dbo.tb_red_gr'', N''U'') IS NULL
      BEGIN
        SELECT ''×账户系统个人账户数据未导入或未生成红名单信息……'' 注意
      END
    ELSE
      BEGIN
        IF @zh_state <> ''1''
           AND @zh_state <> ''9''
            OR @zh_xz <> ''1''
               AND @zh_xz <> ''9''
            OR @fr_or_zh <> ''1''
               AND @fr_or_zh <> ''2''
          BEGIN
            SELECT ''×账户性质只能为1、9或账户状态只能为1、9或筛选依据只能为1、2'' 参数错误
          END
        ELSE
          BEGIN
            --获取省级行政区划与账户系统地区对照表，为识别本地个人
            --提取符合条件的个人账户，下一步再分析
            SELECT 序号,
                   序号 身份序号,----身份序号取序号值，序号为identy，不能update
                   [银行机构代码],
                   [账号],
                   存款人名称,
                   [账户名称],
                   [社会信用代码],
                   [工商营业执照有效期],
                   法定代表人或负责人姓名,
                   [法定代表人或负责人身份证件种类],
                   法定代表人或负责人身份证件编号,
                   [联系电话],
                   dbo.F_delete_head([联系电话], ''0'') 电话处理,--点好号码清除前导0
                   [账户性质],
                   [账户状态],
                   [开户日期],
                   [销户日期],
                   [久悬日期],
                   [注册地地区代码],
                   [账户开户地地区代码],
                   [基本存款账户开户地地区代码],
                   [地址],
                   [注册资金金额]
            INTO   #tmp
            FROM   tb_rhzh_dw
            WHERE  开户日期 >= @bgn_date
                   AND 开户日期 <= @end_date
                   AND ( @zh_state = ''1''
                         AND 销户日期 IS NULL
                          OR @zh_state = ''9'' )
                   AND ( @zh_xz = ''1''
                         AND ( 账户性质 LIKE ''基本%''
                                OR 账户性质 LIKE ''临时机构%'' )
                          OR @zh_xz = ''9'' )
            ORDER  BY 序号
            --RETURN    
            ----首先相同证件号变成同一序号（最小序号），其次相似身份证号变成同一序号
            ----取得每组相同证件号的最小序号
            ---------------------------------------------------------------------------------------------
            --首先相同证件号变成同一序号（最小序号），其次相似身份证号变成同一序号
            --取得每组相同证件号的最小序号
            SELECT Min(序号) 最小序号,
                   社会信用代码,
                   Count(社会信用代码) 数量
            INTO   #tmp11
            FROM   #tmp
            GROUP  BY 社会信用代码
            HAVING Count(社会信用代码) > 1
            ORDER  BY 社会信用代码
            --把证件相同的身份序号归为一致	
            UPDATE a
            SET    a.身份序号 = b.最小序号
            FROM   #tmp a
                   INNER JOIN #tmp11 b
                           ON a.社会信用代码 = b.社会信用代码
            --取得每组相同存款人名称的最小序号
            SELECT Min(序号) 最小序号,
                   存款人名称,
                   Count(存款人名称) 数量
            INTO   #tmp22
            FROM   #tmp
            GROUP  BY 存款人名称
            HAVING Count(存款人名称) > 1
            ORDER  BY 存款人名称
            --把存款人名称相同的身份序号归为一致	
            UPDATE a
            SET    a.身份序号 = b.最小序号
            FROM   #tmp a
                   INNER JOIN #tmp22 b
                           ON a.存款人名称 = b.存款人名称
            -------------------------------------------------------------------------------------------
            ----下面为同姓名相似度          
            --------------------------------------------------------------------------------------------
            --同一身份序号短期拥有账户数量
            SELECT ff.电话数量,
                   ff.短期账户数量,
                   CASE
                     WHEN [法定代表人或负责人身份证件种类] = ''身份证'' THEN dbo.Fn_getage(a.法定代表人或负责人身份证件编号, a.开户日期)
                     ELSE NULL
                   END 开户年龄,
                   a.*
            INTO   #tmp_all
            FROM   #tmp A
                   OUTER APPLY (SELECT Count(*) 短期账户数量,
                                       Count(DISTINCT 电话处理) 电话数量
                                FROM   #tmp B
                                WHERE  a.身份序号 = b.身份序号
                                       AND Abs(Datediff(day, CONVERT(DATE, a.开户日期), CONVERT(DATE, b.开户日期))) <= @days) AS FF
            ORDER  BY 身份序号,
                      开户日期
            ----select * from #tmp_all order by 存款人名称
            ------RETURN
            -------------------------------------------------------------------------
            SELECT a.[银行机构代码],
                   d.银行机构名称,
                   a.[账号],
                   a.[账户名称],
                   a.[社会信用代码],
                   a.[工商营业执照有效期],
                   a.法定代表人或负责人姓名,
                   a.[法定代表人或负责人身份证件种类],
                   a.法定代表人或负责人身份证件编号,
                   a.[联系电话],
                   a.短期账户数量,
                   a.电话数量,
                   b.涉案批次 证件涉案批次,
                   c.涉案批次 手机涉案批次,
                   a.开户年龄 法人开户年龄,
                   [账户性质],
                   [账户状态],
                   [开户日期],
                   [销户日期],
                   [久悬日期],
                   a.[注册地地区代码],
                   a.[账户开户地地区代码],
                   a.[基本存款账户开户地地区代码],
                   a.[地址],
                   a.[注册资金金额]
            --INTO #tmp_end
            FROM   #tmp_all a --
                   LEFT JOIN hnxlsys.dbo.tb_red_gr b --
                          ON a. 法定代表人或负责人身份证件编号 = b.证件号码 --
                   LEFT JOIN hnxlsys.dbo.tb_red_phone c --
                          ON a.电话处理 = c.[手机号码] --
                   LEFT JOIN V_Bank d
                          ON a.[银行机构代码] = d.银行编码或代码
            WHERE  CASE
                     WHEN @fr_or_zh = ''1'' THEN 短期账户数量
                     WHEN @fr_or_zh = ''2'' THEN 电话数量
                   END >= @zh_count
            ORDER  BY 身份序号,
                      开户日期
          END
      END
  END
GO 
', NULL, 650, N'060405', N'0', N'0', N'0', N'1', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (307, 552, N'账户异常数量增长监测（del）', N'', N'', N'CREATE PROCEDURE  P_acc_same_cst_mult_acc_per(@acc_count int,@row_num int) WITH ENCRYPTION AS
BEGIN

if object_id(''tempdb..#tmp'') is not null drop table #tmp
if object_id(''tempdb..#tmp0'') is not null drop table #tmp0
if object_id(''tempdb..#tmp00'') is not null drop table #tmp00
if object_id(''tempdb..#tmp000'') is not null drop table #tmp000
if object_id(''tempdb..#tmp1'') is not null drop table #tmp1
if object_id(''tempdb..#tmp2'') is not null drop table #tmp2  
if object_id(''tempdb..#tmp3'') is not null drop table #tmp3
select distinct cst_no,count(distinct acc_no) 账户数量
into #tmp3
from tb_acc
where (acc_type=''0'' or acc_type=''1'') and LEN(rtrim(ltrim(cst_no)))>=4
-- and dbo.FN_DupChar(case when len(cst_no)=datalength(rtrim(ltrim(cst_no))) then cst_no end)=0
group by cst_no
having count(distinct acc_no)>=@acc_count

delete #tmp3 where len(cst_no)<>datalength(rtrim(ltrim(cst_no)))
delete #tmp3 where dbo.FN_DupChar(rtrim(ltrim(cst_no)),4)=1 

select a.cst_no 客户号,id_no 证件号,acc_name 户名,acc_no 账号,c.账户数量,a.bank_code 网点机构代码,b.银行机构名称,
open_time 开户时间,close_time 销户时间,
(case when close_flag=''0'' then ''开户'' when close_flag=''1'' then ''销户'' when close_flag=''2'' then ''更改'' end ) 开销户标志
into #tmp1
from tb_acc a 
left join V_Bank b on a.bank_code=b.银行机构代码
left join #tmp3 c on a.cst_no=c.cst_no
WHERE  a.cst_no in (select cst_no from #tmp3)
select 账号,count(账号) 交易笔数,sum(case when (现转=''现金'') then 1 else 0 end) 现金笔数 
into #tmp2
from V_Txn
where 账号 in (select distinct 账号 from #tmp1)
group by 账号
order by 账号
set rowcount @row_num
select a.*,b.交易笔数,b.现金笔数
from #tmp1 a left join #tmp2 b
on a.账号=b.账号
order by a.客户号,a.网点机构代码,a.账号
set rowcount 0
END
GO', NULL, 662, N'060407', N'0', N'0', N'0', N'0', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (567, 463, N'I类账户非面对面开立', N'功能描述：', N'@提示1!参数类型1:默认值1@提示2!参数类型2:默认值2', N'CREATE PROCEDURE      AS
BEGIN

END
GO', NULL, 567, N'020606', N'1', N'1', N'0', N'1', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (568, 463, N'非面对面开立未绑定银行账户', N'功能描述：', N'@提示1!参数类型1:默认值1@提示2!参数类型2:默认值2', N'CREATE PROCEDURE      AS
BEGIN

END
GO', NULL, 568, N'020607', N'1', N'1', N'0', N'1', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (572, 571, N'生成黑名单', N'根据涉案账户生成单位、个人、手机红名单', N'', N'CREATE PROCEDURE P_red_list
WITH ENCRYPTION
AS
  BEGIN
    IF Object_id(''tempdb..#tmp1'') IS NOT NULL
      DROP TABLE #tmp1
    IF Object_id(''tempdb..#tmp2'') IS NOT NULL
      DROP TABLE #tmp2
    IF Object_id(''[HNXLSYS].[dbo].[tb_red_dw]'', ''u'') IS NOT NULL
      DROP TABLE [HNXLSYS].[dbo].[tb_red_dw]
    IF Object_id(''[HNXLSYS].[dbo].[tb_red_gr]'', ''u'') IS NOT NULL
      DROP TABLE [HNXLSYS].[dbo].[tb_red_gr]
    IF Object_id(''[HNXLSYS].[dbo].[tb_red_phone]'', ''u'') IS NOT NULL
      DROP TABLE [HNXLSYS].[dbo].[tb_red_phone]
    --单位红名单
    SELECT 证件号码,
           户名,
           dbo.Stringlistdistinct(String_agg(Isnull(注册日期, ''N/A''), '','')) 注册日期,
           dbo.Stringlistdistinct(String_agg(Isnull(法人代表, ''N/A''), '','')) 法人代表,
           dbo.Stringlistdistinct(String_agg(Isnull(法人代表证件号, ''N/A''), '','')) 法人代表证件号,
           ''单位'' 涉案账户,
           dbo.Stringlistdistinct(String_agg(Isnull(涉案类型, ''N/A''), '','')) 涉案类型,
           dbo.Stringlistdistinct(String_agg(Isnull(批次, ''N/A''), '','')) 涉案批次
    INTO   [HNXLSYS].[dbo].[tb_red_dw]
    FROM   [HNXLSYS].[dbo].[tb_sazh]
    WHERE  账户类型 = ''单位''
    GROUP  BY 证件号码,
              户名
    ORDER  BY 户名
    ----个人红名单
    SELECT DISTINCT 证件号码,
                    户名 姓名,
                    [dbo].[Regex.replace](''[^\d]*'', 个人或法人代表手机, '''') 手机号码,
                    营业执照地址 个人或单位地址,
                    账户类型 涉案账户,
                    涉案类型,
                    批次 涉案批次
    INTO   #tmp1
    FROM   [HNXLSYS].[dbo].[tb_sazh]
    WHERE  账户类型 = ''个人''
    UNION
    SELECT DISTINCT 法人代表证件号 证件号码,
                    法人代表 姓名,
                    [dbo].[Regex.replace](''[^\d]*'', 个人或法人代表手机, '''') 手机号码,
                    营业执照地址 个人或单位地址,
                    账户类型 涉案账户,
                    涉案类型,
                    批次 涉案批次
    FROM   [HNXLSYS].[dbo].[tb_sazh]
    WHERE  账户类型 = ''单位''
    SELECT 证件号码,
           姓名,
           dbo.Stringlistdistinct(String_agg(Isnull(手机号码, ''N/A''), '','')) 手机号码,
           dbo.Stringlistdistinct(String_agg(Isnull(个人或单位地址, ''N/A''), '','')) 个人或单位地址,
           dbo.Stringlistdistinct(String_agg(Isnull(涉案账户, ''N/A''), '','')) 涉案账户,
           dbo.Stringlistdistinct(String_agg(Isnull(涉案类型, ''N/A''), '','')) 涉案类型,
           dbo.Stringlistdistinct(String_agg(Isnull(涉案批次, ''N/A''), '','')) 涉案批次
    INTO   [HNXLSYS].[dbo].[tb_red_gr]
    FROM   #tmp1
    WHERE  Len(姓名) > 1
           AND Len(证件号码) > 1
    GROUP  BY 证件号码,
              姓名
    ORDER  BY 姓名
    ----手机红名单
    SELECT DISTINCT [dbo].[Regex.replace](''[^\d]*'', 个人或法人代表手机, '''') 手机号码,
                    户名 姓名,
                    证件号码,
                    营业执照地址 个人或单位地址,
                    账户类型 涉案账户,
                    涉案类型,
                    批次 涉案批次
    INTO   #tmp2
    FROM   [HNXLSYS].[dbo].[tb_sazh]
    WHERE  账户类型 = ''个人''
           AND Len([dbo].[Regex.replace](''[^\d]*'', 个人或法人代表手机, '''')) > 1
           AND NOT 个人或法人代表手机 IS NULL
    UNION
    SELECT DISTINCT [dbo].[Regex.replace](''[^\d]*'', 个人或法人代表手机, '''') 手机号码,
                    法人代表 姓名,
                    法人代表证件号 证件号码,
                    营业执照地址 个人或单位地址,
                    账户类型 涉案账户,
                    涉案类型,
                    批次 涉案批次
    FROM   [HNXLSYS].[dbo].[tb_sazh]
    WHERE  账户类型 = ''单位''
           AND Len([dbo].[Regex.replace](''[^\d]*'', 个人或法人代表手机, '''')) > 1
           AND NOT 个人或法人代表手机 IS NULL
    UNION
    SELECT DISTINCT [dbo].[Regex.replace](''[^\d]*'', 联系人手机, '''') 手机号码,
                    财务联系人 姓名,
                    ''财务联系人'' 证件号码,
                    营业执照地址 个人或单位地址,
                    账户类型 涉案账户,
                    涉案类型,
                    批次 涉案批次
    FROM   [HNXLSYS].[dbo].[tb_sazh]
    WHERE  账户类型 = ''单位''
           AND Len([dbo].[Regex.replace](''[^\d]*'', 联系人手机, '''')) > 1
           AND NOT 联系人手机 IS NULL
    SELECT 手机号码,
           dbo.Stringlistdistinct(String_agg(Isnull(姓名, ''N/A''), '','')) 姓名,
           dbo.Stringlistdistinct(String_agg(Isnull(证件号码, ''N/A''), '','')) 证件号码,
           dbo.Stringlistdistinct(String_agg(Isnull(个人或单位地址, ''N/A''), '','')) 个人或单位地址,
           dbo.Stringlistdistinct(String_agg(Isnull(涉案账户, ''N/A''), '','')) 涉案账户,
           dbo.Stringlistdistinct(String_agg(Isnull(涉案类型, ''N/A''), '','')) 涉案类型,
           dbo.Stringlistdistinct(String_agg(Isnull(涉案批次, ''N/A''), '','')) 涉案批次
    INTO   [HNXLSYS].[dbo].[tb_red_phone]
    FROM   #tmp2
    --WHERE  Len(姓名) <> 0
    --     AND Len(证件号码) <> 0
    GROUP  BY 手机号码
    ORDER  BY 姓名
    SELECT ''已生成单位、个人、手机红名单，可查询和在涉案行监测中应用！'' 信息
  END
go 
', NULL, 612, N'060202', N'0', N'0', N'0', N'1', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (570, 285, N'人行账户有---余额表未提供', N'功能描述：', N'@检查期限开始日期!D:20190101@账户状态（1非撤销、9全部）!N:9', N'CREATE PROCEDURE P_rhzh_no_yeb(@bgn_date CHAR(8),@zh_state CHAR(1))
WITH ENCRYPTION
AS
  BEGIN
    --DECLARE @bgn_date CHAR(8)

    --SET @bgn_date=''20190101''

    --DECLARE @zh_state CHAR(1)

    --SET @zh_state = ''1''

    SELECT b.银行机构名称,
           [银行机构代码],
           [存款人类别],
           [账号],
           [账户名称],
           [社会信用代码],
           [工商营业执照有效期],
           [注册资金金额],
           [地址],
           [联系电话],
           [法定代表人或负责人姓名],
           [法定代表人或负责人身份证件种类],
           [法定代表人或负责人身份证件编号],
           [开户日期],
           [久悬日期],
           [销户日期],
           [账户性质],
           [账户状态],
           [基本存款账户开户地地区代码],
           [可否取现]
    FROM   tb_rhzh_dw a
           LEFT JOIN v_bank b
                  ON a.银行机构代码 = b.银行编码或代码
    WHERE  NOT 账号 IN (SELECT DISTINCT 账号
                      FROM   tb_yeb)
           AND 开户日期 >= @bgn_date
           AND 账户状态 <> ( CASE
                           WHEN @zh_state = ''1'' THEN ''撤销''
                           WHEN @zh_state = ''9'' THEN ''所有''
                         END )
  END
go ', NULL, 26, N'01011005', N'1', N'0', N'0', N'1', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (582, 563, N'涉案账户数量银行地市排名', N'涉案账户数量银行在全省的排名情况', N'@地名!S:@所属银行!S:@批次!S:断卡202005@户名!S:@证件号码!S:@法人代表!S:@法人代表证件号!S:@法人代表手机!S:@涉案类型(涉案、涉诈、涉赌)!S:@账户类型（单位个人)!S:', N'CREATE PROCEDURE P_sazh_city_order(@dm VARCHAR(100),@bank VARCHAR(60),@pc VARCHAR(20),@hm VARCHAR(100),@zjhm VARCHAR(30),@frdb VARCHAR(60),@frdbzjh VARCHAR(30),@frdbsj VARCHAR(30),@salx VARCHAR(60),@zhlx VARCHAR(60))
WITH ENCRYPTION
AS
  BEGIN
    --银行地市排名
    --DECLARE @dm VARCHAR(100)
    --SET @dm=''''
    --DECLARE @bank VARCHAR(60)
    --SET @bank=''''
    --DECLARE @pc VARCHAR(12)
    --SET @pc=''断卡''
    --DECLARE @hm VARCHAR(100)
    --SET @hm=''''
    --DECLARE @zjhm VARCHAR(30)
    --SET @zjhm=''''
    --DECLARE @frdb VARCHAR(60)
    --SET @frdb=''''
    --DECLARE @frdbzjh VARCHAR(30)
    --SET @frdbzjh=''''
    --DECLARE @frdbsj VARCHAR(30)
    --SET @frdbsj=''''
    --DECLARE @salx VARCHAR(60)
    --SET @salx=''''
    --DECLARE @zhlx VARCHAR(60)
    --SET @zhlx=''个人''
    --
    IF Object_id(''tempdb..#tmp'') IS NOT NULL
      DROP TABLE #tmp
    --
    DECLARE @sql VARCHAR(max)
    DECLARE @tmp VARCHAR(60)
    SELECT ''              A全辖                  '' 银行,
           [城市],
           Count(DISTINCT 账号) 数量,
           Row_number() OVER(ORDER BY Count(DISTINCT 账号) desc) 名次
    INTO   #tmp
    FROM   [HNXLSYS].[dbo].[tb_sazh] a,
           dbo.Ufn_splitstringtotable(@dm, ''|'') b
    WHERE  ( Charindex(b.id, a.开户网点名称) > 0
              OR Charindex(b.id, a.省份 + a.城市 + a.区县) > 0
              OR Len(b.id) = 0 )
           AND a.银行 LIKE ''%'' + @bank + ''%''
           AND a.批次 LIKE ''%'' + @pc + ''%''
           AND a.户名 LIKE ''%'' + @hm + ''%''
           AND a.证件号码 LIKE ''%'' + @zjhm + ''%''
           AND a.法人代表 LIKE ''%'' + @frdb + ''%''
           AND a.法人代表证件号 LIKE ''%'' + @frdbzjh + ''%''
           AND a.个人或法人代表手机 LIKE ''%'' + @frdbsj + ''%''
           AND a.账户类型 LIKE ''%'' + @zhlx + ''%''
           AND a.涉案类型 LIKE ''%'' + @salx + ''%''
    GROUP  BY [城市]
    ORDER  BY 数量 DESC
    --申明游标为银行
    DECLARE order_cursor CURSOR FOR
      (SELECT DISTINCT 银行
       FROM   [HNXLSYS].[dbo].[tb_sazh] a,
              dbo.Ufn_splitstringtotable(@dm, ''|'') b
       WHERE  ( Charindex(b.id, a.开户网点名称) > 0
                 OR Charindex(b.id, a.省份 + a.城市 + a.区县) > 0
                 OR Len(b.id) = 0 )
              AND 批次  like ''%'' + @pc + ''%'')
    --打开游标--
    OPEN order_cursor
    --开始循环游标变量--
    FETCH next FROM order_cursor INTO @tmp
    WHILE @@FETCH_STATUS = 0 --返回被 FETCH语句执行的最后游标的状态--
      BEGIN
        SET @bank = @tmp
        INSERT INTO #tmp
        SELECT @tmp 银行,
               [城市],
               Count(DISTINCT 账号) 数量,
           Row_number() OVER(ORDER BY Count(DISTINCT 账号) desc) 名次
        FROM   [HNXLSYS].[dbo].[tb_sazh] a,
               dbo.Ufn_splitstringtotable(@dm, ''|'') b
        WHERE  ( Charindex(b.id, a.开户网点名称) > 0
                  OR Charindex(b.id, a.省份 + a.城市 + a.区县) > 0
                  OR Len(b.id) = 0 )
               AND a.银行 LIKE ''%'' + @bank + ''%''
               AND a.批次 LIKE ''%'' + @pc + ''%''
               AND a.户名 LIKE ''%'' + @hm + ''%''
               AND a.证件号码 LIKE ''%'' + @zjhm + ''%''
               AND a.法人代表 LIKE ''%'' + @frdb + ''%''
               AND a.法人代表证件号 LIKE ''%'' + @frdbzjh + ''%''
               AND a.个人或法人代表手机 LIKE ''%'' + @frdbsj + ''%''
               AND a.账户类型 LIKE ''%'' + @zhlx + ''%''
               AND a.涉案类型 LIKE ''%'' + @salx + ''%''
        GROUP  BY [城市]
        ORDER  BY 数量 DESC
        FETCH next FROM order_cursor INTO @tmp --转到下一个游标，没有会死循环
      END
    CLOSE order_cursor --关闭游标
    DEALLOCATE order_cursor --释放游标
    SELECT Trim(银行) 银行,
           城市,
           名次,
           数量 涉案账户数量
    FROM   #tmp
    ORDER  BY 银行,
              数量 DESC
  END
GO 
', NULL, 674, N'060603', N'0', N'0', N'0', N'1', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (583, 563, N'涉案账户数量地市银行排名', N'涉案账户数量在各地市银行排名情况', N'@地名!S:@所属银行!S:@批次!S:断卡02@户名!S:@证件号码!S:@法人代表!S:@法人代表证件号!S:@法人代表手机!S:@涉案类型(涉案、涉诈、涉赌)!S:@账户类型（单位个人)!S:', N'CREATE PROCEDURE P_sazh_bank_order(@dm VARCHAR(100),@bank VARCHAR(60),@pc VARCHAR(20),@hm VARCHAR(100),@zjhm VARCHAR(30),@frdb VARCHAR(60),@frdbzjh VARCHAR(30),@frdbsj VARCHAR(30),@salx VARCHAR(60),@zhlx VARCHAR(60))
WITH ENCRYPTION
AS
  BEGIN
    --地市银行排名
    --DECLARE @dm VARCHAR(100)
    --SET @dm=''''
    --DECLARE @bank VARCHAR(60)
    --SET @bank=''''
    --DECLARE @pc VARCHAR(12)
    --SET @pc=''断卡''
    --DECLARE @hm VARCHAR(100)
    --SET @hm=''''
    --DECLARE @zjhm VARCHAR(30)
    --SET @zjhm=''''
    --DECLARE @frdb VARCHAR(60)
    --SET @frdb=''''
    --DECLARE @frdbzjh VARCHAR(30)
    --SET @frdbzjh=''''
    --DECLARE @frdbsj VARCHAR(30)
    --SET @frdbsj=''''
    --DECLARE @salx VARCHAR(60)
    --SET @salx=''''
    --DECLARE @zhlx VARCHAR(60)
    --SET @zhlx=''''
    DECLARE @city VARCHAR(60)
    SET @city=''''
    --
    IF Object_id(''tempdb..#tmp'') IS NOT NULL
      DROP TABLE #tmp
    --
    -- DECLARE @sql VARCHAR(max)
    DECLARE @tmp VARCHAR(60)
    SELECT ''             0全省                  '' 城市,
           银行,
           Count(DISTINCT 账号) 数量,
           Row_number() OVER(ORDER BY Count(DISTINCT 账号) desc) 名次
    INTO   #tmp
    FROM   [HNXLSYS].[dbo].[tb_sazh] a,
           dbo.Ufn_splitstringtotable(@dm, ''|'') b
    WHERE  ( Charindex(b.id, a.开户网点名称) > 0
              OR Charindex(b.id, a.省份 + a.城市 + a.区县) > 0
              OR Len(b.id) = 0 )
           AND a.银行 LIKE ''%'' + @bank + ''%''
           AND a.批次 LIKE ''%'' + @pc + ''%''
           AND a.户名 LIKE ''%'' + @hm + ''%''
           AND a.证件号码 LIKE ''%'' + @zjhm + ''%''
           AND a.法人代表 LIKE ''%'' + @frdb + ''%''
           AND a.法人代表证件号 LIKE ''%'' + @frdbzjh + ''%''
           AND a.个人或法人代表手机 LIKE ''%'' + @frdbsj + ''%''
           AND a.账户类型 LIKE ''%'' + @zhlx + ''%''
           AND a.涉案类型 LIKE ''%'' + @salx + ''%''
    GROUP  BY 银行
    ORDER  BY 数量 DESC
    --申明游标为城市
    DECLARE order_cursor CURSOR FOR
      (SELECT DISTINCT 城市
       FROM   [HNXLSYS].[dbo].[tb_sazh] a,
              dbo.Ufn_splitstringtotable(@dm, ''|'') b
       WHERE  ( Charindex(b.id, a.开户网点名称) > 0
                 OR Charindex(b.id, a.省份 + a.城市 + a.区县) > 0
                 OR Len(b.id) = 0 )
              AND 批次 LIKE ''%'' + @pc + ''%'')
    --打开游标--
    OPEN order_cursor
    --开始循环游标变量--
    FETCH next FROM order_cursor INTO @tmp
    WHILE @@FETCH_STATUS = 0 --返回被 FETCH语句执行的最后游标的状态--
      BEGIN
        --SET @city = @tmp
        INSERT INTO #tmp
        SELECT @tmp [城市],
               银行,
               Count(DISTINCT 账号) 数量,
               Row_number() OVER(ORDER BY Count(DISTINCT 账号) desc) 名次
        FROM   [HNXLSYS].[dbo].[tb_sazh] a,
               dbo.Ufn_splitstringtotable(@dm, ''|'') b
        WHERE  ( Charindex(b.id, a.开户网点名称) > 0
                  OR Charindex(b.id, a.省份 + a.城市 + a.区县) > 0
                  OR Len(b.id) = 0 )
               AND a.银行 LIKE ''%'' + @bank + ''%''
               AND a.批次 LIKE ''%'' + @pc + ''%''
               AND a.户名 LIKE ''%'' + @hm + ''%''
               AND a.证件号码 LIKE ''%'' + @zjhm + ''%''
               AND a.法人代表 LIKE ''%'' + @frdb + ''%''
               AND a.法人代表证件号 LIKE ''%'' + @frdbzjh + ''%''
               AND a.个人或法人代表手机 LIKE ''%'' + @frdbsj + ''%''
               AND a.账户类型 LIKE ''%'' + @zhlx + ''%''
               AND a.涉案类型 LIKE ''%'' + @salx + ''%''
               AND a.城市 LIKE ''%'' + @tmp + ''%''
        GROUP  BY 银行
        ORDER  BY 数量 DESC
        FETCH next FROM order_cursor INTO @tmp --转到下一个游标，没有会死循环
      END
    CLOSE order_cursor --关闭游标
    DEALLOCATE order_cursor --释放游标
    SELECT Trim(城市) 城市,
           银行,
           名次,
           数量 涉案账户数量
    FROM   #tmp
    ORDER  BY 城市,
              数量 DESC
  END
GO 
', NULL, 675, N'060604', N'0', N'0', N'0', N'1', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (443, 571, N'单位黑名单查询', N'从账户管理系统提取含有关键字如“银行”而且不含关键字如“工商银行”的账户，不含关键字一般为开户行名称的关键字）', N'@单位证件号!S:@单位名称!S:@法人代表名称!S:@法人代表证件号!S:@涉案批次!S:@查询起始行!N:1@行数!N:100', N'CREATE PROCEDURE P_red_dw_qry(@id_no VARCHAR(20),@acc_name VARCHAR(60),@fr_name VARCHAR(20),@fr_id VARCHAR(20),@sapc VARCHAR(60),@bgn INT,@num INT)
WITH ENCRYPTION
AS
  BEGIN
    IF Object_id(N''hnxlsys.dbo.tb_red_dw1'', N''U'') IS NOT NULL
      BEGIN
        SELECT TOP (@num) *
        FROM   (SELECT *,
                       Row_number()
                         OVER (
                           ORDER BY 户名) AS row
                FROM   hnxlsys.dbo.tb_red_dw) a
        WHERE  row >= @bgn
               AND ( [证件号码] LIKE ''%'' + Isnull(@id_no, '''') + ''%''
                     AND [户名] LIKE ''%'' + Isnull(@acc_name, '''') + ''%''
                     AND [法人代表] LIKE ''%'' + Isnull(@fr_name, '''') + ''%''
                     AND [法人代表证件号] LIKE ''%'' + Isnull(@fr_id, '''') + ''%''
                     AND [涉案批次] LIKE ''%'' + Isnull(@sapc, '''') + ''%'' )
      END
    ELSE
      BEGIN
        SELECT ''×……请首先利用系统生成黑名单'' 信息
      END
  END
go 
', NULL, 614, N'060203', N'0', N'0', N'0', N'1', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (523, 551, N'单位同一证件号不同名称账户x', N'', N'', N'CREATE PROCEDURE      AS
BEGIN

END
GO', NULL, 636, N'060308', N'0', N'0', N'0', N'0', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (525, 552, N'同地址多不同存款人账户', N'', N'@提示1!参数类型1:默认值1@提示2!参数类型2:默认值2', N'CREATE PROCEDURE      AS
BEGIN

END
GO', NULL, 656, N'060406', N'0', N'0', N'0', N'0', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (453, 416, N'个人账户总体数据导入情况', N'', N'', N'CREATE PROCEDURE P_gr_date_ok
WITH ENCRYPTION
AS
  BEGIN
    DECLARE @s_tb_rhzh_gr VARCHAR(80),@s_tb_rhzh_gr1 VARCHAR(80),@s_tb_rhzh_gr2 VARCHAR(80)--人行账户
    DECLARE @s_tb_rhzh_gr_zpzh VARCHAR(80),@s_tb_rhzh_gr_zpzh1 VARCHAR(80),@s_tb_rhzh_gr_zpzh2 VARCHAR(80)--支票账户
    DECLARE @s_tb_rhzh_gr_jjk VARCHAR(80),@s_tb_rhzh_gr_jjk1 VARCHAR(80),@s_tb_rhzh_gr_jjk2 VARCHAR(80)--借记卡
    DECLARE @s_tb_rhzh_gr_djk VARCHAR(80),@s_tb_rhzh_gr_djk1 VARCHAR(80),@s_tb_rhzh_gr_djk2 VARCHAR(80)--贷记卡
    DECLARE @s_tb_rhzh_gr_qt VARCHAR(80),@s_tb_rhzh_gr_qt1 VARCHAR(80),@s_tb_rhzh_gr_qt2 VARCHAR(80)--其它
    DECLARE @s_tb_rhzh_gr_zdjk VARCHAR(80),@s_tb_rhzh_gr_zdjk1 VARCHAR(80),@s_tb_rhzh_gr_zdjk2 VARCHAR(80)--准贷记卡
    -------------------------------------
    -------------------------------
    DECLARE @s_tb_shzh_gr VARCHAR(80),@s_tb_shzh_gr1 VARCHAR(80),@s_tb_shzh_gr2 VARCHAR(80)--商行账户
    DECLARE @s_tb_shzh_gr_I VARCHAR(80),@s_tb_shzh_gr_I1 VARCHAR(80),@s_tb_shzh_gr_I2 VARCHAR(80)--I类户
    DECLARE @s_tb_shzh_gr_II VARCHAR(80),@s_tb_shzh_gr_II1 VARCHAR(80),@s_tb_shzh_gr_II2 VARCHAR(80)--I类户
    DECLARE @s_tb_shzh_gr_III VARCHAR(80),@s_tb_shzh_gr_III1 VARCHAR(80),@s_tb_shzh_gr_III2 VARCHAR(80)--I类户
    DECLARE @s_tb_shzh_gr_dj VARCHAR(80),@s_tb_shzh_gr_dj1 VARCHAR(80),@s_tb_shzh_gr_dj2 VARCHAR(80)--贷记
    DECLARE @s_tb_shzh_gr_qt VARCHAR(80),@s_tb_shzh_gr_qt1 VARCHAR(80),@s_tb_shzh_gr_qt2 VARCHAR(80)--其他
    DECLARE @s_tb_shzh_gr_not VARCHAR(80),@s_tb_shzh_gr_not1 VARCHAR(80),@s_tb_shzh_gr_not2 VARCHAR(80)--不合规
    ----------------
    DECLARE @s_tb_shjy_gr VARCHAR(80),@s_tb_shjy_gr1 VARCHAR(80),@s_tb_shjy_gr2 VARCHAR(80)--商行交易

    ----------------------------------------------
    SET @s_tb_rhzh_gr=''人行个人账户数据（总）''
    SET @s_tb_rhzh_gr_zpzh=''人行个人账户数据（支票账户）''
    SET @s_tb_rhzh_gr_jjk=''人行个人账户数据（借记卡）''
    SET @s_tb_rhzh_gr_djk=''人行个人账户数据（贷记卡）''
    SET @s_tb_rhzh_gr_qt=''人行个人账户数据（其它）''
    SET @s_tb_rhzh_gr_zdjk=''人行个人账户数据（准贷记卡）''

    --------------------------------------------
    IF Object_id(N''tb_rhzh_gr'', N''U'') IS NOT NULL
      BEGIN
        SET @s_tb_rhzh_gr1=(SELECT ''开户：'' + Min(开户日期) + ''～'' + Max(开户日期) + ''--销户：''
                                   + Min(销户日期) + ''～'' + Max(销户日期)
                            FROM   tb_rhzh_gr)
        SET @s_tb_rhzh_gr2=(SELECT Count(DISTINCT 账号)
                            FROM   tb_rhzh_gr)
        SET @s_tb_rhzh_gr_zpzh1=(SELECT ''开户：'' + Min(开户日期) + ''～'' + Max(开户日期) + ''--销户：''
                                        + Min(销户日期) + ''～'' + Max(销户日期)
                                 FROM   tb_rhzh_gr
                                 WHERE  账户类型 = ''支票账户'')
        SET @s_tb_rhzh_gr_zpzh2=(SELECT Count(DISTINCT 账号)
                                 FROM   tb_rhzh_gr
                                 WHERE  账户类型 = ''支票账户'')
        SET @s_tb_rhzh_gr_jjk1=(SELECT ''开户：'' + Min(开户日期) + ''～'' + Max(开户日期) + ''--销户：''
                                       + Min(销户日期) + ''～'' + Max(销户日期)
                                FROM   tb_rhzh_gr
                                WHERE  账户类型 = ''借记卡'')
        SET @s_tb_rhzh_gr_jjk2=(SELECT Count(DISTINCT 账号)
                                FROM   tb_rhzh_gr
                                WHERE  账户类型 = ''借记卡'')
        SET @s_tb_rhzh_gr_djk1=(SELECT ''开户：'' + Min(开户日期) + ''～'' + Max(开户日期) + ''--销户：''
                                       + Min(销户日期) + ''～'' + Max(销户日期)
                                FROM   tb_rhzh_gr
                                WHERE  账户类型 = ''贷记卡'')
        SET @s_tb_rhzh_gr_djk2=(SELECT Count(DISTINCT 账号)
                                FROM   tb_rhzh_gr
                                WHERE  账户类型 = ''贷记卡'')
        SET @s_tb_rhzh_gr_qt1=(SELECT ''开户：'' + Min(开户日期) + ''～'' + Max(开户日期) + ''--销户：''
                                      + Min(销户日期) + ''～'' + Max(销户日期)
                               FROM   tb_rhzh_gr
                               WHERE  账户类型 = ''其他'')
        SET @s_tb_rhzh_gr_qt2=(SELECT Count(DISTINCT 账号)
                               FROM   tb_rhzh_gr
                               WHERE  账户类型 = ''其他'')
        SET @s_tb_rhzh_gr_zdjk1=(SELECT ''开户：'' + Min(开户日期) + ''～'' + Max(开户日期) + ''--销户：''
                                        + Min(销户日期) + ''～'' + Max(销户日期)
                                 FROM   tb_rhzh_gr
                                 WHERE  账户类型 = ''准贷记卡'')
        SET @s_tb_rhzh_gr_zdjk2=(SELECT Count(DISTINCT 账号)
                                 FROM   tb_rhzh_gr
                                 WHERE  账户类型 = ''准贷记卡'')
      END
    ELSE
      BEGIN
        SET @s_tb_rhzh_gr1=''×人行个人账户数据未导入''
      END

    -----------------------------------------------------------------------
    SET @s_tb_shzh_gr=''商行个人账户数据（总）''
    SET @s_tb_shzh_gr_I=''商行个人账户数据（I类户）''
    SET @s_tb_shzh_gr_II=''商行个人账户数据（II类户）''
    SET @s_tb_shzh_gr_III=''商行个人账户数据（III类户）''
    SET @s_tb_shzh_gr_dj=''商行个人账户数据（贷记）''
    SET @s_tb_shzh_gr_qt=''商行个人账户数据（其他）''
    SET @s_tb_shzh_gr_not=''商行个人账户数据（不合规）''

    ---------------------------------------------------
    IF Object_id(N''tb_shzh_gr'', N''U'') IS NOT NULL
      BEGIN
        SET @s_tb_shzh_gr1=(SELECT ''开户：'' + Min(开户日期) + ''～'' + Max(开户日期) + ''--销户：''
                                   + Min(销户日期) + ''～'' + Max(销户日期)
                            FROM   tb_shzh_gr)
        SET @s_tb_shzh_gr2=(SELECT Count(DISTINCT 账号)
                            FROM   tb_shzh_gr)
        SET @s_tb_shzh_gr_I1=(SELECT ''开户：'' + Min(开户日期) + ''～'' + Max(开户日期) + ''--销户：''
                                     + Min(销户日期) + ''～'' + Max(销户日期)
                              FROM   tb_shzh_gr
                              WHERE  账户类型 = ''一类'')
        SET @s_tb_shzh_gr_I2=(SELECT Count(DISTINCT 账号)
                              FROM   tb_shzh_gr
                              WHERE  账户类型 = ''一类'')
        SET @s_tb_shzh_gr_II1=(SELECT ''开户：'' + Min(开户日期) + ''～'' + Max(开户日期) + ''--销户：''
                                      + Min(销户日期) + ''～'' + Max(销户日期)
                               FROM   tb_shzh_gr
                               WHERE  账户类型 = ''二类'')
        SET @s_tb_shzh_gr_II2=(SELECT Count(DISTINCT 账号)
                               FROM   tb_shzh_gr
                               WHERE  账户类型 = ''二类'')
        SET @s_tb_shzh_gr_III1=(SELECT ''开户：'' + Min(开户日期) + ''～'' + Max(开户日期) + ''--销户：''
                                       + Min(销户日期) + ''～'' + Max(销户日期)
                                FROM   tb_shzh_gr
                                WHERE  账户类型 = ''三类'')
        SET @s_tb_shzh_gr_III2=(SELECT Count(DISTINCT 账号)
                                FROM   tb_shzh_gr
                                WHERE  账户类型 = ''三类'')
        SET @s_tb_shzh_gr_dj1=(SELECT ''开户：'' + Min(开户日期) + ''～'' + Max(开户日期) + ''--销户：''
                                      + Min(销户日期) + ''～'' + Max(销户日期)
                               FROM   tb_shzh_gr
                               WHERE  账户类型 = ''贷记'')
        SET @s_tb_shzh_gr_dj2=(SELECT Count(DISTINCT 账号)
                               FROM   tb_shzh_gr
                               WHERE  账户类型 = ''贷记'')
        SET @s_tb_shzh_gr_qt1=(SELECT ''开户：'' + Min(开户日期) + ''～'' + Max(开户日期) + ''--销户：''
                                      + Min(销户日期) + ''～'' + Max(销户日期)
                               FROM   tb_shzh_gr
                               WHERE  账户类型 = ''其他'')
        SET @s_tb_shzh_gr_qt2=(SELECT Count(DISTINCT 账号)
                               FROM   tb_shzh_gr
                               WHERE  账户类型 = ''其他'')
        SET @s_tb_shzh_gr_not1=(SELECT ''开户：'' + Min(开户日期) + ''～'' + Max(开户日期) + ''--销户：''
                                       + Min(销户日期) + ''～'' + Max(销户日期)
                                FROM   tb_shzh_gr
                                WHERE  NOT 账户类型 IN ( ''一类'', ''二类'', ''三类'', ''贷记'', ''其他'' ))
        SET @s_tb_shzh_gr_not2=(SELECT Count(DISTINCT 账号)
                                FROM   tb_shzh_gr
                                WHERE  NOT 账户类型 IN ( ''一类'', ''二类'', ''三类'', ''贷记'', ''其他'' ))
      END
    ELSE
      BEGIN
        SET @s_tb_shzh_gr1=''×商行个人账户数据未导入''
      END

    --------------------------------------------
    SET @s_tb_shjy_gr=''商行交易数据（总）''

    IF Object_id(N''tb_shjy_gr'', N''U'') IS NOT NULL
      BEGIN
        SET @s_tb_shjy_gr1=(SELECT Min(交易日期) + ''～'' + Max(交易日期)
                            FROM   tb_shjy_gr)
        SET @s_tb_shjy_gr2=(SELECT Count(DISTINCT 账号)
                            FROM   tb_shjy_gr)
      END
    ELSE
      BEGIN
        SET @s_tb_shjy_gr1=''×商行个人交易数据未导入''
      END

    ---------------------------------------------------
    SELECT @s_tb_rhzh_gr 数据源,
           @s_tb_rhzh_gr1 时间范围,
           @s_tb_rhzh_gr2 数量 --人行账户
    UNION ALL
    SELECT @s_tb_rhzh_gr_zpzh,
           @s_tb_rhzh_gr_zpzh1,
           @s_tb_rhzh_gr_zpzh2 --支票账户
    UNION ALL
    SELECT @s_tb_rhzh_gr_jjk,
           @s_tb_rhzh_gr_jjk1,
           @s_tb_rhzh_gr_jjk2 --借记卡
    UNION ALL
    SELECT @s_tb_rhzh_gr_djk,
           @s_tb_rhzh_gr_djk1,
           @s_tb_rhzh_gr_djk2 --贷记卡
    UNION ALL
    SELECT @s_tb_rhzh_gr_qt,
           @s_tb_rhzh_gr_qt1,
           @s_tb_rhzh_gr_qt2 --其它
    UNION ALL
    SELECT @s_tb_rhzh_gr_zdjk,
           @s_tb_rhzh_gr_zdjk1,
           @s_tb_rhzh_gr_zdjk2 --准贷记卡
    UNION ALL
    SELECT ''------------------------'',
           ''----------------------------------------'',
           ''-------------''
    -------------------------------
    UNION ALL
    SELECT @s_tb_shzh_gr,
           @s_tb_shzh_gr1,
           @s_tb_shzh_gr2 --商行账户
    UNION ALL
    SELECT @s_tb_shzh_gr_I,
           @s_tb_shzh_gr_I1,
           @s_tb_shzh_gr_I2 --I类户
    UNION ALL
    SELECT @s_tb_shzh_gr_II,
           @s_tb_shzh_gr_II1,
           @s_tb_shzh_gr_II2 --I类户
    UNION ALL
    SELECT @s_tb_shzh_gr_III,
           @s_tb_shzh_gr_III1,
           @s_tb_shzh_gr_III2 --I类户
    UNION ALL
    SELECT @s_tb_shzh_gr_dj,
           @s_tb_shzh_gr_dj1,
           @s_tb_shzh_gr_dj2 --贷记
    UNION ALL
    SELECT @s_tb_shzh_gr_qt,
           @s_tb_shzh_gr_qt1,
           @s_tb_shzh_gr_qt2 --其他
    UNION ALL
    SELECT @s_tb_shzh_gr_not,
           @s_tb_shzh_gr_not1,
           @s_tb_shzh_gr_not2 --不合规
    UNION ALL
    SELECT ''------------------------'',
           ''----------------------------------------'',
           ''-------------''
    ----------------
    UNION ALL
    SELECT @s_tb_shjy_gr,
           @s_tb_shjy_gr1,
           @s_tb_shjy_gr2 --商行交易
  END
GO ', NULL, 34, N'010201', N'0', N'0', N'0', N'1', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (465, 416, N'商行个人账户字段提供情况', N'', N'', N'CREATE PROCEDURE Pg_zh_num
WITH ENCRYPTION
AS
  BEGIN
    SELECT '' -----账户总数-----'' 信息类型,
           Cast(Count(*) AS VARCHAR(20)) 数量,
           '''' 说明
    FROM   tb_shzh_gr
    UNION
    SELECT ''1. ---账户类型---'' 信息类型,
           '''' 数量,
           ''若分类信息不完整则整个账户分类检查无法实施'' 说明
    FROM   tb_shzh_gr
    UNION
    SELECT ''1.1 I类账户'' 信息类型,
           Cast(Count(*) AS VARCHAR(20)) 数量,
           CASE
             WHEN Count(*) = 0 THEN ''没有I类户数据可能有问题''
             ELSE ''''
           END 说明
    FROM   tb_shzh_gr
    WHERE  账户类型 = ''一类''
    UNION
    SELECT ''1.2 II类账户'' 信息类型,
           Cast(Count(*) AS VARCHAR(20)) 数量,
           CASE
             WHEN Count(*) = 0 THEN ''没有II类户数据可能有问题''
             ELSE ''''
           END 说明
    FROM   tb_shzh_gr
    WHERE  账户类型 = ''二类''
    UNION
    SELECT ''1.3 III类账户'' 信息类型,
           Cast(Count(*) AS VARCHAR(20)) 数量,
           '''' 说明
    FROM   tb_shzh_gr
    WHERE  账户类型 = ''三类''
    UNION
    SELECT ''1.4 贷记账户'' 信息类型,
           Cast(Count(*) AS VARCHAR(20)) 数量,
           '''' 说明
    FROM   tb_shzh_gr
    WHERE  账户类型 = ''贷记''
    UNION
    SELECT ''1.5 其他类型'' 信息类型,
           Cast(Count(*) AS VARCHAR(20)) 数量,
           CASE
             WHEN Count(*) > 0 THEN ''若其他类型较多将影响检查''
             ELSE ''''
           END 说明
    FROM   tb_shzh_gr
    WHERE  账户类型 = ''其他''
    UNION
    SELECT ''1.6 不符合数据规范'' 信息类型,
           Cast(Count(*) AS VARCHAR(20)) 数量,
           CASE
             WHEN Count(*) > 0 THEN ''若不符规范数据较多将影响检查''
             ELSE ''''
           END 说明
    FROM   tb_shzh_gr
    WHERE  账户类型 IS NULL
            OR ( NOT 账户类型 IS NULL
                 AND Len(账户类型) = 0 )
            OR ( 账户类型 <> ''一类''
                 AND 账户类型 <> ''二类''
                 AND 账户类型 <> ''三类''
                 AND 账户类型 <> ''贷记''
                 AND 账户类型 <> ''其他'' )
    UNION
    SELECT ''2.---账户状态---'' 信息类型,
           ''---'' 数量,
           ''账户状态数据若不完整，将影响检查'' 说明
    FROM   tb_shzh_gr
    UNION
    SELECT ''2.1 正常'' 信息类型,
           Cast(Count(*) AS VARCHAR(20)) 数量,
           '''' 说明
    FROM   tb_shzh_gr
    WHERE  账户状态 = ''正常''
    UNION
    SELECT ''2.2 未激活'' 信息类型,
           Cast(Count(*) AS VARCHAR(20)) 数量,
           '''' 说明
    FROM   tb_shzh_gr
    WHERE  账户状态 = ''未激活''
    UNION
    SELECT ''2.3 只收不付'' 信息类型,
           Cast(Count(*) AS VARCHAR(20)) 数量,
           '''' 说明
    FROM   tb_shzh_gr
    WHERE  账户状态 = ''只收不付''
    UNION
    SELECT ''2.4 不收不付'' 信息类型,
           Cast(Count(*) AS VARCHAR(20)) 数量,
           '''' 说明
    FROM   tb_shzh_gr
    WHERE  账户状态 = ''不收不付''
    UNION
    SELECT ''2.5 已冻结'' 信息类型,
           Cast(Count(*) AS VARCHAR(20)) 数量,
           '''' 说明
    FROM   tb_shzh_gr
    WHERE  账户状态 = ''冻结''
    UNION
    SELECT ''2.6 已注销'' 信息类型,
           Cast(Count(*) AS VARCHAR(20)) 数量,
           '''' 说明
    FROM   tb_shzh_gr
    WHERE  账户状态 = ''注销''
    UNION
    SELECT ''2.7 其他'' 信息类型,
           Cast(Count(*) AS VARCHAR(20)) 数量,
           CASE
             WHEN Count(*) > 0 THEN ''若其他状态较多将影响检查''
             ELSE ''''
           END 说明
    FROM   tb_shzh_gr
    WHERE  账户状态 = ''其他''
    UNION
    SELECT ''2.8 不符合数据规范'' 信息类型,
           Cast(Count(*) AS VARCHAR(20)) 数量,
           CASE
             WHEN Count(*) > 0 THEN ''若不符规范数据较多将影响检查''
             ELSE ''''
           END 说明
    FROM   tb_shzh_gr
    WHERE  账户状态 IS NULL
            OR ( NOT 账户状态 IS NULL
                 AND Len(账户状态) = 0 )
            OR ( 账户状态 <> ''正常''
                 AND 账户状态 <> ''未激活''
                 AND 账户状态 <> ''只收不付''
                 AND 账户状态 <> ''不收不付''
                 AND 账户状态 <> ''冻结''
                 AND 账户状态 <> ''注销''
                 AND 账户状态 <> ''其他'' )
    UNION
    SELECT ''3.---存款人证件种类---'' 信息类型,
           ''---'' 数量,
           ''若证件种类未提供或不符合规范将影响实名制检查'' 说明
    FROM   tb_shzh_gr
    UNION
    SELECT ''3.1 居民身份证'' 信息类型,
           Cast(Count(*) AS VARCHAR(20)) 数量,
           '''' 说明
    FROM   tb_shzh_gr
    WHERE  证件种类 = ''身份证''
    UNION
    SELECT ''3.2 临时居民身份证'' 信息类型,
           Cast(Count(*) AS VARCHAR(20)) 数量,
           '''' 说明
    FROM   tb_shzh_gr
    WHERE  证件种类 = ''临时身份证''
    UNION
    SELECT ''3.3 户口簿'' 信息类型,
           Cast(Count(*) AS VARCHAR(20)) 数量,
           '''' 说明
    FROM   tb_shzh_gr
    WHERE  证件种类 = ''户口簿''
    UNION
    SELECT ''3.4 军人或武警身份证'' 信息类型,
           Cast(Count(*) AS VARCHAR(20)) 数量,
           '''' 说明
    FROM   tb_shzh_gr
    WHERE  证件种类 = ''军人或武警身份证''
    UNION
    SELECT ''3.5 外国公民护照'' 信息类型,
           Cast(Count(*) AS VARCHAR(20)) 数量,
           '''' 说明
    FROM   tb_shzh_gr
    WHERE  证件种类 = ''外国公民护照''
    UNION
    SELECT ''3.6 港澳台居民来往内地或大陆通行证'' 信息类型,
           Cast(Count(*) AS VARCHAR(20)) 数量,
           '''' 说明
    FROM   tb_shzh_gr
    WHERE  证件种类 = ''港澳台通行证''
    UNION
    SELECT ''3.7 外国人永久居留证'' 信息类型,
           Cast(Count(*) AS VARCHAR(20)) 数量,
           '''' 说明
    FROM   tb_shzh_gr
    WHERE  证件种类 = ''外国人永久居留证''
    UNION
    SELECT ''3.8 港澳台居民居住证'' 信息类型,
           Cast(Count(*) AS VARCHAR(20)) 数量,
           '''' 说明
    FROM   tb_shzh_gr
    WHERE  证件种类 = ''港澳台居民居住证''
    UNION
    SELECT ''3.9 中国护照'' 信息类型,
           Cast(Count(*) AS VARCHAR(20)) 数量,
           '''' 说明
    FROM   tb_shzh_gr
    WHERE  证件种类 = ''中国护照''
    UNION
    SELECT ''3.10 边民出入境通行证'' 信息类型,
           Cast(Count(*) AS VARCHAR(20)) 数量,
           '''' 说明
    FROM   tb_shzh_gr
    WHERE  证件种类 = ''边民出入境通行证''
    UNION
    SELECT ''3.11 其他类个人身份有效证件'' 信息类型,
           Cast(Count(*) AS VARCHAR(20)) 数量,
           '''' 说明
    FROM   tb_shzh_gr
    WHERE  证件种类 = ''其他''
    UNION
    SELECT ''3.12 不符合数据规范'' 信息类型,
           Cast(Count(*) AS VARCHAR(20)) 数量,
           CASE
             WHEN Count(*) > 0 THEN ''证件种类为空，数量大怀疑数据提供问题，数量小可作为检查线索''
             ELSE ''''
           END 说明
    FROM   tb_shzh_gr
    WHERE  证件种类 IS NULL
            OR Len(证件种类) = 0
    UNION
    SELECT ''4.---代理人证件种类---'' 信息类型,
           ''---'' 数量,
           ''若代理人证件种类未提供或不符合规范将影响实名制检查'' 说明
    FROM   tb_shzh_gr
    UNION
    SELECT ''4.1 居民身份证'' 信息类型,
           Cast(Count(*) AS VARCHAR(20)) 数量,
           '''' 说明
    FROM   tb_shzh_gr
    WHERE  代理人证件种类 = ''身份证''
    UNION
    SELECT ''4.2 临时居民身份证'' 信息类型,
           Cast(Count(*) AS VARCHAR(20)) 数量,
           '''' 说明
    FROM   tb_shzh_gr
    WHERE  代理人证件种类 = ''临时身份证''
    UNION
    SELECT ''4.3 户口簿'' 信息类型,
           Cast(Count(*) AS VARCHAR(20)) 数量,
           '''' 说明
    FROM   tb_shzh_gr
    WHERE  代理人证件种类 = ''户口簿''
    UNION
    SELECT ''4.4 军人或武警身份证'' 信息类型,
           Cast(Count(*) AS VARCHAR(20)) 数量,
           '''' 说明
    FROM   tb_shzh_gr
    WHERE  代理人证件种类 = ''军人或武警身份证''
    UNION
    SELECT ''4.5 外国公民护照'' 信息类型,
           Cast(Count(*) AS VARCHAR(20)) 数量,
           '''' 说明
    FROM   tb_shzh_gr
    WHERE  代理人证件种类 = ''外国公民护照''
    UNION
    SELECT ''4.6 港澳台居民来往内地或大陆通行证'' 信息类型,
           Cast(Count(*) AS VARCHAR(20)) 数量,
           '''' 说明
    FROM   tb_shzh_gr
    WHERE  代理人证件种类 = ''港澳台通行证''
    UNION
    SELECT ''4.7 外国人永久居留证'' 信息类型,
           Cast(Count(*) AS VARCHAR(20)) 数量,
           '''' 说明
    FROM   tb_shzh_gr
    WHERE  代理人证件种类 = ''外国人永久居留证''
    UNION
    SELECT ''4.8 港澳台居民居住证'' 信息类型,
           Cast(Count(*) AS VARCHAR(20)) 数量,
           '''' 说明
    FROM   tb_shzh_gr
    WHERE  代理人证件种类 = ''港澳台居民居住证''
    UNION
    SELECT ''4.9 中国护照'' 信息类型,
           Cast(Count(*) AS VARCHAR(20)) 数量,
           '''' 说明
    FROM   tb_shzh_gr
    WHERE  代理人证件种类 = ''中国护照''
    UNION
    SELECT ''4.10 边民出入境通行证'' 信息类型,
           Cast(Count(*) AS VARCHAR(20)) 数量,
           '''' 说明
    FROM   tb_shzh_gr
    WHERE  代理人证件种类 = ''边民出入境通行证''
    UNION
    SELECT ''4.11 其他类个人身份有效证件'' 信息类型,
           Cast(Count(*) AS VARCHAR(20)) 数量,
           '''' 说明
    FROM   tb_shzh_gr
    WHERE  代理人证件种类 = ''其他''
    UNION
    SELECT ''4.12 不符合数据规范'' 信息类型,
           Cast(Count(*) AS VARCHAR(20)) 数量,
           CASE
             WHEN Count(*) > 0 THEN ''代理人证件种类为空，数量大怀疑数据提供问题，数量小可作为检查线索''
             ELSE ''''
           END 说明
    FROM   tb_shzh_gr
    WHERE  代理人证件种类 IS NULL
            OR Len(代理人证件种类) = 0
    UNION
    SELECT ''5.---身份核验方式---'' 信息类型,
           ''---'' 数量,
           ''身份核验方式不符合规范将影响检查'' 说明
    FROM   tb_shzh_gr
    UNION
    SELECT ''5.1 面对面'' 信息类型,
           Cast(Count(*) AS VARCHAR(20)) 数量,
           CASE
             WHEN Count(*) = 0 THEN ''若为空则数据提供有问题，严重影响检查''
             ELSE ''''
           END 说明
    FROM   tb_shzh_gr
    WHERE  身份核验方式 = ''面对面''
    UNION
    SELECT ''5.2 非面对面'' 信息类型,
           Cast(Count(*) AS VARCHAR(20)) 数量,
           CASE
             WHEN Count(*) = 0 THEN ''若为空则数据提供有问题，严重影响检查''
             ELSE ''''
           END 说明
    FROM   tb_shzh_gr
    WHERE  身份核验方式 = ''非面对面''
    UNION
    SELECT ''5.3 不符合数据规范'' 信息类型,
           Cast(Count(*) AS VARCHAR(20)) 数量,
           CASE
             WHEN Count(*) > 0 THEN ''不符和数据规范将严重影响实名制检查''
             ELSE ''''
           END 说明
    FROM   tb_shzh_gr
    WHERE  身份核验方式 IS NULL
            OR Len(身份核验方式) = 0
            OR 身份核验方式 <> ''面对面''
               AND 身份核验方式 <> ''非面对面''
    UNION
    SELECT ''6.---介质类型---'' 信息类型,
           ''---'' 数量,
           '''' 说明
    FROM   tb_shzh_gr
    UNION
    SELECT ''6.1 银行卡'' 信息类型,
           Cast(Count(*) AS VARCHAR(20)) 数量,
           CASE
             WHEN Count(*) = 0 THEN ''若为空则数据提供有问题''
             ELSE ''''
           END 说明
    FROM   tb_shzh_gr
    WHERE  介质类型 = ''银行卡''
    UNION
    SELECT ''6.2 存折'' 信息类型,
           Cast(Count(*) AS VARCHAR(20)) 数量,
           CASE
             WHEN Count(*) = 0 THEN ''若为空则数据提供可能有问题''
             ELSE ''''
           END 说明
    FROM   tb_shzh_gr
    WHERE  介质类型 = ''存折''
    UNION
    SELECT ''6.3 存单'' 信息类型,
           Cast(Count(*) AS VARCHAR(20)) 数量,
           CASE
             WHEN Count(*) = 0 THEN ''若为空则数据提供可能有问题''
             ELSE ''''
           END 说明
    FROM   tb_shzh_gr
    WHERE  介质类型 = ''存单''
    UNION
    SELECT ''6.4 手机'' 信息类型,
           Cast(Count(*) AS VARCHAR(20)) 数量,
           CASE
             WHEN Count(*) = 0 THEN ''若为空则数据提供可能有问题''
             ELSE ''''
           END 说明
    FROM   tb_shzh_gr
    WHERE  介质类型 = ''手机''
    UNION
    SELECT ''6.5 无介质'' 信息类型,
           Cast(Count(*) AS VARCHAR(20)) 数量,
           CASE
             WHEN Count(*) = 0 THEN ''若为空则数据提供可能有问题''
             ELSE ''''
           END 说明
    FROM   tb_shzh_gr
    WHERE  介质类型 = ''无介质''
    UNION
    SELECT ''6.6 介质类型为空'' 信息类型,
           Cast(Count(*) AS VARCHAR(20)) 数量,
           CASE
             WHEN Count(*) > 0 THEN ''为空数量较大则数据提供有问题''
             ELSE ''''
           END 说明
    FROM   tb_shzh_gr
    WHERE  介质类型 IS NULL
            OR Len(介质类型) = 0
    UNION
    SELECT ''9.---其他信息---'' 信息类型,
           ''---'' 数量,
           ''身份证件其他信息未提供数量较多将影响检查'' 说明
    FROM   tb_shzh_gr
    UNION
    SELECT ''9.1 账号信息为空'' 信息类型,
           Cast(Count(*) AS VARCHAR(20)) 数量,
           CASE
             WHEN Count(*) > 0 THEN ''账号为空，数量大怀疑数据提供问题，数量小可作为检查线索''
             ELSE ''''
           END 说明
    FROM   tb_shzh_gr
    WHERE  账号 IS NULL
            OR Len(账号) = 0
    UNION
    SELECT ''9.2 账户名称为空'' 信息类型,
           Cast(Count(*) AS VARCHAR(20)) 数量,
           CASE
             WHEN Count(*) > 0 THEN ''账户名称为空数量大怀疑数据提供问题''
             ELSE ''''
           END 说明
    FROM   tb_shzh_gr
    WHERE  账户名称 IS NULL
            OR Len(账户名称) = 0
    UNION
    SELECT ''9.3 开户日期为空'' 信息类型,
           Cast(Count(*) AS VARCHAR(20)) 数量,
           CASE
             WHEN Count(*) > 0 THEN ''开户日期为空数量大怀疑数据提供问题''
             ELSE ''''
           END 说明
    FROM   tb_shzh_gr
    WHERE  开户日期 IS NULL
            OR Len(开户日期) = 0
    UNION
    SELECT ''9.4 销户日期为空'' 信息类型,
           Cast(Count(*) AS VARCHAR(20)) 数量,
           CASE
             WHEN Count(*) > 0 THEN ''销户日期为空或99991231数量大怀疑数据提供问题''
             ELSE ''''
           END 说明
    FROM   tb_shzh_gr
    WHERE  销户日期 IS NULL
            OR Len(销户日期) = 0
            OR 销户日期 = ''99991231''
    UNION
    SELECT ''9.5 身份证件号码为空'' 信息类型,
           Cast(Count(*) AS VARCHAR(20)) 数量,
           CASE
             WHEN Count(*) > 0 THEN ''证件号码为空，数量大怀疑数据提供问题，数量小可作为检查线索''
             ELSE ''''
           END 说明
    FROM   tb_shzh_gr
    WHERE  身份证件号码 IS NULL
            OR Len(身份证件号码) = 0
    UNION
    SELECT ''9.6 代理人证件号码为空'' 信息类型,
           Cast(Count(*) AS VARCHAR(20)) 数量,
           CASE
             WHEN Count(*) > 0 THEN ''代理人证件号码为空，数量大怀疑数据提供问题，数量小可作为检查线索''
             ELSE ''''
           END 说明
    FROM   tb_shzh_gr
    WHERE  代理人证件号码 IS NULL
            OR Len(代理人证件号码) = 0
    UNION
    SELECT ''9.7 身份证件有效期开始日为空'' 信息类型,
           Cast(Count(*) AS VARCHAR(20)) 数量,
           CASE
             WHEN Count(*) > 0 THEN ''身份证件有效期开始日为空影响实名制检查''
             ELSE ''''
           END 说明
    FROM   tb_shzh_gr
    WHERE  身份证件有效期开始日 IS NULL
            OR Len(身份证件有效期开始日) = 0
    UNION
    SELECT ''9.8 身份证件有效期截止日'' 信息类型,
           Cast(Count(*) AS VARCHAR(20)) 数量,
           CASE
             WHEN Count(*) > 0 THEN ''身份证件有效期截止日为空影响实名制检查''
             ELSE ''''
           END 说明
    FROM   tb_shzh_gr
    WHERE  身份证件有效期截止日 IS NULL
            OR Len(身份证件有效期截止日) = 0
    UNION
    SELECT ''9.9 非面对面未绑定银行账户'' 信息类型,
           Cast(Count(*) AS VARCHAR(20)) 数量,
           CASE
             WHEN Count(*) = 0 THEN ''为空数量大怀疑数据提供问题，数量合理，可作为检查线索''
             ELSE ''''
           END 说明
    FROM   tb_shzh_gr
    WHERE  ( 绑定银行账户账号 IS NULL
              OR Len(绑定银行账户账号) = 0 )
           AND 身份核验方式 = ''非面对面''
    UNION
    SELECT ''9.10 绑定手机号码'' 信息类型,
           Cast(Count(*) AS VARCHAR(20)) 数量,
           CASE
             WHEN Count(*) = 0 THEN ''为空数量大怀疑数据提供问题，数量合理，可作为检查线索''
             ELSE ''''
           END 说明
    FROM   tb_shzh_gr
    WHERE  ( 绑定手机号码 IS NULL
              OR Len(绑定手机号码) = 0 )
  END
GO ', NULL, 36, N'010202', N'0', N'0', N'0', N'1', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (466, 416, N'商行个人账户各网点数量情况', N'', N'', N'CREATE PROCEDURE Pg_zh_all
WITH ENCRYPTION
AS
  BEGIN
    IF Object_id(''tempdb..#tmp'') IS NOT NULL
      DROP TABLE #tmp

    SELECT 开户行金融机构代码,
           Count(*) 账户数量,
           Count(CASE
                   WHEN 账户类型 = ''一类'' THEN 账户类型
                 END) I类账户数量,
           Count(CASE
                   WHEN 账户类型 = ''二类'' THEN 账户类型
                 END) II类账户数量,
           Count(CASE
                   WHEN 账户类型 = ''三类'' THEN 账户类型
                 END) III类账户数量,
           Count(CASE
                   WHEN 账户类型 = ''贷记'' THEN 账户类型
                 END) 贷记账户数量,
           Count(CASE
                   WHEN 账户类型 = ''其他'' THEN 账户类型
                 END) 其他账户数量,
           Count(CASE
                   WHEN 账户类型 <> ''一类''
                        AND 账户类型 <> ''二类''
                        AND 账户类型 <> ''三类''
                        AND 账户类型 <> ''贷记''
                        AND 账户类型 <> ''其他'' THEN 账户类型
                 END) 未分类账户数量
    INTO   #tmp
    FROM   tb_shzh_gr
    GROUP  BY 开户行金融机构代码
    ORDER  BY 开户行金融机构代码

    SELECT DISTINCT a.开户行金融机构代码,
                    b.银行机构名称,
                    a.账户数量 账户总数,
                    a.I类账户数量 + a.II类账户数量 + a.III类账户数量 + a.贷记账户数量
                    + a.其他账户数量 + a.未分类账户数量 三类合计,
                    a.I类账户数量,
                    a.II类账户数量,
                    a.III类账户数量,
                    a.贷记账户数量,
                    a.其他账户数量,
                    a.未分类账户数量
    FROM   #tmp a
           LEFT JOIN v_bank b
                  ON a.开户行金融机构代码 = b.银行编码或代码
    ORDER  BY 开户行金融机构代码
  END
GO ', NULL, 40, N'010204', N'0', N'0', N'0', N'1', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (492, 416, N'商行个人账户重复数据列表', N'根据账号、户名、账户状态、信息类型查找重复招呼', N'@返回行数!N:1000', N'CREATE PROCEDURE Pg_cf_zh(@row_num INT)
WITH ENCRYPTION
AS
  BEGIN
    IF Object_id(''tempdb..#tmp'') IS NOT NULL
      DROP TABLE #tmp

    SELECT DISTINCT 账号
    INTO   #tmp
    FROM   tb_shzh_gr
    GROUP  BY 账号,
              账户名称,
              账户状态,
              账户类型
    HAVING Count(*) > 1
    ORDER  BY 账号

    SET ROWCOUNT 0

    SELECT *
    FROM   tb_shzh_gr
    WHERE  账号 IN(SELECT 账号
                 FROM   #tmp)

    SET ROWCOUNT 0
  END
GO ', NULL, 42, N'010205', N'0', N'0', N'0', N'1', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (524, 554, N'本地个人短期多开户或多电话', N'筛出本地（含非身份证）个人开立多个账户或具有多个不同电话的情况。短期天数设为较大数值，可视为不考虑短期。筛选依据指结果集依据账户数量还是电话数量。', N'@开始日!D:20210101@结束日!D:20210304@账户类型(1借记卡,9所有)!S:1@账户状态(1正常久悬,9所有)!S:1@最小年龄!N:0@最大年龄!N:200@年龄范围(1小于最小,2大于最大,3大小之间)!S:3@筛选(1账户数,2电话数)!S:2@数量!N:3@天数!N:100@固话位数!N:7', N'CREATE PROCEDURE P_gr_bdgr_neardayzh(@bgn_date CHAR(8),@end_date CHAR(8),@zh_lx CHAR(1),@zh_state CHAR(1),@min_age INT,@max_age INT,@age_state CHAR(1),@fr_or_zh CHAR(1),@zh_count INT,@days INT,@len INT)
WITH ENCRYPTION
AS
  BEGIN
    --本地个人短期内多开户
    IF Object_id(''tempdb..#tmp'') IS NOT NULL
      DROP TABLE #tmp
    IF Object_id(''tempdb..#tmp_cnt'') IS NOT NULL
      DROP TABLE #tmp_cnt
    IF Object_id(''tempdb..#tmp1'') IS NOT NULL
      DROP TABLE #tmp1
    IF Object_id(''tempdb..#tmp11'') IS NOT NULL
      DROP TABLE #tmp11
    IF Object_id(''tempdb..#tmp2'') IS NOT NULL
      DROP TABLE #tmp2
    IF Object_id(''tempdb..#tmp22'') IS NOT NULL
      DROP TABLE #tmp22
    IF Object_id(''tempdb..#tmp3'') IS NOT NULL
      DROP TABLE #tmp3
    IF Object_id(''tempdb..#tmp33'') IS NOT NULL
      DROP TABLE #tmp33
    IF Object_id(''tempdb..#tmp4'') IS NOT NULL
      DROP TABLE #tmp4
    IF Object_id(''tempdb..#tmp44'') IS NOT NULL
      DROP TABLE #tmp44
    IF Object_id(''tempdb..#tmp5'') IS NOT NULL
      DROP TABLE #tmp5
    IF Object_id(''tempdb..#tmp55'') IS NOT NULL
      DROP TABLE #tmp55
    IF Object_id(''tempdb..#tmp_all'') IS NOT NULL
      DROP TABLE #tmp_all
    ----IF Object_id(''tempdb..#tmp_end'') IS NOT NULL
    --  --DROP TABLE #tmp_end
    --DECLARE @bgn_date CHAR(8) --数据开始日期
    --SET @bgn_date = ''20210201''
    --DECLARE @end_date CHAR(8) --数据结束日期
    --SET @end_date = ''20210210''
    --DECLARE @zh_state CHAR(1) --账户状态 1正常 9全部（含撤销）
    --SET @zh_state = ''9''
    --DECLARE @zh_count INT--账户数量
    --SET @zh_count = 5
    --DECLARE @days INT --短期的天数
    --SET @days = 100
    --DECLARE @Min_age INT --最小年龄
    --SET @Min_age = 18
    --DECLARE @Max_age INT --最大年龄
    --SET @Max_age = 35
    --DECLARE @age_state CHAR(1) --年龄范围1小于最小，2大于最大，3最小最大之间
    --SET @age_state = ''3''
    --DECLARE @len INT --固定电话位数
    --SET @len=7
    --DECLARE @fr_or_zh CHAR(1) --筛选账户还是电话
    --SET @fr_or_zh =''1''
    --DECLARE @sazh CHAR(1)
    --SET @sazh =''9''
    IF Object_id(N''tb_rhzh_gr'', N''U'') IS NULL
        OR Object_id(N''hnxlsys.dbo.tb_red_gr'', N''U'') IS NULL
      BEGIN
        SELECT ''×账户系统个人账户数据未导入或未生成红名单信息……'' 注意
      END
    ELSE
      BEGIN
        IF @zh_lx <> ''1''
           AND @zh_lx <> ''9'' --账户状态正常、撤销
            OR @zh_state <> ''1''
               AND @zh_state <> ''9'' --账户状态正常、撤销
            OR @age_state <> ''1''--年龄范围确定方式
               AND @age_state <> ''2''
               AND @age_state <> ''3''
            OR @fr_or_zh <> ''1''
               AND @fr_or_zh <> ''2''
          BEGIN
            SELECT ''×账户类型参数只能为1、9或账户状态参数只能为1、9或年龄范围参数只能为1、2、3或筛选依据只能为1、2'' 参数错误
          END
        ELSE
          BEGIN
            --获取省级行政区划与账户系统地区对照表，为识别本地个人
            SELECT DISTINCT LEFT(编码, 2) 行政区划,
                            账户地区
            INTO   #tmp1
            FROM   [HNXLSYS].[dbo].[AreaCodeOldNew]
            WHERE  NOT 账户地区 IS NULL
            ORDER  BY 账户地区
            --提取符合条件的个人账户，下一步再分析
            SELECT 序号,
                   序号 身份序号,----身份序号取序号值，序号为identy，不能update
                   [账号],
                   [银行机构代码],
                   [存款人名称],
                   [发证机关所在地地区代码],
                   [地址],
                   [邮编],
                   [电话],
                   dbo.F_delete_head(电话, ''0'') 电话处理,--点好号码清除前导0
                   [身份证件种类],
                   [身份证件编号],
                   [行别代码],
                   [开户地地区代码],
                   [账户类型],
                   [开户日期],
                   [账户有效日期],
                   [销户日期],
                   [变更日期],
                   [开户登记日期],
                   [币种类型],
                   [币种],
                   [存款人所在国家或地区]
            INTO   #tmp
            FROM   tb_rhzh_gr a
                   LEFT JOIN #tmp1 b
                          ON LEFT(a.[开户地地区代码], 4) = b.账户地区 --账户地区连接
            WHERE  ( @zh_lx = ''1''
                     AND 账户类型 = ''借记卡''
                      OR @zh_lx = ''9'' )
                   AND ( @zh_state = ''1''
                         AND 销户日期 IS NULL
                          OR @zh_state = ''9'' )
                   AND 开户日期 >= @bgn_date
                   AND 开户日期 <= @end_date
                   AND ( [身份证件种类] <> ''身份证''
                          OR [身份证件种类] = ''身份证''
                             AND LEFT(a.身份证件编号, 2) = b.行政区划 ) --本地信息
            ORDER  BY a.身份证件编号
            --RETURN    
            ----首先相同证件号变成同一序号（最小序号），其次相似身份证号变成同一序号
            ----取得每组相同证件号的最小序号
            SELECT Min(序号) 最小序号,--身份证编号相同的账户把序号变成相同，最小编号
                   身份证件编号,
                   Count(身份证件编号) 数量
            INTO   #tmp11
            FROM   #tmp
            GROUP  BY 身份证件编号
            HAVING Count(身份证件编号) > 1
            ORDER  BY 身份证件编号
            ----把证件相同的身份序号归为一致	
            UPDATE a
            SET    a.身份序号 = b.最小序号
            FROM   #tmp a
                   INNER JOIN #tmp11 b
                           ON a.身份证件编号 = b.身份证件编号
            ---------------------------------------------------------------------------------------------
            ------下面为同姓名相似度
            ----获取同一姓名两个以上身份号法人， 同一姓名不同身份证编号的应计算相似度，认为相似度接近的应为同一个人，把他们的编号设成一致
            SELECT 存款人名称,
                   Count(DISTINCT 身份证件编号) 数量
            INTO   #tmp22
            FROM   #tmp
            GROUP  BY 存款人名称
            HAVING Count(DISTINCT 身份证件编号) > 1
            ORDER  BY 存款人名称
            ----获取具有两个以上证件号码的姓名和编号
            SELECT DISTINCT a.存款人名称,
                            b.身份证件编号,
                            b.身份序号
            INTO   #tmp33
            FROM   #tmp22 a
                   LEFT JOIN #tmp b
                          ON a.存款人名称 = b.存款人名称
            ORDER  BY 存款人名称
            ----获取相似度符合逻辑的身份序号和身份编号
            SELECT DISTINCT a.身份序号,
                            a.存款人名称,
                            a.身份证件编号 身份证件编号1,
                            b.身份证件编号 身份证件编号2,
                            DBO.Fn_resemble_onebyone(a.身份证件编号, b.身份证件编号) 一对一相似度
            --,
            --DBO.Fn_resemble_order(a.身份证件编号, b.身份证件编号) 顺序相似度
            INTO   #tmp44
            FROM   #tmp33 a
                   INNER JOIN #tmp33 b
                           ON a.存款人名称 = b.存款人名称
            --INNER JOIN #tmp c
            --        ON a.存款人名称 = c.存款人名称
            --           AND a.身份证件编号 = c.身份证件编号
            WHERE  DBO.Fn_resemble_onebyone(a.身份证件编号, b.身份证件编号) > 0.8
                   AND DBO.Fn_resemble_onebyone(a.身份证件编号, b.身份证件编号) < 1
            ORDER  BY 存款人名称
            --SELECT *
            --FROM   #tmp44
            --ORDER  BY 存款人名称
            --RETURN
            ----获取相似度最小身份序号
            SELECT 存款人名称,
                   Min(身份序号) 最小身份序号
            INTO   #tmp55
            FROM   #tmp44
            GROUP  BY 存款人名称
            --select * from #tmp55 order by 存款人名称
            --return
            --更新#tmp44,身份序号都变成最小序号，方便后面更改#tmp
            UPDATE a
            SET    a.身份序号 = b.最小身份序号
            FROM   #tmp44 a
                   LEFT JOIN #tmp55 b
                          ON a.存款人名称 = b.存款人名称
            ----更新基本结果集把相似身份序号更新
            UPDATE a
            SET    a.身份序号 = b.身份序号
            FROM   #tmp a
                   INNER JOIN #tmp44 b
                           ON a.存款人名称 = b.存款人名称
                              AND a.身份证件编号 = b.身份证件编号1
            --       OR a.法定代表人或负责人身份证件编号 = c.法定代表人或负责人身份证件编号2
            WHERE  a.身份序号 > b.身份序号
            -----弄到临时表用于测试后面的代码
            --      SELECT *
            --into tmp
            --      FROM   #tmp
            --      ORDER  BY 身份序号
            ------------------------------------------------------------------------------------------
            --同一身份序号短期拥有账户数量
            SELECT ff.电话数量,
                   ff.短期账户数量,
                   CASE
                     WHEN [身份证件种类] = ''身份证'' THEN dbo.Fn_getage(a.身份证件编号, a.开户日期)
                     ELSE NULL
                   END 开户年龄,
                   a.*
            INTO   #tmp_all
            FROM   #tmp A
                   OUTER APPLY (SELECT Count(*) 短期账户数量,
                                       Count(DISTINCT 电话处理) 电话数量
                                FROM   #tmp B
                                WHERE  a.身份序号 = b.身份序号
                                       AND Abs(Datediff(day, CONVERT(DATE, a.开户日期), CONVERT(DATE, b.开户日期))) <= @days) AS FF
            ORDER  BY 身份序号,
                      开户日期
            --select * from #tmp_all order by 存款人名称
            ----RETURN
            -----------------------------------------------------------------------
            SELECT a.[银行机构代码],
                   d.银行机构名称,
                   a.[账号],
                   a.[存款人名称],
                   a.[身份证件种类],
                   a.[身份证件编号],
                   a.[电话],
                   a.短期账户数量,
                   a.电话数量,
                   b.涉案批次 证件涉案批次,
                   c.涉案批次 手机涉案批次,
                   a.[账户类型],
                   a.[开户地地区代码],
                   a.开户年龄,
                   a.[开户日期],
                   a.[账户有效日期],
                   a.[销户日期],
                   a.[变更日期],
                   a.[开户登记日期],
                   a.[发证机关所在地地区代码],
                   a.[地址],
                   a.[币种类型],
                   a.[币种],
                   a.[存款人所在国家或地区]
            --INTO #tmp_end
            FROM   #tmp_all a --
                   LEFT JOIN hnxlsys.dbo.tb_red_gr b --
                          ON a. [身份证件编号] = b.证件号码 --
                   LEFT JOIN hnxlsys.dbo.tb_red_phone c --
                          ON a.电话处理 = c.[手机号码] --
                   LEFT JOIN V_Bank d
                          ON a.[银行机构代码] = d.银行编码或代码
            WHERE  ( 开户年龄 IS NULL
                      OR 开户年龄 <= ( CASE
                                     WHEN @age_state = ''1'' THEN @Min_age
                                     WHEN @age_state = ''2'' THEN 10000
                                     WHEN @age_state = ''3'' THEN @max_age
                                   END )
                         AND 开户年龄 >= ( CASE
                                         WHEN @age_state = ''1'' THEN-10000
                                         WHEN @age_state = ''2'' THEN @max_age
                                         WHEN @age_state = ''3'' THEN @min_age
                                       END ) )
                   AND CASE
                         WHEN @fr_or_zh = ''1'' THEN 短期账户数量
                         WHEN @fr_or_zh = ''2'' THEN 电话数量
                       END >= @zh_count
            ORDER  BY 身份序号,
                      开户日期
          END
      END
  END
GO 
', N'', 654, N'060502', N'0', N'0', N'0', N'1', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (452, 573, N'商行个人账户与人行系统比对', N'功能描述：', N'@提示1!参数类型1:默认值1@提示2!参数类型2:默认值2', N'CREATE PROCEDURE      AS
BEGIN

END
GO', NULL, 540, N'0204', N'0', N'0', N'0', N'1', N'1', N'1')
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (540, 563, N'红名单(单位个人手机相关)其他单位账户', N'与涉案账户法人及手机、财务联系人及手机、单位证件号码相同的其他单位账户（可以监测涉案账户发布后又开户的账户）', N'@账户状态(1正常或久悬,9所有)!S:9@开户日期!D:20150101@涉案批次!S:', N'CREATE PROCEDURE P_sazh_other_dw(@zh_state CHAR(1),@kh_date CHAR(8),@pc VARCHAR(10))
WITH ENCRYPTION
AS
  BEGIN
    IF Object_id(''tempdb..#tmp0'') IS NOT NULL
      DROP TABLE #tmp0
    IF Object_id(''tempdb..#tmp00'') IS NOT NULL
      DROP TABLE #tmp00
    IF Object_id(''tempdb..#tmp1'') IS NOT NULL
      DROP TABLE #tmp1
    IF Object_id(''tempdb..#tmp2'') IS NOT NULL
      DROP TABLE #tmp2
    IF Object_id(''tempdb..#tmp3'') IS NOT NULL
      DROP TABLE #tmp3
    IF Object_id(''tempdb..#tmp_end1'') IS NOT NULL
      DROP TABLE #tmp_end1
    IF Object_id(''tempdb..#tmp_end2'') IS NOT NULL
      DROP TABLE #tmp_end2
    IF Object_id(''tempdb..#tmp_end3'') IS NOT NULL
      DROP TABLE #tmp_end3
    --DECLARE @pc VARCHAR(6)
    --SET @pc=''''
    --DECLARE @zh_state CHAR(1)
    --SET @zh_state = ''9''
    --DECLARE @kh_date CHAR(8)
    --SET @kh_date =''20160101''
    IF Object_id(N''tb_rhzh_dw'', N''U'') IS NULL
        OR Object_id(N''tb_red_dw'', N''U'') IS NULL
        OR Object_id(N''tb_red_gr'', N''U'') IS NULL
        OR Object_id(N''tb_red_phone'', N''U'') IS NULL
      BEGIN
        SELECT ''×账户系统单位账户数据未导入或红名单还未生成红名单信息'' 注意
      END
    ELSE
      BEGIN
        IF @zh_state <> ''1''
           AND @zh_state <> ''9''
          BEGIN
            SELECT ''×账号状态只能为1、9'' 参数错误
          END
        ELSE
          BEGIN
            --提取单位账户#tmp0
            SELECT [银行机构代码],
                   b.银行机构名称,
                   法定代表人或负责人姓名,
                   法定代表人或负责人身份证件编号,
                   RIGHT(Trim([联系电话]), 11) 联系电话,
                   [社会信用代码],
                   组织机构代码,
                   [账号],
                   [账户名称],
                   [注册资金金额],
                   [账户性质],
                   [开户日期],
                   [销户日期],
                   [账户状态],
                   [地址]
            INTO   #tmp0
            FROM   tb_rhzh_dw a
                   LEFT JOIN V_Bank b
                          ON a.银行机构代码 = b.银行编码或代码
            WHERE  ( 账户状态 LIKE( CASE
                                  WHEN @zh_state = ''1'' THEN ''正常''
                                  WHEN @zh_state = ''9'' THEN ''%''
                                END )
                      OR 账户状态 LIKE( CASE
                                      WHEN @zh_state = ''1'' THEN ''久悬''
                                      WHEN @zh_state = ''9'' THEN ''%''
                                    END ) )
                   AND [开户日期] >= @kh_date
            --提取涉案账户账号用于剔除，以发现其他涉案账户（单位）
            SELECT DISTINCT 账号
            INTO   #tmp00
            FROM   [HNXLSYS].[dbo].[tb_sazh]
            WHERE  账户类型 = ''单位''
            --提取红名单，处理一致户名#tmp1
            SELECT [证件号码],
                   [证件号码] 证件号码处理,
                   [户名],
                   [注册日期],
                   [法人代表],
                   [法人代表证件号],
                   [涉案账户],
                   [涉案类型],
                   [涉案批次]
            INTO   #tmp1
            FROM   [tb_red_dw]
            WHERE  [涉案批次] LIKE ''%'' + @pc + ''%''
            --select * from #tmp0 where [账户名称]=''淮南市塔锚商贸有限公司''
            --select * from #tmp1 where [户名]=''淮南市塔锚商贸有限公司''
            --同户名相似证件号变为一致
            UPDATE a
            SET    a.证件号码处理 = b.社会信用代码
            FROM   #tmp1 a
                   INNER JOIN #tmp0 b
                           ON a.户名 = b.账户名称
            WHERE  DBO.Fn_resemble_onebyone(b.社会信用代码, a.证件号码) > 0.8
                   AND DBO.Fn_resemble_onebyone(b.社会信用代码, a.证件号码) < 1
                    OR ( Charindex (a.证件号码, b.社会信用代码) > 0 )
            --比对单位红名单找到不在涉案账户范围内的单位账户
            SELECT a.*,
                   b.[涉案账户],
                   b.[涉案类型],
                   b.[涉案批次]
            INTO   #tmp_end1
            FROM   #tmp0 a
                   INNER JOIN #tmp1 b
                           ON a.社会信用代码 = b.证件号码处理
            WHERE  账号 NOT IN (SELECT DISTINCT 账号
                              FROM   #tmp00)
            --提取个人红名单
            SELECT [证件号码],
                   [证件号码] 证件号码处理,
                   [姓名],
                   [手机号码],
                   [个人或单位地址],
                   [涉案账户],
                   [涉案类型],
                   [涉案批次]
            INTO   #tmp2
            FROM   [tb_red_gr]
            WHERE  [涉案批次] LIKE ''%'' + @pc + ''%''
            --处理涉案证件编号
            UPDATE a
            SET    a.证件号码处理 = b.法定代表人或负责人身份证件编号
            FROM   #tmp2 a
                   INNER JOIN #tmp0 b
                           ON a.姓名 = b.法定代表人或负责人姓名
            WHERE  DBO.Fn_resemble_onebyone(b.法定代表人或负责人身份证件编号, a.证件号码) > 0.8
                   AND DBO.Fn_resemble_onebyone(b.法定代表人或负责人身份证件编号, a.证件号码) < 1
            -- OR ( Charindex (a.证件号码, b.社会信用代码) > 0 )
            SELECT a.*,
                   b.[涉案账户],
                   b.[涉案类型],
                   b.[涉案批次]
            INTO   #tmp_end2
            FROM   #tmp0 a
                   INNER JOIN #tmp2 b
                           ON a.法定代表人或负责人身份证件编号 = b.证件号码处理
            WHERE  账号 NOT IN (SELECT DISTINCT 账号
                              FROM   #tmp00)
            --提取手机红名单
            SELECT RIGHT(Trim([手机号码]), 11) 手机号码,
                   [姓名],
                   [证件号码],
                   [个人或单位地址],
                   [涉案账户],
                   [涉案类型],
                   [涉案批次]
            INTO   #tmp3
            FROM   [tb_red_phone]
            WHERE  [涉案批次] LIKE ''%'' + @pc + ''%''
            SELECT a.*,
                   b.[涉案账户],
                   b.[涉案类型],
                   b.[涉案批次]
            INTO   #tmp_end3
            FROM   #tmp0 a
                   INNER JOIN #tmp3 b
                           ON a.联系电话 = b.手机号码
            WHERE  账号 NOT IN (SELECT DISTINCT 账号
                              FROM   #tmp00)
            ------------------
            SELECT *
            FROM   #tmp_end1
            UNION
            SELECT *
            FROM   #tmp_end2
            UNION
            SELECT *
            FROM   #tmp_end3
            ORDER  BY 银行机构代码,
                      账户名称
          END
      END
  END
GO 
', NULL, 697, N'060610', N'1', N'0', N'0', N'1', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (454, 452, N'个人账户开户未备案（账号介质号）√', N'比对账号和介质号', N'@开始日期!D:20190101@结束日期!D:20200831@返回行数!N:10000', N'CREATE PROCEDURE Pg_grzh_not_bak_zh(@bgn_date CHAR(8),@end_date CHAR(8),@row_num INT)
WITH ENCRYPTION
AS
  BEGIN
    --DECLARE @bgn_date CHAR(8)
    --DECLARE @end_date CHAR(8)
    --DECLARE @row_num INT

    --SET @bgn_date =''20190101''
    --SET @end_date =''20200630''
    --SET @row_num=10000
    SET ROWCOUNT @row_num

    SELECT [开户行金融机构代码],
           c.[银行机构名称],
           [客户编号],
           [账户名称],
           a.[账号],
           a.[账户类型],
           a.[开户日期],
           a.[销户日期],
           [账户状态],
           [证件种类],
           [身份证件号码],
           [身份证件有效期开始日],
           [身份证件有效期截止日],
           [发证机关地区代码],
           [客户所属国家],
           [客户性别],
           [联系地址],
           [身份核验方式],
           [绑定手机号码],
           [绑定银行账户账号],
           [绑定银行账号日期],
           [绑定银行账号时间],
           [绑定开户行法人代码],
           [代理人姓名],
           [代理人证件种类],
           [代理人证件号码],
           [代理人证件有效期开始日],
           [代理人证件有效期截止日],
           [代理人联系电话],
           a.[开户地地区代码],
           [介质号],
           [介质类型],
           [介质状态]
    FROM   tb_shzh_gr a
           LEFT JOIN v_bank c
                  ON [开户行金融机构代码] = c.银行编码或代码
    WHERE  [账户状态] <> ''注销''
           AND ( a.开户日期 BETWEEN @bgn_date AND @end_date )
           AND a.账号 NOT IN (SELECT DISTINCT 账号
                            FROM   tb_rhzh_gr
                           --WHERE  ( 销户日期 IS NULL
                           --          OR Len(销户日期) = 0 )
                           )
           AND [介质号] NOT IN (SELECT DISTINCT 账号
                             FROM   tb_rhzh_gr
                            --WHERE  ( 销户日期 IS NULL
                            --          OR Len(销户日期) = 0 )
                            )
    ORDER  BY [开户行金融机构代码],
              [账户名称]

    SET ROWCOUNT 0
  END

GO ', NULL, 541, N'020401', N'1', N'1', N'0', N'1', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (456, 452, N'个人账户开户迟备案（账号介质号）√', N'', N'@迟备案天数!N:14@返回行数!N:1000000', N'CREATE PROCEDURE Pg_grzh_late_bak_zh(@day_num INT,@row_num INT)
WITH ENCRYPTION
AS
  BEGIN
    --DECLARE @bgn_date CHAR(8)
    --DECLARE @end_date CHAR(8)
    --DECLARE @row_num INT
    --DECLARE @day_num INT
    --SET @bgn_date =''20190101''
    --SET @end_date =''20200630''
    --SET @row_num=100000
    --SET @day_num=14
    SET ROWCOUNT @row_num

    SELECT [开户行金融机构代码],
           c.[银行机构名称],
           [客户编号],
           [账户名称],
           a.[账号],
           a.[账户类型],
           a.[开户日期],
           b.开户日期 人行开户,
           b.开户登记日期,
           Datediff(Day, a.开户日期, b.开户日期) 人行开户与商行开户日期间隔,
           Datediff(Day, b.开户日期, b.开户登记日期) 登记与开户日期间隔,
           a.[销户日期],
           [账户状态],
           [证件种类],
           [身份证件号码],
           [身份证件有效期开始日],
           [身份证件有效期截止日],
           [发证机关地区代码],
           [客户所属国家],
           [客户性别],
           [联系地址],
           [身份核验方式],
           [绑定手机号码],
           [绑定银行账户账号],
           [绑定银行账号日期],
           [绑定银行账号时间],
           [绑定开户行法人代码],
           [代理人姓名],
           [代理人证件种类],
           [代理人证件号码],
           [代理人证件有效期开始日],
           [代理人证件有效期截止日],
           [代理人联系电话],
           a.[开户地地区代码],
           [介质号],
           [介质类型],
           [介质状态]
    FROM   tb_shzh_gr a
           INNER JOIN tb_rhzh_gr b
                   ON a.账号 = b.账号
           LEFT JOIN v_bank c
                  ON a.[开户行金融机构代码] = c.银行编码或代码
    WHERE  [账户状态] <> ''注销''
           AND ( Datediff(Day, a.开户日期, b.开户日期) > @day_num
                  OR Datediff(Day, b.开户日期, b.开户登记日期) > @day_num )
    UNION
    SELECT [开户行金融机构代码],
           c.[银行机构名称],
           [客户编号],
           [账户名称],
           a.[账号],
           a.[账户类型],
           a.[开户日期],
           b.开户日期 人行开户,
           b.开户登记日期,
           Datediff(Day, a.开户日期, b.开户日期) 人行开户与商行开户日期间隔,
           Datediff(Day, b.开户日期, b.开户登记日期) 登记与开户日期间隔,
           a.[销户日期],
           [账户状态],
           [证件种类],
           [身份证件号码],
           [身份证件有效期开始日],
           [身份证件有效期截止日],
           [发证机关地区代码],
           [客户所属国家],
           [客户性别],
           [联系地址],
           [身份核验方式],
           [绑定手机号码],
           [绑定银行账户账号],
           [绑定银行账号日期],
           [绑定银行账号时间],
           [绑定开户行法人代码],
           [代理人姓名],
           [代理人证件种类],
           [代理人证件号码],
           [代理人证件有效期开始日],
           [代理人证件有效期截止日],
           [代理人联系电话],
           a.[开户地地区代码],
           [介质号],
           [介质类型],
           [介质状态]
    FROM   tb_shzh_gr a
           INNER JOIN tb_rhzh_gr b
                   ON a.[介质号] = b.账号
           LEFT JOIN v_bank c
                  ON a.[开户行金融机构代码] = c.银行编码或代码
    WHERE  [账户状态] <> ''注销''
           AND ( Datediff(Day, a.开户日期, b.开户日期) > @day_num
                  OR Datediff(Day, b.开户日期, b.开户登记日期) > @day_num )
    ORDER  BY a.[开户行金融机构代码],
              a.账号

    SET ROWCOUNT 0
  END
GO ', NULL, 546, N'020402', N'1', N'1', N'0', N'1', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (547, 552, N'异地法人多电话或短期多注册或开户', N'参数为基本户时，疑似频繁注册企业，虚假注册或经营实体存疑；为所有账户时，则为短期内开立大量账户，进一步存疑。短期天数设为较大数值，可视为不考虑短期。账户数量设为01，则筛出所有。', N'@开始日!D:20210101@结束日!D:20210304@账户性质(1基本和临时机构,9所有)!S:9@账户状态(1正常和久悬,9所有)!S:1@最小年龄!N:0@最大年龄!N:200@年龄范围(1小于最小,2大于最大,3大小之间)!S:3@筛选(1账户数,2电话数)!S:1@数量!N:5@天数!N:100@固话位数!N:7', N'CREATE PROCEDURE P_dw_ydgr_neardayzh(@bgn_date CHAR(8),@end_date CHAR(8),@zh_xz CHAR(1),@zh_state CHAR(1),@min_age INT,@max_age INT,@age_state CHAR(1),@fr_or_zh CHAR(1),@zh_count INT,@days INT,@len INT)
WITH ENCRYPTION
AS
  BEGIN
    --本地个法人短期内多开户
    IF Object_id(''tempdb..#tmp'') IS NOT NULL
      DROP TABLE #tmp
    IF Object_id(''tempdb..#tmp_cnt'') IS NOT NULL
      DROP TABLE #tmp_cnt
    IF Object_id(''tempdb..#tmp1'') IS NOT NULL
      DROP TABLE #tmp1
    IF Object_id(''tempdb..#tmp11'') IS NOT NULL
      DROP TABLE #tmp11
    IF Object_id(''tempdb..#tmp2'') IS NOT NULL
      DROP TABLE #tmp2
    IF Object_id(''tempdb..#tmp22'') IS NOT NULL
      DROP TABLE #tmp22
    IF Object_id(''tempdb..#tmp3'') IS NOT NULL
      DROP TABLE #tmp3
    IF Object_id(''tempdb..#tmp33'') IS NOT NULL
      DROP TABLE #tmp33
    IF Object_id(''tempdb..#tmp4'') IS NOT NULL
      DROP TABLE #tmp4
    IF Object_id(''tempdb..#tmp44'') IS NOT NULL
      DROP TABLE #tmp44
    IF Object_id(''tempdb..#tmp5'') IS NOT NULL
      DROP TABLE #tmp5
    IF Object_id(''tempdb..#tmp55'') IS NOT NULL
      DROP TABLE #tmp55
    IF Object_id(''tempdb..#tmp_all'') IS NOT NULL
      DROP TABLE #tmp_all
    --IF Object_id(''tempdb..#tmp_end'') IS NOT NULL
    --DROP TABLE #tmp_end
    --DECLARE @bgn_date CHAR(8) --数据开始日期
    --SET @bgn_date = ''20210201''
    --DECLARE @end_date CHAR(8) --数据结束日期
    --SET @end_date = ''20210210''
    --DECLARE @zh_xz CHAR(1) --账户性质 1基本临时，9全部
    --SET @zh_xz = ''9''
    --DECLARE @zh_state CHAR(1) --账户状态 1正常 9全部（含撤销）
    --SET @zh_state = ''1''
    --DECLARE @zh_count INT--账户数量
    --SET @zh_count = 3
    --DECLARE @days INT --短期的天数
    --SET @days = 100
    --DECLARE @Min_age INT --最小年龄
    --SET @Min_age = 18
    --DECLARE @Max_age INT --最大年龄
    --SET @Max_age = 35
    --DECLARE @age_state CHAR(1) --年龄范围1小于最小，2大于最大，3最小最大之间
    --SET @age_state = ''3''
    --DECLARE @len INT --固定电话位数
    --SET @len=7
    --DECLARE @fr_or_zh CHAR(1) --筛选账户还是电话
    --SET @fr_or_zh =''1''
    --DECLARE @sazh CHAR(1)
    --SET @sazh =''9''
    IF Object_id(N''tb_rhzh_dw'', N''U'') IS NULL
        OR Object_id(N''hnxlsys.dbo.tb_red_gr'', N''U'') IS NULL
      BEGIN
        SELECT ''×账户系统个人账户数据未导入或未生成红名单信息……'' 注意
      END
    ELSE
      BEGIN
        IF @zh_state <> ''1''
           AND @zh_state <> ''9''
            OR @zh_xz <> ''1''
               AND @zh_xz <> ''9''
            OR @age_state <> ''1''
               AND @age_state <> ''2''
               AND @age_state <> ''3''
            OR @fr_or_zh <> ''1''
               AND @fr_or_zh <> ''2''
          BEGIN
            SELECT ''×账户性质只能为1、9或账户状态只能为1、9或年龄范围参数只能为1、2、3或筛选依据只能为1、2'' 参数错误
          END
        ELSE
          BEGIN
            --获取省级行政区划与账户系统地区对照表，为识别本地个人
            SELECT DISTINCT LEFT(编码, 2) 行政区划,
                            账户地区
            INTO   #tmp1
            FROM   [HNXLSYS].[dbo].[AreaCodeOldNew]
            WHERE  NOT 账户地区 IS NULL
            ORDER  BY 账户地区
            --提取符合条件的个人账户，下一步再分析
            SELECT 序号,
                   序号 身份序号,----身份序号取序号值，序号为identy，不能update
                   [银行机构代码],
                   [账号],
                   [账户名称],
                   [社会信用代码],
                   [工商营业执照有效期],
                   法定代表人或负责人姓名,
                   [法定代表人或负责人身份证件种类],
                   法定代表人或负责人身份证件编号,
                   [联系电话],
                   dbo.F_delete_head([联系电话], ''0'') 电话处理,--点好号码清除前导0
                   [账户性质],
                   [账户状态],
                   [开户日期],
                   [销户日期],
                   [久悬日期],
                   [注册地地区代码],
                   [账户开户地地区代码],
                   [基本存款账户开户地地区代码],
                   [地址],
                   [注册资金金额]
            INTO   #tmp
            FROM   tb_rhzh_dw a
                   LEFT JOIN #tmp1 b
                          ON LEFT(a.[账户开户地地区代码], 4) = b.账户地区 --账户地区连接
            WHERE  开户日期 >= @bgn_date
                   AND 开户日期 <= @end_date
                   AND ( @zh_state = ''1''
                         AND 销户日期 IS NULL
                          OR @zh_state = ''9'' )
                   AND ( @zh_xz = ''1''
                         AND ( 账户性质 LIKE ''基本%''
                                OR 账户性质 LIKE ''临时机构%'' )
                          OR @zh_xz = ''9'' )
                   AND ( [法定代表人或负责人身份证件种类] <> ''身份证''
                          OR [法定代表人或负责人身份证件种类] = ''身份证''
                             AND LEFT(a.法定代表人或负责人身份证件编号, 2) <> b.行政区划 ) --本地信息
            ORDER  BY a.法定代表人或负责人身份证件编号
            --RETURN    
            ----首先相同证件号变成同一序号（最小序号），其次相似身份证号变成同一序号
            ----取得每组相同证件号的最小序号
            SELECT Min(序号) 最小序号,--身份证编号相同的账户把序号变成相同，最小编号
                   法定代表人或负责人身份证件编号,
                   Count(法定代表人或负责人身份证件编号) 数量
            INTO   #tmp11
            FROM   #tmp
            GROUP  BY 法定代表人或负责人身份证件编号
            HAVING Count(法定代表人或负责人身份证件编号) > 1
            ORDER  BY 法定代表人或负责人身份证件编号
            --把证件相同的身份序号归为一致	
            UPDATE a
            SET    a.身份序号 = b.最小序号
            FROM   #tmp a
                   INNER JOIN #tmp11 b
                           ON a.法定代表人或负责人身份证件编号 = b.法定代表人或负责人身份证件编号
            ---------------------------------------------------------------------------------------------
            ----下面为同姓名相似度
            --获取同一姓名两个以上身份号法人， 同一姓名不同身份证编号的应计算相似度，认为相似度接近的应为同一个人，把他们的编号设成一致
            SELECT 法定代表人或负责人姓名,
                   Count(DISTINCT 法定代表人或负责人身份证件编号) 数量
            INTO   #tmp22
            FROM   #tmp
            GROUP  BY 法定代表人或负责人姓名
            HAVING Count(DISTINCT 法定代表人或负责人身份证件编号) > 1
            ORDER  BY 法定代表人或负责人姓名
            --获取具有两个以上证件号码的姓名和编号
            SELECT DISTINCT a.法定代表人或负责人姓名,
                            b.法定代表人或负责人身份证件编号,
                            b.身份序号
            INTO   #tmp33
            FROM   #tmp22 a
                   LEFT JOIN #tmp b
                          ON a.法定代表人或负责人姓名 = b.法定代表人或负责人姓名
            ORDER  BY 法定代表人或负责人姓名
            ----获取相似度符合逻辑的身份序号和身份编号
            SELECT DISTINCT a.身份序号,
                            a.法定代表人或负责人姓名,
                            a.法定代表人或负责人身份证件编号 身份证件编号1,
                            b.法定代表人或负责人身份证件编号 身份证件编号2,
                            DBO.Fn_resemble_onebyone(a.法定代表人或负责人身份证件编号, b.法定代表人或负责人身份证件编号) 一对一相似度
            INTO   #tmp44
            FROM   #tmp33 a
                   INNER JOIN #tmp33 b
                           ON a.法定代表人或负责人姓名 = b.法定代表人或负责人姓名
            WHERE  DBO.Fn_resemble_onebyone(a.法定代表人或负责人身份证件编号, b.法定代表人或负责人身份证件编号) > 0.8
                   AND DBO.Fn_resemble_onebyone(a.法定代表人或负责人身份证件编号, b.法定代表人或负责人身份证件编号) < 1
            ORDER  BY 法定代表人或负责人姓名
            --SELECT *
            --FROM   #tmp44
            --ORDER  BY 存款人名称
            --RETURN
            ----获取相似度最小身份序号
            SELECT 法定代表人或负责人姓名,
                   Min(身份序号) 最小身份序号
            INTO   #tmp55
            FROM   #tmp44
            GROUP  BY 法定代表人或负责人姓名
            --select * from #tmp55 order by 存款人名称
            --return
            --更新#tmp44,身份序号都变成最小序号，方便后面更改#tmp
            UPDATE a
            SET    a.身份序号 = b.最小身份序号
            FROM   #tmp44 a
                   LEFT JOIN #tmp55 b
                          ON a.法定代表人或负责人姓名 = b.法定代表人或负责人姓名
            ------更新基本结果集把相似身份序号更新
            UPDATE a
            SET    a.身份序号 = b.身份序号
            FROM   #tmp a
                   INNER JOIN #tmp44 b
                           ON a.法定代表人或负责人姓名 = b.法定代表人或负责人姓名
                              AND a.法定代表人或负责人身份证件编号 = b.身份证件编号1
            WHERE  a.身份序号 > b.身份序号
            -----弄到临时表用于测试后面的代码
            --      SELECT *
            --into tmp
            --      FROM   #tmp
            --      ORDER  BY 身份序号
            --------------------------------------------------------------------------------------------
            --同一身份序号短期拥有账户数量
            SELECT ff.电话数量,
                   ff.短期账户数量,
                   CASE
                     WHEN [法定代表人或负责人身份证件种类] = ''身份证'' THEN dbo.Fn_getage(a.法定代表人或负责人身份证件编号, a.开户日期)
                     ELSE NULL
                   END 开户年龄,
                   a.*
            INTO   #tmp_all
            FROM   #tmp A
                   OUTER APPLY (SELECT Count(*) 短期账户数量,
                                       Count(DISTINCT 电话处理) 电话数量
                                FROM   #tmp B
                                WHERE  a.身份序号 = b.身份序号
                                       AND Abs(Datediff(day, CONVERT(DATE, a.开户日期), CONVERT(DATE, b.开户日期))) <= @days) AS FF
            ORDER  BY 身份序号,
                      开户日期
            ----select * from #tmp_all order by 存款人名称
            ------RETURN
            -------------------------------------------------------------------------
            SELECT a.[银行机构代码],
                   d.银行机构名称,
                   a.[账号],
                   a.[账户名称],
                   a.[社会信用代码],
                   a.[工商营业执照有效期],
                   a.法定代表人或负责人姓名,
                   a.[法定代表人或负责人身份证件种类],
                   a.法定代表人或负责人身份证件编号,
                   a.[联系电话],
                   a.短期账户数量,
                   a.电话数量,
                   b.涉案批次 证件涉案批次,
                   c.涉案批次 手机涉案批次,
                   a.开户年龄 法人开户年龄,
                   [账户性质],
                   [账户状态],
                   [开户日期],
                   [销户日期],
                   [久悬日期],
                   a.[注册地地区代码],
                   a.[账户开户地地区代码],
                   a.[基本存款账户开户地地区代码],
                   a.[地址],
                   a.[注册资金金额]
            --INTO #tmp_end
            FROM   #tmp_all a --
                   LEFT JOIN hnxlsys.dbo.tb_red_gr b --
                          ON a. 法定代表人或负责人身份证件编号 = b.证件号码 --
                   LEFT JOIN hnxlsys.dbo.tb_red_phone c --
                          ON a.电话处理 = c.[手机号码] --
                   LEFT JOIN V_Bank d
                          ON a.[银行机构代码] = d.银行编码或代码
            WHERE  ( 开户年龄 IS NULL
                      OR 开户年龄 <= ( CASE
                                     WHEN @age_state = ''1'' THEN @Min_age
                                     WHEN @age_state = ''2'' THEN 10000
                                     WHEN @age_state = ''3'' THEN @max_age
                                   END )
                         AND 开户年龄 >= ( CASE
                                         WHEN @age_state = ''1'' THEN-10000
                                         WHEN @age_state = ''2'' THEN @max_age
                                         WHEN @age_state = ''3'' THEN @min_age
                                       END ) )
                   AND CASE
                         WHEN @fr_or_zh = ''1'' THEN 短期账户数量
                         WHEN @fr_or_zh = ''2'' THEN 电话数量
                       END >= @zh_count
            ORDER  BY 身份序号,
                      开户日期
          END
      END
  END
GO 
', NULL, 644, N'060402', N'0', N'0', N'0', N'1', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (448, 573, N'商行个人账户实名问题线索', N'', N'@提示1!参数类型1:默认值1@提示2!参数类型2:默认值2', N'CREATE PROCEDURE      AS
BEGIN

END
GO', NULL, 550, N'0205', N'0', N'0', N'0', N'1', N'1', N'1')
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (458, 448, N'个人账户身份证号码疑似问题√', N'身份证件不通过逻辑校验', N'@地区校验位数(2位校验省份,4位校验省份城市,6位校验县级)!S:2@账户状态(1正常久悬,9所有)!S:9', N'CREATE PROCEDURE P_gr_id_chk(@area_mode CHAR(1),@zh_state CHAR(1))
WITH ENCRYPTION
AS
  BEGIN
    IF Object_id(''tempdb..#tmp'') IS NOT NULL
      DROP TABLE #tmp

    IF Object_id(''tempdb..#tmp1'') IS NOT NULL
      DROP TABLE #tmp1

    --DECLARE @area_mode CHAR(1)

    --SET @area_mode = ''2''

    --DECLARE @zh_state CHAR(1)

    --SET @zh_state = ''9''

    --DECLARE @sazh CHAR(1)

    --SET @sazh = ''1''

    IF Object_id(N''tb_rhzh_gr'', N''U'') IS NULL
      BEGIN
        SELECT ''×账户系统个人账户数据或商业银行个人账户数据未导入'' 注意
      END
    ELSE
      BEGIN
        IF @area_mode <> ''2''
           AND @area_mode <> ''4''
           AND @area_mode <> ''6''
            OR @zh_state <> ''1''
               AND @zh_state <> ''9''
          BEGIN
            SELECT ''×地区校验位数只能为2、4、6或账户状态只能为1、9或涉案只能为0、1、9'' 参数错误
          END
        ELSE
          BEGIN
            SELECT [开户行金融机构代码],
                   [客户编号],
                   [账户名称],
                   [账号],
                   [账户类型],
                   [开户日期],
                   [开户时间],
                   [销户日期],
                   [销户时间],
                   [账户状态],
                   [证件种类],
                   [身份证件号码],
                   CASE
                     WHEN ( [证件种类] = ''身份证''
                             OR [证件种类] = ''户口簿'' )
                          AND NOT [身份证件号码] IS NULL THEN dbo.Verifyperid([身份证件号码], @area_mode)
                     ELSE ''''
                   END 身份证件号码错误,
                   [身份证件有效期开始日],
                   [身份证件有效期截止日],
                   [身份核验方式],
                   [绑定手机号码],
                   [绑定银行账户账号],
                   [绑定开户行法人代码],
                   [代理人姓名],
                   [代理人证件种类],
                   [代理人证件号码],
                   CASE
                     WHEN [代理人证件种类] = ''身份证''
                          AND NOT [代理人证件号码] IS NULL THEN dbo.Verifyperid([代理人证件号码], @area_mode)
                     ELSE ''''
                   END 代理人身份证件号码错误,
                   [代理人证件有效期开始日],
                   [代理人证件有效期截止日],
                   [代理人联系电话],
                   [开户地地区代码],
                   [介质号],
                   [介质类型],
                   [介质状态]
            INTO   #tmp1
            FROM   tb_shzh_gr
            WHERE  账户状态 <> ( CASE
                               WHEN @zh_state = ''1'' THEN ''注销''
                               WHEN @zh_state = ''9'' THEN ''所有''
                             END )

            SELECT b.银行机构名称,
                   a.*
            FROM   #tmp1 a
                   LEFT JOIN V_Bank b
                          ON a.[开户行金融机构代码] = b.银行编码或代码
            WHERE  身份证件号码错误 <> ''正确''
                   AND 身份证件号码错误 <> ''''
                    OR 代理人身份证件号码错误 <> ''正确''
                       AND 代理人身份证件号码错误 <> ''''
            ORDER  BY [开户行金融机构代码],
                      账户名称
          END
      END
  END
GO ', NULL, 551, N'020501', N'0', N'1', N'0', N'1', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (462, 448, N'个人账户16周岁以上未用身份证开户√', N'16周岁用户口簿开户', N'', N'CREATE PROCEDURE Pg_16up
WITH ENCRYPTION
AS
  BEGIN
    SELECT b.[银行机构名称],
           [开户行金融机构代码],
           [客户编号],
           [账户名称],
           [账号],
           [账户类型],
           [开户日期],
           [开户时间],
           [销户日期],
           [销户时间],
           [账户状态],
           [证件种类],
           [身份证件号码],
           dbo.Fn_getage([身份证件号码], [开户日期]) 年龄,
           [身份证件有效期开始日],
           [身份证件有效期截止日],
           [身份核验方式],
           [绑定手机号码],
           [绑定银行账户账号],
           [绑定开户行法人代码],
           [代理人姓名],
           [代理人证件种类],
           [代理人证件号码],
           [代理人证件有效期开始日],
           [代理人证件有效期截止日],
           [代理人联系电话],
           [开户地地区代码],
           [介质号],
           [介质类型],
           [介质状态]
    FROM   tb_shzh_gr a
           LEFT JOIN v_bank b
                  ON [开户行金融机构代码] = b.银行编码或代码
    WHERE  dbo.Fn_getage([身份证件号码], [开户日期]) > 16
           AND 证件种类 = ''户口簿''
    ORDER  BY [开户行金融机构代码],
              账户名称
  END
GO ', NULL, 553, N'020503', N'0', N'1', N'0', N'1', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (493, 448, N'个人账户证件号码为空√', N'', N'@检查期限起始日期!D:20190101', N'CREATE PROCEDURE Pg_ID_empty(@bgn_date CHAR(8))
WITH ENCRYPTION
AS
  BEGIN
    --DECLARE @bgn_date CHAR(8)
    --SET @bgn_date =''20190101''
    SELECT b.[银行机构名称],
           [开户行金融机构代码],
           [客户编号],
           [账户名称],
           [账号],
           [账户类型],
           [开户日期],
           [开户时间],
           [销户日期],
           [销户时间],
           [账户状态],
           [证件种类],
           [身份证件号码],
           [身份证件有效期开始日],
           [身份证件有效期截止日],
           [身份核验方式],
           [绑定手机号码],
           [绑定银行账户账号],
           [绑定开户行法人代码],
           [代理人姓名],
           [代理人证件种类],
           [代理人证件号码],
           [代理人证件有效期开始日],
           [代理人证件有效期截止日],
           [代理人联系电话],
           [开户地地区代码],
           [介质号],
           [介质类型],
           [介质状态]
    FROM   tb_shzh_gr a
           LEFT JOIN v_bank b
                  ON [开户行金融机构代码] = b.银行编码或代码
    WHERE  [身份证件号码] is null or len([身份证件号码])<6
	       and 开户日期>=@bgn_date
    ORDER  BY [开户行金融机构代码],
              账户名称
  END
GO ', NULL, 552, N'020502', N'1', N'1', N'0', N'1', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (494, 448, N'个人账户开户时或检查时身份证过期√', N'比对身份证到期日与检查日', N'@检查期限截止日!D:20200630', N'CREATE PROCEDURE Pg_16up_date(@bgn_date CHAR(8))
WITH ENCRYPTION
AS
  BEGIN
    --DECLARE @bgn_date CHAR(8)
    --SET @bgn_date =''20200720''
    SELECT b.[银行机构名称],
           [开户行金融机构代码],
           [客户编号],
           [账户名称],
           [账号],
           [账户类型],
           [开户日期],
           [开户时间],
           [销户日期],
           [销户时间],
           [账户状态],
           [证件种类],
           [身份证件号码],
           [身份证件有效期开始日],
           [身份证件有效期截止日],
           Datediff(day, CONVERT(DATE, [身份证件有效期截止日]), CONVERT(DATE, 开户日期)) 开户过期天数,
           Datediff(day, CONVERT(DATE, [身份证件有效期截止日]), CONVERT(DATE, @bgn_date)) 检查日过期天数,
           [身份核验方式],
           [绑定手机号码],
           [绑定银行账户账号],
           [绑定开户行法人代码],
           [代理人姓名],
           [代理人证件种类],
           [代理人证件号码],
           [代理人证件有效期开始日],
           [代理人证件有效期截止日],
           [代理人联系电话],
           [开户地地区代码],
           [介质号],
           [介质类型],
           [介质状态]
    FROM   tb_shzh_gr a
           LEFT JOIN v_bank b
                  ON [开户行金融机构代码] = b.银行编码或代码
    WHERE  开户日期 > [身份证件有效期截止日]
            OR @bgn_date > [身份证件有效期截止日]
    ORDER  BY [开户行金融机构代码],
              账户名称
  END
GO ', NULL, 554, N'020504', N'1', N'1', N'0', N'1', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (461, 448, N'个人账户证件号码相同但名称不同√', N'', N'@检查期限起始日期!D:20190101', N'CREATE PROCEDURE Pg_acc_same_id_no_name(@bgn_date CHAR(8))
WITH ENCRYPTION
AS
  BEGIN
    IF Object_id(''tempdb..#tmp'') IS NOT NULL
      DROP TABLE #tmp

    SELECT DISTINCT [身份证件号码],
                    Count(账户名称) 数量
    INTO   #tmp
    FROM   tb_shzh_gr
    WHERE  Len([身份证件号码]) > 0
    GROUP  BY [身份证件号码]
    HAVING Count(DISTINCT 账户名称) >= 2

    SELECT c.[银行机构名称],
           [开户行金融机构代码],
           [客户编号],
           [账户名称],
           [账号],
           [账户类型],
           [开户日期],
           [开户时间],
           [销户日期],
           [销户时间],
           [账户状态],
           [证件种类],
           a.[身份证件号码],
           [身份证件有效期开始日],
           [身份证件有效期截止日],
           [身份核验方式],
           [绑定手机号码],
           [绑定银行账户账号],
           [绑定开户行法人代码],
           [代理人姓名],
           [代理人证件种类],
           [代理人证件号码],
           [代理人证件有效期开始日],
           [代理人证件有效期截止日],
           [代理人联系电话],
           [开户地地区代码],
           [介质号],
           [介质类型],
           [介质状态]
    FROM   #tmp a
           LEFT JOIN tb_shzh_gr b
                  ON a.[身份证件号码] = b.[身份证件号码]
           LEFT JOIN v_bank c
                  ON b.开户行金融机构代码 = c.银行编码或代码
    WHERE  开户日期 > @bgn_date
    ORDER  BY a.[身份证件号码],
              账户名称
  END
go ', NULL, 555, N'020505', N'1', N'1', N'0', N'1', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (473, 448, N'个人账户户口簿开户没有代理√', N'', N'@检查期限起始日期!D:20190101', N'CREATE PROCEDURE Pg_hkb_no_dl(@bgn_date CHAR(8))
WITH ENCRYPTION
AS
  BEGIN
    IF Object_id(''tempdb..#tmp'') IS NOT NULL
      DROP TABLE #tmp

    --DECLARE @bgn_date CHAR(8)
    --SET @bgn_date=''20190101''
    SELECT b.[银行机构名称],
           [开户行金融机构代码],
           [客户编号],
           [账户名称],
           [账号],
           [账户类型],
           [开户日期],
           [开户时间],
           [销户日期],
           [销户时间],
           [账户状态],
           [证件种类],
           [身份证件号码],
           dbo.Fn_getage([身份证件号码], [开户日期]) 开户时年龄,
           [身份证件有效期开始日],
           [身份证件有效期截止日],
           [身份核验方式],
           [绑定手机号码],
           [绑定银行账户账号],
           [绑定开户行法人代码],
           [代理人姓名],
           [代理人证件种类],
           [代理人证件号码],
           [代理人证件有效期开始日],
           [代理人证件有效期截止日],
           [代理人联系电话],
           [开户地地区代码],
           [介质号],
           [介质类型],
           [介质状态]
    FROM   tb_shzh_gr a
           LEFT JOIN v_bank b
                  ON a.开户行金融机构代码 = b.银行编码或代码
    WHERE  开户日期 > @bgn_date
           AND ( Len([代理人姓名]) = 0
                  OR [代理人姓名] IS NULL )
           AND [证件种类] = ''户口簿''
           AND dbo.Fn_getage([身份证件号码], [开户日期]) <= 16
    ORDER  BY 开户行金融机构代码,
              账户名称
  END
go ', NULL, 556, N'020506', N'1', N'1', N'0', N'1', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (463, 573, N'商行个人账户开立使用合规情况', N'功能描述：', N'@提示1!参数类型1:默认值1@提示2!参数类型2:默认值2', N'CREATE PROCEDURE      AS
BEGIN

END
GO', NULL, 560, N'0206', N'1', N'1', N'0', N'1', N'1', N'1')
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (498, 463, N'个人账户开立数量超限情况√', N'个人I、II、III账户开立超限', N'@I类户数量限额!N:1@II类户数量限额!N:4@III类户数量限额!N:5', N'CREATE PROCEDURE Pg_acc_count(@n_I INT,@n_II INT,@n_III INT)
WITH ENCRYPTION
AS
  BEGIN
    --DECLARE @n_I INT
    --DECLARE @n_II INT
    --DECLARE @n_III INT
    --SET @n_I=1
    --SET @n_II=4
    --SET @n_III=5
    IF Object_id(''tempdb..#tmp1'') IS NOT NULL
      DROP TABLE #tmp1

    IF Object_id(''tempdb..#tmp2'') IS NOT NULL
      DROP TABLE #tmp2

    IF Object_id(''tempdb..#tmp3'') IS NOT NULL
      DROP TABLE #tmp3

    IF Object_id(''tempdb..#tmp4'') IS NOT NULL
      DROP TABLE #tmp4

    IF Object_id(''tempdb..#tmp5'') IS NOT NULL
      DROP TABLE #tmp5

    SELECT 身份证件号码,
           --Count(账户类型) I类户数量,
           Sum(CASE 账户类型
                 WHEN ''一类'' THEN 1
                 ELSE 0
               END) I类户数量,
           Sum(CASE 账户类型
                 WHEN ''二类'' THEN 1
                 ELSE 0
               END) II类户数量,
           Sum(CASE 账户类型
                 WHEN ''三类'' THEN 1
                 ELSE 0
               END) III类户数量
    INTO   #tmp1
    FROM   tb_shzh_gr
    WHERE  NOT 账户类型 IS NULL
           AND 账户状态 = ''正常''
    GROUP  BY 身份证件号码
    HAVING ( Sum(CASE 账户类型
                   WHEN ''一类'' THEN 1
                   ELSE 0
                 END) > @n_I
              OR Sum(CASE 账户类型
                       WHEN ''二类'' THEN 1
                       ELSE 0
                     END) > @n_II
              OR Sum(CASE 账户类型
                       WHEN ''三类'' THEN 1
                       ELSE 0
                     END) > @n_III )
           AND Max(开户日期) >= ''20161201''

    SELECT c.[银行机构名称],
           [开户行金融机构代码],
           [客户编号],
           [账户名称],
           [账号],
           [账户类型],
           [开户日期],
           [开户时间],
           [销户日期],
           [销户时间],
           [账户状态],
           [证件种类],
           a.[身份证件号码],
           a.I类户数量,
           a.II类户数量,
           a.III类户数量,
           [身份证件有效期开始日],
           [身份证件有效期截止日],
           [身份核验方式],
           [绑定手机号码],
           [绑定银行账户账号],
           [绑定开户行法人代码],
           [代理人姓名],
           [代理人证件种类],
           [代理人证件号码],
           [代理人证件有效期开始日],
           [代理人证件有效期截止日],
           [代理人联系电话],
           [开户地地区代码],
           [介质号],
           [介质类型],
           [介质状态]
    FROM   #tmp1 a
           LEFT JOIN tb_shzh_gr b
                  ON a.身份证件号码 = b.身份证件号码
           LEFT JOIN V_Bank c
                  ON b.开户行金融机构代码 = c.银行编码或代码
    --WHERE  b.账户状态 = ''正常''
    ORDER  BY a.身份证件号码,
              b.账户类型,
              b.开户行金融机构代码
  END
GO ', NULL, 560, N'020601', N'1', N'1', N'0', N'1', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (495, 463, N'II类户非人工审核开户发生现金或非绑定账户转账入金', N'II类户非柜面或机具人工审核开户，发生现金或非绑定账户转账入金业务。注意：若交易对应的账户信息如账号、绑定账号、账户类型、开户渠道、交易对方账号等信息未提供，则筛选不全面！', N'', N'CREATE PROCEDURE PG_II_XJ_RJ  WITH ENCRYPTION AS
BEGIN
  --非柜面或机具人工审核，现金或非绑定账户转账入金
  if object_id(''tempdb..#tmp1'') is not null drop table #tmp1
  if object_id(''tempdb..#tmp2'') is not null drop table #tmp2
  if object_id(''tempdb..#tmp3'') is not null drop table #tmp3
  SELECT a.账号,count(交易金额) 现金笔数 
  into #tmp1
  FROM tb_shjy_gr a
  inner join tb_shzh_gr b
  on a.账号=b.账号
  where a.现转标识=''现金''  and  b.账户类型=''II类'' and b.开户渠道<>''柜面''  and b.开户渠道<>''自助机具（人工参与审核）''
  group by  a.账号
  having count(交易金额)>0
  order by 账号

  SELECT a.账号,count(交易金额) 转账入金笔数 
  into #tmp2
  FROM tb_shjy_gr a
  inner join tb_shzh_gr b
  on a.账号=b.账号
  where ( a.现转标识=''转账'' and a.借贷标识=''贷'')  and  b.账户类型=''II类'' and b.开户渠道<>''柜面''  and b.开户渠道<>''自助机具（人工参与审核）''
        and (b.绑定I类账户账号 is null or a.交易对方账号<>b.绑定I类账户账号)
  group by  a.账号
  having count(交易金额)>0
  order by 账号

  select (case when a.账号 is null then b.账号 else a.账号 end) 账号,a.现金笔数,b.转账入金笔数 
   into #tmp3
   from #tmp1 a
   full join #tmp2 b
   on a.账号=b.账号
   order by 账号

   select b.开户银行金融机构编码,c.银行机构名称,a.账号,b.存款人姓名,b.存款人身份证件号码,a.现金笔数,a.转账入金笔数,b.绑定I类账户账号,b.开户日期,b.销户日期,b.开户渠道,b.账户状态
   from #tmp3 a
   left join tb_shzh_gr b on a.账号=b.账号
   left join V_Bank c on b.开户银行金融机构编码=c.银行编码或代码
   order by b.开户银行金融机构编码,a.账号

END
GO', NULL, 561, N'020602', N'1', N'1', N'0', N'1', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (496, 463, N'II类户非绑定账户日累计入金出金超限额', N'II类户非绑定账户入金、出金（现金或转账）日累计超限额。注意：若交易对应的账户信息如账号、绑定账号、账户类型、开户渠道、交易对方账号等信息未提供，则筛选不全面！', N'@日累计限额!N:10000@返回行数!N:20000', N'CREATE PROCEDURE PG_II_RJ_CJ_day_out(@n_rlj int,@row_num int)  WITH ENCRYPTION AS
BEGIN
  --II类户非绑定账户入金、出金（现金或转账）日累计和年累计超限额
  if object_id(''tempdb..#tmp1'') is not null drop table #tmp1
  if object_id(''tempdb..#tmp2'') is not null drop table #tmp2
  if object_id(''tempdb..#tmp3'') is not null drop table #tmp3
  SELECT a.账号,a.交易日期,sum(交易金额) 日累计入金 
  into #tmp1
  FROM tb_shjy_gr a
  inner join tb_shzh_gr b
  on a.账号=b.账号
  where a.借贷标识=''贷'' and  b.账户类型=''II类'' and (b.绑定I类账户账号 is null or a.交易对方账号<>b.绑定I类账户账号)
  group by  a.账号,a.交易日期
  having sum(交易金额)>@n_rlj
  order by 账号,a.交易日期

  SELECT a.账号,a.交易日期,sum(交易金额) 日累计出金
  into #tmp2
  FROM tb_shjy_gr a
  inner join tb_shzh_gr b
  on a.账号=b.账号
  where a.借贷标识=''借''  and  b.账户类型=''II类'' and (b.绑定I类账户账号 is null or a.交易对方账号<>b.绑定I类账户账号)
  group by  a.账号,a.交易日期
  having sum(交易金额)>@n_rlj
  order by 账号,a.交易日期

  select (case when a.账号 is null then b.账号 else a.账号 end) 账号,
        (case when a.交易日期 is null then b.交易日期 else a.交易日期 end) 交易日期,
		a.日累计入金,b.日累计出金 
   into #tmp3
   from #tmp1 a
   full join #tmp2 b
   on a.账号=b.账号 and a.交易日期=b.交易日期
   order by 账号,交易日期
set rowcount @row_num
   select b.开户银行金融机构编码,c.银行机构名称,a.账号,b.存款人姓名,b.存款人身份证件号码,a.交易日期,a.日累计入金,a.日累计出金,b.账户类型,b.绑定I类账户账号,b.开户日期,b.销户日期,b.开户渠道,b.账户状态
   from #tmp3 a
   left join tb_shzh_gr b on a.账号=b.账号
   left join V_Bank c on b.开户银行金融机构编码=c.银行编码或代码
   order by b.开户银行金融机构编码,a.账号,a.交易日期
set rowcount 0
END
GO', NULL, 562, N'020603', N'1', N'1', N'0', N'1', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (497, 463, N'II类户非绑定账户年累计入金出金超限额', N'II类户非绑定账户入金、出金（现金或转账）年累计超限额。注意：若交易对应的账户信息如账号、绑定账号、账户类型、开户渠道、交易对方账号等信息未提供，则筛选不全面！', N'@年累计限额!N:200000@返回行数!N:1000', N'CREATE PROCEDURE PG_II_RJ_CJ_year_out(@n_nlj int,@row_num int)  WITH ENCRYPTION AS
BEGIN
  --II类户非绑定账户入金、出金（现金或转账）日累计和年累计超限额
  if object_id(''tempdb..#tmp1'') is not null drop table #tmp1
  if object_id(''tempdb..#tmp2'') is not null drop table #tmp2
  if object_id(''tempdb..#tmp3'') is not null drop table #tmp3
  SELECT a.账号,left(a.交易日期,4) 交易年份,sum(交易金额) 年累计入金 
  into #tmp1
  FROM tb_shjy_gr a
  inner join tb_shzh_gr b
  on a.账号=b.账号
  where a.借贷标识=''贷'' and  b.账户类型=''II类'' and (b.绑定I类账户账号 is null or a.交易对方账号<>b.绑定I类账户账号)
  group by  a.账号,left(a.交易日期,4)
  having sum(交易金额)>@n_nlj
  order by 账号,left(a.交易日期,4)

 SELECT a.账号,left(a.交易日期,4) 交易年份,sum(交易金额) 年累计出金 
  into #tmp2
  FROM tb_shjy_gr a
  inner join tb_shzh_gr b
  on a.账号=b.账号
  where a.借贷标识=''借'' and  b.账户类型=''II类'' and (b.绑定I类账户账号 is null or a.交易对方账号<>b.绑定I类账户账号)
  group by  a.账号,left(a.交易日期,4)
  having sum(交易金额)>@n_nlj
  order by 账号,left(a.交易日期,4)

  select (case when a.账号 is null then b.账号 else a.账号 end) 账号,
        (case when a.交易年份 is null then b.交易年份 else a.交易年份 end) 交易年份,
		a.年累计入金,b.年累计出金 
   into #tmp3
   from #tmp1 a
   full join #tmp2 b
   on a.账号=b.账号 and a.交易年份=b.交易年份
   order by 账号,交易年份
set rowcount @row_num
   select b.开户银行金融机构编码,c.银行机构名称,a.账号,b.存款人姓名,b.存款人身份证件号码,a.交易年份,a.年累计入金,a.年累计出金,b.账户类型,b.绑定I类账户账号,b.开户日期,b.销户日期,b.开户渠道,b.账户状态
   from #tmp3 a
   left join tb_shzh_gr b on a.账号=b.账号
   left join V_Bank c on b.开户银行金融机构编码=c.银行编码或代码
   order by b.开户银行金融机构编码,a.账号,a.交易年份
set rowcount 0
END
GO', NULL, 563, N'020604', N'1', N'1', N'0', N'1', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (499, 463, N'非结算账户发生转账交易', N'此种情况说明非结算账户使用了结算功能或者银行提供的数据有问题，可作为检查线索', N'@返回行数!N:1000', N'CREATE PROCEDURE PG_NoJS_YesJY(@row_num int)  WITH ENCRYPTION AS
BEGIN
if object_id(''tempdb..#tmp'') is not null drop table #tmp
select 账号,sum(case when 现转标识=''现金'' and 借贷标识=''借'' then 1 else 0 end) 现金借,sum(case when 现转标识=''现金'' and 借贷标识=''贷'' then 1 else 0 end) 现金贷
,sum(case when 现转标识=''转账'' and 借贷标识=''借'' then 1 else 0 end) 转账借,sum(case when 现转标识=''转账'' and 借贷标识=''贷'' then 1 else 0 end)  转账贷 
into #tmp
from tb_shjy_gr
where 账号 in (select distinct 账号 from tb_shjy_gr where 账号 in ( select distinct 账号 from tb_shzh_gr where 账户种类=''非结算账户''))
group by 账号
having sum(case when 现转标识=''转账'' and 借贷标识=''借'' then 1 else 0 end)>0 or sum(case when 现转标识=''转账'' and 借贷标识=''贷'' then 1 else 0 end)>0
set rowcount @row_num
select b.开户银行金融机构编码,c.银行机构名称,a.账号,b.存款人姓名,b.存款人身份证件号码,a.现金贷 存现,a.现金借 取现,a.转账贷 转入,a.转账借 转出,b.绑定I类账户账号,b.开户日期,b.销户日期,b.开户渠道,b.账户状态
   from #tmp a
   left join tb_shzh_gr b on a.账号=b.账号
   left join V_Bank c on b.开户银行金融机构编码=c.银行编码或代码
   order by b.开户银行金融机构编码,a.账号
set rowcount 0
END
GO', NULL, 564, N'020605', N'1', N'1', N'0', N'0', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (479, 448, N'存款人电话号码线索', N'', N'@银行机构代码（为空全部）!S:@返回行数!N:10000', N'CREATE PROCEDURE PG_acc_dh_wt(@bank_code varchar(14),@row_num int) WITH ENCRYPTION AS
BEGIN
if len(ltrim(rtrim(@bank_code)))=0 or @bank_code is null
   set @bank_code=''''
set rowcount @row_num
select *
from tb_shzh_gr
where (LEN(存款人电话)<=6  or [dbo].[FN_DupChar](存款人电话,7)=1 or isnumeric (存款人电话)=0 or  存款人电话 is null)
      and 开户银行金融机构编码 like''%''+rtrim(ltrim(@bank_code))+''%''        
order by 开户银行金融机构编码,代理人名称
set rowcount 0
END
GO', NULL, 567, N'020507', N'1', N'1', N'0', N'0', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (449, 0, N'商行个人账户信息查询', N'功能描述：', N'@提示1!参数类型1:默认值1@提示2!参数类型2:默认值2', N'CREATE PROCEDURE      AS
BEGIN

END
GO', NULL, 570, N'04', N'1', N'1', N'0', N'1', N'1', N'1')
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (467, 449, N'按存款人名称查询账户√', N'', N'@存款人姓名（模糊）!S:艾航娟@返回行数!N:100', N'CREATE PROCEDURE  PG_acc_from_name(@acc_name varchar(60),@row_num int) WITH ENCRYPTION AS
BEGIN
--declare @s_acc_name varchar(60)
--declare @s_bank_code_no varchar(60)
--set @s_acc_no=''樱田一弘''
set rowcount @row_num
select [开户行金融机构代码]
      ,b.[银行机构名称]
      ,[客户编号]
      ,[账户名称]
      ,[账号]
      ,[账户类型]
      ,[开户日期]
      ,[开户时间]
      ,[销户日期]
      ,[销户时间]
      ,[账户状态]
      ,[证件种类]
      ,[身份证件号码]
      ,[身份证件有效期开始日]
      ,[身份证件有效期截止日]
      ,[发证机关地区代码]
      ,[客户所属国家]
      ,[客户性别]
      ,[联系地址]
      ,[身份核验方式]
      ,[绑定手机号码]
      ,[绑定银行账户账号]
      ,[绑定银行账号日期]
      ,[绑定银行账号时间]
      ,[绑定开户行法人代码]
      ,[代理人姓名]
      ,[代理人证件种类]
      ,[代理人证件号码]
      ,[代理人证件有效期开始日]
      ,[代理人证件有效期截止日]
      ,[代理人联系电话]
      ,[开户地地区代码]
      ,[介质号]
      ,[介质类型]
      ,[介质状态]
      ,[开户IP]
      ,[开户MAC] 
from tb_shzh_gr a 
left join v_bank b on [开户行金融机构代码]=b.银行编码或代码   
where [账户名称] like ''%''+rtrim(ltrim(@acc_name))+''%''           
order by [开户行金融机构代码] , [账户名称]
set rowcount 0
END
GO', NULL, 571, N'0401', N'1', N'1', N'0', N'1', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (468, 449, N'按证件号码查询账户√', N'', N'@存款人身份证件号码（模糊）!S: @返回行数!N:100', N'CREATE PROCEDURE  PG_acc_from_idno(@acc_id varchar(60),@row_num int) WITH ENCRYPTION AS
BEGIN
--declare @s_acc_name varchar(60)
--declare @s_bank_code_no varchar(60)
--set @s_acc_no=''樱田一弘''
set rowcount @row_num
select [开户行金融机构代码]
      ,b.[银行机构名称]
      ,[客户编号]
      ,[账户名称]
      ,[账号]
      ,[账户类型]
      ,[开户日期]
      ,[开户时间]
      ,[销户日期]
      ,[销户时间]
      ,[账户状态]
      ,[证件种类]
      ,[身份证件号码]
      ,[身份证件有效期开始日]
      ,[身份证件有效期截止日]
      ,[发证机关地区代码]
      ,[客户所属国家]
      ,[客户性别]
      ,[联系地址]
      ,[身份核验方式]
      ,[绑定手机号码]
      ,[绑定银行账户账号]
      ,[绑定银行账号日期]
      ,[绑定银行账号时间]
      ,[绑定开户行法人代码]
      ,[代理人姓名]
      ,[代理人证件种类]
      ,[代理人证件号码]
      ,[代理人证件有效期开始日]
      ,[代理人证件有效期截止日]
      ,[代理人联系电话]
      ,[开户地地区代码]
      ,[介质号]
      ,[介质类型]
      ,[介质状态]
      ,[开户IP]
      ,[开户MAC] 
from tb_shzh_gr a 
left join v_bank b on [开户行金融机构代码]=b.银行编码或代码   
where [身份证件号码] like ''%''+rtrim(ltrim(@acc_id))+''%''           
order by [开户行金融机构代码] , [身份证件号码]
set rowcount 0 
END
GO', NULL, 572, N'0402', N'1', N'1', N'0', N'1', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (488, 449, N'按账号或卡号查询账户√', N'', N'@账号或卡号（模糊）!S: @返回行数!N:100', N'CREATE PROCEDURE  PG_acc_from_acc_no(@acc_no varchar(60),@row_num int) WITH ENCRYPTION AS
BEGIN
--declare @s_acc_name varchar(60)
--declare @s_bank_code_no varchar(60)
--set @s_acc_no=''樱田一弘''
set rowcount @row_num
select [开户行金融机构代码]
      ,b.[银行机构名称]
      ,[客户编号]
      ,[账户名称]
      ,[账号]
      ,[账户类型]
      ,[开户日期]
      ,[开户时间]
      ,[销户日期]
      ,[销户时间]
      ,[账户状态]
      ,[证件种类]
      ,[身份证件号码]
      ,[身份证件有效期开始日]
      ,[身份证件有效期截止日]
      ,[发证机关地区代码]
      ,[客户所属国家]
      ,[客户性别]
      ,[联系地址]
      ,[身份核验方式]
      ,[绑定手机号码]
      ,[绑定银行账户账号]
      ,[绑定银行账号日期]
      ,[绑定银行账号时间]
      ,[绑定开户行法人代码]
      ,[代理人姓名]
      ,[代理人证件种类]
      ,[代理人证件号码]
      ,[代理人证件有效期开始日]
      ,[代理人证件有效期截止日]
      ,[代理人联系电话]
      ,[开户地地区代码]
      ,[介质号]
      ,[介质类型]
      ,[介质状态]
      ,[开户IP]
      ,[开户MAC] 
from tb_shzh_gr a 
left join v_bank b on [开户行金融机构代码]=b.银行编码或代码   
where 账号 like ''%''+rtrim(ltrim(@acc_no))+''%'' or  [介质号] like ''%''+rtrim(ltrim(@acc_no))+''%''             
order by [开户行金融机构代码] , 账号
set rowcount 0 
END
GO', NULL, 573, N'0403', N'1', N'1', N'0', N'1', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (451, 0, N'商行个人交易信息查询', N'功能描述：', N'@提示1!参数类型1:默认值1@提示2!参数类型2:默认值2', N'CREATE PROCEDURE      AS
BEGIN

END
GO', NULL, 579, N'05', N'0', N'0', N'0', N'1', N'1', N'1')
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (489, 451, N'单个账号交易流水√', N'', N'@账号!S:1000200030004001@开始日期!D:20160101@结束日期!D:20180531@返回行数!N:300', N'CREATE PROCEDURE  PG_rmb_txn_all(@s_acc_no varchar(40),@bgn_date char(8), @end_date char(8), @row_num int) WITH ENCRYPTION AS
BEGIN
set rowcount @row_num
SELECT b.银行机构名称,
		账号,
		账户名称,
		交易日期,
		交易时间,
		交易金额,
		交易币种,
		账户余额 ,
		借贷标识 ,
		现转标识,
		交易渠道,
		资金结算流水号,
		交易对方账户名称,
		交易对方账号,
		交易对方开户银行,
		交易附言
FROM [tb_shjy_gr] a  
left join v_bank b on a.[交易行金融机构代码]=b.银行编码或代码 
where [账号] = @s_acc_no
       and (交易日期 between @bgn_date and @end_date)
       order by 交易日期
set rowcount 0
END
GO', NULL, 580, N'0501', N'0', N'0', N'0', N'1', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (470, 449, N'按证件种类提取账户√', N'一代；二代；临时；中国；户口；村民；学生；军官；离休；军官；文职；军事；武警；士兵证；港澳；台湾；居留；边民；外国；其他', N'@银行机构代码（为空全部）!S:@存款人身份证件种类（模糊，20个种类）!S:@返回行数!N:100', N'CREATE PROCEDURE  PG_acc_from_idzl(@bank_code varchar(14),@acc_idzl varchar(60),@row_num int) WITH ENCRYPTION AS
BEGIN
--declare @acc_idzl varchar(60)
--declare @bank_code varchar(14)
--set @acc_idzl=''身份证''
--set @bank_code=''''
set rowcount @row_num
if len(ltrim(rtrim(@bank_code)))=0 or @bank_code is null
   set @bank_code=''''
select [开户行金融机构代码]
      ,b.[银行机构名称]
      ,[客户编号]
      ,[账户名称]
      ,[账号]
      ,[账户类型]
      ,[开户日期]
      ,[开户时间]
      ,[销户日期]
      ,[销户时间]
      ,[账户状态]
      ,[证件种类]
      ,[身份证件号码]
      ,[身份证件有效期开始日]
      ,[身份证件有效期截止日]
      ,[发证机关地区代码]
      ,[客户所属国家]
      ,[客户性别]
      ,[联系地址]
      ,[身份核验方式]
      ,[绑定手机号码]
      ,[绑定银行账户账号]
      ,[绑定银行账号日期]
      ,[绑定银行账号时间]
      ,[绑定开户行法人代码]
      ,[代理人姓名]
      ,[代理人证件种类]
      ,[代理人证件号码]
      ,[代理人证件有效期开始日]
      ,[代理人证件有效期截止日]
      ,[代理人联系电话]
      ,[开户地地区代码]
      ,[介质号]
      ,[介质类型]
      ,[介质状态]
      ,[开户IP]
      ,[开户MAC]
from tb_shzh_gr a 
left join v_bank b on [开户行金融机构代码]=b.银行编码或代码   
where [证件种类] like ''%''+rtrim(ltrim(@acc_idzl))+''%''  
      and   [开户行金融机构代码] like''%''+rtrim(ltrim(@bank_code))+''%''        
order by [开户行金融机构代码] ,[身份证件号码]
set rowcount 0
END
GO', NULL, 580, N'0404', N'1', N'1', N'0', N'1', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (469, 449, N'按账户类型提取账户√', N'I类、II类、III三类', N'@银行机构代码（为空全部）!S:@账户类型（模糊，一、二、三）!S:二@返回行数!N:100', N'CREATE PROCEDURE  PG_acc_from_zllx(@bank_code varchar(14),@acc_lx varchar(60),@row_num int) WITH ENCRYPTION AS
BEGIN
--declare @acc_idzl varchar(60)
--declare @bank_code varchar(14)
--set @acc_idzl=''身份证''
--set @bank_code=''''
set rowcount @row_num
if len(ltrim(rtrim(@bank_code)))=0 or @bank_code is null
   set @bank_code=''''
select [开户行金融机构代码]
      ,b.[银行机构名称]
      ,[客户编号]
      ,[账户名称]
      ,[账号]
      ,[账户类型]
      ,[开户日期]
      ,[开户时间]
      ,[销户日期]
      ,[销户时间]
      ,[账户状态]
      ,[证件种类]
      ,[身份证件号码]
      ,[身份证件有效期开始日]
      ,[身份证件有效期截止日]
      ,[发证机关地区代码]
      ,[客户所属国家]
      ,[客户性别]
      ,[联系地址]
      ,[身份核验方式]
      ,[绑定手机号码]
      ,[绑定银行账户账号]
      ,[绑定银行账号日期]
      ,[绑定银行账号时间]
      ,[绑定开户行法人代码]
      ,[代理人姓名]
      ,[代理人证件种类]
      ,[代理人证件号码]
      ,[代理人证件有效期开始日]
      ,[代理人证件有效期截止日]
      ,[代理人联系电话]
      ,[开户地地区代码]
      ,[介质号]
      ,[介质类型]
      ,[介质状态]
      ,[开户IP]
      ,[开户MAC]
from tb_shzh_gr a 
left join v_bank b on [开户行金融机构代码]=b.银行编码或代码   
where 账户类型 like ''%''+rtrim(ltrim(@acc_lx))+''%''  
      and   [开户行金融机构代码] like''%''+rtrim(ltrim(@bank_code))+''%''        
order by [开户行金融机构代码] ,[账户类型]
set rowcount 0

END
GO', NULL, 581, N'0405', N'1', N'1', N'0', N'1', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (490, 451, N'单个账号现金交易流水√', N'', N'@账号!S:1000200030004001@开始日期!D:20120101@结束日期!D:20170930@返回行数!N:300', N'CREATE PROCEDURE  PG_rmb_cash_all(@s_acc_no varchar(40),@bgn_date char(8), @end_date char(8), @row_num int) WITH ENCRYPTION AS
BEGIN
set rowcount @row_num
SELECT b.银行机构名称,
		账号,
		账户名称,
		交易日期,
		交易时间,
		交易金额,
		交易币种,
		账户余额 ,
		借贷标识 ,
		现转标识,
		交易渠道,
		资金结算流水号,
		交易对方账户名称,
		交易对方账号,
		交易对方开户银行,
		交易附言
FROM [tb_shjy_gr] a  
left join v_bank b on a.[交易行金融机构代码]=b.银行编码或代码 
where [账号] = @s_acc_no
       and [现转标识]=''现金''  
       and (交易日期 between @bgn_date and @end_date)
       order by 交易日期
set rowcount 0
END
GO', NULL, 581, N'0502', N'0', N'0', N'0', N'1', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (471, 449, N'按身份核验方式提取账户√', N'面对面；非面对面', N'@银行机构代码（为空全部）!S:@身份核验方式（模糊，面，非）!S:非@返回行数!N:100', N'CREATE PROCEDURE  PG_acc_from_khqd(@bank_code varchar(14),@khqd varchar(60),@row_num int) WITH ENCRYPTION AS
BEGIN
--declare @acc_idzl varchar(60)
--declare @bank_code varchar(14)
--set @acc_idzl=''身份证''
--set @bank_code=''''
set rowcount @row_num
if len(ltrim(rtrim(@bank_code)))=0 or @bank_code is null
   set @bank_code=''''
select [开户行金融机构代码]
      ,b.[银行机构名称]
      ,[客户编号]
      ,[账户名称]
      ,[账号]
      ,[账户类型]
      ,[开户日期]
      ,[开户时间]
      ,[销户日期]
      ,[销户时间]
      ,[账户状态]
      ,[证件种类]
      ,[身份证件号码]
      ,[身份证件有效期开始日]
      ,[身份证件有效期截止日]
      ,[发证机关地区代码]
      ,[客户所属国家]
      ,[客户性别]
      ,[联系地址]
      ,[身份核验方式]
      ,[绑定手机号码]
      ,[绑定银行账户账号]
      ,[绑定银行账号日期]
      ,[绑定银行账号时间]
      ,[绑定开户行法人代码]
      ,[代理人姓名]
      ,[代理人证件种类]
      ,[代理人证件号码]
      ,[代理人证件有效期开始日]
      ,[代理人证件有效期截止日]
      ,[代理人联系电话]
      ,[开户地地区代码]
      ,[介质号]
      ,[介质类型]
      ,[介质状态]
      ,[开户IP]
      ,[开户MAC]
from tb_shzh_gr a 
left join v_bank b on [开户行金融机构代码]=b.银行编码或代码   
where [身份核验方式] like rtrim(ltrim(@khqd))+''%''
      and   [开户行金融机构代码] like''%''+rtrim(ltrim(@bank_code))+''%''        
order by [开户行金融机构代码] ,[身份核验方式]
set rowcount 0

END
GO', NULL, 583, N'0406', N'1', N'1', N'0', N'1', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (478, 449, N'提取含有子信息的账户', N'提取联名账户和一号多卡账户', N'@银行机构代码（为空全部）!S:', N'CREATE PROCEDURE  PG_acc_sub_infor(@bank_code varchar(14)) WITH ENCRYPTION AS
BEGIN

select * from tb_shzh_gr where  (CHARINDEX('';'', 存款人姓名)>0 or CHARINDEX('';'', 卡号)>0) and
      开户银行金融机构编码 like ''%''+rtrim(ltrim(@bank_code))+''%''        
      order by 开户银行金融机构编码 ,存款人身份证件号码
END
GO', NULL, 585, N'0407', N'1', N'1', N'0', N'0', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (480, 449, N'提取有代理人的账户√', N'功能描述：', N'@银行机构代码（为空全部）!S:@返回行数!N:1000', N'CREATE PROCEDURE PG_acc_dl_zh(@bank_code varchar(14),@row_num int) WITH ENCRYPTION AS
BEGIN
set rowcount @row_num
if len(ltrim(rtrim(@bank_code)))=0 or @bank_code is null
   set @bank_code=''''
select [开户行金融机构代码]
      ,b.[银行机构名称]
      ,[客户编号]
      ,[账户名称]
      ,[账号]
      ,[账户类型]
      ,[开户日期]
      ,[开户时间]
      ,[销户日期]
      ,[销户时间]
      ,[账户状态]
      ,[证件种类]
      ,[身份证件号码]
      ,[身份证件有效期开始日]
      ,[身份证件有效期截止日]
      ,[发证机关地区代码]
      ,[客户所属国家]
      ,[客户性别]
      ,[联系地址]
      ,[身份核验方式]
      ,[绑定手机号码]
      ,[绑定银行账户账号]
      ,[绑定银行账号日期]
      ,[绑定银行账号时间]
      ,[绑定开户行法人代码]
      ,[代理人姓名]
      ,[代理人证件种类]
      ,[代理人证件号码]
      ,[代理人证件有效期开始日]
      ,[代理人证件有效期截止日]
      ,[代理人联系电话]
      ,[开户地地区代码]
      ,[介质号]
      ,[介质类型]
      ,[介质状态]
      ,[开户IP]
      ,[开户MAC]
from tb_shzh_gr a 
left join v_bank b on [开户行金融机构代码]=b.银行编码或代码   
where (LEN([代理人姓名])>0 or LEN([代理人证件种类])>0 or LEN([代理人证件号码])>0 or LEN([代理人联系电话])>0)
      and   [开户行金融机构代码] like''%''+rtrim(ltrim(@bank_code))+''%''        
order by [开户行金融机构代码] ,[代理人姓名]
set rowcount 0
END
GO', NULL, 586, N'0408', N'1', N'1', N'0', N'1', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (450, 0, N'人行个人账户信息查询', N'功能描述：', N'', N'CREATE PROCEDURE      AS
BEGIN

END
GO', NULL, 750, N'08', N'0', N'0', N'0', N'1', N'1', N'1')
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (475, 513, N'按名称查询银行编码或代码', N'', N'@银行机构名称（模糊）!S:淮南', N'CREATE PROCEDURE  PG_bank_code(@bank_name varchar(60)) WITH ENCRYPTION AS
BEGIN
select [银行编码或代码]
      ,[银行机构名称]
      ,[机构所在省]
      ,[机构所在地区]
      ,[机构所在城市]
      ,'''' 行别
      ,[地址]
  FROM [HNXLSYS].[dbo].[tb_bank_bm]
  where 银行机构名称 like ''%''+rtrim(ltrim(@bank_name))+''%''
END
GO', NULL, 908, N'0905', N'0', N'0', N'0', N'0', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (474, 513, N'金融机构编码查询（编码名称）', N'', N'@金融机构编码（模糊，为空忽略）!S:1043610@金融机构名称（模糊，为空忽略）!S:', N'CREATE PROCEDURE  PG_bank_name(@bank_code varchar(60)) WITH ENCRYPTION AS
BEGIN
select [银行编码或代码]
      ,[银行机构名称]
      ,[机构所在省]
      ,[机构所在地区]
      ,[机构所在城市]
      ,'''' 行别
      ,[地址]
  FROM [HNXLSYS].[dbo].[tb_bank_bm]
  where [银行编码或代码] like ''%''+rtrim(ltrim(@bank_code))+''%''

END
GO', NULL, 907, N'0904', N'0', N'0', N'0', N'1', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (485, 450, N'按存款人名称查人行个人账户（1关键字）', N'', N'@存款人名称（为空所有）!S:张@返回行数!N:50', N'CREATE PROCEDURE  PG_zh_acc_name1(@acc_name varchar(60),@row_num int) WITH ENCRYPTION AS
BEGIN
set rowcount @row_num
select b.银行机构名称,a.* from tb_rhzh_gr a
left join v_bank b 
on a.银行机构代码=b.银行编码或代码 
where  rtrim(ltrim(存款人名称)) like ''%''+@acc_name+''%''
ORDER BY 银行机构代码,存款人名称
set rowcount 0
END
GO', NULL, 753, N'0803', N'0', N'0', N'0', N'1', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (486, 450, N'按存款人名称查人行个人账户（2关键字）', N'', N'@账户名称关键字1!S:柏雪梅@账户名称关键字2!S:@返回行数!N:10', N'CREATE PROCEDURE  PG_zh_acc_name2(@acc_name1 varchar(60),@acc_name2 varchar(60),@row_num int) WITH ENCRYPTION AS
BEGIN
set rowcount @row_num
select b.银行机构名称,a.* from tb_rhzh_gr a
left join v_bank b 
on a.银行机构代码=b.银行编码或代码 
where rtrim(ltrim(存款人名称)) like ''%''+@acc_name1+''%'' and rtrim(ltrim(存款人名称)) like ''%''+@acc_name2+''%''
ORDER BY 银行机构代码,存款人名称
set rowcount 0
END
GO', NULL, 754, N'0801', N'0', N'0', N'0', N'1', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (487, 450, N'按账号查人行个人账户信息', N'', N'@账号或卡号!S:1034760111009122279', N'CREATE PROCEDURE  PG_zh_acc_from_acc_no(@s_acc_no varchar(60)) WITH ENCRYPTION AS
BEGIN
select b.银行机构名称,a.* from tb_rhzh_gr a
left join v_bank b 
on a.银行机构代码=b.银行编码或代码 
where  rtrim(ltrim(账号)) like ''%''+@s_acc_no+''%''
ORDER BY 银行机构代码,账号
END
GO', NULL, 755, N'0802', N'0', N'0', N'0', N'1', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (1, 0, N'函数前自动运行', N'隐藏 此类功能用于在程序中后台调用，不在用户界面出现。每个功能前必须有数字代码，在程序中调用。', N'', NULL, NULL, 1000, N'11', N'0', N'0', N'0', N'0', N'1', N'1')
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (169, 1, N'clr运行允许设置2019', N'与程序及相关的函数定义的序号应大于本序号使本过程限制性', N'', N'CREATE PROCEDURE  P_clr_run  WITH ENCRYPTION AS
BEGIN
exec (''sp_configure ''+''''''show advanced options''''''+'', 1'') 
reconfigure
exec (''sp_configure ''+''''''clr strict security''''''+'', 0'') 
reconfigure
exec (''sp_configure ''+''''''clr enabled''''''+'', 1'')
reconfigure
--获取安装路径（数据库目录所在路径）
DECLARE @Path NVARCHAR(MAX)
DECLARE @ReversedPath NVARCHAR(MAX)
DECLARE @PathLength INT
declare @Pathname NVARCHAR(MAX)
set @path=(select top 1 physical_name from sys.database_files where physical_name like ''%.mdf'')
SET @ReversedPath = REVERSE(@Path)
SELECT @PathLength = CHARINDEX(''\'', @ReversedPath)
set @Path= LEFT(@Path, LEN(@Path) - @PathLength)
SET @ReversedPath = REVERSE(@Path)
set @PathLength = CHARINDEX(''\'', @ReversedPath)
set @pathname = LEFT(@Path, LEN(@Path) - @PathLength)
set @Pathname = @Pathname+''\MSSQLRegexExtend.dll''
--注册.net类库 
--CREATE ASSEMBLY Regex from ''D:\Inspection\MSSQLRegexExtend.dll'' WITH PERMISSION_SET = SAFE
if not exists(select * from sys.assemblies where name=''Regex'')
begin
  EXEC(''CREATE ASSEMBLY Regex from ''+''''''''+@Pathname+''''''''+'' WITH PERMISSION_SET = SAFE'')    
  RECONFIGURE         --设置可用clr组件。别忘记运行这行进行应用  
end 
select ''OK''
END
GO
', N'2019', 1001, N'1101', N'0', N'0', N'1', N'0', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (172, 1, N'压缩系统数据库提升性能', N'压缩系统数据库提升性能', N'', N'CREATE PROCEDURE   P_Shirink_HNXLSYS  WITH ENCRYPTION AS
BEGIN
declare @dbname varchar(20)
set  @dbname=''HNXLSYS''
begin try
  exec(''DBCC SHRINKDATABASE([''+@dbname+''])'')
  select @dbname
end try
begin catch
  SELECT ''系统数据库已经压缩过了！''AS 数据库压缩情况;
end catch
END', NULL, 1003, N'1103', N'0', N'0', N'0', N'0', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (357, 1, N'压缩当前数据库提升性能', N'压缩当前数据库提升性能', N'', N'CREATE PROCEDURE   P_Shirink_Cur_data  WITH ENCRYPTION AS
BEGIN
declare @dbname varchar(20)
set  @dbname=(Select Name From Master..SysDataBases Where DbId=(Select Dbid From Master..SysProcesses Where Spid = @@spid))
begin try
  exec(''DBCC SHRINKDATABASE([''+@dbname+''])'')
  select @dbname
end try
begin catch
  SELECT ''当前数据库已经压缩过了！''AS 数据库压缩情况;
end catch
END', NULL, 1004, N'1104', N'0', N'0', N'0', N'0', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (359, 0, N'函数定义', N'', N'', N'CREATE PROCEDURE      AS
BEGIN

END
GO', NULL, 2000, N'12', N'0', N'0', N'0', N'0', N'1', N'1')
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (446, 359, N'字符串查找重复数量', N'FN_DupChar(''11000000'',6)返回1表明存在6个连续的字符，FN_DupChar(''1100'',6)返回0表明不存在6个连续的字符，', N'', N'CREATE  Function FN_DupChar(@String Varchar(100),@char_num int) Returns Bit As
BEGIN
Declare @Temp Table(Chr Varchar(2))
Declare @i Int ,@j Int
Select @i = 1, @j = 0
While @i <= Len(@String)
Begin
Insert Into @Temp Select Substring(@String,@i,1)
Select @i = @i + 1
End
If Exists(Select 1 From @Temp Group By Chr Having Count(*) >= @char_num)
Begin
Set @j = 1
End
Return @j
End

', NULL, 2004, N'1201', N'0', N'0', N'1', N'0', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (445, 359, N'去除前导字符串函数', N'f_delete_head(''00123'',''0'')返回123', N'', N'CREATE FUNCTION f_delete_head(@s varchar(8000),@flag varchar(10))returns varchar(8000) as
BEGIN
declare @i int
select @i=1
while (@i<=len(@s))
begin
if (substring(@s,@i,len(@flag) )<>@flag)
begin
break
end
select @i=@i+len(@flag)
end
return right(@s,len(@s)-@i+1)
end', NULL, 2006, N'1202', N'0', N'0', N'1', N'0', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (360, 359, N'字符串分割到临时表', N'select id from ufn_SplitStringToTable(''01,02,03,04'','','')返回一个表可用于1个参数的多个内容', N'', N'CREATE FUNCTION ufn_SplitStringToTable(@str VARCHAR(MAX),@split VARCHAR(10))
RETURNS TABLE WITH ENCRYPTION
    AS
RETURN
    ( SELECT B.id
      FROM ( SELECT [value] = CONVERT(XML , ''<v>'' + REPLACE(@str , @split , ''</v><v>'')+ ''</v>'')
                ) A
      OUTER APPLY ( SELECT  id = N.v.value(''.'' , ''varchar(100)'')
                    FROM    A.[value].nodes(''/v'') N ( v )
                ) B
    )', N'2014', 2006, N'1203', N'0', N'0', N'1', N'0', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (537, 359, N'当前日期字符串', N'', N'@提示1!参数类型1:默认值1@提示2!参数类型2:默认值2', N'Create function getCurDate()
Returns varchar(8)
WITH ENCRYPTION
As
Begin
declare @date varchar(8)
set @date=CONVERT(varchar(100), GETDATE(), 112) 
Return(@date)
End
GO', NULL, 2008, N'1204', N'0', N'0', N'1', N'0', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (532, 359, N'正则校验', N'', N'', N'CREATE FUNCTION [Regex.IsMatch](@Regex [nvarchar](max),@Input [nvarchar](max))  --程序集的函数定义要加中括号
RETURNS [bit] WITH EXECUTE AS CALLER  
AS   
EXTERNAL NAME [Regex].[MSSQLRegexExtend.RegexExtend].[IsMatch] 
--正则校验(符合为1，不符合为0)
-- SELECT [dbo].[Regex.IsMatch](''^[a-zA-Z0-9_-]+@[a-zA-Z0-9_-]+(\.[a-zA-Z0-9_-]+)+$'',''dyuanrong2010@163.com'') 符合验证,
  --[dbo].[Regex.IsMatch](''^[a-zA-Z0-9_-]+@[a-zA-Z0-9_-]+(\.[a-zA-Z0-9_-]+)+$'',''dyuanrong2010@163com'') 不符合验证
GO', NULL, 2010, N'1205', N'0', N'0', N'1', N'0', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (531, 359, N'正则替换', N'', N'', N'CREATE FUNCTION [Regex.Replace](@Regex [nvarchar](max),@Input [nvarchar](max),@Replace [nvarchar](max))  
RETURNS [nvarchar](max) WITH EXECUTE AS CALLER  
AS   
EXTERNAL NAME [Regex].[MSSQLRegexExtend.RegexExtend].[Replace]  
--正则替换(将数字替换成空)
-- SELECT [dbo].[Regex.Replace](''[0-9]'', ''a12b12c'', '''')  [将数字干掉],
-- [dbo].[Regex.Replace](''[a-z]'', ''a12b12c'', ''*'')  [将字母替换*]
go', NULL, 2012, N'1206', N'0', N'0', N'1', N'0', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (530, 359, N'正则匹配', N'', N'', N'CREATE FUNCTION [Regex.Match](@Regex [nvarchar](max),@Input [nvarchar](max))  
RETURNS [nvarchar](max) WITH EXECUTE AS CALLER
AS   
EXTERNAL NAME [Regex].[MSSQLRegexExtend.RegexExtend].[Match]  
 --正则匹配(匹配不为空，不匹配为空)
--SELECT [dbo].[Regex.Match](''\d+'',''abcdefghijkl'') 不能匹配, 
--[dbo].[Regex.Match](''\d+'',''0123456789'') 能匹配
go ', NULL, 2014, N'1207', N'0', N'0', N'1', N'0', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (534, 359, N'身份证地区校验6位', N'校验6位地区（速度较慢）', N'', N'CREATE function checkArea6
(
@area varchar(6)
)
returns varchar(8000)
WITH ENCRYPTION
as
BEGIN
declare @result varchar(8000)
if @area in (select distinct  编码 from HNXLSYS.dbo.AreaCodeOldNew )
   begin
      set @result=(select 地名 from HNXLSYS.dbo.AreaCodeOldNew where 编码=@area)
	  return @result
   end
return ''''
END
GO', NULL, 2016, N'1208', N'0', N'0', N'1', N'0', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (546, 359, N'身份证地区校验4位', N'仅校验省份和城市', N'', N'CREATE function checkArea4
(
@area varchar(4)
)
returns varchar(8000)
WITH ENCRYPTION
as
BEGIN
declare @result varchar(8000)
if @area in (select distinct  left(编码,4) from HNXLSYS.dbo.AreaCodeSFCS )
   begin
      set @result=(select 地名 from HNXLSYS.dbo.AreaCodeSFCS where left(编码,4) = @area)
	  return @result
   end
return ''''
END
GO', NULL, 2017, N'1209', N'0', N'0', N'1', N'0', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (544, 359, N'身份证地区校验2位', N'仅校验省份', N'', N'CREATE function checkArea2
(
@area varchar(2)
)
returns varchar(8000)
WITH ENCRYPTION
as
BEGIN
declare @result varchar(8000)
if @area in (select distinct  left(编码,2) from HNXLSYS.dbo.AreaCodeSF )
   begin
      set @result=(select 地名 from HNXLSYS.dbo.AreaCodeSF where left(编码,2) = @area)
	  return @result
   end
return ''''
END
GO', NULL, 2018, N'1210', N'0', N'0', N'1', N'0', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (533, 359, N'身份证检验码', N'', N'', N'Create function getCheckCode(@SFZH char(18))
Returns char(1)
WITH ENCRYPTION
As
Begin
  declare @r char(1)
  declare @i int
  if len(@SFZH) <> 18
    set @r = ''?''
  else
    set @i = cast(substring(@SFZH,1,1) as int) * 7
    +cast(substring(@SFZH,2,1) as int) * 9
    +cast(substring(@SFZH,3,1) as int) * 10
      +cast(substring(@SFZH,4,1) as int) * 5
      +cast(substring(@SFZH,5,1) as int) * 8
      +cast(substring(@SFZH,6,1) as int) * 4
      +cast(substring(@SFZH,7,1) as int) * 2
      +cast(substring(@SFZH,8,1) as int) * 1
      +cast(substring(@SFZH,9,1) as int) * 6
      +cast(substring(@SFZH,10,1) as int) * 3
      +cast(substring(@SFZH,11,1) as int) * 7
      +cast(substring(@SFZH,12,1) as int) * 9
      +cast(substring(@SFZH,13,1) as int) * 10
      +cast(substring(@SFZH,14,1) as int) * 5
      +cast(substring(@SFZH,15,1) as int) * 8
      +cast(substring(@SFZH,16,1) as int) * 4
      +cast(substring(@SFZH,17,1) as int) * 2
  set @i = @i - @i/11 * 11
  set @r = (case @i
  when 0 then ''1'' when 1 then ''0'' when 2 then ''X'' when 3 then ''9''
  when 4 then ''8'' when 5 then ''7'' when 6 then ''6'' when 7 then ''5''
  when 8 then ''4'' when 9 then ''3'' when 10 then ''2'' else ''/'' end)
  Return(@r)
End', NULL, 2019, N'1211', N'0', N'0', N'1', N'0', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (535, 359, N'身份证年龄', N'', N'', N'Create function getYears(@SFZH char(18))
Returns char(1)
WITH ENCRYPTION
As
Begin
  declare @r char(1)
  declare @i int
  if len(@SFZH) <> 18
    set @r = ''?''
  else
    set @i = cast(substring(@SFZH,1,1) as int) * 7
    +cast(substring(@SFZH,2,1) as int) * 9
    +cast(substring(@SFZH,3,1) as int) * 10
      +cast(substring(@SFZH,4,1) as int) * 5
      +cast(substring(@SFZH,5,1) as int) * 8
      +cast(substring(@SFZH,6,1) as int) * 4
      +cast(substring(@SFZH,7,1) as int) * 2
      +cast(substring(@SFZH,8,1) as int) * 1
      +cast(substring(@SFZH,9,1) as int) * 6
      +cast(substring(@SFZH,10,1) as int) * 3
      +cast(substring(@SFZH,11,1) as int) * 7
      +cast(substring(@SFZH,12,1) as int) * 9
      +cast(substring(@SFZH,13,1) as int) * 10
      +cast(substring(@SFZH,14,1) as int) * 5
      +cast(substring(@SFZH,15,1) as int) * 8
      +cast(substring(@SFZH,16,1) as int) * 4
      +cast(substring(@SFZH,17,1) as int) * 2
  set @i = @i - @i/11 * 11
  set @r = (case @i
  when 0 then ''1'' when 1 then ''0'' when 2 then ''X'' when 3 then ''9''
  when 4 then ''8'' when 5 then ''7'' when 6 then ''6'' when 7 then ''5''
  when 8 then ''4'' when 9 then ''3'' when 10 then ''2'' else ''/'' end)
  Return(@r)
End
GO', NULL, 2020, N'1212', N'0', N'0', N'1', N'0', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (536, 359, N'身份证号检验', N'参数：身份证号,地区校验位数', N'', N'CREATE FUNCTION VerifyPerID
(@idcard VARCHAR(60), --身份证号码 
 @sf     VARCHAR(1) --校验地区，6，全地名，2仅校验省份（速度快些），4仅校验省份和城市
)
RETURNS VARCHAR(8000) --返回信息
WITH ENCRYPTION
AS
     BEGIN
         DECLARE @year_i INT;
         DECLARE @regex_s VARCHAR(240);
 --首先判断身份证号是否为空
         IF @idcard IS NULL
            OR LEN(@idcard) = 0
             RETURN ''身份证号为空'';

--首先判断身份证号位数
         IF(LEN(@idcard) <> 15
            AND LEN(@idcard) <> 18)
             RETURN ''身份证位数错'';
--首先校验地区
         IF @sf = ''6''
             BEGIN
                 IF LEN(dbo.checkArea6(@idcard)) = 0
                     RETURN ''身份证地区错'';
             END;
         IF @sf = ''4''
             BEGIN
                 IF LEN(dbo.checkArea4(@idcard)) = 0
                     RETURN ''身份证地区错'';
             END;
         IF @sf = ''2''
             BEGIN
                 IF LEN(dbo.checkArea2(@idcard)) = 0
                     RETURN ''身份证省份错'';
             END;
--正则表达式校验 
--若是15位
         IF(LEN(@idcard) = 15)
             BEGIN
      --闰年：被4整除并且不能被100整除或者可以被400整除
                 SET @year_i = CAST(SUBSTRING(@idcard, 7, 2) AS INT) + 1900;
                 IF @year_i % 4 = 0
                    AND @year_i % 100 <> 0
                    OR @year_i % 400 = 0 --是润年，--出生日期的合法性正则表达式
                     SET @regex_s = ''[1-9][0-9]{5}[0-9]{2}((01|03|05|07|08|10|12)(0[1-9]|[1-2][0-9]|3[0-1])|(04|06|09|11)(0[1-9]|[1-2][0-9]|30)|02(0[1-9]|[1-2][0-9]))[0-9]{3}$'';
                     ELSE
                 SET @regex_s = ''[1-9][0-9]{5}[0-9]{2}((01|03|05|07|08|10|12)(0[1-9]|[1-2][0-9]|3[0-1])|(04|06|09|11)(0[1-9]|[1-2][0-9]|30)|02(0[1-9]|1[0-9]|2[0-8]))[0-9]{3}$'';
                 IF dbo.[Regex.IsMatch](@regex_s, @idcard) = 0
                     RETURN ''身份证字符或日期错'';
             END;
         IF(LEN(@idcard) = 18)
             BEGIN
      --闰年：被4整除并且不能被100整除或者可以被400整除
                 SET @year_i = CAST(SUBSTRING(@idcard, 7, 4) AS INT);
                 IF @year_i % 4 = 0
                    AND @year_i % 100 <> 0
                    OR @year_i % 400 = 0 --是润年，--出生日期的合法性正则表达式
                     SET @regex_s = ''[1-9][0-9]{5}(19[0-9]{2}|20[0-9]{2})((01|03|05|07|08|10|12)(0[1-9]|[1-2][0-9]|3[0-1])|(04|06|09|11)(0[1-9]|[1-2][0-9]|30)|02(0[1-9]|[1-2][0-9]))[0-9]{3}[0-9Xx]$'';
                     ELSE
                 SET @regex_s = ''[1-9][0-9]{5}(19[0-9]{2}|20[0-9]{2})((01|03|05|07|08|10|12)(0[1-9]|[1-2][0-9]|3[0-1])|(04|06|09|11)(0[1-9]|[1-2][0-9]|30)|02(0[1-9]|1[0-9]|2[0-8]))[0-9]{3}[0-9Xx]$'';
                 IF dbo.[Regex.IsMatch](@regex_s, @idcard) = 0
                     RETURN ''身份证字符或日期错''; 
--检查第18位的校验和
                 DECLARE @sum CHAR;
                 SET @sum = '''';
                 SELECT @sum = dbo.getCheckCode(@idcard);
                 IF(@sum <> SUBSTRING(@idcard, 18, 1))
                     RETURN ''身份证校验位错'';
             END;
         RETURN ''正确'';
     END;
GO
', NULL, 2022, N'1213', N'0', N'0', N'1', N'0', N'1', NULL)
GO
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (538, 0, N'函数后自动运行', N'', N'@提示1!参数类型1:默认值1@提示2!参数类型2:默认值2', N'CREATE PROCEDURE      AS
BEGIN

END
GO', NULL, 3000, N'13', N'0', N'0', N'0', N'0', N'1', N'1')
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (548, 551, N'单位法人姓名同_身份号不同（证件号有错）', N'用于补充同一姓名不同证件号逃避形同一法人判断的逻辑（用证件号判断同一法人开立大量账户，该功能与2个疑似差错功能有重复）', N'@地区校验位数(2位校验省份,4位校验省份城市,6位校验县级)!S:2@账户状态(1正常,9所有)!S:1@涉案账户(1是,0否,9全部)!S:9', N'CREATE PROCEDURE P_dw_gr_samename_noid(@area_mode CHAR(1),@zh_state CHAR(1),@sazh CHAR(1))
WITH ENCRYPTION
AS
  BEGIN
      --DECLARE @zh_state CHAR(1);
      --SET @zh_state = ''1'';
      --DECLARE @area_mode CHAR(1);
      --SET @area_mode = ''2'';
      IF Object_id(''tempdb..#tmp'') IS NOT NULL
        DROP TABLE #tmp;
      IF Object_id(''tempdb..#tmp1'') IS NOT NULL
        DROP TABLE #tmp1;
      IF Object_id(''tempdb..#tmp2'') IS NOT NULL
        DROP TABLE #tmp2;
      IF Object_id(''tempdb..#tmp3'') IS NOT NULL
        DROP TABLE #tmp3;
      IF Object_id(N''tb_rhzh_dw'', N''U'') IS NULL
        BEGIN
            SELECT ''×账户系统单位账户数据或商业银行单位账户数据未导入'' 注意;
        END;
      ELSE
        BEGIN
            IF @zh_state <> ''1''
               AND @zh_state <> ''9''
                OR @area_mode <> ''2''
                   AND @area_mode <> ''4''
                   AND @area_mode <> ''6''
                OR @sazh <> ''1''
                   AND @sazh <> ''0''
                   AND @sazh <> ''9''
              BEGIN
                  SELECT ''×地区校验位数只能为2、4、6或账户状态只能为1、9或涉案只能为1、0、9'' 参数错误;
              END;
            ELSE
              BEGIN
                  --获取唯一姓名与证件号，其他户数据取自基本户，只需分析基本户即可
                  SELECT DISTINCT 法定代表人或负责人姓名,
                                  法定代表人或负责人身份证件编号
                  INTO   #tmp
                  FROM   tb_rhzh_dw
                  WHERE  账户状态 LIKE( CASE
                                      WHEN @zh_state = ''1'' THEN ''正常''
                                      WHEN @zh_state = ''9'' THEN ''%''
                                    END )
                         AND ( 账户性质 = ''基本''
                                OR 账户性质 = ''临时机构'' );
                  --同一姓名包含两个以上证件号码
                  SELECT 法定代表人或负责人姓名,
                         Count(法定代表人或负责人身份证件编号) 数量
                  INTO   #tmp1
                  FROM   #tmp
                  GROUP  BY 法定代表人或负责人姓名
                  HAVING Count(法定代表人或负责人身份证件编号) > 1
                  ORDER  BY 法定代表人或负责人姓名;
                  --select * from #tmp1
                  --获得上述姓名的账户信息（包括证件号信息），同时校验身份证号码
                  SELECT b.[银行机构代码],
                         a.法定代表人或负责人姓名,
                         b.[法定代表人或负责人身份证件种类],
                         b.法定代表人或负责人身份证件编号,
                         CASE
                           WHEN [法定代表人或负责人身份证件种类] = ''身份证''
                                AND NOT [法定代表人或负责人身份证件种类] IS NULL THEN dbo.Verifyperid([法定代表人或负责人身份证件编号], @area_mode)
                           ELSE ''''
                         END 法定代表人或负责人身份证件编号错误,
                         [账号],
                         [账户名称],
                         [账户性质],
                         [开户日期],
                         [账户状态],
                         [注册地地区代码],
                         [账户开户地地区代码],
                         [基本存款账户开户地地区代码],
                         [社会信用代码],
                         [工商营业执照有效期],
                         [注册资金金额],
                         [地址],
                         [联系电话]
                  INTO   #tmp2
                  FROM   #tmp1 a
                         LEFT JOIN tb_rhzh_dw b
                                ON a.法定代表人或负责人姓名 = b.法定代表人或负责人姓名
                  WHERE  账户状态 LIKE( CASE
                                      WHEN @zh_state = ''1'' THEN ''正常''
                                      WHEN @zh_state = ''9'' THEN ''%''
                                    END )
                         AND ( 账户性质 = ''基本''
                                OR 账户性质 = ''临时机构'' )
                  ORDER  BY 法定代表人或负责人姓名;
                  --获得身份证件号码有问题或证件种类不是身份证的姓名
                  SELECT DISTINCT 法定代表人或负责人姓名,
                                  法定代表人或负责人身份证件编号错误
                  INTO   #tmp3
                  FROM   #tmp2
                  WHERE  法定代表人或负责人身份证件编号错误 <> ''正确''
                  --select * from #tmp3
                  --只显示有问题账户
                  SELECT [银行机构代码],
                         c.银行机构名称,
                         a.法定代表人或负责人姓名,
                         [法定代表人或负责人身份证件种类],
                         法定代表人或负责人身份证件编号,
                         b.法定代表人或负责人身份证件编号错误,
                         b.[账号],
                         [账户名称],
                         [账户性质],
                         b.[开户日期],
                         [账户状态],
                         [注册地地区代码],
                         [账户开户地地区代码],
                         [基本存款账户开户地地区代码],
                         [社会信用代码],
                         [工商营业执照有效期],
                         [注册资金金额],
                         b.[地址],
                         [联系电话],
                         d.批次 涉案批次 --
                  FROM   #tmp3 a
                         LEFT JOIN #tmp2 b
                                ON a.法定代表人或负责人姓名 = b.法定代表人或负责人姓名
                         LEFT JOIN v_bank c
                                ON b.银行机构代码 = c.银行编码或代码
                         LEFT JOIN hnxlsys.dbo.tb_sazh d --
                                ON b.账号 = d.账号 --
                  WHERE  CASE --
                           WHEN @sazh = ''1''
                                AND NOT d.账号 IS NULL THEN ''1''
                           WHEN @sazh = ''0''
                                AND d.账号 IS NULL THEN ''0''
                           WHEN @sazh = ''9'' THEN ''9''
                         END = @sazh --
                  ORDER  BY 法定代表人或负责人姓名
              END;
        END;
  END;
GO', NULL, 626, N'060303', N'1', N'0', N'0', N'1', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (549, 554, N'异地个人短期多开户或多电话', N'筛出异地（含非身份证）个人开立多个账户或具有多个不同电话的情况。短期天数设为较大数值，可视为不考虑短期。筛选依据指结果集依据账户数量还是电话数量。', N'@开始日!D:20210101@结束日!D:20210304@账户类型(1借记卡,9所有)!S:1@账户状态(1正常久悬,9所有)!S:1@最小年龄!N:0@最大年龄!N:200@年龄范围(1小于最小,2大于最大,3大小之间)!S:3@筛选(1账户数,2电话数)!S:1@数量!N:5@天数!N:100@固话位数!N:7', N'CREATE PROCEDURE P_gr_ydgr_neardayzh(@bgn_date CHAR(8),@end_date CHAR(8),@zh_lx CHAR(1),@zh_state CHAR(1),@min_age INT,@max_age INT,@age_state CHAR(1),@fr_or_zh CHAR(1),@zh_count INT,@days INT,@len INT)
WITH ENCRYPTION
AS
  BEGIN
    --异地个人短期内多开户
    IF Object_id(''tempdb..#tmp'') IS NOT NULL
      DROP TABLE #tmp
    IF Object_id(''tempdb..#tmp_cnt'') IS NOT NULL
      DROP TABLE #tmp_cnt
    IF Object_id(''tempdb..#tmp1'') IS NOT NULL
      DROP TABLE #tmp1
    IF Object_id(''tempdb..#tmp11'') IS NOT NULL
      DROP TABLE #tmp11
    IF Object_id(''tempdb..#tmp2'') IS NOT NULL
      DROP TABLE #tmp2
    IF Object_id(''tempdb..#tmp22'') IS NOT NULL
      DROP TABLE #tmp22
    IF Object_id(''tempdb..#tmp3'') IS NOT NULL
      DROP TABLE #tmp3
    IF Object_id(''tempdb..#tmp33'') IS NOT NULL
      DROP TABLE #tmp33
    IF Object_id(''tempdb..#tmp4'') IS NOT NULL
      DROP TABLE #tmp4
    IF Object_id(''tempdb..#tmp44'') IS NOT NULL
      DROP TABLE #tmp44
    IF Object_id(''tempdb..#tmp5'') IS NOT NULL
      DROP TABLE #tmp5
    IF Object_id(''tempdb..#tmp55'') IS NOT NULL
      DROP TABLE #tmp55
    IF Object_id(''tempdb..#tmp_all'') IS NOT NULL
      DROP TABLE #tmp_all
    --IF Object_id(''tempdb..#tmp_end'') IS NOT NULL
    --DROP TABLE #tmp_end
    --DECLARE @bgn_date CHAR(8) --数据开始日期
    --SET @bgn_date = ''20210101''
    --DECLARE @end_date CHAR(8) --数据结束日期
    --SET @end_date = ''20210304''
    --DECLARE @zh_state CHAR(1) --账户状态 1正常 9全部（含撤销）
    --SET @zh_state = ''9''
    --DECLARE @zh_count INT--账户数量
    --SET @zh_count = 5
    --DECLARE @days INT --短期的天数
    --SET @days = 100
    --DECLARE @Min_age INT --最小年龄
    --SET @Min_age = 0
    --DECLARE @Max_age INT --最大年龄
    --SET @Max_age = 200
    --DECLARE @age_state CHAR(1) --年龄范围1小于最小，2大于最大，3最小最大之间
    --SET @age_state = ''3''
    --DECLARE @len INT --固定电话位数
    --SET @len=7
    --DECLARE @fr_or_zh CHAR(1) --筛选账户还是电话
    --SET @fr_or_zh =''1''
    IF Object_id(N''tb_rhzh_gr'', N''U'') IS NULL
        OR Object_id(N''hnxlsys.dbo.tb_red_gr'', N''U'') IS NULL
      BEGIN
        SELECT ''×账户系统个人账户数据未导入或未生成红名单信息……'' 注意
      END
    ELSE
      BEGIN
        IF @zh_lx <> ''1''
           AND @zh_lx <> ''9'' --账户状态正常、撤销
            OR @zh_state <> ''1''
               AND @zh_state <> ''9'' --账户状态正常、撤销
            OR @age_state <> ''1''--年龄范围确定方式
               AND @age_state <> ''2''
               AND @age_state <> ''3''
            OR @fr_or_zh <> ''1''
               AND @fr_or_zh <> ''2''
          BEGIN
            SELECT ''×账户状态参数只能为1、9或年龄范围参数只能为1、2、3或筛选依据只能为1、2'' 参数错误
          END
        ELSE
          BEGIN
            --获取省级行政区划与账户系统地区对照表，为识别本地个人
            SELECT DISTINCT LEFT(编码, 2) 行政区划,
                            账户地区
            INTO   #tmp1
            FROM   [HNXLSYS].[dbo].[AreaCodeOldNew]
            WHERE  NOT 账户地区 IS NULL
            ORDER  BY 账户地区
            --提取符合条件的个人账户，下一步再分析
            SELECT 序号,
                   序号 身份序号,----身份序号取序号值，序号为identy，不能update
                   [账号],
                   [银行机构代码],
                   [存款人名称],
                   [存款人身份类别],
                   [发证机关所在地地区代码],
                   [地址],
                   [邮编],
                   [电话],
                   dbo.F_delete_head(电话, ''0'') 电话处理,--点好号码清除前导0
                   [身份证件种类],
                   [身份证件编号],
                   [行别代码],
                   [开户地地区代码],
                   [账户类型],
                   [开户日期],
                   [账户有效日期],
                   [销户日期],
                   [变更日期],
                   [开户登记日期],
                   [币种类型],
                   [币种],
                   [存款人所在国家或地区]
            INTO   #tmp
            FROM   tb_rhzh_gr a
                   LEFT JOIN #tmp1 b
                          ON LEFT(a.[开户地地区代码], 4) = b.账户地区 --账户地区连接
            WHERE  ( @zh_lx = ''1''
                     AND 账户类型 = ''借记卡''
                      OR @zh_lx = ''9'' )
                   AND ( @zh_state = ''1''
                         AND 销户日期 IS NULL
                          OR @zh_state = ''9'' )
                   AND 开户日期 >= @bgn_date
                   AND 开户日期 <= @end_date
                   AND ( [身份证件种类] <> ''身份证''
                          OR [身份证件种类] = ''身份证''
                             AND LEFT(a.身份证件编号, 2) = b.行政区划 ) --异地信息
            ORDER  BY a.身份证件编号
            --RETURN    
            ----首先相同证件号变成同一序号（最小序号），其次相似身份证号变成同一序号
            ----取得每组相同证件号的最小序号
            SELECT Min(序号) 最小序号,--身份证编号相同的账户把序号变成相同，最小编号
                   身份证件编号,
                   Count(身份证件编号) 数量
            INTO   #tmp11
            FROM   #tmp
            GROUP  BY 身份证件编号
            HAVING Count(身份证件编号) > 1
            ORDER  BY 身份证件编号
            ----把证件相同的身份序号归为一致	
            UPDATE a
            SET    a.身份序号 = b.最小序号
            FROM   #tmp a
                   INNER JOIN #tmp11 b
                           ON a.身份证件编号 = b.身份证件编号
            ---------------------------------------------------------------------------------------------
            ------下面为同姓名相似度
            ----获取同一姓名两个以上身份号法人， 同一姓名不同身份证编号的应计算相似度，认为相似度接近的应为同一个人，把他们的编号设成一致
            SELECT 存款人名称,
                   Count(DISTINCT 身份证件编号) 数量
            INTO   #tmp22
            FROM   #tmp
            GROUP  BY 存款人名称
            HAVING Count(DISTINCT 身份证件编号) > 1
            ORDER  BY 存款人名称
            ----获取具有两个以上证件号码的姓名和编号
            SELECT DISTINCT a.存款人名称,
                            b.身份证件编号,
                            b.身份序号
            INTO   #tmp33
            FROM   #tmp22 a
                   LEFT JOIN #tmp b
                          ON a.存款人名称 = b.存款人名称
            ORDER  BY 存款人名称
            ----获取相似度符合逻辑的身份序号和身份编号
            SELECT DISTINCT a.身份序号,
                            a.存款人名称,
                            a.身份证件编号 身份证件编号1,
                            b.身份证件编号 身份证件编号2,
                            DBO.Fn_resemble_onebyone(a.身份证件编号, b.身份证件编号) 一对一相似度
            --,
            --DBO.Fn_resemble_order(a.身份证件编号, b.身份证件编号) 顺序相似度
            INTO   #tmp44
            FROM   #tmp33 a
                   INNER JOIN #tmp33 b
                           ON a.存款人名称 = b.存款人名称
            --INNER JOIN #tmp c
            --        ON a.存款人名称 = c.存款人名称
            --           AND a.身份证件编号 = c.身份证件编号
            WHERE  DBO.Fn_resemble_onebyone(a.身份证件编号, b.身份证件编号) > 0.8
                   AND DBO.Fn_resemble_onebyone(a.身份证件编号, b.身份证件编号) < 1
            ORDER  BY 存款人名称
            --SELECT *
            --FROM   #tmp44
            --ORDER  BY 存款人名称
            --RETURN
            ----获取相似度最小身份序号
            SELECT 存款人名称,
                   Min(身份序号) 最小身份序号
            INTO   #tmp55
            FROM   #tmp44
            GROUP  BY 存款人名称
            --select * from #tmp55 order by 存款人名称
            --return
            --更新#tmp44,身份序号都变成最小序号，方便后面更改#tmp
            UPDATE a
            SET    a.身份序号 = b.最小身份序号
            FROM   #tmp44 a
                   LEFT JOIN #tmp55 b
                          ON a.存款人名称 = b.存款人名称
            ----更新基本结果集把相似身份序号更新
            UPDATE a
            SET    a.身份序号 = b.身份序号
            FROM   #tmp a
                   INNER JOIN #tmp44 b
                           ON a.存款人名称 = b.存款人名称
                              AND a.身份证件编号 = b.身份证件编号1
            --       OR a.法定代表人或负责人身份证件编号 = c.法定代表人或负责人身份证件编号2
            WHERE  a.身份序号 > b.身份序号
            -----弄到临时表用于测试后面的代码
            --      SELECT *
            --into tmp
            --      FROM   #tmp
            --      ORDER  BY 身份序号
            ------------------------------------------------------------------------------------------
            --同一身份序号短期拥有账户数量
            SELECT ff.电话数量,
                   ff.短期账户数量,
                   CASE
                     WHEN [身份证件种类] = ''身份证'' THEN dbo.Fn_getage(a.身份证件编号, a.开户日期)
                     ELSE NULL
                   END 开户年龄,
                   a.*
            INTO   #tmp_all
            FROM   #tmp A
                   OUTER APPLY (SELECT Count(*) 短期账户数量,
                                       Count(DISTINCT 电话处理) 电话数量
                                FROM   #tmp B
                                WHERE  a.身份序号 = b.身份序号
                                       AND Abs(Datediff(day, CONVERT(DATE, a.开户日期), CONVERT(DATE, b.开户日期))) <= @days) AS FF
            ORDER  BY 身份序号,
                      开户日期
            --select * from #tmp_all order by 存款人名称
            ----RETURN
            -----------------------------------------------------------------------
            SELECT a.[银行机构代码],
                   d.银行机构名称,
                   a.[账号],
                   a.[存款人名称],
                   a.[身份证件种类],
                   a.[身份证件编号],
                   a.[电话],
                   a.短期账户数量,
                   a.电话数量,
                   b.涉案批次 证件涉案批次,
                   c.涉案批次 手机涉案批次,
                   a.[账户类型],
                   a.[开户地地区代码],
                   a.开户年龄,
                   a.[开户日期],
                   a.[账户有效日期],
                   a.[销户日期],
                   a.[变更日期],
                   a.[开户登记日期],
                   a.[发证机关所在地地区代码],
                   a.[地址],
                   a.[币种类型],
                   a.[币种],
                   a.[存款人所在国家或地区]
            --INTO #tmp_end
            FROM   #tmp_all a --
                   LEFT JOIN hnxlsys.dbo.tb_red_gr b --
                          ON a. [身份证件编号] = b.证件号码 --
                   LEFT JOIN hnxlsys.dbo.tb_red_phone c --
                          ON a.电话处理 = c.[手机号码] --
                   LEFT JOIN V_Bank d
                          ON a.[银行机构代码] = d.银行编码或代码
            WHERE  ( 开户年龄 IS NULL
                      OR 开户年龄 <= ( CASE
                                     WHEN @age_state = ''1'' THEN @Min_age
                                     WHEN @age_state = ''2'' THEN 10000
                                     WHEN @age_state = ''3'' THEN @max_age
                                   END )
                         AND 开户年龄 >= ( CASE
                                         WHEN @age_state = ''1'' THEN-10000
                                         WHEN @age_state = ''2'' THEN @max_age
                                         WHEN @age_state = ''3'' THEN @min_age
                                       END ) )
                   AND CASE
                         WHEN @fr_or_zh = ''1'' THEN 短期账户数量
                         WHEN @fr_or_zh = ''2'' THEN 电话数量
                       END >= @zh_count
            ORDER  BY 身份序号,
                      开户日期
          END
      END
  END
GO 
', N'', 658, N'060503', N'0', N'0', N'0', N'1', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (550, 551, N'单位法人姓名同_身份号不同（证件号相似）', N'单位法人同一姓名证件号码不同但相似度很大，疑似一方差错（只涉及基本户和临时机构临时户且排除身份证件不符合校验）', N'@地区校验位数(2位校验省份，4位校验省份城市，6位校验县级)!S:2@账户状态(1正常久悬，9所有)!S:1@涉案账户(1是,0否,9全部)!S:9', N'CREATE PROCEDURE P_dw_gr_samename_simid(@area_mode CHAR(1),@zh_state CHAR(1),@sazh CHAR(1))
WITH ENCRYPTION
AS
  BEGIN
      --DECLARE @zh_state CHAR(1)
      --SET @zh_state = ''1''
      --DECLARE @area_mode CHAR(1)
      --SET @area_mode = ''2''
      --DECLARE @sazh CHAR(1)
      --SET @sazh = ''9''
      IF Object_id(''tempdb..#tmp'') IS NOT NULL
        DROP TABLE #tmp
      IF Object_id(''tempdb..#tmp1'') IS NOT NULL
        DROP TABLE #tmp1
      IF Object_id(''tempdb..#tmp2'') IS NOT NULL
        DROP TABLE #tmp2
      IF Object_id(''tempdb..#tmp3'') IS NOT NULL
        DROP TABLE #tmp3
      IF Object_id(''tempdb..#tmp4'') IS NOT NULL
        DROP TABLE #tmp4
      IF Object_id(''tempdb..#tmp5'') IS NOT NULL
        DROP TABLE #tmp5
      IF Object_id(N''tb_rhzh_dw'', N''U'') IS NULL
        BEGIN
            SELECT ''×账户系统单位账户数据或商业银行单位账户数据未导入'' 注意
        END
      ELSE
        BEGIN
            IF @zh_state <> ''1''
               AND @zh_state <> ''9''
                OR @area_mode <> ''2''
                   AND @area_mode <> ''4''
                   AND @area_mode <> ''6''
                OR @sazh <> ''1''
                   AND @sazh <> ''0''
                   AND @sazh <> ''9''
              BEGIN
                  SELECT ''×地区校验位数只能为2、4、6或账户状态只能为1、9或涉案账户只能为1、0、9'' 参数错误
              END
            ELSE
              BEGIN
                  ----下面为同姓名相似度
                  --获取同一姓名两个以上身份号法人
                  SELECT 法定代表人或负责人姓名,
                         Count(DISTINCT 法定代表人或负责人身份证件编号) 数量
                  INTO   #tmp
                  FROM   tb_rhzh_dw
                  WHERE  ( 账户状态 LIKE( CASE
                                        WHEN @zh_state = ''1'' THEN ''正常''
                                        WHEN @zh_state = ''9'' THEN ''%''
                                      END )
                            OR 账户状态 LIKE( CASE
                                            WHEN @zh_state = ''1'' THEN ''久悬''
                                            WHEN @zh_state = ''9'' THEN ''%''
                                          END ) )
                         AND ( 账户性质 = ''基本''
                                OR 账户性质 = ''临时机构'' )
                  GROUP  BY 法定代表人或负责人姓名
                  HAVING Count(DISTINCT 法定代表人或负责人身份证件编号) > 1
                  ORDER  BY 法定代表人或负责人姓名
                  --获取具有两个以上证件号码的姓名和编号,同时校验身份证
                  SELECT DISTINCT a.法定代表人或负责人姓名,
                                  b.法定代表人或负责人身份证件编号,
                                  CASE
                                    WHEN [法定代表人或负责人身份证件种类] = ''身份证''
                                         AND NOT [法定代表人或负责人身份证件种类] IS NULL THEN dbo.Verifyperid([法定代表人或负责人身份证件编号], @area_mode)
                                    ELSE ''''
                                  END 法定代表人或负责人身份证件编号错误
                  INTO   #tmp1
                  FROM   #tmp a
                         LEFT JOIN tb_rhzh_dw b
                                ON a.法定代表人或负责人姓名 = b.法定代表人或负责人姓名
                  WHERE  ( 账户状态 LIKE( CASE
                                        WHEN @zh_state = ''1'' THEN ''正常''
                                        WHEN @zh_state = ''9'' THEN ''%''
                                      END )
                            OR 账户状态 LIKE( CASE
                                            WHEN @zh_state = ''1'' THEN ''久悬''
                                            WHEN @zh_state = ''9'' THEN ''%''
                                          END ) )
                         AND ( 账户性质 = ''基本''
                                OR 账户性质 = ''临时机构'' )
                  ORDER  BY 法定代表人或负责人姓名
                  --获取相似度符合逻辑的身份序号和身份编号
                  SELECT DISTINCT a.法定代表人或负责人姓名,
                                  a.法定代表人或负责人身份证件编号                                              法定代表人或负责人身份证件编号1,
                                  a.法定代表人或负责人身份证件编号错误,
                                  b.法定代表人或负责人身份证件编号                                              法定代表人或负责人身份证件编号2,
                                  DBO.Fn_resemble_onebyone(a.法定代表人或负责人身份证件编号, b.法定代表人或负责人身份证件编号) 一对一相似度,
                                  DBO.Fn_resemble_order(a.法定代表人或负责人身份证件编号, b.法定代表人或负责人身份证件编号)    顺序相似度
                  INTO   #tmp2
                  FROM   #tmp1 a
                         INNER JOIN #tmp1 b
                                 ON a.法定代表人或负责人姓名 = b.法定代表人或负责人姓名
                  WHERE  DBO.Fn_resemble_onebyone(a.法定代表人或负责人身份证件编号, b.法定代表人或负责人身份证件编号) > 0.8
                         AND DBO.Fn_resemble_onebyone(a.法定代表人或负责人身份证件编号, b.法定代表人或负责人身份证件编号) < 1
                  ORDER  BY 法定代表人或负责人姓名
                  --列表具有相似度的账户
                  SELECT [银行机构代码],
                         a.法定代表人或负责人姓名,
                         [法定代表人或负责人身份证件种类],
                         a.法定代表人或负责人身份证件编号,
                         b.法定代表人或负责人身份证件编号错误,
                         [账号],
                         [账户名称],
                         [账户性质],
                         [开户日期],
                         [账户状态],
                         [注册地地区代码],
                         [账户开户地地区代码],
                         [基本存款账户开户地地区代码],
                         [社会信用代码],
                         [工商营业执照有效期],
                         [注册资金金额],
                         [地址],
                         [联系电话]
                  INTO   #tmp3
                  FROM   tb_rhzh_dw a
                         INNER JOIN #tmp2 b
                                 ON a.法定代表人或负责人姓名 = b.法定代表人或负责人姓名
                                    AND a.法定代表人或负责人身份证件编号 = b.法定代表人或负责人身份证件编号1
                  WHERE  ( 账户状态 LIKE( CASE
                                        WHEN @zh_state = ''1'' THEN ''正常''
                                        WHEN @zh_state = ''9'' THEN ''%''
                                      END )
                            OR 账户状态 LIKE( CASE
                                            WHEN @zh_state = ''1'' THEN ''久悬''
                                            WHEN @zh_state = ''9'' THEN ''%''
                                          END ) )
                         AND ( 账户性质 = ''基本''
                                OR 账户性质 = ''临时机构'' )
                         AND 法定代表人或负责人身份证件编号错误 = ''正确''
                          OR 法定代表人或负责人身份证件编号错误 = ''''
                  ORDER  BY 法定代表人或负责人姓名
                  SELECT 法定代表人或负责人姓名,
                         Count(法定代表人或负责人身份证件编号) 数量
                  INTO   #tmp4
                  FROM   #tmp3
                  GROUP  BY 法定代表人或负责人姓名
                  HAVING Count(DISTINCT 法定代表人或负责人身份证件编号) > 1
                  ORDER  BY 法定代表人或负责人姓名
                  SELECT b.[银行机构代码],
                         c.银行机构名称,
                         a.法定代表人或负责人姓名,
                         [法定代表人或负责人身份证件种类],
                         法定代表人或负责人身份证件编号,
                         b.[账号],
                         [账户名称],
                         [账户性质],
                         b.[开户日期],
                         [账户状态],
                         [注册地地区代码],
                         [账户开户地地区代码],
                         [基本存款账户开户地地区代码],
                         [社会信用代码],
                         [工商营业执照有效期],
                         [注册资金金额],
                         b.[地址],
                         [联系电话],
                         d.批次 涉案批次 --
                  FROM   #tmp4 a
                         LEFT JOIN #tmp3 b
                                ON a.法定代表人或负责人姓名 = b.法定代表人或负责人姓名
                         LEFT JOIN v_bank c
                                ON b.银行机构代码 = c.银行编码或代码
                         LEFT JOIN hnxlsys.dbo.tb_sazh d --
                                ON b.账号 = d.账号 --
                  WHERE  CASE --
                           WHEN @sazh = ''1''
                                AND NOT d.账号 IS NULL THEN ''1''
                           WHEN @sazh = ''0''
                                AND d.账号 IS NULL THEN ''0''
                           WHEN @sazh = ''9'' THEN ''9''
                         END = @sazh --
                  ORDER  BY a.法定代表人或负责人姓名
              END
        END
  END
GO ', NULL, 624, N'060302', N'1', N'0', N'0', N'1', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (551, 304, N'.合规性监测', N'发现银行数据中可能存在逻辑上问题，银行纠正后将提高风险监测精度（同时可因不符合逻辑规则判断风险性问题）', N'', NULL, NULL, 620, N'0603', N'0', N'0', N'0', N'1', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (552, 304, N'.单位账户风险监测', N'', N'', NULL, NULL, 640, N'0604', N'0', N'0', N'0', N'1', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (553, 554, N'非身份证短期多开户或多电话（mark）', N'参数为基本户时，疑似频繁注册企业，虚假注册或经营实体存疑；为所有账户时，则为短期内开立大量账户，进一步存疑。短期天数设为较大数值，可视为不考虑短期。', N'@数据开始日期!D:20210101@数据结束日期!D:20210304@账户状态(1正常或久悬,9所有)!S:1@最小年龄!N:0@最大年龄!N:200@年龄范围(1小于最小,2大于最大,3最大最小之间)!S:3@账户或电话数量!N:4@筛选依据(1账户数量,2电话数量)!S:1@天数!N:10000@固话位数!N:7', N'CREATE PROCEDURE P_gr_noid_neardayzh(@bgn_date CHAR(8),@end_date CHAR(8),@zh_state CHAR(1),@min_age INT,@max_age INT,@age_state CHAR(1),@zh_count INT,@fr_or_zh CHAR(1),@days INT,@len INT)
WITH ENCRYPTION
AS
  BEGIN
    --异地个人短期内多开户
    IF Object_id(''tempdb..#tmp'') IS NOT NULL
      DROP TABLE #tmp
    IF Object_id(''tempdb..#tmp_cnt'') IS NOT NULL
      DROP TABLE #tmp_cnt
    IF Object_id(''tempdb..#tmp1'') IS NOT NULL
      DROP TABLE #tmp1
    IF Object_id(''tempdb..#tmp11'') IS NOT NULL
      DROP TABLE #tmp11
    IF Object_id(''tempdb..#tmp2'') IS NOT NULL
      DROP TABLE #tmp2
    IF Object_id(''tempdb..#tmp22'') IS NOT NULL
      DROP TABLE #tmp22
    IF Object_id(''tempdb..#tmp3'') IS NOT NULL
      DROP TABLE #tmp3
    IF Object_id(''tempdb..#tmp33'') IS NOT NULL
      DROP TABLE #tmp33
    IF Object_id(''tempdb..#tmp4'') IS NOT NULL
      DROP TABLE #tmp4
    IF Object_id(''tempdb..#tmp44'') IS NOT NULL
      DROP TABLE #tmp44
    IF Object_id(''tempdb..#tmp5'') IS NOT NULL
      DROP TABLE #tmp5
    IF Object_id(''tempdb..#tmp55'') IS NOT NULL
      DROP TABLE #tmp55
    IF Object_id(''tempdb..#tmp_all'') IS NOT NULL
      DROP TABLE #tmp_all
    --IF Object_id(''tempdb..#tmp_end'') IS NOT NULL
    --DROP TABLE #tmp_end
    --DECLARE @bgn_date CHAR(8) --数据开始日期
    --SET @bgn_date = ''20210101''
    --DECLARE @end_date CHAR(8) --数据结束日期
    --SET @end_date = ''20210304''
    --DECLARE @zh_state CHAR(1) --账户状态 1正常 9全部（含撤销）
    --SET @zh_state = ''9''
    --DECLARE @zh_count INT--账户数量
    --SET @zh_count = 5
    --DECLARE @days INT --短期的天数
    --SET @days = 100
    --DECLARE @Min_age INT --最小年龄
    --SET @Min_age = 0
    --DECLARE @Max_age INT --最大年龄
    --SET @Max_age = 200
    --DECLARE @age_state CHAR(1) --年龄范围1小于最小，2大于最大，3最小最大之间
    --SET @age_state = ''3''
    --DECLARE @len INT --固定电话位数
    --SET @len=7
    --DECLARE @fr_or_zh CHAR(1) --筛选账户还是电话
    --SET @fr_or_zh =''1''
    IF Object_id(N''tb_rhzh_gr'', N''U'') IS NULL
        OR Object_id(N''hnxlsys.dbo.tb_red_gr'', N''U'') IS NULL
      BEGIN
        SELECT ''×账户系统个人账户数据未导入或未生成红名单信息……'' 注意
      END
    ELSE
      BEGIN
        IF @zh_state <> ''1''
           AND @zh_state <> ''9'' --账户状态正常、撤销
            OR @age_state <> ''1''--年龄范围确定方式
               AND @age_state <> ''2''
               AND @age_state <> ''3''
            OR @fr_or_zh <> ''1''
               AND @fr_or_zh <> ''2''
          BEGIN
            SELECT ''×账户状态参数只能为1、9或年龄范围参数只能为1、2、3或筛选依据只能为1、2'' 参数错误
          END
        ELSE
          BEGIN
            --获取省级行政区划与账户系统地区对照表，为识别本地个人
            SELECT DISTINCT LEFT(编码, 2) 行政区划,
                            账户地区
            INTO   #tmp1
            FROM   [HNXLSYS].[dbo].[AreaCodeOldNew]
            WHERE  NOT 账户地区 IS NULL
            ORDER  BY 账户地区
            --提取符合条件的个人账户，下一步再分析
            SELECT 序号,
                   序号 身份序号,----身份序号取序号值，序号为identy，不能update
                   [账号],
                   [银行机构代码],
                   [存款人名称],
                   [存款人身份类别],
                   [发证机关所在地地区代码],
                   [地址],
                   [邮编],
                   [电话],
                   dbo.F_delete_head(电话, ''0'') 电话处理,--点好号码清除前导0
                   [身份证件种类],
                   [身份证件编号],
                   [行别代码],
                   [开户地地区代码],
                   [账户类型],
                   [开户日期],
                   [账户有效日期],
                   [销户日期],
                   [变更日期],
                   [开户登记日期],
                   [币种类型],
                   [币种],
                   [存款人所在国家或地区]
            INTO   #tmp
            FROM   tb_rhzh_gr a
                   LEFT JOIN #tmp1 b
                          ON LEFT(a.[开户地地区代码], 4) = b.账户地区 --账户地区连接
            WHERE  ( @zh_state = ''1''
                     AND 销户日期 IS NULL
                      OR @zh_state = ''9'' )
                   AND 开户日期 >= @bgn_date
                   AND 开户日期 <= @end_date
                   AND [身份证件种类] <> ''身份证''
                   --AND LEFT(a.身份证件编号, 2) <> b.行政区划 --异地信息
            ORDER  BY a.身份证件编号
            --RETURN    
            ----首先相同证件号变成同一序号（最小序号），其次相似身份证号变成同一序号
            ----取得每组相同证件号的最小序号
            SELECT Min(序号) 最小序号,--身份证编号相同的账户把序号变成相同，最小编号
                   身份证件编号,
                   Count(身份证件编号) 数量
            INTO   #tmp11
            FROM   #tmp
            GROUP  BY 身份证件编号
            HAVING Count(身份证件编号) > 1
            ORDER  BY 身份证件编号
            ----把证件相同的身份序号归为一致	
            UPDATE a
            SET    a.身份序号 = b.最小序号
            FROM   #tmp a
                   INNER JOIN #tmp11 b
                           ON a.身份证件编号 = b.身份证件编号
            ---------------------------------------------------------------------------------------------
            ------下面为同姓名相似度
            ----获取同一姓名两个以上身份号法人， 同一姓名不同身份证编号的应计算相似度，认为相似度接近的应为同一个人，把他们的编号设成一致
            SELECT 存款人名称,
                   Count(DISTINCT 身份证件编号) 数量
            INTO   #tmp22
            FROM   #tmp
            GROUP  BY 存款人名称
            HAVING Count(DISTINCT 身份证件编号) > 1
            ORDER  BY 存款人名称
            ----获取具有两个以上证件号码的姓名和编号
            SELECT DISTINCT a.存款人名称,
                            b.身份证件编号,
                            b.身份序号
            INTO   #tmp33
            FROM   #tmp22 a
                   LEFT JOIN #tmp b
                          ON a.存款人名称 = b.存款人名称
            ORDER  BY 存款人名称
            ----获取相似度符合逻辑的身份序号和身份编号
            SELECT DISTINCT a.身份序号,
                            a.存款人名称,
                            a.身份证件编号 身份证件编号1,
                            b.身份证件编号 身份证件编号2,
                            DBO.Fn_resemble_onebyone(a.身份证件编号, b.身份证件编号) 一对一相似度
            --,
            --DBO.Fn_resemble_order(a.身份证件编号, b.身份证件编号) 顺序相似度
            INTO   #tmp44
            FROM   #tmp33 a
                   INNER JOIN #tmp33 b
                           ON a.存款人名称 = b.存款人名称
            --INNER JOIN #tmp c
            --        ON a.存款人名称 = c.存款人名称
            --           AND a.身份证件编号 = c.身份证件编号
            WHERE  DBO.Fn_resemble_onebyone(a.身份证件编号, b.身份证件编号) > 0.8
                   AND DBO.Fn_resemble_onebyone(a.身份证件编号, b.身份证件编号) < 1
            ORDER  BY 存款人名称
            --SELECT *
            --FROM   #tmp44
            --ORDER  BY 存款人名称
            --RETURN
            ----获取相似度最小身份序号
            SELECT 存款人名称,
                   Min(身份序号) 最小身份序号
            INTO   #tmp55
            FROM   #tmp44
            GROUP  BY 存款人名称
            --select * from #tmp55 order by 存款人名称
            --return
            --更新#tmp44,身份序号都变成最小序号，方便后面更改#tmp
            UPDATE a
            SET    a.身份序号 = b.最小身份序号
            FROM   #tmp44 a
                   LEFT JOIN #tmp55 b
                          ON a.存款人名称 = b.存款人名称
            ----更新基本结果集把相似身份序号更新
            UPDATE a
            SET    a.身份序号 = b.身份序号
            FROM   #tmp a
                   INNER JOIN #tmp44 b
                           ON a.存款人名称 = b.存款人名称
                              AND a.身份证件编号 = b.身份证件编号1
            --       OR a.法定代表人或负责人身份证件编号 = c.法定代表人或负责人身份证件编号2
            WHERE  a.身份序号 > b.身份序号
            -----弄到临时表用于测试后面的代码
            --      SELECT *
            --into tmp
            --      FROM   #tmp
            --      ORDER  BY 身份序号
            ------------------------------------------------------------------------------------------
            --同一身份序号短期拥有账户数量
            SELECT ff.电话数量,
                   ff.短期账户数量,
                   dbo.Fn_getage(a.身份证件编号, a.开户日期) 开户年龄,
                   a.*
            INTO   #tmp_all
            FROM   #tmp A
                   OUTER APPLY (SELECT Count(*) 短期账户数量,
                                       Count(DISTINCT 电话处理) 电话数量
                                FROM   #tmp B
                                WHERE  a.身份序号 = b.身份序号
                                       AND Abs(Datediff(day, CONVERT(DATE, a.开户日期), CONVERT(DATE, b.开户日期))) <= @days) AS FF
            ORDER  BY 身份序号,
                      开户日期
            --select * from #tmp_all order by 存款人名称
            ----RETURN
            -----------------------------------------------------------------------
            SELECT a.[银行机构代码],
                   d.银行机构名称,
                   a.[账号],
                   a.[存款人名称],
                   a.[身份证件种类],
                   a.[身份证件编号],
                   a.[电话],
                   a.短期账户数量,
                   a.电话数量,
                   b.涉案批次 证件涉案批次,
                   c.涉案批次 手机涉案批次,
                   a.开户年龄,
                   a.[发证机关所在地地区代码],
                   a.[地址],
                   a.[开户地地区代码],
                   a.[账户类型],
                   a.[开户日期],
                   a.[账户有效日期],
                   a.[销户日期],
                   a.[变更日期],
                   a.[开户登记日期],
                   a.[币种类型],
                   a.[币种],
                   a.[存款人所在国家或地区]
            --INTO #tmp_end
            FROM   #tmp_all a --
                   LEFT JOIN hnxlsys.dbo.tb_red_gr b --
                          ON a. [身份证件编号] = b.证件号码 --
                   LEFT JOIN hnxlsys.dbo.tb_red_phone c --
                          ON a.电话处理 = c.[手机号码] --
                   LEFT JOIN V_Bank d
                          ON a.[银行机构代码] = d.银行编码或代码
            WHERE  开户年龄 <= ( CASE
                               WHEN @age_state = ''1'' THEN @Min_age
                               WHEN @age_state = ''2'' THEN 10000
                               WHEN @age_state = ''3'' THEN @max_age
                             END )
                   AND 开户年龄 >= ( CASE
                                   WHEN @age_state = ''1'' THEN-10000
                                   WHEN @age_state = ''2'' THEN @max_age
                                   WHEN @age_state = ''3'' THEN @min_age
                                 END )
                   AND CASE
                         WHEN @fr_or_zh = ''1'' THEN 短期账户数量
                         WHEN @fr_or_zh = ''2'' THEN 电话数量
                       END >= @zh_count
            ORDER  BY 身份序号,
                      开户日期
          END
      END
  END
GO 
', NULL, 660, N'060504', N'1', N'0', N'0', N'0', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (554, 304, N'.个人账户风险监测', N'', N'', NULL, NULL, 652, N'0605', N'1', N'0', N'0', N'1', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (555, 552, N'同电话多法人或短期多开户', N'参数为基本户时，疑似频繁注册企业，虚假注册或经营实体存疑；为所有账户时，则为短期内开立大量账户，进一步存疑。短期天数设为较大数值，可视为不考虑短期。账户数量设为0，则筛出所有。', N'@开始日!D:20210101@结束日!D:20210304@账户性质(1基本和临时机构,9所有)!S:9@账户状态(1正常或久悬,9所有)!S:1@筛选(1账户数,2法人数)!S:2@数量!N:2@天数!N:100@固话位数!N:7', N'CREATE PROCEDURE P_dw_phone_zh(@bgn_date CHAR(8),@end_date CHAR(8),@zh_xz CHAR(1),@zh_state CHAR(1),@fr_or_zh CHAR(1),@zh_count INT,@days INT,@len INT)
WITH ENCRYPTION
AS
  BEGIN
    --本地个法人短期内多开户
    IF Object_id(''tempdb..#tmp'') IS NOT NULL
      DROP TABLE #tmp
    IF Object_id(''tempdb..#tmp_cnt'') IS NOT NULL
      DROP TABLE #tmp_cnt
    IF Object_id(''tempdb..#tmp1'') IS NOT NULL
      DROP TABLE #tmp1
    IF Object_id(''tempdb..#tmp11'') IS NOT NULL
      DROP TABLE #tmp11
    IF Object_id(''tempdb..#tmp2'') IS NOT NULL
      DROP TABLE #tmp2
    IF Object_id(''tempdb..#tmp22'') IS NOT NULL
      DROP TABLE #tmp22
    IF Object_id(''tempdb..#tmp3'') IS NOT NULL
      DROP TABLE #tmp3
    IF Object_id(''tempdb..#tmp33'') IS NOT NULL
      DROP TABLE #tmp33
    IF Object_id(''tempdb..#tmp4'') IS NOT NULL
      DROP TABLE #tmp4
    IF Object_id(''tempdb..#tmp44'') IS NOT NULL
      DROP TABLE #tmp44
    IF Object_id(''tempdb..#tmp5'') IS NOT NULL
      DROP TABLE #tmp5
    IF Object_id(''tempdb..#tmp55'') IS NOT NULL
      DROP TABLE #tmp55
    IF Object_id(''tempdb..#tmp_all'') IS NOT NULL
      DROP TABLE #tmp_all
    --IF Object_id(''tempdb..#tmp_end'') IS NOT NULL
    --DROP TABLE #tmp_end
    --DECLARE @bgn_date CHAR(8) --数据开始日期
    --SET @bgn_date = ''20210201''
    --DECLARE @end_date CHAR(8) --数据结束日期
    --SET @end_date = ''20210210''
    --DECLARE @zh_xz CHAR(1) --账户性质 1基本临时，9全部
    --SET @zh_xz = ''9''
    --DECLARE @zh_state CHAR(1) --账户状态 1正常 9全部（含撤销）
    --SET @zh_state = ''1''
    --DECLARE @zh_count INT--账户数量
    --SET @zh_count = 3
    --DECLARE @days INT --短期的天数
    --SET @days = 100
    --DECLARE @Min_age INT --最小年龄
    --SET @Min_age = 18
    --DECLARE @Max_age INT --最大年龄
    --SET @Max_age = 35
    --DECLARE @age_state CHAR(1) --年龄范围1小于最小，2大于最大，3最小最大之间
    --SET @age_state = ''3''
    --DECLARE @len INT --固定电话位数
    --SET @len=7
    --DECLARE @fr_or_zh CHAR(1) --筛选账户还是电话
    --SET @fr_or_zh =''1''
    --DECLARE @sazh CHAR(1)
    --SET @sazh =''9''
    IF Object_id(N''tb_rhzh_dw'', N''U'') IS NULL
        OR Object_id(N''hnxlsys.dbo.tb_red_gr'', N''U'') IS NULL
      BEGIN
        SELECT ''×账户系统个人账户数据未导入或未生成红名单信息……'' 注意
      END
    ELSE
      BEGIN
        IF @zh_state <> ''1''
           AND @zh_state <> ''9''
            OR @zh_xz <> ''1''
               AND @zh_xz <> ''9''
            OR @fr_or_zh <> ''1''
               AND @fr_or_zh <> ''2''
          BEGIN
            SELECT ''×账户性质只能为1、9或账户状态只能为1、9或筛选依据只能为1、2'' 参数错误
          END
        ELSE
          BEGIN
            --获取省级行政区划与账户系统地区对照表，为识别本地个人
            --提取符合条件的个人账户，下一步再分析
            SELECT 序号,
                   序号 身份序号,----身份序号取序号值，序号为identy，不能update
                   [银行机构代码],
                   [账号],
                   [账户名称],
                   [社会信用代码],
                   [工商营业执照有效期],
                   法定代表人或负责人姓名,
                   [法定代表人或负责人身份证件种类],
                   法定代表人或负责人身份证件编号,
                   [联系电话],
                   dbo.F_delete_head([联系电话], ''0'') 电话处理,--点好号码清除前导0
                   [账户性质],
                   [账户状态],
                   [开户日期],
                   [销户日期],
                   [久悬日期],
                   [注册地地区代码],
                   [账户开户地地区代码],
                   [基本存款账户开户地地区代码],
                   [地址],
                   [注册资金金额]
            INTO   #tmp
            FROM   tb_rhzh_dw
            WHERE  开户日期 >= @bgn_date
                   AND 开户日期 <= @end_date
                   AND ( NOT 联系电话 IS NULL
                          OR Len(联系电话) > 0 )
                   AND ( @zh_state = ''1''
                         AND 销户日期 IS NULL
                          OR @zh_state = ''9'' )
                   AND ( @zh_xz = ''1''
                         AND ( 账户性质 LIKE ''基本%''
                                OR 账户性质 LIKE ''临时机构%'' )
                          OR @zh_xz = ''9'' )
            ORDER  BY 序号
            --RETURN    
            ----首先相同证件号变成同一序号（最小序号），其次相似身份证号变成同一序号
            ----取得每组相同证件号的最小序号
            ---------------------------------------------------------------------------------------------
            --取得每组相同联系电话的最小序号
            SELECT Min(序号) 最小序号,
                   电话处理,
                   Count(电话处理) 数量
            INTO   #tmp11
            FROM   #tmp
            GROUP  BY 电话处理
            HAVING Count(电话处理) > 1
            ORDER  BY 电话处理
            --把联系电话相同的身份序号归为一致	
            UPDATE a
            SET    a.身份序号 = b.最小序号
            FROM   #tmp a
                   INNER JOIN #tmp11 b
                           ON a.电话处理 = b.电话处理
            -------------------------------------------------------------------------------------------
            ----下面为同姓名相似度          
            --------------------------------------------------------------------------------------------
            --同一身份序号短期拥有账户数量
            SELECT ff.法人数量,
                   ff.短期账户数量,
                   CASE
                     WHEN [法定代表人或负责人身份证件种类] = ''身份证'' THEN dbo.Fn_getage(a.法定代表人或负责人身份证件编号, a.开户日期)
                     ELSE NULL
                   END 开户年龄,
                   a.*
            INTO   #tmp_all
            FROM   #tmp A
                   OUTER APPLY (SELECT Count(*) 短期账户数量,
                                       Count(DISTINCT 法定代表人或负责人身份证件编号) 法人数量
                                FROM   #tmp B
                                WHERE  a.身份序号 = b.身份序号
                                       AND Abs(Datediff(day, CONVERT(DATE, a.开户日期), CONVERT(DATE, b.开户日期))) <= @days) AS FF
            ORDER  BY 身份序号,
                      开户日期
            ----select * from #tmp_all order by 存款人名称
            ------RETURN
            -------------------------------------------------------------------------
            SELECT a.[银行机构代码],
                   d.银行机构名称,
                   a.[账号],
                   a.[账户名称],
                   a.[社会信用代码],
                   a.[工商营业执照有效期],
                   a.法定代表人或负责人姓名,
                   a.[法定代表人或负责人身份证件种类],
                   a.法定代表人或负责人身份证件编号,
                   a.[联系电话],
                   a.短期账户数量,
                   a.法人数量,
                   b.涉案批次 证件涉案批次,
                   c.涉案批次 手机涉案批次,
                   a.开户年龄 法人开户年龄,
                   [账户性质],
                   [账户状态],
                   [开户日期],
                   [销户日期],
                   [久悬日期],
                   a.[注册地地区代码],
                   a.[账户开户地地区代码],
                   a.[基本存款账户开户地地区代码],
                   a.[地址],
                   a.[注册资金金额]
            --INTO #tmp_end
            FROM   #tmp_all a --
                   LEFT JOIN hnxlsys.dbo.tb_red_gr b --
                          ON a. 法定代表人或负责人身份证件编号 = b.证件号码 --
                   LEFT JOIN hnxlsys.dbo.tb_red_phone c --
                          ON a.电话处理 = c.[手机号码] --
                   LEFT JOIN V_Bank d
                          ON a.[银行机构代码] = d.银行编码或代码
            WHERE  CASE
                     WHEN @fr_or_zh = ''1'' THEN 短期账户数量
                     WHEN @fr_or_zh = ''2'' THEN 法人数量
                   END >= @zh_count
            ORDER  BY 身份序号,
                      开户日期
          END
      END
  END
GO 
', NULL, 648, N'060404', N'0', N'0', N'0', N'1', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (556, 359, N'一对一相似度', N'功能描述：', N'', N'CREATE FUNCTION [FN_Resemble_onebyone] (@Cloumna NVARCHAR(MAX), @Cloumnb NVARCHAR(MAX))
RETURNS FLOAT
WITH ENCRYPTION
AS
BEGIN
    DECLARE @num FLOAT,@len int
    SET @Cloumna=ISNULL(@Cloumna,0)
    SET @Cloumnb=ISNULL(@Cloumnb,0)
    SET @len=1
    SET @num=0
    WHILE(LEN(@Cloumna)<>0 AND LEN(@CloumnB)<>0)
    BEGIN
    DECLARE @a NVARCHAR(4)
    DECLARE @b NVARCHAR(4)
        IF(LEN(@Cloumna)>=LEN(@CloumnB))
        BEGIN
            WHILE(@len<=LEN(@CloumnB))
            BEGIN
                
                SET @a=''''
                SET @a=SUBSTRING(@Cloumna,@len,1)
                SET @b=''''
                SET @b=SUBSTRING(@CloumnB,@len,1)
                IF(@a=@b)
                BEGIN
                SET @num=@num+1
                END
            SET  @len=@len+1   
            END
        END
        ELSE IF    (LEN(@Cloumna)<LEN(@CloumnB))
        BEGIN
            WHILE(@len<=LEN(@Cloumna))
                BEGIN
                    SET @a=''''
                    SET @a=SUBSTRING(@Cloumna,@len,1)
                    SET @b=''''
                    SET @b=SUBSTRING(@CloumnB,@len,1)
                    IF(@a=@b)
                    BEGIN
                        SET @num=@num+1
                    END
                SET  @len=@len+1   
            END
        
        END
    SET @num=@num*1.0/LEN(@Cloumna)
    BREAK
    END
    RETURN @num
END
GO', NULL, 2023, N'1214', N'0', N'0', N'1', N'0', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (557, 359, N'身份证年龄', N'', N'', N'CREATE FUNCTION [Fn_GetAge]
(@IdCard     NVARCHAR(18),
 @LimitdDate NVARCHAR(8)
)
RETURNS INT
AS
     BEGIN
       DECLARE @BirthYear VARCHAR(4);
       DECLARE @BirthMonth VARCHAR(2);
       DECLARE @BirthDay VARCHAR(2);
       DECLARE @BirthDate DATETIME;
       DECLARE @BirthDateStr NVARCHAR(10);
       DECLARE @Age INT;
       DECLARE @Length INT;
       SET @Age = 0;
  BEGIN
    SET @BirthDateStr = '''';
    SET @BirthDate = NULL;
    SET @Length = LEN(@IdCard);
    IF(@Length = 15)
      BEGIN
        SET @BirthYear = (''19''+SUBSTRING(@IdCard, 7, 2));
        SET @BirthMonth = SUBSTRING(@IdCard, 9, 2);
        SET @BirthDay = SUBSTRING(@IdCard, 11, 2);
      END;
      ELSE
    IF(@Length = 18)
      BEGIN
        SET @BirthYear = SUBSTRING(@IdCard, 7, 4);
        SET @BirthMonth = SUBSTRING(@IdCard, 11, 2);
        SET @BirthDay = SUBSTRING(@IdCard, 13, 2);
      END;
    IF(@BirthYear > 1919)
      BEGIN
            --2月份的时间
        IF((@BirthYear % 4 = 0
            OR @BirthYear % 100 != 0)
           OR (@BirthYear % 400 = 0)) --闰年
          BEGIN
            IF(@BirthMonth = 2)
              BEGIN
                IF(@BirthDay > 0
                   AND @BirthDay <= 29)
                  BEGIN
                    SET @BirthDateStr = @BirthYear+''-''+@BirthMonth+''-''+@BirthDay;
                  END;
              END;
          END;
          ELSE
          BEGIN
            IF(@BirthMonth = 2)
              BEGIN
                IF(@BirthDay > 0
                   AND @BirthDay <= 28)
                  BEGIN
                    SET @BirthDateStr = @BirthYear+''-''+@BirthMonth+''-''+@BirthDay;
                  END;
              END;
          END;
            --1 3 5 7 8 10 12月份的处理
        IF(@BirthMonth = 1
           OR @BirthMonth = 3
           OR @BirthMonth = 5
           OR @BirthMonth = 7
           OR @BirthMonth = 8
           OR @BirthMonth = 10
           OR @BirthMonth = 12)
          BEGIN
            IF(@BirthDay > 0
               AND @BirthDay <= 31)
              BEGIN
                SET @BirthDateStr = @BirthYear+''-''+@BirthMonth+''-''+@BirthDay;
              END;
          END;
          ELSE
        IF(@BirthMonth = 4
           OR @BirthMonth = 6
           OR @BirthMonth = 9
           OR @BirthMonth = 11) --4 6 9 11月份的处理
          BEGIN
            IF(@BirthDay > 0
               AND @BirthDay <= 30)
              BEGIN
                SET @BirthDateStr = @BirthYear+''-''+@BirthMonth+''-''+@BirthDay;
              END;
          END;
        IF(@BirthDateStr != '''')
          BEGIN
            SET @BirthDate = CONVERT(DATETIME, @BirthDateStr);
            SET @Age = DATEDIFF(YEAR, @BirthDate, CONVERT(DATETIME, @LimitdDate));
            IF(DATEPART(MONTH, @BirthDate) > DATEPART(MONTH, CONVERT(DATETIME, @LimitdDate)))
              BEGIN
                SET @Age = @Age - 1;
              END;
              ELSE
            IF(DATEPART(MONTH, @BirthDate) = DATEPART(MONTH, CONVERT(DATETIME, @LimitdDate)))
              BEGIN
                IF(DATEPART(DAY, @BirthDate) > DATEPART(DAY, CONVERT(DATETIME, @LimitdDate)))
                  BEGIN
                    SET @Age = @Age - 1;
                  END;
              END;
          END;
      END;
  END;
       RETURN @Age;
     END;
GO', NULL, 2024, N'1215', N'0', N'0', N'1', N'0', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (558, 552, N'其他法人多电话或短期多注册或开户（合并）', N'参数为基本户时，疑似频繁注册企业，虚假注册或经营实体存疑；为所有账户时，则为短期内开立大量账户，进一步存疑。短期天数设为较大数值，可视为不考虑短期。账户数量设为0，则筛出所有。', N'@账户性质(1基本和临时机构,9所有)!S:9@账户状态(1正常或久悬,9所有)!S:1@账户或电话数量!N:5@筛选依据(1账户数量,2电话数量)!S:1@短期天数!N:10000@固话位数!N:7@涉案账户(1是,0否,9全部)!S:9', NULL, NULL, 646, N'060403', N'0', N'0', N'0', N'0', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (559, 552, N'本地法人多电话或短期多注册或开户', N'参数为基本户时，疑似频繁注册企业，虚假注册或经营实体存疑；为所有账户时，则为短期内开立大量账户，进一步存疑。短期天数设为较大数值，可视为不考虑短期。账户数量设为0，则筛出所有。', N'@开始日!D:20210101@结束日!D:20210304@账户性质(1基本和临时机构,9所有)!S:9@账户状态(1正常和久悬,9所有)!S:1@最小年龄!N:0@最大年龄!N:200@年龄范围(1小于最小,2大于最大,3大小之间)!S:3@筛选(1账户数,2电话数)!S:1@数量!N:5@天数!N:100@固话位数!N:7', N'CREATE PROCEDURE P_dw_bdgr_neardayzh(@bgn_date CHAR(8),@end_date CHAR(8),@zh_xz CHAR(1),@zh_state CHAR(1),@min_age INT,@max_age INT,@age_state CHAR(1),@fr_or_zh CHAR(1),@zh_count INT,@days INT,@len INT)
WITH ENCRYPTION
AS
  BEGIN
    --本地个法人短期内多开户
    IF Object_id(''tempdb..#tmp'') IS NOT NULL
      DROP TABLE #tmp
    IF Object_id(''tempdb..#tmp_cnt'') IS NOT NULL
      DROP TABLE #tmp_cnt
    IF Object_id(''tempdb..#tmp1'') IS NOT NULL
      DROP TABLE #tmp1
    IF Object_id(''tempdb..#tmp11'') IS NOT NULL
      DROP TABLE #tmp11
    IF Object_id(''tempdb..#tmp2'') IS NOT NULL
      DROP TABLE #tmp2
    IF Object_id(''tempdb..#tmp22'') IS NOT NULL
      DROP TABLE #tmp22
    IF Object_id(''tempdb..#tmp3'') IS NOT NULL
      DROP TABLE #tmp3
    IF Object_id(''tempdb..#tmp33'') IS NOT NULL
      DROP TABLE #tmp33
    IF Object_id(''tempdb..#tmp4'') IS NOT NULL
      DROP TABLE #tmp4
    IF Object_id(''tempdb..#tmp44'') IS NOT NULL
      DROP TABLE #tmp44
    IF Object_id(''tempdb..#tmp5'') IS NOT NULL
      DROP TABLE #tmp5
    IF Object_id(''tempdb..#tmp55'') IS NOT NULL
      DROP TABLE #tmp55
    IF Object_id(''tempdb..#tmp_all'') IS NOT NULL
      DROP TABLE #tmp_all
    --IF Object_id(''tempdb..#tmp_end'') IS NOT NULL
    --DROP TABLE #tmp_end
    --DECLARE @bgn_date CHAR(8) --数据开始日期
    --SET @bgn_date = ''20210201''
    --DECLARE @end_date CHAR(8) --数据结束日期
    --SET @end_date = ''20210210''
    --DECLARE @zh_xz CHAR(1) --账户性质 1基本临时，9全部
    --SET @zh_xz = ''9''
    --DECLARE @zh_state CHAR(1) --账户状态 1正常 9全部（含撤销）
    --SET @zh_state = ''1''
    --DECLARE @zh_count INT--账户数量
    --SET @zh_count = 3
    --DECLARE @days INT --短期的天数
    --SET @days = 100
    --DECLARE @Min_age INT --最小年龄
    --SET @Min_age = 18
    --DECLARE @Max_age INT --最大年龄
    --SET @Max_age = 35
    --DECLARE @age_state CHAR(1) --年龄范围1小于最小，2大于最大，3最小最大之间
    --SET @age_state = ''3''
    --DECLARE @len INT --固定电话位数
    --SET @len=7
    --DECLARE @fr_or_zh CHAR(1) --筛选账户还是电话
    --SET @fr_or_zh =''1''
    --DECLARE @sazh CHAR(1)
    --SET @sazh =''9''
    IF Object_id(N''tb_rhzh_dw'', N''U'') IS NULL
        OR Object_id(N''hnxlsys.dbo.tb_red_gr'', N''U'') IS NULL
      BEGIN
        SELECT ''×账户系统个人账户数据未导入或未生成红名单信息……'' 注意
      END
    ELSE
      BEGIN
        IF @zh_state <> ''1''
           AND @zh_state <> ''9''
            OR @zh_xz <> ''1''
               AND @zh_xz <> ''9''
            OR @age_state <> ''1''
               AND @age_state <> ''2''
               AND @age_state <> ''3''
            OR @fr_or_zh <> ''1''
               AND @fr_or_zh <> ''2''
          BEGIN
            SELECT ''×账户性质只能为1、9或账户状态只能为1、9或年龄范围参数只能为1、2、3或筛选依据只能为1、2'' 参数错误
          END
        ELSE
          BEGIN
            --获取省级行政区划与账户系统地区对照表，为识别本地个人
            SELECT DISTINCT LEFT(编码, 2) 行政区划,
                            账户地区
            INTO   #tmp1
            FROM   [HNXLSYS].[dbo].[AreaCodeOldNew]
            WHERE  NOT 账户地区 IS NULL
            ORDER  BY 账户地区
            --提取符合条件的个人账户，下一步再分析
            SELECT 序号,
                   序号 身份序号,----身份序号取序号值，序号为identy，不能update
                   [银行机构代码],
                   [账号],
                   [账户名称],
                   [社会信用代码],
                   [工商营业执照有效期],
                   法定代表人或负责人姓名,
                   [法定代表人或负责人身份证件种类],
                   法定代表人或负责人身份证件编号,
                   [联系电话],
                   dbo.F_delete_head([联系电话], ''0'') 电话处理,--点好号码清除前导0
                   [账户性质],
                   [账户状态],
                   [开户日期],
                   [销户日期],
                   [久悬日期],
                   [注册地地区代码],
                   [账户开户地地区代码],
                   [基本存款账户开户地地区代码],
                   [地址],
                   [注册资金金额]
            INTO   #tmp
            FROM   tb_rhzh_dw a
                   LEFT JOIN #tmp1 b
                          ON LEFT(a.[账户开户地地区代码], 4) = b.账户地区 --账户地区连接
            WHERE  开户日期 >= @bgn_date
                   AND 开户日期 <= @end_date
                   AND ( @zh_state = ''1''
                         AND 销户日期 IS NULL
                          OR @zh_state = ''9'' )
                   AND ( @zh_xz = ''1''
                         AND ( 账户性质 LIKE ''基本%''
                                OR 账户性质 LIKE ''临时机构%'' )
                          OR @zh_xz = ''9'' )
                   AND ( [法定代表人或负责人身份证件种类] <> ''身份证''
                          OR [法定代表人或负责人身份证件种类] = ''身份证''
                             AND LEFT(a.法定代表人或负责人身份证件编号, 2) = b.行政区划 ) --本地信息
            ORDER  BY a.法定代表人或负责人身份证件编号
            --RETURN    
            ----首先相同证件号变成同一序号（最小序号），其次相似身份证号变成同一序号
            ----取得每组相同证件号的最小序号
            SELECT Min(序号) 最小序号,--身份证编号相同的账户把序号变成相同，最小编号
                   法定代表人或负责人身份证件编号,
                   Count(法定代表人或负责人身份证件编号) 数量
            INTO   #tmp11
            FROM   #tmp
            GROUP  BY 法定代表人或负责人身份证件编号
            HAVING Count(法定代表人或负责人身份证件编号) > 1
            ORDER  BY 法定代表人或负责人身份证件编号
            --把证件相同的身份序号归为一致	
            UPDATE a
            SET    a.身份序号 = b.最小序号
            FROM   #tmp a
                   INNER JOIN #tmp11 b
                           ON a.法定代表人或负责人身份证件编号 = b.法定代表人或负责人身份证件编号
            ---------------------------------------------------------------------------------------------
            ----下面为同姓名相似度
            --获取同一姓名两个以上身份号法人， 同一姓名不同身份证编号的应计算相似度，认为相似度接近的应为同一个人，把他们的编号设成一致
            SELECT 法定代表人或负责人姓名,
                   Count(DISTINCT 法定代表人或负责人身份证件编号) 数量
            INTO   #tmp22
            FROM   #tmp
            GROUP  BY 法定代表人或负责人姓名
            HAVING Count(DISTINCT 法定代表人或负责人身份证件编号) > 1
            ORDER  BY 法定代表人或负责人姓名
            --获取具有两个以上证件号码的姓名和编号
            SELECT DISTINCT a.法定代表人或负责人姓名,
                            b.法定代表人或负责人身份证件编号,
                            b.身份序号
            INTO   #tmp33
            FROM   #tmp22 a
                   LEFT JOIN #tmp b
                          ON a.法定代表人或负责人姓名 = b.法定代表人或负责人姓名
            ORDER  BY 法定代表人或负责人姓名
            ----获取相似度符合逻辑的身份序号和身份编号
            SELECT DISTINCT a.身份序号,
                            a.法定代表人或负责人姓名,
                            a.法定代表人或负责人身份证件编号 身份证件编号1,
                            b.法定代表人或负责人身份证件编号 身份证件编号2,
                            DBO.Fn_resemble_onebyone(a.法定代表人或负责人身份证件编号, b.法定代表人或负责人身份证件编号) 一对一相似度
            INTO   #tmp44
            FROM   #tmp33 a
                   INNER JOIN #tmp33 b
                           ON a.法定代表人或负责人姓名 = b.法定代表人或负责人姓名
            WHERE  DBO.Fn_resemble_onebyone(a.法定代表人或负责人身份证件编号, b.法定代表人或负责人身份证件编号) > 0.8
                   AND DBO.Fn_resemble_onebyone(a.法定代表人或负责人身份证件编号, b.法定代表人或负责人身份证件编号) < 1
            ORDER  BY 法定代表人或负责人姓名
            --SELECT *
            --FROM   #tmp44
            --ORDER  BY 存款人名称
            --RETURN
            ----获取相似度最小身份序号
            SELECT 法定代表人或负责人姓名,
                   Min(身份序号) 最小身份序号
            INTO   #tmp55
            FROM   #tmp44
            GROUP  BY 法定代表人或负责人姓名
            --select * from #tmp55 order by 存款人名称
            --return
            --更新#tmp44,身份序号都变成最小序号，方便后面更改#tmp
            UPDATE a
            SET    a.身份序号 = b.最小身份序号
            FROM   #tmp44 a
                   LEFT JOIN #tmp55 b
                          ON a.法定代表人或负责人姓名 = b.法定代表人或负责人姓名
            ------更新基本结果集把相似身份序号更新
            UPDATE a
            SET    a.身份序号 = b.身份序号
            FROM   #tmp a
                   INNER JOIN #tmp44 b
                           ON a.法定代表人或负责人姓名 = b.法定代表人或负责人姓名
                              AND a.法定代表人或负责人身份证件编号 = b.身份证件编号1
            WHERE  a.身份序号 > b.身份序号
            -----弄到临时表用于测试后面的代码
            --      SELECT *
            --into tmp
            --      FROM   #tmp
            --      ORDER  BY 身份序号
            --------------------------------------------------------------------------------------------
            --同一身份序号短期拥有账户数量
            SELECT ff.电话数量,
                   ff.短期账户数量,
                   --dbo.Fn_getage(a.法定代表人或负责人身份证件编号, a.开户日期) 开户年龄,
                   CASE
                     WHEN [法定代表人或负责人身份证件种类] = ''身份证'' THEN dbo.Fn_getage(a.法定代表人或负责人身份证件编号, a.开户日期)
                     ELSE NULL
                   END 开户年龄,
                   a.*
            INTO   #tmp_all
            FROM   #tmp A
                   OUTER APPLY (SELECT Count(*) 短期账户数量,
                                       Count(DISTINCT 电话处理) 电话数量
                                FROM   #tmp B
                                WHERE  a.身份序号 = b.身份序号
                                       AND Abs(Datediff(day, CONVERT(DATE, a.开户日期), CONVERT(DATE, b.开户日期))) <= @days) AS FF
            ORDER  BY 身份序号,
                      开户日期
            ----select * from #tmp_all order by 存款人名称
            ------RETURN
            -------------------------------------------------------------------------
            SELECT a.[银行机构代码],
                   d.银行机构名称,
                   a.[账号],
                   a.[账户名称],
                   a.[社会信用代码],
                   a.[工商营业执照有效期],
                   a.法定代表人或负责人姓名,
                   a.[法定代表人或负责人身份证件种类],
                   a.法定代表人或负责人身份证件编号,
                   a.[联系电话],
                   a.短期账户数量,
                   a.电话数量,
                   b.涉案批次 证件涉案批次,
                   c.涉案批次 手机涉案批次,
                   a.开户年龄 法人开户年龄,
                   [账户性质],
                   [账户状态],
                   [开户日期],
                   [销户日期],
                   [久悬日期],
                   a.[注册地地区代码],
                   a.[账户开户地地区代码],
                   a.[基本存款账户开户地地区代码],
                   a.[地址],
                   a.[注册资金金额]
            --INTO #tmp_end
            FROM   #tmp_all a --
                   LEFT JOIN hnxlsys.dbo.tb_red_gr b --
                          ON a. 法定代表人或负责人身份证件编号 = b.证件号码 --
                   LEFT JOIN hnxlsys.dbo.tb_red_phone c --
                          ON a.电话处理 = c.[手机号码] --
                   LEFT JOIN V_Bank d
                          ON a.[银行机构代码] = d.银行编码或代码
            WHERE  ( 开户年龄 IS NULL
                      OR 开户年龄 <= ( CASE
                                     WHEN @age_state = ''1'' THEN @Min_age
                                     WHEN @age_state = ''2'' THEN 10000
                                     WHEN @age_state = ''3'' THEN @max_age
                                   END )
                         AND 开户年龄 >= ( CASE
                                         WHEN @age_state = ''1'' THEN-10000
                                         WHEN @age_state = ''2'' THEN @max_age
                                         WHEN @age_state = ''3'' THEN @min_age
                                       END ) )
                   AND CASE
                         WHEN @fr_or_zh = ''1'' THEN 短期账户数量
                         WHEN @fr_or_zh = ''2'' THEN 电话数量
                       END >= @zh_count
            ORDER  BY 身份序号,
                      开户日期
          END
      END
  END
GO 
', NULL, 642, N'060401', N'0', N'0', N'0', N'1', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (560, 521, N'人行单位账户查询_法人代表姓名', N'', N'@法人姓名!S:韦亚东@返回行数!N:5', N'CREATE PROCEDURE PD_rhzh_fr_name(@fr_name VARCHAR(60), @row_num  INT)
WITH ENCRYPTION
AS
  BEGIN
    IF Object_id(N''tb_rhzh_dw'', N''U'') IS NOT NULL
      BEGIN
        SET ROWCOUNT @row_num
        SELECT a.银行机构代码,
               b.银行机构名称,
               [存款人编号],
               [存款人类别],
               [存款人名称],
               [注册地地区代码],
               [存款人身份证件种类],
               [存款人身份证件编号],
               [工商营业执照有效期],
               [组织机构代码],
               [注册资金币种],
               [注册资金金额],
               [无需办理税务登记的证明文件编号],
               [存款人状态],
               [国税登记证号],
               [地税登记证号],
               [经营范围],
               [地址],
               [邮编],
               [联系电话],
               [法定代表人或负责人姓名],
               [法定代表人或负责人身份证件种类],
               [法定代表人或负责人身份证件编号],
               [上级单位名称],
               [上级法人基本存款账户开户许可证核准号],
               [上级法定代表人或负责人证件种类],
               [上级法定代表人或负责人姓名],
               [上级法人组织机构代码],
               [上级法定代表人或负责人证件编号],
               [存款人证明文件2种类],
               [存款人证明文件2编号],
               [存款人证明文件1种类],
               [社会信用代码],
               --[银行机构代码],
               [账户性质],
               [账号],
               [账户名称],
               [账户证明文件1种类],
               [账户证明文件1编号],
               [账户证明文件2种类],
               [账户证明文件2编号],
               [开户日期],
               [销户原因],
               [久悬日期],
               [销户日期],
               [账户状态],
               [账户开户地地区代码],
               [基本存款账户开户地地区代码],
               [账户所在人民银行机构代码],
               [基本存款账户开户许可证核准号],
               [开户许可证核准号],
               [账户名称前缀],
               [账户名称后缀],
               [资金性质代码],
               [可否取现],
               [部门或资金管理人名称],
               [部门或资金管理人负责人姓名],
               [部门或资金管理人证件种类],
               [部门或资金管理人证件编号],
               [部门或资金管理人电话],
               [部门或资金管理人邮编],
               [部门或资金管理人地址],
               [临时存款账户有效期],
               [临时存款账户开户原因],
               [备注]
        FROM   tb_rhzh_dw a
               LEFT JOIN v_bank b
                      ON a.银行机构代码 = b.银行编码或代码
        WHERE  Trim(法定代表人或负责人姓名) LIKE ''%'' + @fr_name + ''%''
        ORDER  BY 银行机构代码
        SET ROWCOUNT 0
      END
    ELSE
      BEGIN
        SELECT ''×账户管理系统单位账户数据未导入'' 注意
      END
  END
GO', NULL, 706, N'0706', N'0', N'0', N'0', N'1', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (561, 359, N'两个字段顺序相似', N'', N'', N'CREATE FUNCTION FN_Resemble_order  (@Cloumna NVARCHAR(MAX),  @Cloumnb NVARCHAR(MAX) )
RETURNS FLOAT
WITH ENCRYPTION
AS
BEGIN
    DECLARE @num FLOAT,@len int
    SET @Cloumna=ISNULL(@Cloumna,0)
    SET @Cloumnb=ISNULL(@Cloumnb,0)
    SET @len=1
    SET @num=0
    WHILE(LEN(@Cloumna)<>0 AND LEN(@CloumnB)<>0)
    BEGIN
    DECLARE @a NVARCHAR(4)
    DECLARE @b NVARCHAR(4)
        IF(LEN(@Cloumna)>=LEN(@CloumnB))
        BEGIN
            WHILE(@len<=LEN(@CloumnB))
            BEGIN
                
                SET @a=''''
                SET @a=SUBSTRING(@Cloumna,@len,1)
                SET @b=''''
                SET @b=SUBSTRING(@CloumnB,@len,1)
                IF(@a=@b)
                BEGIN
                SET @num=@num+1
                END
                    ELSE
                    BEGIN
                        break
                    END
            SET  @len=@len+1   
            END
        END
        ELSE IF    (LEN(@Cloumna)<LEN(@CloumnB))
        BEGIN
            WHILE(@len<=LEN(@Cloumna))
                BEGIN
                    SET @a=''''
                    SET @a=SUBSTRING(@Cloumna,@len,1)
                    SET @b=''''
                    SET @b=SUBSTRING(@CloumnB,@len,1)
                    IF(@a=@b)
                    BEGIN
                        SET @num=@num+1
                    END
                    ELSE
                        BEGIN
                            break
                        END
                SET  @len=@len+1   
            END
        
        END
    SET @num=@num*1.0/LEN(@Cloumna)
    BREAK
    END
    RETURN @num
END
go

----测试代码
--SELECT DBO.FN_Resemble_order(''ABDC456G'',''ABDC123G'')', NULL, 2025, N'1216', N'0', N'0', N'1', N'0', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (576, 571, N'个人黑名单查询', N'功能描述：', N'@提示1!参数类型1:默认值1@提示2!参数类型2:默认值2', N'CREATE PROCEDURE      AS
BEGIN

END
GO', NULL, 618, N'060205', N'1', N'1', N'0', N'1', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (562, 304, N'风险监测数据导入情况', N'', N'', N'CREATE PROCEDURE P_dwfx_date_ok
WITH ENCRYPTION
AS
  BEGIN
    DECLARE @s_tb_sazh VARCHAR(800),@s_tb_sazh1 VARCHAR(800),@s_tb_sazh2 VARCHAR(800) --涉案账户
    DECLARE @s_tb_rhzh_dw VARCHAR(800),@s_tb_rhzh_dw1 VARCHAR(800),@s_tb_rhzh_dw2 VARCHAR(800)--人行账户
    DECLARE @s_tb_rhzh_dw_jb VARCHAR(800),@s_tb_rhzh_dw_jb1 VARCHAR(800),@s_tb_rhzh_dw_jb2 VARCHAR(800)--基本
    DECLARE @s_tb_rhzh_dw_yb VARCHAR(800),@s_tb_rhzh_dw_yb1 VARCHAR(800),@s_tb_rhzh_dw_yb2 VARCHAR(800)--一般
    DECLARE @s_tb_rhzh_dw_ys VARCHAR(800),@s_tb_rhzh_dw_ys1 VARCHAR(800),@s_tb_rhzh_dw_ys2 VARCHAR(800)--预算
    DECLARE @s_tb_rhzh_dw_fys VARCHAR(800),@s_tb_rhzh_dw_fys1 VARCHAR(800),@s_tb_rhzh_dw_fys2 VARCHAR(800)--非预算
    DECLARE @s_tb_rhzh_dw_ls VARCHAR(800),@s_tb_rhzh_dw_ls1 VARCHAR(800),@s_tb_rhzh_dw_ls2 VARCHAR(800)--临时
    DECLARE @s_tb_rhzh_dw_fls VARCHAR(800),@s_tb_rhzh_dw_fls1 VARCHAR(800),@s_tb_rhzh_dw_fls2 VARCHAR(800)--非临时
    DECLARE @s_tb_rhzh_dw_ts VARCHAR(800),@s_tb_rhzh_dw_ts1 VARCHAR(800),@s_tb_rhzh_dw_ts2 VARCHAR(800)--特殊
    -------------------------------------
    DECLARE @s_tb_rhzh_gr VARCHAR(80),@s_tb_rhzh_gr1 VARCHAR(80),@s_tb_rhzh_gr2 VARCHAR(80)--人行账户
    DECLARE @s_tb_rhzh_gr_zpzh VARCHAR(80),@s_tb_rhzh_gr_zpzh1 VARCHAR(80),@s_tb_rhzh_gr_zpzh2 VARCHAR(80)--支票账户
    DECLARE @s_tb_rhzh_gr_jjk VARCHAR(80),@s_tb_rhzh_gr_jjk1 VARCHAR(80),@s_tb_rhzh_gr_jjk2 VARCHAR(80)--借记卡
    DECLARE @s_tb_rhzh_gr_djk VARCHAR(80),@s_tb_rhzh_gr_djk1 VARCHAR(80),@s_tb_rhzh_gr_djk2 VARCHAR(80)--贷记卡
    DECLARE @s_tb_rhzh_gr_qt VARCHAR(80),@s_tb_rhzh_gr_qt1 VARCHAR(80),@s_tb_rhzh_gr_qt2 VARCHAR(80)--其它
    DECLARE @s_tb_rhzh_gr_zdjk VARCHAR(80),@s_tb_rhzh_gr_zdjk1 VARCHAR(80),@s_tb_rhzh_gr_zdjk2 VARCHAR(80)--准贷记卡
    ----------------------------------------------------------------
    SET @s_tb_sazh =''涉案账户数据''
    ----------------------------------------------
    SET @s_tb_rhzh_dw=''人行单位账户数据（总）''
    SET @s_tb_rhzh_dw_jb=''人行单位账户数据（基本）''
    SET @s_tb_rhzh_dw_yb=''人行单位账户数据（一般）''
    SET @s_tb_rhzh_dw_ys=''人行单位账户数据（预算）''
    SET @s_tb_rhzh_dw_fys=''人行单位账户数据（非预算）''
    SET @s_tb_rhzh_dw_ls=''人行单位账户数据（临时）''
    SET @s_tb_rhzh_dw_fls=''人行单位账户数据（非临时）''
    SET @s_tb_rhzh_dw_ts=''人行单位账户数据（特殊）''
    -----------------------------------------
    SET @s_tb_rhzh_gr=''人行个人账户数据（总）''
    SET @s_tb_rhzh_gr_zpzh=''人行个人账户数据（支票账户）''
    SET @s_tb_rhzh_gr_jjk=''人行个人账户数据（借记卡）''
    SET @s_tb_rhzh_gr_djk=''人行个人账户数据（贷记卡）''
    SET @s_tb_rhzh_gr_qt=''人行个人账户数据（其它）''
    SET @s_tb_rhzh_gr_zdjk=''人行个人账户数据（准贷记卡）''
    ----------------------------------------------
    IF Object_id(N''hnxlsys.dbo.tb_sazh'', N''U'') IS NOT NULL
      BEGIN
        --select stuff((select distinct  '','' + 批次  from hnxlsys.dbo.tb_sazh order by '',''+批次 for xml path('''')),1,1,'''')
        --select distinct 批次+'','' from hnxlsys.dbo.tb_sazh order by 批次+'','' for xml path('''')
        SET @s_tb_sazh1=( Stuff((SELECT DISTINCT '','' + 批次
                                 FROM   hnxlsys.dbo.tb_sazh
                                 ORDER  BY '','' + 批次
                                 FOR xml path('''')), 1, 1, '''') )
        SET @s_tb_sazh2=(SELECT Count(*)
                         FROM   hnxlsys.dbo.tb_sazh)
      END
    ELSE
      BEGIN
        SET @s_tb_sazh=''×涉案账户数据未导入''
        SET @s_tb_sazh=''''
      END
    --------------------------------------
    IF Object_id(N''tb_rhzh_dw'', N''U'') IS NOT NULL
      BEGIN
        SET @s_tb_rhzh_dw1=(SELECT ''开户：'' + Min(开户日期) + ''～'' + Max(开户日期) + ''--销户：''
                                   + Min(销户日期) + ''～'' + Max(销户日期)
                            FROM   tb_rhzh_dw)
        SET @s_tb_rhzh_dw2=(SELECT Count(DISTINCT 账号)
                            FROM   tb_rhzh_dw)
        SET @s_tb_rhzh_dw_jb1=(SELECT ''开户：'' + Min(开户日期) + ''～'' + Max(开户日期) + ''--销户：''
                                      + Min(销户日期) + ''～'' + Max(销户日期)
                               FROM   tb_rhzh_dw
                               WHERE  账户性质 = ''基本'')
        SET @s_tb_rhzh_dw_jb2=(SELECT Count(DISTINCT 账号)
                               FROM   tb_rhzh_dw
                               WHERE  账户性质 = ''基本'')
        SET @s_tb_rhzh_dw_yb1=(SELECT ''开户：'' + Min(开户日期) + ''～'' + Max(开户日期) + ''--销户：''
                                      + Min(销户日期) + ''～'' + Max(销户日期)
                               FROM   tb_rhzh_dw
                               WHERE  账户性质 = ''一般'')
        SET @s_tb_rhzh_dw_yb2=(SELECT Count(DISTINCT 账号)
                               FROM   tb_rhzh_dw
                               WHERE  账户性质 = ''一般'')
        SET @s_tb_rhzh_dw_ls1=(SELECT ''开户：'' + Min(开户日期) + ''～'' + Max(开户日期) + ''--销户：''
                                      + Min(销户日期) + ''～'' + Max(销户日期)
                               FROM   tb_rhzh_dw
                               WHERE  账户性质 = ''临时'')
        SET @s_tb_rhzh_dw_ls2=(SELECT Count(DISTINCT 账号)
                               FROM   tb_rhzh_dw
                               WHERE  账户性质 = ''临时'')
        SET @s_tb_rhzh_dw_fls1=(SELECT ''开户：'' + Min(开户日期) + ''～'' + Max(开户日期) + ''--销户：''
                                       + Min(销户日期) + ''～'' + Max(销户日期)
                                FROM   tb_rhzh_dw
                                WHERE  账户性质 = ''非临时'')
        SET @s_tb_rhzh_dw_fls2=(SELECT Count(DISTINCT 账号)
                                FROM   tb_rhzh_dw
                                WHERE  账户性质 = ''非临时'')
        SET @s_tb_rhzh_dw_ys1=(SELECT ''开户：'' + Min(开户日期) + ''～'' + Max(开户日期) + ''--销户：''
                                      + Min(销户日期) + ''～'' + Max(销户日期)
                               FROM   tb_rhzh_dw
                               WHERE  账户性质 = ''预算'')
        SET @s_tb_rhzh_dw_ys2=(SELECT Count(DISTINCT 账号)
                               FROM   tb_rhzh_dw
                               WHERE  账户性质 = ''预算'')
        SET @s_tb_rhzh_dw_fys1=(SELECT ''开户：'' + Min(开户日期) + ''～'' + Max(开户日期) + ''--销户：''
                                       + Min(销户日期) + ''～'' + Max(销户日期)
                                FROM   tb_rhzh_dw
                                WHERE  账户性质 = ''非预算'')
        SET @s_tb_rhzh_dw_fys2=(SELECT Count(DISTINCT 账号)
                                FROM   tb_rhzh_dw
                                WHERE  账户性质 = ''非预算'')
        SET @s_tb_rhzh_dw_ts1=(SELECT ''开户：'' + Min(开户日期) + ''～'' + Max(开户日期) + ''--销户：''
                                      + Min(销户日期) + ''～'' + Max(销户日期)
                               FROM   tb_rhzh_dw
                               WHERE  账户性质 = ''特殊'')
        SET @s_tb_rhzh_dw_ts2=(SELECT Count(DISTINCT 账号)
                               FROM   tb_rhzh_dw
                               WHERE  账户性质 = ''特殊'')
      END
    ELSE
      BEGIN
        SET @s_tb_rhzh_dw1=''×人行单位账户数据未导入''
      END
    -----------------------------------------------------------------------
    IF Object_id(N''tb_rhzh_gr'', N''U'') IS NOT NULL
      BEGIN
        SET @s_tb_rhzh_gr1=(SELECT ''开户：'' + Min(开户日期) + ''～'' + Max(开户日期) + ''--销户：''
                                   + Min(销户日期) + ''～'' + Max(销户日期)
                            FROM   tb_rhzh_gr)
        SET @s_tb_rhzh_gr2=(SELECT Count(DISTINCT 账号)
                            FROM   tb_rhzh_gr)
        SET @s_tb_rhzh_gr_zpzh1=(SELECT ''开户：'' + Min(开户日期) + ''～'' + Max(开户日期) + ''--销户：''
                                        + Min(销户日期) + ''～'' + Max(销户日期)
                                 FROM   tb_rhzh_gr
                                 WHERE  账户类型 = ''支票账户'')
        SET @s_tb_rhzh_gr_zpzh2=(SELECT Count(DISTINCT 账号)
                                 FROM   tb_rhzh_gr
                                 WHERE  账户类型 = ''支票账户'')
        SET @s_tb_rhzh_gr_jjk1=(SELECT ''开户：'' + Min(开户日期) + ''～'' + Max(开户日期) + ''--销户：''
                                       + Min(销户日期) + ''～'' + Max(销户日期)
                                FROM   tb_rhzh_gr
                                WHERE  账户类型 = ''借记卡'')
        SET @s_tb_rhzh_gr_jjk2=(SELECT Count(DISTINCT 账号)
                                FROM   tb_rhzh_gr
                                WHERE  账户类型 = ''借记卡'')
        SET @s_tb_rhzh_gr_djk1=(SELECT ''开户：'' + Min(开户日期) + ''～'' + Max(开户日期) + ''--销户：''
                                       + Min(销户日期) + ''～'' + Max(销户日期)
                                FROM   tb_rhzh_gr
                                WHERE  账户类型 = ''贷记卡'')
        SET @s_tb_rhzh_gr_djk2=(SELECT Count(DISTINCT 账号)
                                FROM   tb_rhzh_gr
                                WHERE  账户类型 = ''贷记卡'')
        SET @s_tb_rhzh_gr_qt1=(SELECT ''开户：'' + Min(开户日期) + ''～'' + Max(开户日期) + ''--销户：''
                                      + Min(销户日期) + ''～'' + Max(销户日期)
                               FROM   tb_rhzh_gr
                               WHERE  账户类型 = ''其他'')
        SET @s_tb_rhzh_gr_qt2=(SELECT Count(DISTINCT 账号)
                               FROM   tb_rhzh_gr
                               WHERE  账户类型 = ''其他'')
        SET @s_tb_rhzh_gr_zdjk1=(SELECT ''开户：'' + Min(开户日期) + ''～'' + Max(开户日期) + ''--销户：''
                                        + Min(销户日期) + ''～'' + Max(销户日期)
                                 FROM   tb_rhzh_gr
                                 WHERE  账户类型 = ''准贷记卡'')
        SET @s_tb_rhzh_gr_zdjk2=(SELECT Count(DISTINCT 账号)
                                 FROM   tb_rhzh_gr
                                 WHERE  账户类型 = ''准贷记卡'')
      END
    ELSE
      BEGIN
        SET @s_tb_rhzh_gr1=''×人行个人账户数据未导入''
      END
    -----------------------------------------------------
    ---------------------------------------------------
    SELECT @s_tb_sazh 数据源,
           @s_tb_sazh1 时间范围,
           @s_tb_sazh2 数量
    UNION ALL
    SELECT ''--------------------------'',
           ''--------------------------'',
           ''-------''
    UNION ALL
    SELECT @s_tb_rhzh_dw 数据源,
           @s_tb_rhzh_dw1 时间范围,
           @s_tb_rhzh_dw2 数量
    UNION ALL
    SELECT @s_tb_rhzh_dw_jb,
           @s_tb_rhzh_dw_jb1,
           @s_tb_rhzh_dw_jb2
    UNION ALL
    SELECT @s_tb_rhzh_dw_yb,
           @s_tb_rhzh_dw_yb1,
           @s_tb_rhzh_dw_yb2
    UNION ALL
    SELECT @s_tb_rhzh_dw_ys,
           @s_tb_rhzh_dw_ys1,
           @s_tb_rhzh_dw_ys2
    UNION ALL
    SELECT @s_tb_rhzh_dw_fys,
           @s_tb_rhzh_dw_fys1,
           @s_tb_rhzh_dw_fys2
    UNION ALL
    SELECT @s_tb_rhzh_dw_ls,
           @s_tb_rhzh_dw_ls1,
           @s_tb_rhzh_dw_ls2
    UNION ALL
    SELECT @s_tb_rhzh_dw_fls,
           @s_tb_rhzh_dw_fls1,
           @s_tb_rhzh_dw_fls2
    UNION ALL
    SELECT ''------------------------'',
           ''------------------------------------'',
           ''--------------''
    UNION ALL
    SELECT @s_tb_rhzh_gr,
           @s_tb_rhzh_gr1,
           @s_tb_rhzh_gr2 --人行账户
    UNION ALL
    SELECT @s_tb_rhzh_gr_zpzh,
           @s_tb_rhzh_gr_zpzh1,
           @s_tb_rhzh_gr_zpzh2 --支票账户
    UNION ALL
    SELECT @s_tb_rhzh_gr_jjk,
           @s_tb_rhzh_gr_jjk1,
           @s_tb_rhzh_gr_jjk2 --借记卡
    UNION ALL
    SELECT @s_tb_rhzh_gr_djk,
           @s_tb_rhzh_gr_djk1,
           @s_tb_rhzh_gr_djk2 --贷记卡
    UNION ALL
    SELECT @s_tb_rhzh_gr_qt,
           @s_tb_rhzh_gr_qt1,
           @s_tb_rhzh_gr_qt2 --其它
    UNION ALL
    SELECT @s_tb_rhzh_gr_zdjk,
           @s_tb_rhzh_gr_zdjk1,
           @s_tb_rhzh_gr_zdjk2 --准贷记卡
  END
GO 
', NULL, 602, N'0601', N'0', N'0', N'0', N'1', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (563, 304, N'.涉案账户相关', N'', N'', NULL, NULL, 670, N'0606', N'0', N'0', N'0', N'1', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (564, 563, N'涉案单位账户提取', N'', N'@地名!S:淮南|凤台|寿县@所属银行!S:@批次!S:断卡@户名!S:@证件号码!S:@法人代表!S:@法人代表证件号!S:@法人代表手机!S:@涉案类型(涉案、涉诈、涉赌)!S:@账户类型（单位个人)!S:', N'CREATE PROCEDURE P_sazh_list(@dm VARCHAR(100),@bank VARCHAR(60),@pc VARCHAR(20),@hm VARCHAR(100),@zjhm VARCHAR(30),@frdb VARCHAR(60),@frdbzjh VARCHAR(30),@frdbsj VARCHAR(30),@salx VARCHAR(60),@zhlx VARCHAR(60))
WITH ENCRYPTION
AS
  BEGIN
    --与个人共用模型，参数不同，方便显示对应人行账户
    --DECLARE @dm VARCHAR(100)
    --SET @dm=''淮南|凤台|寿县''
    --DECLARE @bank VARCHAR(60)
    --SET @bank=''''
    --DECLARE @pc VARCHAR(12)
    --SET @pc=''2020974''
    --DECLARE @hm VARCHAR(100)
    --SET @hm=''''
    --DECLARE @zjhm VARCHAR(30)
    --SET @zjhm=''''
    --DECLARE @frdb VARCHAR(60)
    --SET @frdb=''''
    --DECLARE @frdbzjh VARCHAR(30)
    --SET @frdbzjh=''''
    --DECLARE @frdbsj VARCHAR(30)
    --SET @frdbsj=''''
    --DECLARE @salx VARCHAR(60)
    --SET @salx=''''
    --DECLARE @zhlx VARCHAR(60)
    --SET @zhlx=''''
    SELECT [账号],
           [户名],
           [证件号码],
           [银行],
           [开户网点编号],
           [开户网点名称],
           [开户日期],
           [注册日期],
           [账户性质],
           [开户状态],
           [省份],
           [城市],
           [区县],
           [营业执照地址],
           [银行留存地址],
           [法人代表],
           [法人代表证件类型],
           [法人代表证件号],
           [个人或法人代表手机],
           [财务联系人],
           [联系人手机],
           [网址],
           [IP地址],
           [地点],
           [冻结单位],
           [冻结时间],
           [录入单位],
           [录入时间],
           [涉案类型],
           [账户类型],
           [批次],
           [备注]
    FROM   [HNXLSYS].[dbo].[tb_sazh] a,
           dbo.Ufn_splitstringtotable(@dm, ''|'') b
    WHERE  ( Charindex(b.id, a.开户网点名称) > 0
              OR Charindex(b.id, a.省份 + a.城市 + a.区县) > 0 or len(b.id)=0)
           AND a.银行 LIKE ''%'' + @bank + ''%''
           AND a.批次 LIKE ''%'' + @pc + ''%''
           AND a.户名 LIKE ''%'' + @hm + ''%''
           AND a.证件号码 LIKE ''%'' + @zjhm + ''%''
           AND a.法人代表 LIKE ''%'' + @frdb + ''%''
           AND a.法人代表证件号 LIKE ''%'' + @frdbzjh + ''%''
           AND a.个人或法人代表手机 LIKE ''%'' + @frdbsj + ''%''
           AND a.账户类型 LIKE ''%'' + @zhlx + ''%''
           AND a.涉案类型 LIKE ''%'' + @salx + ''%''
    ORDER  BY [银行]
  END
GO', NULL, 672, N'060601', N'0', N'0', N'0', N'1', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (577, 571, N'手机黑名单查询', N'功能描述：', N'@提示1!参数类型1:默认值1@提示2!参数类型2:默认值2', N'CREATE PROCEDURE      AS
BEGIN

END
GO', NULL, 616, N'060204', N'1', N'1', N'0', N'1', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (565, 563, N'涉案单位账户备案情况', N'', N'@地区编码!S:3401@银行(为空或%为全部)!S:中国银行@批次(0为全部)!S:0@是否备案(0未备案,1已备案)!S:0', N'CREATE PROCEDURE P_sazh_ba(@dqbm VARCHAR(6),@bank VARCHAR(60),@pc VARCHAR(12),@baok CHAR(1))
WITH ENCRYPTION
AS
  BEGIN
      --DECLARE @dqbm VARCHAR(6)
      --SET @dqbm=''3404''
      --DECLARE @pc VARCHAR(6)
      --SET @pc=''0''
      --DECLARE @baOK VARCHAR(6)
      --SET @baOK=''0''
      IF Object_id(N''tb_rhzh_dw'', N''U'') IS NULL
        BEGIN
            SELECT ''×账户系统单位账户数据未导入'' 注意
        END
      ELSE
        BEGIN
            IF @baOK <> ''0''
               AND @baOK <> ''1''
              BEGIN
                  SELECT ''×备案状态只能为0、1'' 参数错误
              END
            ELSE
              BEGIN
                  SELECT a.[账号],
                         [户名],
                         [统一社会信用代码],
                         [银行],
                         [开户网点],
                         a.[开户日期],
                         [注册日期],
                         [开户状态],
                         [省份],
                         [城市],
                         [区县],
                         [营业执照地址],
                         [银行留存地址],
                         [法人代表],
                         [法人代表证件号],
                         [法人代表手机号],
                         [财务联系人],
                         [联系人手机],
                         [录入单位],
                         [录入时间],
                         [批次],
                         b.账户性质 备案账户性质,
                         b.账户状态 备案账户状态,
                         b.开户日期 备案开户日期,
                         b.销户日期 备案销户日期,
                         b.地址   备案地址
                  FROM   [HNXLSYS].[dbo].[tb_sazh] a
                         LEFT JOIN tb_rhzh_dw b
                                ON a.账号 = b.账号
                  WHERE  ( a.[统一社会信用代码] LIKE ''__'' + @dqbm + ''%'' )
                         AND 银行 LIKE ''%'' + @bank + ''%''
                         AND ( a.批次 LIKE ( CASE
                                             WHEN @pc = ''0'' THEN ''%''
                                             ELSE ''%'' + @pc + ''%''
                                           END ) )
                         AND CASE
                               WHEN @baOK = ''0''
                                    AND b.账号 IS NULL THEN ''0''
                               WHEN @baOK = ''1''
                                    AND NOT b.账号 IS NULL THEN ''1''
                             END = @baOK
                  ORDER  BY [银行]
              END
        END
  END
GO', NULL, 696, N'060609', N'1', N'1', N'0', N'1', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (566, 304, N'.可疑账户相关', N'', N'', N'CREATE PROCEDURE      AS
BEGIN

END
GO', NULL, 680, N'0607', N'1', N'1', N'0', N'1', N'1', NULL)
INSERT [dbo].[X_Menus] ([t_id], [t_parent_id], [t_name], [t_memo], [t_para], [t_proc], [t_right], [t_order], [t_sort], [t_table1], [t_table2], [t_auto], [t_hide], [t_type], [isClass]) VALUES (587, 65, N'模型中文名称', N'功能描述', N'@参数提示!S或N或D（参数类型）:字符串或数字或日期@参数提示!S或N或D（参数类型）:字符串或数字或日期', N'-- 无参数分析模型模板例
-- 1.各模型名称不能重复
-- 2.参数个数应与“参数信息”处的的个数和类型相一致
-- 3.可复制粘贴至 SSMS(SQL Server Management Studio)中调试运行
CREATE PROCEDURE 模型英文名称 WITH ENCRYPTION AS
BEGIN

END
GO

-- 有参数分析模型模板例
-- 1.各模型名称不能重复
-- 2.参数个数应与“参数信息”处的的个数和类型相一致(代码参数前以@开头)
-- 3.可复制粘贴至 SSMS(SQL Server Management Studio)中调试运行
CREATE PROCEDURE 模型英文名称(@str Varchar(40),@begin_date Char(8),@num Int ) WITH ENCRYPTION AS
BEGIN

END
GO

-- 返回字符串函数模板例（“参数信息”处必须为空）
CREATE FUNCTION 函数英文名称(@str VARCHAR(MAX),@split VARCHAR(10))
RETURNS Varchar(8) WITH ENCRYPTION
    AS
BEGIN


  RETURN
END
GO

-- 返回数量函数模板例（“参数信息”处必须为空）
CREATE FUNCTION 函数英文名称(@str VARCHAR(MAX),@split VARCHAR(10))
RETURNS Varchar(8) WITH ENCRYPTION
    AS
BEGIN


  RETURN
END
GO

-- 返回表函数模板（“参数信息”处必须为空）
CREATE FUNCTION 函数英文名称(@str VARCHAR(MAX),@split VARCHAR(10))
RETURNS TABLE WITH ENCRYPTION
    AS
BEGIN

  RETURN (Select * ……)
END
GO

', NULL, NULL, N'010103', N'1', N'1', N'0', N'1', N'1', NULL)
GO
ALTER TABLE [dbo].[X_Menus] ADD  CONSTRAINT [DF_X_Menus_t_table1]  DEFAULT ((1)) FOR [t_table1]
GO
ALTER TABLE [dbo].[X_Menus] ADD  CONSTRAINT [DF_X_Menus_t_table2]  DEFAULT ((1)) FOR [t_table2]
GO
ALTER TABLE [dbo].[X_Menus] ADD  CONSTRAINT [DF_X_Menus_t_auto]  DEFAULT ((0)) FOR [t_auto]
GO
ALTER TABLE [dbo].[X_Menus] ADD  CONSTRAINT [DF_X_Menus_t_hide]  DEFAULT ((0)) FOR [t_hide]
GO
