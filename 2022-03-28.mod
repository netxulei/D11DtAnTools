ADBS  �B �  ��    f d Q r y E x p o r t     " X _ m e n u s "            	 2   �
�    t _ i d     t _ i d        
             t _ i d  
   ��    t _ p a r e n t _ i d     t _ p a r e n t _ i d        
             t _ p a r e n t _ i d  
   ��    t _ n a m e     t _ n a m e        2             t _ n a m e  2    2   ��    t _ m e m o     t _ m e m o        �             t _ m e m o  �    �   ��    t _ p a r a     t _ p a r a        ,            t _ p a r a  ,   ,  ��    t _ p r o c     t _ p r o c                 t _ p r o c  �����    t _ r i g h t     t _ r i g h t                     t _ r i g h t         ��    t _ o r d e r     t _ o r d e r        
             t _ o r d e r  
   ��    t _ s o r t     t _ s o r t  	                   t _ s o r t         ��    t _ a u t o     t _ a u t o  
                    t _ a u t o         ��    t _ h i d e     t _ h i d e                      t _ h i d e         ��    t _ t y p e     t _ t y p e                      t _ t y p e         ��    i s C l a s s     i s C l a s s                      i s C l a s s         �������� !     �"  �           �������Դ�����Բ���    ���ϵͳ�Ƿ����ӱ����������              01	    0
    1    1    1 *   CREATE PROCEDURE      AS
BEGIN

END
GO��� !    �"  A    �      ��λ�˻�                  0101	    0
    1    1    1 `   CREATE PROCEDURE P_tmp  WITH ENCRYPTION AS
begin
select '��Ҫʱ�������߼�' ��ʾ��Ϣ
end
go��� !    �"  �   A       ��λ�˻��������ݵ������ L   �鿴����Դ����������й�������Ϣ���˻��������˺���Ψһ��ʶ��������״̬���˻�             010101	    0
    1    1    0 �?  CREATE PROCEDURE [P_DW_Date_OK]  WITH ENCRYPTION AS
BEGIN
--CREATE PROCEDURE P_DW_Date_OK  WITH ENCRYPTION AS
--BEGIN
DECLARE @s_tb_rhzh_dw VARCHAR(80),@s_tb_rhzh_dw1 VARCHAR(80),@s_tb_rhzh_dw2 VARCHAR(80)--�����˻�
DECLARE @s_tb_rhzh_dw_jb VARCHAR(80),@s_tb_rhzh_dw_jb1 VARCHAR(80),@s_tb_rhzh_dw_jb2 VARCHAR(80)--����
DECLARE @s_tb_rhzh_dw_yb VARCHAR(80),@s_tb_rhzh_dw_yb1 VARCHAR(80),@s_tb_rhzh_dw_yb2 VARCHAR(80)--һ��
DECLARE @s_tb_rhzh_dw_ys VARCHAR(80),@s_tb_rhzh_dw_ys1 VARCHAR(80),@s_tb_rhzh_dw_ys2 VARCHAR(80)--Ԥ��
DECLARE @s_tb_rhzh_dw_fys VARCHAR(80),@s_tb_rhzh_dw_fys1 VARCHAR(80),@s_tb_rhzh_dw_fys2 VARCHAR(80)--��Ԥ��
DECLARE @s_tb_rhzh_dw_ls VARCHAR(80),@s_tb_rhzh_dw_ls1 VARCHAR(80),@s_tb_rhzh_dw_ls2 VARCHAR(80)--��ʱ
DECLARE @s_tb_rhzh_dw_fls VARCHAR(80),@s_tb_rhzh_dw_fls1 VARCHAR(80),@s_tb_rhzh_dw_fls2 VARCHAR(80)--����ʱ
DECLARE @s_tb_rhzh_dw_ts VARCHAR(80),@s_tb_rhzh_dw_ts1 VARCHAR(80),@s_tb_rhzh_dw_ts2 VARCHAR(80)--����
-------------------------------------
DECLARE @s_tb_log VARCHAR(80),@s_tb_log1 VARCHAR(80),@s_tb_log2 VARCHAR(80)--����Log
DECLARE @s_tb_log_jb VARCHAR(80),@s_tb_log_jb1 VARCHAR(80),@s_tb_log_jb2 VARCHAR(80)--����
DECLARE @s_tb_log_yb VARCHAR(80),@s_tb_log_yb1 VARCHAR(80),@s_tb_log_yb2 VARCHAR(80)--һ��
DECLARE @s_tb_log_ys VARCHAR(80),@s_tb_log_ys1 VARCHAR(80),@s_tb_log_ys2 VARCHAR(80)--Ԥ��
DECLARE @s_tb_log_fys VARCHAR(80),@s_tb_log_fys1 VARCHAR(80),@s_tb_log_fys2 VARCHAR(80)--��Ԥ��
DECLARE @s_tb_log_ls VARCHAR(80),@s_tb_log_ls1 VARCHAR(80),@s_tb_log_ls2 VARCHAR(80)--��ʱ
DECLARE @s_tb_log_fls VARCHAR(80),@s_tb_log_fls1 VARCHAR(80),@s_tb_log_fls2 VARCHAR(80)--����ʱ
DECLARE @s_tb_log_ts VARCHAR(80),@s_tb_log_ts1 VARCHAR(80),@s_tb_log_ts2 VARCHAR(80)--����ʱ
-------------------------------
DECLARE @s_tb_shzh_dw VARCHAR(80),@s_tb_shzh_dw1 VARCHAR(80),@s_tb_shzh_dw2 VARCHAR(80)--�����˻�
DECLARE @s_tb_shzh_dw_jb VARCHAR(80),@s_tb_shzh_dw_jb1 VARCHAR(80),@s_tb_shzh_dw_jb2 VARCHAR(80)--����
DECLARE @s_tb_shzh_dw_yb VARCHAR(80),@s_tb_shzh_dw_yb1 VARCHAR(80),@s_tb_shzh_dw_yb2 VARCHAR(80)--һ��
DECLARE @s_tb_shzh_dw_zy VARCHAR(80),@s_tb_shzh_dw_zy1 VARCHAR(80),@s_tb_shzh_dw_zy2 VARCHAR(80)--ר��
DECLARE @s_tb_shzh_dw_ls VARCHAR(80),@s_tb_shzh_dw_ls1 VARCHAR(80),@s_tb_shzh_dw_ls2 VARCHAR(80)--��ʱ
DECLARE @s_tb_shzh_dw_qt VARCHAR(80),@s_tb_shzh_dw_qt1 VARCHAR(80),@s_tb_shzh_dw_qt2 VARCHAR(80)--����
DECLARE @s_tb_shzh_dw_not VARCHAR(80),@s_tb_shzh_dw_not1 VARCHAR(80),@s_tb_shzh_dw_not2 VARCHAR(80)--���Ϲ�
----------------
DECLARE @s_tb_shjy_dw VARCHAR(80),@s_tb_shjy_dw1 VARCHAR(80),@s_tb_shjy_dw2 VARCHAR(80)--���н���
DECLARE @s_tb_yeb VARCHAR(80),@s_tb_yeb1 VARCHAR(80),@s_tb_yeb2 VARCHAR(80)--��������

----------------------------------------------
SET @s_tb_rhzh_dw='���е�λ�˻����ݣ��ܣ�'
SET @s_tb_rhzh_dw_jb='���е�λ�˻����ݣ�������'
SET @s_tb_rhzh_dw_yb='���е�λ�˻����ݣ�һ�㣩'
SET @s_tb_rhzh_dw_ys='���е�λ�˻����ݣ�Ԥ�㣩'
SET @s_tb_rhzh_dw_fys='���е�λ�˻����ݣ���Ԥ�㣩'
SET @s_tb_rhzh_dw_ls='���е�λ�˻����ݣ���ʱ��'
SET @s_tb_rhzh_dw_fls='���е�λ�˻����ݣ�����ʱ��'
SET @s_tb_rhzh_dw_ts='���е�λ�˻����ݣ����⣩'
-----------------------------------------
SET @s_tb_log='����log���ݣ��ܣ�'
SET @s_tb_log_jb='����log���ݣ�������'
SET @s_tb_log_yb='����log���ݣ�һ�㣩'
SET @s_tb_log_ys='����log���ݣ�Ԥ�㣩'
SET @s_tb_log_fys='����log���ݣ���Ԥ�㣩'
SET @s_tb_log_ls='����log���ݣ���ʱ��'
SET @s_tb_log_fls='����log���ݣ�����ʱ��'
SET @s_tb_log_ts='����log���ݣ����⣩'
--------------------------------------------
SET @s_tb_shzh_dw='���е�λ�˻����ݣ��ܣ�'
SET @s_tb_shzh_dw_jb='���е�λ�˻����ݣ�������'
SET @s_tb_shzh_dw_yb='���е�λ�˻����ݣ�һ�㣩'
SET @s_tb_shzh_dw_zy='���е�λ�˻����ݣ�ר�ã�'
SET @s_tb_shzh_dw_ls='���е�λ�˻����ݣ���ʱ��'
SET @s_tb_shzh_dw_qt='���е�λ�˻����ݣ�������'
SET @s_tb_shzh_dw_not='���е�λ�˻����ݣ����Ϲ棩'

--------------------------------------
IF Object_id(N'tb_rhzh_dw', N'U') IS NOT NULL
  BEGIN
    SET @s_tb_rhzh_dw1=(SELECT '������' + Min(��������) + '��' + Max(��������) + '--������'
                               + Min(��������) + '��' + Max(��������)
                        FROM   tb_rhzh_dw)
    SET @s_tb_rhzh_dw2=(SELECT Count(DISTINCT �˺�)
                        FROM   tb_rhzh_dw)
    SET @s_tb_rhzh_dw_jb1=(SELECT '������' + Min(��������) + '��' + Max(��������) + '--������'
                                  + Min(��������) + '��' + Max(��������)
                           FROM   tb_rhzh_dw
                           WHERE  �˻����� = '����')
    SET @s_tb_rhzh_dw_jb2=(SELECT Count(DISTINCT �˺�)
                           FROM   tb_rhzh_dw
                           WHERE  �˻����� = '����')
    SET @s_tb_rhzh_dw_yb1=(SELECT '������' + Min(��������) + '��' + Max(��������) + '--������'
                                  + Min(��������) + '��' + Max(��������)
                           FROM   tb_rhzh_dw
                           WHERE  �˻����� = 'һ��')
    SET @s_tb_rhzh_dw_yb2=(SELECT Count(DISTINCT �˺�)
                           FROM   tb_rhzh_dw
                           WHERE  �˻����� = 'һ��')
    SET @s_tb_rhzh_dw_ls1=(SELECT '������' + Min(��������) + '��' + Max(��������) + '--������'
                                  + Min(��������) + '��' + Max(��������)
                           FROM   tb_rhzh_dw
                           WHERE  �˻����� = '��ʱ')
    SET @s_tb_rhzh_dw_ls2=(SELECT Count(DISTINCT �˺�)
                           FROM   tb_rhzh_dw
                           WHERE  �˻����� = '��ʱ')
    SET @s_tb_rhzh_dw_fls1=(SELECT '������' + Min(��������) + '��' + Max(��������) + '--������'
                                   + Min(��������) + '��' + Max(��������)
                            FROM   tb_rhzh_dw
                            WHERE  �˻����� = '����ʱ')
    SET @s_tb_rhzh_dw_fls2=(SELECT Count(DISTINCT �˺�)
                            FROM   tb_rhzh_dw
                            WHERE  �˻����� = '����ʱ')
    SET @s_tb_rhzh_dw_ys1=(SELECT '������' + Min(��������) + '��' + Max(��������) + '--������'
                                  + Min(��������) + '��' + Max(��������)
                           FROM   tb_rhzh_dw
                           WHERE  �˻����� = 'Ԥ��')
    SET @s_tb_rhzh_dw_ys2=(SELECT Count(DISTINCT �˺�)
                           FROM   tb_rhzh_dw
                           WHERE  �˻����� = 'Ԥ��')
    SET @s_tb_rhzh_dw_fys1=(SELECT '������' + Min(��������) + '��' + Max(��������) + '--������'
                                   + Min(��������) + '��' + Max(��������)
                            FROM   tb_rhzh_dw
                            WHERE  �˻����� = '��Ԥ��')
    SET @s_tb_rhzh_dw_fys2=(SELECT Count(DISTINCT �˺�)
                            FROM   tb_rhzh_dw
                            WHERE  �˻����� = '��Ԥ��')
    SET @s_tb_rhzh_dw_ts1=(SELECT '������' + Min(��������) + '��' + Max(��������) + '--������'
                                  + Min(��������) + '��' + Max(��������)
                           FROM   tb_rhzh_dw
                           WHERE  �˻����� = '����')
    SET @s_tb_rhzh_dw_ts2=(SELECT Count(DISTINCT �˺�)
                           FROM   tb_rhzh_dw
                           WHERE  �˻����� = '����')
  END
ELSE
  BEGIN
    SET @s_tb_rhzh_dw1='�����е�λ�˻�����δ����'
  END

-----------------------------------------------------------------------
IF Object_id(N'tb_log', N'U') IS NOT NULL
  BEGIN
    SET @s_tb_log1=(SELECT Min(LEFT(ҵ����ʱ��, 8)) + '��'
                           + Max(LEFT(ҵ����ʱ��, 8))
                    FROM   tb_log)
    SET @s_tb_log2=(SELECT Count(DISTINCT �˺�)
                    FROM   tb_log)
    SET @s_tb_log_jb1=(SELECT Min(LEFT(ҵ����ʱ��, 8)) + '��'
                              + Max(LEFT(ҵ����ʱ��, 8))
                       FROM   tb_log
                       WHERE  ҵ������ = '������������˻�')
    SET @s_tb_log_jb2=(SELECT Count(DISTINCT �˺�)
                       FROM   tb_log
                       WHERE  ҵ������ = '������������˻�')
    SET @s_tb_log_yb1=(SELECT Min(LEFT(ҵ����ʱ��, 8)) + '��'
                              + Max(LEFT(ҵ����ʱ��, 8))
                       FROM   tb_log
                       WHERE  ҵ������ = '����һ���˻�')
    SET @s_tb_log_yb2=(SELECT Count(DISTINCT �˺�)
                       FROM   tb_log
                       WHERE  ҵ������ = '����һ���˻�')
    SET @s_tb_log_fys1=(SELECT Min(LEFT(ҵ����ʱ��, 8)) + '��'
                               + Max(LEFT(ҵ����ʱ��, 8))
                        FROM   tb_log
                        WHERE  ҵ������ = '������Ԥ�㵥λר�ô���˻�')
    SET @s_tb_log_fys2=(SELECT Count(DISTINCT �˺�)
                        FROM   tb_log
                        WHERE  ҵ������ = '������Ԥ�㵥λר�ô���˻�')
    SET @s_tb_log_ls1=(SELECT Min(LEFT(ҵ����ʱ��, 8)) + '��'
                              + Max(LEFT(ҵ����ʱ��, 8))
                       FROM   tb_log
                       WHERE  ҵ������ = '������ʱ������ʱ��')
    SET @s_tb_log_ls2=(SELECT Count(DISTINCT �˺�)
                       FROM   tb_log
                       WHERE  ҵ������ = '������ʱ������ʱ��')
    SET @s_tb_log_fls1=(SELECT Min(LEFT(ҵ����ʱ��, 8)) + '��'
                               + Max(LEFT(ҵ����ʱ��, 8))
                        FROM   tb_log
                        WHERE  ҵ������ = '��������ʱ������ʱ��')
    SET @s_tb_log_fls2=(SELECT Count(DISTINCT �˺�)
                        FROM   tb_log
                        WHERE  ҵ������ = '��������ʱ������ʱ��')
  END
ELSE
  BEGIN
    SET @s_tb_log1='������log����δ����'
  END

---------------------------------------------------
IF Object_id(N'tb_shzh_dw', N'U') IS NOT NULL
  BEGIN
    SET @s_tb_shzh_dw1=(SELECT '������' + Min(��������) + '��' + Max(��������) + '--������'
                               + Min(��������) + '��' + Max(��������)
                        FROM   tb_shzh_dw)
    SET @s_tb_shzh_dw2=(SELECT Count(DISTINCT �˺�)
                        FROM   tb_shzh_dw)
    SET @s_tb_shzh_dw_jb1=(SELECT '������' + Min(��������) + '��' + Max(��������) + '--������'
                                  + Min(��������) + '��' + Max(��������)
                           FROM   tb_shzh_dw
                           WHERE  �˻����� = '����')
    SET @s_tb_shzh_dw_jb2=(SELECT Count(DISTINCT �˺�)
                           FROM   tb_shzh_dw
                           WHERE  �˻����� = '����')
    SET @s_tb_shzh_dw_yb1=(SELECT '������' + Min(��������) + '��' + Max(��������) + '--������'
                                  + Min(��������) + '��' + Max(��������)
                           FROM   tb_shzh_dw
                           WHERE  �˻����� = 'һ��')
    SET @s_tb_shzh_dw_yb2=(SELECT Count(DISTINCT �˺�)
                           FROM   tb_shzh_dw
                           WHERE  �˻����� = 'һ��')
    SET @s_tb_shzh_dw_zy1=(SELECT '������' + Min(��������) + '��' + Max(��������) + '--������'
                                  + Min(��������) + '��' + Max(��������)
                           FROM   tb_shzh_dw
                           WHERE  �˻����� = 'ר��')
    SET @s_tb_shzh_dw_zy2=(SELECT Count(DISTINCT �˺�)
                           FROM   tb_shzh_dw
                           WHERE  �˻����� = 'ר��')
    SET @s_tb_shzh_dw_ls1=(SELECT '������' + Min(��������) + '��' + Max(��������) + '--������'
                                  + Min(��������) + '��' + Max(��������)
                           FROM   tb_shzh_dw
                           WHERE  �˻����� = '��ʱ')
    SET @s_tb_shzh_dw_ls2=(SELECT Count(DISTINCT �˺�)
                           FROM   tb_shzh_dw
                           WHERE  �˻����� = '��ʱ')
    SET @s_tb_shzh_dw_qt1=(SELECT '������' + Min(��������) + '��' + Max(��������) + '--������'
                                  + Min(��������) + '��' + Max(��������)
                           FROM   tb_shzh_dw
                           WHERE  �˻����� = '����')
    SET @s_tb_shzh_dw_qt2=(SELECT Count(DISTINCT �˺�)
                           FROM   tb_shzh_dw
                           WHERE  �˻����� = '����')
    SET @s_tb_shzh_dw_not1=(SELECT '������' + Min(��������) + '��' + Max(��������) + '--������'
                                   + Min(��������) + '��' + Max(��������)
                            FROM   tb_shzh_dw
                            WHERE  NOT �˻����� IN ( '����', 'һ��', 'ר��', '��ʱ', '����' ))
    SET @s_tb_shzh_dw_not2=(SELECT Count(DISTINCT �˺�)
                            FROM   tb_shzh_dw
                            WHERE  NOT �˻����� IN ( '����', 'һ��', 'ר��', '��ʱ', '����' ))
  END
ELSE
  BEGIN
    SET @s_tb_shzh_dw1='�����е�λ�˻�����δ����'
  END

--------------------------------------------
SET @s_tb_shjy_dw='���н������ݣ��ܣ�'

IF Object_id(N'tb_shjy_dw', N'U') IS NOT NULL
  BEGIN
    SET @s_tb_shjy_dw1=(SELECT Min(��������) + '��' + Max(��������)
                        FROM   tb_shjy_dw)
    SET @s_tb_shjy_dw2=(SELECT Count(DISTINCT �˺�)
                        FROM   tb_shjy_dw)
  END
ELSE
  BEGIN
    SET @s_tb_shjy_dw1='�����н�������δ����'
  END

SET @s_tb_yeb='�����������ݣ��ܣ�'

IF Object_id(N'tb_yeb', N'U') IS NOT NULL
  BEGIN
    SET @s_tb_yeb1=(SELECT Stuff((SELECT DISTINCT ',' + �������
                                  FROM   tb_yeb
                                  FOR XML PATH('')), 1, 1, ''))
    SET @s_tb_yeb2=(SELECT Count(DISTINCT �˺�)
                    FROM   tb_yeb)
  END
ELSE
  BEGIN
    SET @s_tb_yeb1='��������������δ����'
  END

---------------------------------------------------
SELECT @s_tb_rhzh_dw ����Դ,
       @s_tb_rhzh_dw1 ʱ�䷶Χ,
       @s_tb_rhzh_dw2 ����
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
SELECT '------------------------',
       '------------------------------------',
       '--------------'
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
SELECT '------------------------',
       '------------------------------------',
       '--------------'
UNION ALL
SELECT @s_tb_shzh_dw,
       @s_tb_shzh_dw1,
       @s_tb_shzh_dw2 --�����˻�
UNION ALL
SELECT @s_tb_shzh_dw_jb,
       @s_tb_shzh_dw_jb1,
       @s_tb_shzh_dw_jb2 --����
UNION ALL
SELECT @s_tb_shzh_dw_yb,
       @s_tb_shzh_dw_yb1,
       @s_tb_shzh_dw_yb2 --һ��
UNION ALL
SELECT @s_tb_shzh_dw_zy,
       @s_tb_shzh_dw_zy1,
       @s_tb_shzh_dw_zy2 --ר��
UNION ALL
SELECT @s_tb_shzh_dw_ls,
       @s_tb_shzh_dw_ls1,
       @s_tb_shzh_dw_ls2 --��ʱ
UNION ALL
SELECT @s_tb_shzh_dw_qt,
       @s_tb_shzh_dw_qt1,
       @s_tb_shzh_dw_qt2 --����
UNION ALL
SELECT @s_tb_shzh_dw_not,
       @s_tb_shzh_dw_not1,
       @s_tb_shzh_dw_not2 --���Ϲ�
-----------------------------------------------
UNION ALL
SELECT '------------------------',
       '------------------------------------',
       '--------------'
UNION ALL
SELECT @s_tb_shjy_dw,
       @s_tb_shjy_dw1,
       @s_tb_shjy_dw2
-----------------------------------------------
UNION ALL
SELECT '------------------------',
       '------------------------------------',
       '--------------'
UNION ALL
SELECT @s_tb_yeb,
       @s_tb_yeb1,
       @s_tb_yeb2 
END
GO��� !    �"  s    A       �˻�ϵͳ�����㵥λ�˻��������    �˻�ϵͳ�˻��������             010102	    0
    1    1 v  CREATE PROCEDURE P_rhzh_cnt
WITH ENCRYPTION
AS
  BEGIN
    IF Object_id(N'tb_rhzh_dw', N'U') IS NOT NULL
      BEGIN
        SELECT DISTINCT a.���л�������,
                        Max(b.���л�������) ������,
                        Count(*) �˻������ϼ�,
                        Min(��������) + '��' + Max(��������) �������ڷ�Χ,
                        Sum(CASE
                              WHEN ( �˻����� = '����' ) THEN 1
                              ELSE 0
                            END) ����������,
                        Sum(CASE
                              WHEN ( �˻����� = 'һ��' ) THEN 1
                              ELSE 0
                            END) һ�㻧����,
                        Sum(CASE
                              WHEN ( �˻����� = 'Ԥ��' ) THEN 1
                              ELSE 0
                            END) Ԥ��ר������,
                        Sum(CASE
                              WHEN ( �˻����� = '��Ԥ��' ) THEN 1
                              ELSE 0
                            END) ��Ԥ��ר������,
                        Sum(CASE
                              WHEN ( �˻����� = '��ʱ' ) THEN 1
                              ELSE 0
                            END) ��ʱ������,
                        Sum(CASE
                              WHEN ( �˻����� = '����ʱ' ) THEN 1
                              ELSE 0
                            END) ����ʱ������ʱ������,
                        Sum(CASE
                              WHEN ( �˻����� = '����' ) THEN 1
                              ELSE 0
                            END) ����ר������
        FROM   tb_rhzh_dw a
               LEFT JOIN v_bank b
                      ON a.���л������� = b.���б�������
        GROUP  BY ���л�������
      END
    ELSE
      BEGIN
        SELECT '���˻�����ϵͳ��λ�˻�����δ����' ע��
      END
  END
GO ��� !    �"  �   A       �˻�ϵͳ�����㵥λ�˻���־���    �˻�����ϵͳ��־�������             010103	    0
    1    1 k  CREATE PROCEDURE P_log_cnt
WITH ENCRYPTION
AS
  BEGIN
    IF Object_id(N'tb_log', N'U') IS NOT NULL
      BEGIN
        SELECT DISTINCT a.���л�������,
                        Max(b.���л�������) ������,
                        Count(*) ��־�����ϼ�,
                        LEFT(Min(ҵ����ʱ��), 8) + '��'
                        + LEFT(Max(ҵ����ʱ��), 8) ��־���ڷ�Χ,
                        Sum(CASE
                              WHEN ( ҵ������ = '������������˻�' ) THEN 1
                              ELSE 0
                            END)������������־����,
                        Sum(CASE
                              WHEN ( ҵ������ = '������ʱ������ʱ����˻�' ) THEN 1
                              ELSE 0
                            END)������ʱ����־����,
                        Sum(CASE
                              WHEN ( ҵ������ = '��������ʱ������ʱ����˻�' ) THEN 1
                              ELSE 0
                            END)��������ʱ����־����,
                        Sum(CASE
                              WHEN ( ҵ������ = '����Ԥ�㵥λר�ô���˻�' ) THEN 1
                              ELSE 0
                            END) ����Ԥ�㻧��־����,
                        Sum(CASE
                              WHEN ( ҵ������ = '������Ԥ�㵥λר�ô���˻�' ) THEN 1
                              ELSE 0
                            END) ������Ԥ�㻧��־����,
                        Sum(CASE
                              WHEN ( ҵ������ = '����һ���˻�' ) THEN 1
                              ELSE 0
                            END)����һ���˻���־����
        FROM   tb_log a
               LEFT JOIN v_bank b
                      ON a.���л������� = b.���б�������
        GROUP  BY ���л�������
      END
    ELSE
      BEGIN
        SELECT '���˻�����ϵͳ��־����δ����' ע��
      END
  END
GO 
��� !    �"  �   A       ���е�λ�˻��ֶ��ṩ���    ��ҵ���е�λ�˻��������      
       010104	    0
    1    1 �.  CREATE PROCEDURE Pd_shzh_num
WITH ENCRYPTION
AS
  BEGIN
    SELECT ' -----�˻�����-----' ��Ϣ����,
           Cast(Count(*) AS VARCHAR(20)) ����,
           '' ˵��
    FROM   tb_shzh_dw
    UNION
    SELECT '1. ---�˻�����---' ��Ϣ����,
           '' ����,
           '��������Ϣ�������������˻��������޷�ʵʩ' ˵��
    FROM   tb_shzh_dw
    UNION
    SELECT '1.1 �����˻�' ��Ϣ����,
           Cast(Count(*) AS VARCHAR(20)) ����,
           CASE
             WHEN Count(*) = 0 THEN 'û�л����˻����ݿ���������'
             ELSE ''
           END ˵��
    FROM   tb_shzh_dw
    WHERE  �˻����� = '����'
    UNION
    SELECT '1.2 һ���˻�' ��Ϣ����,
           Cast(Count(*) AS VARCHAR(20)) ����,
           CASE
             WHEN Count(*) = 0 THEN 'û��һ���˻����ݿ���������'
             ELSE ''
           END ˵��
    FROM   tb_shzh_dw
    WHERE  �˻����� = 'һ��'
    UNION
    SELECT '1.3 ר���˻�' ��Ϣ����,
           Cast(Count(*) AS VARCHAR(20)) ����,
           CASE
             WHEN Count(*) = 0 THEN 'û��ר���˻����ݿ���������'
             ELSE ''
           END ˵��
    FROM   tb_shzh_dw
    WHERE  �˻����� = 'ר��'
    UNION
    SELECT '1.4 ��ʱ�˻�' ��Ϣ����,
           Cast(Count(*) AS VARCHAR(20)) ����,
           CASE
             WHEN Count(*) = 0 THEN 'û����ʱ�˻����ݿ���������'
             ELSE ''
           END ˵��
    FROM   tb_shzh_dw
    WHERE  �˻����� = '��ʱ'
    UNION
    SELECT '1.5 ��������' ��Ϣ����,
           Cast(Count(*) AS VARCHAR(20)) ����,
           CASE
             WHEN Count(*) > 0 THEN '���������ͽ϶ཫӰ����'
             ELSE ''
           END ˵��
    FROM   tb_shzh_dw
    WHERE  �˻����� = '����'
    UNION
    SELECT '1.6 ���������ݹ淶' ��Ϣ����,
           Cast(Count(*) AS VARCHAR(20)) ����,
           CASE
             WHEN Count(*) > 0 THEN '�������淶���ݽ϶ཫӰ����'
             ELSE ''
           END ˵��
    FROM   tb_shzh_dw
    WHERE  �˻����� IS NULL
            OR ( NOT �˻����� IS NULL
                 AND Len(�˻�����) = 0 )
            OR ( �˻����� <> '����'
                 AND �˻����� <> 'һ��'
                 AND �˻����� <> 'ר��'
                 AND �˻����� <> '��ʱ'
                 AND �˻����� <> '����' )
    UNION
    SELECT '2.---�˻�״̬---' ��Ϣ����,
           '---' ����,
           '�˻�״̬����������������Ӱ����' ˵��
    FROM   tb_shzh_dw
    UNION
    SELECT '2.1 ����' ��Ϣ����,
           Cast(Count(*) AS VARCHAR(20)) ����,
           CASE
             WHEN Count(*) = 0 THEN '��Ϊ0���ݿ���������'
             ELSE ''
           END ˵��
    FROM   tb_shzh_dw
    WHERE  �˻�״̬ = '����'
    UNION
    SELECT '2.2 δ����' ��Ϣ����,
           Cast(Count(*) AS VARCHAR(20)) ����,
           '' ˵��
    FROM   tb_shzh_dw
    WHERE  �˻�״̬ = 'δ����'
    UNION
    SELECT '2.3 ֻ�ղ���' ��Ϣ����,
           Cast(Count(*) AS VARCHAR(20)) ����,
           '' ˵��
    FROM   tb_shzh_dw
    WHERE  �˻�״̬ = 'ֻ�ղ���'
    UNION
    SELECT '2.4 ���ղ���' ��Ϣ����,
           Cast(Count(*) AS VARCHAR(20)) ����,
           '' ˵��
    FROM   tb_shzh_dw
    WHERE  �˻�״̬ = '���ղ���'
    UNION
    SELECT '2.5 �Ѷ���' ��Ϣ����,
           Cast(Count(*) AS VARCHAR(20)) ����,
           '' ˵��
    FROM   tb_shzh_dw
    WHERE  �˻�״̬ = '����'
    UNION
    SELECT '2.6 ��ע��' ��Ϣ����,
           Cast(Count(*) AS VARCHAR(20)) ����,
           CASE
             WHEN Count(*) = 0 THEN '��Ϊ0���ݿ���������'
             ELSE ''
           END ˵��
    FROM   tb_shzh_dw
    WHERE  �˻�״̬ = 'ע��'
    UNION
    SELECT '2.7 ����' ��Ϣ����,
           Cast(Count(*) AS VARCHAR(20)) ����,
           CASE
             WHEN Count(*) > 0 THEN '������״̬�϶ཫӰ����'
             ELSE ''
           END ˵��
    FROM   tb_shzh_dw
    WHERE  �˻�״̬ = '����'
    UNION
    SELECT '2.8 ���������ݹ淶' ��Ϣ����,
           Cast(Count(*) AS VARCHAR(20)) ����,
           CASE
             WHEN Count(*) > 0 THEN '�������淶���ݽ϶ཫӰ����'
             ELSE ''
           END ˵��
    FROM   tb_shzh_dw
    WHERE  �˻�״̬ IS NULL
            OR ( NOT �˻�״̬ IS NULL
                 AND Len(�˻�״̬) = 0 )
            OR ( �˻�״̬ <> '����'
                 AND �˻�״̬ <> 'δ����'
                 AND �˻�״̬ <> 'ֻ�ղ���'
                 AND �˻�״̬ <> '���ղ���'
                 AND �˻�״̬ <> '����'
                 AND �˻�״̬ <> 'ע��'
                 AND �˻�״̬ <> '����' )
    UNION
    SELECT '3.---���������˻�����֤������---' ��Ϣ����,
           '---' ����,
           '�����������˻�����֤������δ�ṩ�򲻷��Ϲ淶��Ӱ��ʵ���Ƽ��' ˵��
    FROM   tb_shzh_dw
    UNION
    SELECT '3.1 ��������֤' ��Ϣ����,
           Cast(Count(*) AS VARCHAR(20)) ����,
           CASE
             WHEN Count(*) = 0 THEN '��Ϊ0���ݿ���������'
             ELSE ''
           END ˵��
    FROM   tb_shzh_dw
    WHERE  [���˴���������֤������] = '����֤'
    UNION
    SELECT '3.2 ��ʱ��������֤' ��Ϣ����,
           Cast(Count(*) AS VARCHAR(20)) ����,
           '' ˵��
    FROM   tb_shzh_dw
    WHERE  [���˴���������֤������] = '��ʱ����֤'
    UNION
    SELECT '3.3 ���ڲ�' ��Ϣ����,
           Cast(Count(*) AS VARCHAR(20)) ����,
           '' ˵��
    FROM   tb_shzh_dw
    WHERE  [���˴���������֤������] = '���ڲ�'
    UNION
    SELECT '3.4 ���˻��侯����֤' ��Ϣ����,
           Cast(Count(*) AS VARCHAR(20)) ����,
           '' ˵��
    FROM   tb_shzh_dw
    WHERE  [���˴���������֤������] = '���˻��侯����֤'
    UNION
    SELECT '3.5 ���������' ��Ϣ����,
           Cast(Count(*) AS VARCHAR(20)) ����,
           '' ˵��
    FROM   tb_shzh_dw
    WHERE  [���˴���������֤������] = '���������'
    UNION
    SELECT '3.6 �۰�̨���������ڵػ��½ͨ��֤' ��Ϣ����,
           Cast(Count(*) AS VARCHAR(20)) ����,
           '' ˵��
    FROM   tb_shzh_dw
    WHERE  [���˴���������֤������] = '�۰�̨ͨ��֤'
    UNION
    SELECT '3.7 ��������þ���֤' ��Ϣ����,
           Cast(Count(*) AS VARCHAR(20)) ����,
           '' ˵��
    FROM   tb_shzh_dw
    WHERE  [���˴���������֤������] = '��������þ���֤'
    UNION
    SELECT '3.8 �۰�̨�����ס֤' ��Ϣ����,
           Cast(Count(*) AS VARCHAR(20)) ����,
           '' ˵��
    FROM   tb_shzh_dw
    WHERE  [���˴���������֤������] = '�۰�̨�����ס֤'
    UNION
    SELECT '3.9 �й�����' ��Ϣ����,
           Cast(Count(*) AS VARCHAR(20)) ����,
           '' ˵��
    FROM   tb_shzh_dw
    WHERE  [���˴���������֤������] = '�й�����'
    UNION
    SELECT '3.10 ������뾳ͨ��֤' ��Ϣ����,
           Cast(Count(*) AS VARCHAR(20)) ����,
           '' ˵��
    FROM   tb_shzh_dw
    WHERE  [���˴���������֤������] = '������뾳ͨ��֤'
    UNION
    SELECT '3.11 ���������������Ч֤��' ��Ϣ����,
           Cast(Count(*) AS VARCHAR(20)) ����,
           '' ˵��
    FROM   tb_shzh_dw
    WHERE  [���˴���������֤������] = '����'
    UNION
    SELECT '3.12 ���������ݹ淶' ��Ϣ����,
           Cast(Count(*) AS VARCHAR(20)) ����,
           CASE
             WHEN Count(*) > 0 THEN '���������������ṩ���⣬����С����Ϊ�������'
             ELSE ''
           END ˵��
    FROM   tb_shzh_dw
    WHERE  [���˴���������֤������] IS NULL
            OR Len([���˴���������֤������]) = 0
            OR ( [���˴���������֤������] <> '����֤'
                 AND [���˴���������֤������] <> '��ʱ����֤'
                 AND [���˴���������֤������] <> '���ڲ�'
                 AND [���˴���������֤������] <> '���˻��侯����֤'
                 AND [���˴���������֤������] <> '�۰�̨ͨ��֤'
                 AND [���˴���������֤������] <> '���������'
                 AND [���˴���������֤������] <> '��������þ���֤'
                 AND [���˴���������֤������] <> '�۰�̨��ס֤'
                 AND [���˴���������֤������] <> '�й�����'
                 AND [���˴���������֤������] <> '������뾳ͨ��֤'
                 AND [���˴���������֤������] <> '����' )
    UNION
    SELECT '9.---������Ϣ---' ��Ϣ����,
           '---' ����,
           '����֤��������Ϣδ�ṩ�����϶ཫӰ����' ˵��
    FROM   tb_shzh_dw
    UNION
    SELECT '9.1 �˺���ϢΪ��' ��Ϣ����,
           Cast(Count(*) AS VARCHAR(20)) ����,
           CASE
             WHEN Count(*) > 0 THEN '�˺�Ϊ�գ��������������ṩ���⣬����С����Ϊ�������'
             ELSE ''
           END ˵��
    FROM   tb_shzh_dw
    WHERE  �˺� IS NULL
            OR Len(�˺�) = 0
    UNION
    SELECT '9.2 �˻�����Ϊ��' ��Ϣ����,
           Cast(Count(*) AS VARCHAR(20)) ����,
           CASE
             WHEN Count(*) > 0 THEN '�˻�����Ϊ���������������ṩ����'
             ELSE ''
           END ˵��
    FROM   tb_shzh_dw
    WHERE  �˻����� IS NULL
            OR Len(�˻�����) = 0
    UNION
    SELECT '9.3 ��������Ϊ��' ��Ϣ����,
           Cast(Count(*) AS VARCHAR(20)) ����,
           CASE
             WHEN Count(*) > 0 THEN '��������Ϊ���������������ṩ����'
             ELSE ''
           END ˵��
    FROM   tb_shzh_dw
    WHERE  �������� IS NULL
            OR Len(��������) = 0
    UNION
    SELECT '9.4 ��������Ϊ��' ��Ϣ����,
           Cast(Count(*) AS VARCHAR(20)) ����,
           CASE
             WHEN Count(*) > 0 THEN '��������Ϊ�ջ�99991231�������������ṩ����'
             ELSE ''
           END ˵��
    FROM   tb_shzh_dw
    WHERE  �������� IS NULL
            OR Len(��������) = 0
            OR �������� = '99991231'
    UNION
    SELECT '9.5 ִ�պ���Ϊ��' ��Ϣ����,
           Cast(Count(*) AS VARCHAR(20)) ����,
           CASE
             WHEN Count(*) > 0 THEN 'ִ�պ���Ϊ�գ��������������ṩ���⣬����С����Ϊ�������'
             ELSE ''
           END ˵��
    FROM   tb_shzh_dw
    WHERE  [ִ�պ���] IS NULL
            OR Len([ִ�պ���]) = 0
    UNION
    SELECT '9.6 ���������˻���������֤������Ϊ��' ��Ϣ����,
           Cast(Count(*) AS VARCHAR(20)) ����,
           CASE
             WHEN Count(*) > 0 THEN '֤������Ϊ�գ��������������ṩ���⣬����С����Ϊ�������'
             ELSE ''
           END ˵��
    FROM   tb_shzh_dw
    WHERE  [���˴���������֤������] IS NULL
            OR Len([���˴���������֤������]) = 0
    UNION
    SELECT '9.7 ������֤������Ϊ��' ��Ϣ����,
           Cast(Count(*) AS VARCHAR(20)) ����,
           CASE
             WHEN Count(*) > 0 THEN '������֤������Ϊ�գ��������������ṩ���⣬����С����Ϊ�������'
             ELSE ''
           END ˵��
    FROM   tb_shzh_dw
    WHERE  ������֤������ IS NULL
            OR Len(������֤������) = 0
    UNION
    SELECT '9.8 ���������˻���������֤����Ч�ڿ�ʼ��Ϊ��' ��Ϣ����,
           Cast(Count(*) AS VARCHAR(20)) ����,
           CASE
             WHEN Count(*) > 0 THEN '����֤����Ч�ڿ�ʼ��Ϊ��Ӱ��ʵ���Ƽ��'
             ELSE ''
           END ˵��
    FROM   tb_shzh_dw
    WHERE  [���˴���������֤����Ч�ڿ�ʼ��] IS NULL
            OR Len([���˴���������֤����Ч�ڿ�ʼ��]) = 0
    UNION
    SELECT '9.9 ����֤����Ч�ڽ�ֹ��' ��Ϣ����,
           Cast(Count(*) AS VARCHAR(20)) ����,
           CASE
             WHEN Count(*) > 0 THEN '����֤����Ч�ڽ�ֹ��Ϊ��Ӱ��ʵ���Ƽ��'
             ELSE ''
           END ˵��
    FROM   tb_shzh_dw
    WHERE  [���˴���������֤����Ч�ڽ�ֹ��] IS NULL
            OR Len([���˴���������֤����Ч�ڽ�ֹ��]) = 0
    UNION
    SELECT '9.10 δ���ֻ�����' ��Ϣ����,
           Cast(Count(*) AS VARCHAR(20)) ����,
           CASE
             WHEN Count(*) > 0 THEN 'Ϊ���������������ṩ���⣬��������������Ϊ�������'
             ELSE ''
           END ˵��
    FROM   tb_shzh_dw
    WHERE  ( �󶨵��ֻ����� IS NULL
              OR Len(�󶨵��ֻ�����) = 0 )
  END
GO 
��� !    �"  �   A       ���е�λ�����ֶ��ṩ���                  010105	    0
    1    1 n  CREATE PROCEDURE Pd_shjy_num
WITH ENCRYPTION
AS
  BEGIN
    SELECT ' �ｻ��������' ��Ϣ����,
           Cast(Count(*) AS VARCHAR(20)) ����,
           '' ˵��
    FROM   tb_shjy_dw
    UNION
    SELECT ' ���˻�������' ��Ϣ����,
           Cast(Count(DISTINCT �˺�) AS VARCHAR(20)) ����,
           '' ˵��
    FROM   tb_shjy_dw
    UNION
    SELECT '1. ---�����ʶ---' ��Ϣ����,
           '' ����,
           '�������ʶ��Ϣ�����������޷�ʵʩ' ˵��
    FROM   tb_shjy_dw
    UNION
    SELECT '1.1 ��������' ��Ϣ����,
           Cast(Count(*) AS VARCHAR(20)) ����,
           CASE
             WHEN Count(*) = 0 THEN 'û�д������ף����ݿ���������'
             ELSE ''
           END ˵��
    FROM   tb_shjy_dw
    WHERE  �����ʶ = '��'
    UNION
    SELECT '1.2 �跽����' ��Ϣ����,
           Cast(Count(*) AS VARCHAR(20)) ����,
           CASE
             WHEN Count(*) = 0 THEN 'û�н跽���ף����ݿ���������'
             ELSE ''
           END ˵��
    FROM   tb_shjy_dw
    WHERE  �����ʶ = '��'
    UNION
    SELECT '1.6 ���������ݹ淶' ��Ϣ����,
           Cast(Count(*) AS VARCHAR(20)) ����,
           CASE
             WHEN Count(*) > 0 THEN '�������淶���ݽ϶ཫӰ����'
             ELSE ''
           END ˵��
    FROM   tb_shjy_dw
    WHERE  �����ʶ IS NULL
            OR ( NOT �����ʶ IS NULL
                 AND Len(�����ʶ) = 0 )
            OR ( �����ʶ <> '��'
                 AND �����ʶ <> '��' )
    UNION
    SELECT '2.---��ת��ʶ---' ��Ϣ����,
           '---' ����,
           '��ת��ʶ����������������Ӱ����' ˵��
    FROM   tb_shjy_dw
    UNION
    SELECT '2.1 ת��' ��Ϣ����,
           Cast(Count(*) AS VARCHAR(20)) ����,
           CASE
             WHEN Count(*) = 0 THEN '��Ϊ0���ݿ���������'
             ELSE ''
           END ˵��
    FROM   tb_shjy_dw
    WHERE  ��ת��ʶ = 'ת��'
    UNION
    SELECT '2.2 �ֽ�' ��Ϣ����,
           Cast(Count(*) AS VARCHAR(20)) ����,
           CASE
             WHEN Count(*) = 0 THEN '��Ϊ0���ݿ���������'
             ELSE ''
           END ˵��
    FROM   tb_shjy_dw
    WHERE  ��ת��ʶ = '�ֽ�'
    UNION
    SELECT '2.3 ���������ݹ淶' ��Ϣ����,
           Cast(Count(*) AS VARCHAR(20)) ����,
           CASE
             WHEN Count(*) > 0 THEN '�������淶���ݽ϶ཫӰ����'
             ELSE ''
           END ˵��
    FROM   tb_shjy_dw
    WHERE  ��ת��ʶ IS NULL
            OR ( NOT ��ת��ʶ IS NULL
                 AND Len(��ת��ʶ) = 0 )
            OR ( ��ת��ʶ <> '�ֽ�'
                 AND ��ת��ʶ <> 'ת��' )
    UNION
    SELECT '3.---��������---' ��Ϣ����,
           '---' ����,
           'δ�ṩ�򲻷��Ϲ淶��Ӱ����' ˵��
    FROM   tb_shjy_dw
    UNION
    SELECT '3.1 ����' ��Ϣ����,
           Cast(Count(*) AS VARCHAR(20)) ����,
           CASE
             WHEN Count(*) = 0 THEN '��Ϊ0���ݿ���������'
             ELSE ''
           END ˵��
    FROM   tb_shjy_dw
    WHERE  �������� = '����'
    UNION
    SELECT '3.2 ��������' ��Ϣ����,
           Cast(Count(*) AS VARCHAR(20)) ����,
           '' ˵��
    FROM   tb_shjy_dw
    WHERE  �������� = '����'
    UNION
    SELECT '3.3 ����' ��Ϣ����,
           Cast(Count(*) AS VARCHAR(20)) ����,
           '' ˵��
    FROM   tb_shjy_dw
    WHERE  �������� = '����'
    UNION
    SELECT '3.4 �ֻ�����' ��Ϣ����,
           Cast(Count(*) AS VARCHAR(20)) ����,
           '' ˵��
    FROM   tb_shjy_dw
    WHERE  �������� = '�ֻ�'
    UNION
    SELECT '3.5 ����' ��Ϣ����,
           Cast(Count(*) AS VARCHAR(20)) ����,
           '' ˵��
    FROM   tb_shjy_dw
    WHERE  �������� = '����'
    UNION
    SELECT '3.12 ���������ݹ淶' ��Ϣ����,
           Cast(Count(*) AS VARCHAR(20)) ����,
           CASE
             WHEN Count(*) > 0 THEN '���������������ṩ����'
             ELSE ''
           END ˵��
    FROM   tb_shjy_dw
    WHERE  �������� IS NULL
            OR Len(��������) = 0
            OR ( �������� <> '����'
                 AND �������� <> '����'
                 AND �������� <> '����'
                 AND �������� <> '�ֻ�'
                 AND �������� <> '����' )
    UNION
    SELECT '9.---������Ϣ---' ��Ϣ����,
           '---' ����,
           '�й���Ϣδ�ṩ�������϶ཫӰ����' ˵��
    FROM   tb_shjy_dw
    UNION
    SELECT '9.1 �˺���ϢΪ��' ��Ϣ����,
           Cast(Count(*) AS VARCHAR(20)) ����,
           CASE
             WHEN Count(*) > 0 THEN '�˺�Ϊ�գ��������������ṩ���⣬����С����Ϊ�������'
             ELSE ''
           END ˵��
    FROM   tb_shjy_dw
    WHERE  �˺� IS NULL
            OR Len(�˺�) = 0
    UNION
    SELECT '9.2 �˻�����Ϊ��' ��Ϣ����,
           Cast(Count(*) AS VARCHAR(20)) ����,
           CASE
             WHEN Count(*) > 0 THEN '�˻�����Ϊ���������������ṩ����'
             ELSE ''
           END ˵��
    FROM   tb_shjy_dw
    WHERE  �˻����� IS NULL
            OR Len(�˻�����) = 0
    UNION
    SELECT '9.3 ��������Ϊ��' ��Ϣ����,
           Cast(Count(*) AS VARCHAR(20)) ����,
           CASE
             WHEN Count(*) > 0 THEN '��������Ϊ���������������ṩ����'
             ELSE ''
           END ˵��
    FROM   tb_shjy_dw
    WHERE  �������� IS NULL
            OR Len(��������) = 0
    UNION
    SELECT '9.4 ����ʱ��Ϊ��' ��Ϣ����,
           Cast(Count(*) AS VARCHAR(20)) ����,
           CASE
             WHEN Count(*) > 0 THEN '��������Ϊ���������������ṩ����'
             ELSE ''
           END ˵��
    FROM   tb_shjy_dw
    WHERE  ����ʱ�� IS NULL
            OR Len(����ʱ��) = 0
    UNION
    SELECT '9.5 ���׽��Ϊ��' ��Ϣ����,
           Cast(Count(*) AS VARCHAR(20)) ����,
           CASE
             WHEN Count(*) > 0 THEN '�����������ṩ����'
             ELSE ''
           END ˵��
    FROM   tb_shjy_dw
    WHERE  [���׽��] IS NULL
            OR [���׽��] = 0
    UNION
    SELECT '9.6 ���׶Է���ϢΪ��' ��Ϣ����,
           Cast(Count(*) AS VARCHAR(20)) ����,
           CASE
             WHEN Count(*) > 0 THEN '����̫�������ṩ����'
             ELSE ''
           END ˵��
    FROM   tb_shjy_dw
    WHERE  [���׶Է��˻�����] IS NULL
            OR Len([���׶Է��˻�����]) = 0
            OR [���׶Է��˺�] IS NULL
            OR Len([���׶Է��˺�]) = 0
            OR [���׶Է���������] IS NULL
            OR Len([���׶Է���������]) = 0
    UNION
    SELECT '9.7 ���׸���Ϊ��' ��Ϣ����,
           Cast(Count(*) AS VARCHAR(20)) ����,
           CASE
             WHEN Count(*) > 0 THEN '����̫���������ṩ����'
             ELSE ''
           END ˵��
    FROM   tb_shjy_dw
    WHERE  [���׸���] IS NULL
            OR Len([���׸���]) = 0
  END
GO ��� !    �"  �   A       ���и������˻��������                  010106	    0
    1    1 6  CREATE PROCEDURE P_shzh_cnt
WITH ENCRYPTION
AS
  BEGIN
    IF Object_id(N'tb_shzh_dw', N'U') IS NOT NULL
      BEGIN
        SELECT DISTINCT a.�����н��ڻ�������,
                        Max(b.���л�������) ������,
                        Count(*) �˻������ϼ�,
                        Min(��������) + '��' + Max(��������) �������ڷ�Χ,
                        Min(��������) + '��' + Max(��������) �������ڷ�Χ,
                        Sum(CASE
                              WHEN ( �˻����� = '����' ) THEN 1
                              ELSE 0
                            END) ����������,
                        Sum(CASE
                              WHEN ( �˻����� = 'һ��' ) THEN 1
                              ELSE 0
                            END) һ�㻧����,
                        Sum(CASE
                              WHEN ( �˻����� = 'ר��' ) THEN 1
                              ELSE 0
                            END) Ԥ��ר������,
                        Sum(CASE
                              WHEN ( �˻����� = '��ʱ' ) THEN 1
                              ELSE 0
                            END) ��ʱ������,
                        Sum(CASE
                              WHEN ( �˻����� = '����' ) THEN 1
                              ELSE 0
                            END) �����˻�����,
                        Sum(CASE
                              WHEN ( �˻����� NOT IN ( '����', 'һ��', 'ר��', '��ʱ', '����' ) ) THEN 1
                              ELSE 0
                            END) �����˻�����
        FROM   tb_shzh_dw a
               LEFT JOIN v_bank b
                      ON a.�����н��ڻ������� = b.���б�������
        GROUP  BY �����н��ڻ�������
      END
    ELSE
      BEGIN
        SELECT '���˻�����ϵͳ��λ�˻�����δ����' ע��
      END
  END
GO ��� !    �"  �   A       ���и����㵥λ�����ṩ���    ��ҵ���е�λ�����������             010107	    0
    1    1 o  CREATE PROCEDURE P_shjy_cnt
WITH ENCRYPTION
AS
  BEGIN
    IF Object_id(N'tb_shjy_dw', N'U') IS NOT NULL
      BEGIN
        SELECT DISTINCT a.�����н��ڻ�������,
                        Max(b.���л�������) ������,
                        Count(*) ���������ϼ�,
                        Min(��������) + '��' + Max(��������) �������ڷ�Χ
        FROM   tb_shjy_dw a
               LEFT JOIN v_bank b
                      ON a.�����н��ڻ������� = b.���б�������
        GROUP  BY �����н��ڻ�������
      END
    ELSE
      BEGIN
        SELECT '����ҵ���е�λ��������δ����' ע��
      END
  END

GO ��� ! 	   �"  �   A       ���и����������ṩ��� 
   ����������             010108	    0
    1    1 U  CREATE PROCEDURE P_yeb_cnt
WITH ENCRYPTION
AS
  BEGIN
    IF Object_id(N'tb_yeb', N'U') IS NOT NULL
      BEGIN
        SELECT �����������,
               Max(������) ������,
               Count(�˺�) �˻�����,
               Stuff((SELECT DISTINCT ',' + �������
                      FROM   tb_yeb
                      WHERE  ����������� = a.�����������
                      FOR XML PATH('')), 1, 1, '') �������
        FROM   tb_yeb a
        GROUP  BY �����������
      END
    ELSE
      BEGIN
        SELECT '����ҵ������������δ����' ע��
      END
  END

GO��� ! 
   �"  �   A       ���е�λ���׸����ֶ���Ϣ�б�                  010109	    0
    1    1 �   CREATE PROCEDURE  P_tb_jyb_jdbz with  ENCRYPTION   AS
BEGIN
if object_id(N'tb_shzh_dw',N'U') is not null
select distinct ���׸��� from tb_shjy_dw
else
select '����ҵ���е�λ��������δ����' ע��
END
GO��� !    �"     A       .�����˻������ס������ṩ��� P   �Ƚ���ҵ�����˻��ṩ����嵥����ΪУ�������ṩ�����ԣ������Ϊ���������ֳ���飩             010110	    0
    1    1 �  CREATE PROCEDURE p_Acco_BiJiao WITH ENCRYPTION AS
BEGIN
if object_id('tempdb..#tmp') is not null drop table #tmp
if object_id('tempdb..#tmp0') is not null drop table #tmp0
if object_id('tempdb..#tmp00') is not null drop table #tmp00
if object_id('tempdb..#tmp000') is not null drop table #tmp000
if object_id('tempdb..#tmp2') is not null drop table #tmp2
if object_id('tempdb..#tmp22') is not null drop table #tmp22
if object_id('tempdb..#tmp222') is not null drop table #tmp222
if object_id('tempdb..#tmp3') is not null drop table #tmp3
if object_id('tempdb..#tmp33') is not null drop table #tmp33
if object_id('tempdb..#tmp333') is not null drop table #tmp333
if object_id('tempdb..#tmp3333') is not null drop table #tmp3333
if object_id('tempdb..#tmp33333') is not null drop table #tmp33333
if object_id('tempdb..#tmp333333') is not null drop table #tmp333333
if object_id('tempdb..#tmp4') is not null drop table #tmp4
if object_id('tempdb..#tmp44') is not null drop table #tmp44
if object_id('tempdb..#tmp444') is not null drop table #tmp444
if object_id('tempdb..#tmp9') is not null drop table #tmp9
if object_id('tempdb..#tmp99') is not null drop table #tmp99
if object_id('tempdb..#tmp999') is not null drop table #tmp999

select a.���л�������,max(a.���л�������) ���л�������,count(distinct b.acc_no) �˻��� into #tmp2
	from v_bank a left join tb_acc b
        on a.���л�������= b.bank_code
	group by a.���л�������

select a.���л�������,count(distinct b.acc_no) ���� into #tmp22
	from v_bank a left join tb_acc b
        on a.���л�������= b.bank_code
	where b.acc_type='0' or b.acc_type='1'
	group by a.���л�������

select a.���л�������,count(distinct b.acc_no) ��λ into #tmp222
	from v_bank a left join tb_acc b
        on a.���л�������= b.bank_code
	where b.acc_type='2'
	group by a.���л�������

select a.���л�������,count(distinct b.acc_no) ���� into #tmp3
	from v_bank a left join tb_acc b
        on a.���л�������= b.bank_code
	where b.ent_cst_type='0' and b.acc_type='2'
	group by a.���л�������
	
select a.���л������� ,count(distinct b.acc_no) һ�� into #tmp33
	from v_bank a left join tb_acc b
        on a.���л�������= b.bank_code
	where b.ent_cst_type='1' and b.acc_type='2'
	group by a.���л�������
 
select a.���л������� ,count(distinct b.acc_no) ר�� into #tmp333
	from v_bank a left join tb_acc b
        on a.���л�������= b.bank_code
	where (b.ent_cst_type='2' or b.ent_cst_type='4') and b.acc_type='2'
	group by a.���л�������

select a.���л������� ,count(distinct b.acc_no) Ԥ�� into #tmp3333
	from v_bank a left join tb_acc b
        on a.���л�������= b.bank_code
	where b.ent_cst_type='4' and b.acc_type='2'
	group by a.���л�������
	
select a.���л������� ,count(distinct b.acc_no) ��Ԥ�� into #tmp33333
	from v_bank a left join tb_acc b
        on a.���л�������= b.bank_code
	where b.ent_cst_type='2' and b.acc_type='2'
	group by a.���л�������

select a.���л�������,count(distinct b.acc_no) ��ʱ into #tmp333333
	from v_bank a left join tb_acc b
        on a.���л�������= b.bank_code
	where b.ent_cst_type='3' and b.acc_type='2'
	group by a.���л�������
	
select a.���л������� ,count(distinct b.acc_no) ���� into #tmp4
	from v_bank a left join tb_acc b
        on a.���л�������= b.bank_code
	where b.close_flag='0' and b.acc_type='2'
	group by a.���л�������

select a.���л������� ,count(distinct b.acc_no) ���� into #tmp44
	from v_bank a left join tb_acc b
        on a.���л�������= b.bank_code
	where b.close_flag='1' and b.acc_type='2'
	group by a.���л�������

select a.���л������� ,count(distinct b.acc_no) ���� into #tmp444
	from v_bank a left join tb_acc b
        on a.���л�������= b.bank_code
	where b.close_flag='3' and b.acc_type='2'
	group by a.���л�������
	
	
select  a.���л�������,a.���л�������+'�����У�' ���л�������,a.�˻���,b.����,c.��λ,d.����,e.һ��,f.ר��,g.Ԥ��,h.��Ԥ��,i.��ʱ
        ,j.����,k.����,l.����
into #tmp99
from #tmp2 a
		left join #tmp22 b on a.���л�������=b.���л�������
		left join #tmp222 c on a.���л�������=c.���л�������
        left join #tmp3 d on a.���л�������=d.���л�������
        left join #tmp33 e on a.���л�������=e.���л�������
        left join #tmp333 f on a.���л�������=f.���л�������
        left join #tmp3333 g on a.���л�������=g.���л�������
        left join #tmp33333 h on a.���л�������=h.���л�������
        left join #tmp333333 i on a.���л�������=i.���л�������
        left join #tmp4 j on a.���л�������=j.���л�������
        left join #tmp44 k on a.���л�������=k.���л�������
        left join #tmp444 l on a.���л�������=l.���л�������

--�����˻�ϵͳ�˺Ų�Ψһ�����˻�������ȷ�⣬�������ظ�ͳ���������Ľ�
--�Ľ�ʹ��v_ZhLast
select ���л������� ���л�������,max(���л�������)+'�����У�' ���л�������,count(distinct �˺�) �˻���,'' ����,count(distinct �˺�) ��λ,
sum(case when (�˻�����='����') then 1 else 0 end ) ����,
sum(case when (�˻�����='һ��') then 1 else 0 end ) һ��,
sum(case when (�˻�����='Ԥ��' or �˻�����='��Ԥ��') then 1 else 0 end ) ר��,
sum(case when (�˻�����='Ԥ��') then 1 else 0 end ) Ԥ��,
sum(case when (�˻�����='��Ԥ��') then 1 else 0 end ) ��Ԥ��,
sum(case when (�˻�����='��ʱ' or �˻�����='����ʱ') then 1 else 0 end ) ��ʱ,
sum(case when (״̬='����') then 1 else 0 end ) ����,
sum(case when (״̬='����') then 1 else 0 end ) ����,
sum(case when (״̬='����') then 1 else 0 end ) ����
 into #tmp9
 from v_zhlast 
group by ���л�������
select a.���л�������,'�ܼ�=����-����' ���л�������,
(case when b.�˻��� is null then 0 else b.�˻��� end)-a.�˻��� �˻���,
(case when b.���� is null then 0 else b.���� end)-a.���� ����,
(case when b.��λ is null then 0 else b.��λ end)-a.��λ ��λ,
(case when b.���� is null then 0 else b.���� end)-a.���� ����,
(case when b.һ�� is null then 0 else b.һ�� end)-a.һ�� һ��,
(case when b.ר�� is null then 0 else b.ר�� end)-a.ר�� ר��,
(case when b.Ԥ�� is null then 0 else b.Ԥ�� end)-a.Ԥ�� Ԥ��,
(case when b.��Ԥ�� is null then 0 else b.��Ԥ�� end)-a.��Ԥ�� ��Ԥ��,
(case when b.��ʱ is null then 0 else b.��ʱ end)-a.��ʱ ��ʱ,
(case when b.���� is null then 0 else b.���� end)-a.���� ����,
(case when b.���� is null then 0 else b.���� end)-a.���� ����,
(case when (b.���� is null) then 0 else b.���� end)-a.���� ����
into #tmp999
 from #tmp9 a
left join #tmp99 b on a.���л�������=b.���л�������

select * from #tmp9 
   union 
   select * from #tmp99 
      union 
   select * from #tmp999
--   --where �˻���>0 and ��λ>0
END
GO��� !    �"  �         �����˻���---�����˻�δ�ṩ b   �˹�ϵͳ�����д��ڵ��˻��������˻�������δ�ṩ����ΪУ�������ṩ�����ԣ������Ϊ���������ֳ���飩 ;   @������޿�ʼ����!D:20190101@�˻�״̬��1�ǳ�����9ȫ����!N:9        01011001	    0
    1    1 �  CREATE PROCEDURE P_rhzh_no_shzh(@bgn_date CHAR(8),@zh_state CHAR(1))
WITH ENCRYPTION
AS
  BEGIN
    --DECLARE @bgn_date CHAR(8)
    --SET @bgn_date='20190101'
    --DECLARE @zh_state CHAR(1)
    --SET @zh_state = '1'

    SELECT b.���л�������,
           [���л�������],
           [��������],
           [�˺�],
           [�˻�����],
           [������ô���],
           [����Ӫҵִ����Ч��],
           [ע���ʽ���],
           [��ַ],
           [��ϵ�绰],
           [���������˻���������],
           [���������˻���������֤������],
           [���������˻���������֤�����],
           [��������],
           [��������],
           [��������],
           [�˻�����],
           [�˻�״̬],
           [��������˻������ص�������],
           [�ɷ�ȡ��]
    FROM   tb_rhzh_dw a
           LEFT JOIN v_bank b
                  ON a.���л������� = b.���б�������
    WHERE  NOT �˺� IN (SELECT DISTINCT �˺�
                      FROM   tb_shjy_dw)
           AND �������� >= @bgn_date
           AND �˻�״̬ <> ( CASE
                           WHEN @zh_state = '1' THEN '����'
                           WHEN @zh_state = '9' THEN '����'
                         END )
  END
go ��� !    �"  �         ������=�˻������� \   ���������д��ڵ��˻����˻�������δ�ṩ����ΪУ�������ṩ�����ԣ������Ϊ���������ֳ���飩    @��������!N:10000        01011003	    0
    1    1 J  CREATE PROCEDURE P_yeb_no_zh(@row_num INT)
WITH ENCRYPTION
AS
  BEGIN
    IF Object_id('tempdb..#tmp1') IS NOT NULL
      DROP TABLE #tmp1

    IF Object_id(N'tb_yeb', N'U') IS NOT NULL
       AND Object_id(N'tb_shzh_dw', N'U') IS NOT NULL
      BEGIN
        SELECT DISTINCT �����������,
                        ������,
                        �˺�,
                        ����
        INTO   #tmp1
        FROM   tb_yeb
        WHERE  �˺� NOT IN (SELECT DISTINCT �˺�
                          FROM   tb_shzh_dw)
        ORDER  BY �˺�

        SET ROWCOUNT @row_num

        SELECT a.*,
               c.�˻����� ���л���,
               c.�˻����� ��������,
               c.�˻�״̬ ����״̬,
               c.��������,
               c.��������
        FROM   #tmp1 a
               LEFT JOIN tb_rhzh_dw c
                      ON a.�˺� = c.�˺�
        ORDER  BY a.�˺�,
                  a.�����������

        SET ROWCOUNT 0
      END
    ELSE
      BEGIN
        SELECT '����ҵ�����������ݻ���ҵ�����˻�����δ����' ע��
      END
  END

GO��� !    �"  2          ����������=�˻������� b   ���е�λ�˻������д��ڵ��˻�������������δ�ṩ����ΪУ�������ṩ�����ԣ������Ϊ���������ֳ���飩    @��������!N:1000        01011004	    0
    1    1 �  CREATE PROCEDURE P_jy_no_zh(@row_num INT)
WITH ENCRYPTION
AS
  BEGIN
    --declare @row_num int
    --set @row_num=1000
    IF Object_id('tempdb..#tmp1') IS NOT NULL
      DROP TABLE #tmp1

    IF Object_id(N'tb_shzh_dw', N'U') IS NOT NULL
       AND Object_id(N'tb_shjy_dw', N'U') IS NOT NULL
      BEGIN
        SELECT �˺�,
               Count(�˺�) ���ױ���,
               Sum(CASE
                     WHEN ( ��ת��ʶ = '�ֽ�' ) THEN 1
                     ELSE 0
                   END) �ֽ����,
               Sum(CASE
                     WHEN ( ��ת��ʶ = '�ֽ�'
                            AND �����ʶ = '��' ) THEN 1
                     ELSE 0
                   END) ȡ�ֱ���
        INTO   #tmp1
        FROM   tb_shjy_dw
        WHERE  �˺� NOT IN (SELECT DISTINCT �˺�
                          FROM   tb_shzh_dw)
        GROUP  BY �˺�
        ORDER  BY �˺�

        SET ROWCOUNT @row_num

        SELECT c.���л�������,
               b.���л�������,
               a.�˺�,
               c.�˻����� ���л���,
               c.�˻����� ��������,
               c.�˻�״̬ ����״̬,
               c.��������,
               c.��������,
               a.���ױ���,
               a.�ֽ����,
               a.ȡ�ֱ���
        FROM   #tmp1 a
               LEFT JOIN tb_rhzh_dw c
                      ON a.�˺� = c.�˺�
               LEFT JOIN V_Bank b
                      ON c.���л������� = b.���б�������
        ORDER  BY a.�˺�,
                  c.���л�������

        SET ROWCOUNT 0
      END
    ELSE
      BEGIN
        SELECT '����ҵ�����˻����ݻ�������δ����' ע��
      END
  END

GO ��� !    �"  :         �����˻���---����δ�ṩ 
   ���������� ;   @������޿�ʼ����!D:20190101@�˻�״̬��1�ǳ�����9ȫ����!N:9        01011005	    0
    1    1 �  CREATE PROCEDURE P_rhzh_no_yeb(@bgn_date CHAR(8),@zh_state CHAR(1))
WITH ENCRYPTION
AS
  BEGIN
    --DECLARE @bgn_date CHAR(8)

    --SET @bgn_date='20190101'

    --DECLARE @zh_state CHAR(1)

    --SET @zh_state = '1'

    SELECT b.���л�������,
           [���л�������],
           [��������],
           [�˺�],
           [�˻�����],
           [������ô���],
           [����Ӫҵִ����Ч��],
           [ע���ʽ���],
           [��ַ],
           [��ϵ�绰],
           [���������˻���������],
           [���������˻���������֤������],
           [���������˻���������֤�����],
           [��������],
           [��������],
           [��������],
           [�˻�����],
           [�˻�״̬],
           [��������˻������ص�������],
           [�ɷ�ȡ��]
    FROM   tb_rhzh_dw a
           LEFT JOIN v_bank b
                  ON a.���л������� = b.���б�������
    WHERE  NOT �˺� IN (SELECT DISTINCT �˺�
                      FROM   tb_yeb)
           AND �������� >= @bgn_date
           AND �˻�״̬ <> ( CASE
                           WHEN @zh_state = '1' THEN '����'
                           WHEN @zh_state = '9' THEN '����'
                         END )
  END
go ��� !    �"  �   �      �����˻�    �鿴��λ�˻����й��ֶ��ṩ���              0102	    0
    1    1    1 �  CREATE PROCEDURE P_dwzh_xhrq_zt
WITH ENCRYPTION
AS
  BEGIN
    IF Object_id(N'tb_shzh_dw', N'U') IS NOT NULL
      BEGIN
        DECLARE @s_zhzl VARCHAR(80)
        DECLARE @s_zhxz VARCHAR(80)
        DECLARE @s_zhzt VARCHAR(80)
        DECLARE @s_kfqx VARCHAR(80)
        DECLARE @s_zmwjzl VARCHAR(80)
        DECLARE @s_frzjzl VARCHAR(80)

        SET @s_zhzl=(SELECT Stuff((SELECT DISTINCT ',' + �˻�����
                                   FROM   tb_shzh_dw
                                   FOR XML PATH('')), 1, 1, ''))
        SET @s_zhzt=(SELECT Stuff((SELECT DISTINCT ',' + �˻�״̬
                                   FROM   tb_shzh_dw
                                   FOR XML PATH('')), 1, 1, ''))
        SET @s_zmwjzl=(SELECT Stuff((SELECT DISTINCT ',' + ִ�պ���
                                     FROM   tb_shzh_dw
                                     FOR XML PATH('')), 1, 1, ''))
        SET @s_frzjzl=(SELECT Stuff((SELECT DISTINCT ',' + ���˴���������֤������
                                     FROM   tb_shzh_dw
                                     FOR XML PATH('')), 1, 1, ''))

        SELECT @s_zhzl �˻�����,
               -- �˻�����,
              -- @s_zhzt �˻�״̬,
               --@s_kfqx �ɷ�ȡ��,
               @s_zmwjzl ��λ֤���ļ�����,
               @s_frzjzl ���˻���������֤������
      END
    ELSE
      BEGIN
        SELECT '����ҵ���е�λ�˻�����δ����' ע��
      END
  END

GO ��� !    �"  �   �      �����˻��������ݵ������           "       010201	    0
    1    1 ,  CREATE PROCEDURE P_gr_date_ok
WITH ENCRYPTION
AS
  BEGIN
    DECLARE @s_tb_rhzh_gr VARCHAR(80),@s_tb_rhzh_gr1 VARCHAR(80),@s_tb_rhzh_gr2 VARCHAR(80)--�����˻�
    DECLARE @s_tb_rhzh_gr_zpzh VARCHAR(80),@s_tb_rhzh_gr_zpzh1 VARCHAR(80),@s_tb_rhzh_gr_zpzh2 VARCHAR(80)--֧Ʊ�˻�
    DECLARE @s_tb_rhzh_gr_jjk VARCHAR(80),@s_tb_rhzh_gr_jjk1 VARCHAR(80),@s_tb_rhzh_gr_jjk2 VARCHAR(80)--��ǿ�
    DECLARE @s_tb_rhzh_gr_djk VARCHAR(80),@s_tb_rhzh_gr_djk1 VARCHAR(80),@s_tb_rhzh_gr_djk2 VARCHAR(80)--���ǿ�
    DECLARE @s_tb_rhzh_gr_qt VARCHAR(80),@s_tb_rhzh_gr_qt1 VARCHAR(80),@s_tb_rhzh_gr_qt2 VARCHAR(80)--����
    DECLARE @s_tb_rhzh_gr_zdjk VARCHAR(80),@s_tb_rhzh_gr_zdjk1 VARCHAR(80),@s_tb_rhzh_gr_zdjk2 VARCHAR(80)--׼���ǿ�
    -------------------------------------
    -------------------------------
    DECLARE @s_tb_shzh_gr VARCHAR(80),@s_tb_shzh_gr1 VARCHAR(80),@s_tb_shzh_gr2 VARCHAR(80)--�����˻�
    DECLARE @s_tb_shzh_gr_I VARCHAR(80),@s_tb_shzh_gr_I1 VARCHAR(80),@s_tb_shzh_gr_I2 VARCHAR(80)--I�໧
    DECLARE @s_tb_shzh_gr_II VARCHAR(80),@s_tb_shzh_gr_II1 VARCHAR(80),@s_tb_shzh_gr_II2 VARCHAR(80)--I�໧
    DECLARE @s_tb_shzh_gr_III VARCHAR(80),@s_tb_shzh_gr_III1 VARCHAR(80),@s_tb_shzh_gr_III2 VARCHAR(80)--I�໧
    DECLARE @s_tb_shzh_gr_dj VARCHAR(80),@s_tb_shzh_gr_dj1 VARCHAR(80),@s_tb_shzh_gr_dj2 VARCHAR(80)--����
    DECLARE @s_tb_shzh_gr_qt VARCHAR(80),@s_tb_shzh_gr_qt1 VARCHAR(80),@s_tb_shzh_gr_qt2 VARCHAR(80)--����
    DECLARE @s_tb_shzh_gr_not VARCHAR(80),@s_tb_shzh_gr_not1 VARCHAR(80),@s_tb_shzh_gr_not2 VARCHAR(80)--���Ϲ�
    ----------------
    DECLARE @s_tb_shjy_gr VARCHAR(80),@s_tb_shjy_gr1 VARCHAR(80),@s_tb_shjy_gr2 VARCHAR(80)--���н���

    ----------------------------------------------
    SET @s_tb_rhzh_gr='���и����˻����ݣ��ܣ�'
    SET @s_tb_rhzh_gr_zpzh='���и����˻����ݣ�֧Ʊ�˻���'
    SET @s_tb_rhzh_gr_jjk='���и����˻����ݣ���ǿ���'
    SET @s_tb_rhzh_gr_djk='���и����˻����ݣ����ǿ���'
    SET @s_tb_rhzh_gr_qt='���и����˻����ݣ�������'
    SET @s_tb_rhzh_gr_zdjk='���и����˻����ݣ�׼���ǿ���'

    --------------------------------------------
    IF Object_id(N'tb_rhzh_gr', N'U') IS NOT NULL
      BEGIN
        SET @s_tb_rhzh_gr1=(SELECT '������' + Min(��������) + '��' + Max(��������) + '--������'
                                   + Min(��������) + '��' + Max(��������)
                            FROM   tb_rhzh_gr)
        SET @s_tb_rhzh_gr2=(SELECT Count(DISTINCT �˺�)
                            FROM   tb_rhzh_gr)
        SET @s_tb_rhzh_gr_zpzh1=(SELECT '������' + Min(��������) + '��' + Max(��������) + '--������'
                                        + Min(��������) + '��' + Max(��������)
                                 FROM   tb_rhzh_gr
                                 WHERE  �˻����� = '֧Ʊ�˻�')
        SET @s_tb_rhzh_gr_zpzh2=(SELECT Count(DISTINCT �˺�)
                                 FROM   tb_rhzh_gr
                                 WHERE  �˻����� = '֧Ʊ�˻�')
        SET @s_tb_rhzh_gr_jjk1=(SELECT '������' + Min(��������) + '��' + Max(��������) + '--������'
                                       + Min(��������) + '��' + Max(��������)
                                FROM   tb_rhzh_gr
                                WHERE  �˻����� = '��ǿ�')
        SET @s_tb_rhzh_gr_jjk2=(SELECT Count(DISTINCT �˺�)
                                FROM   tb_rhzh_gr
                                WHERE  �˻����� = '��ǿ�')
        SET @s_tb_rhzh_gr_djk1=(SELECT '������' + Min(��������) + '��' + Max(��������) + '--������'
                                       + Min(��������) + '��' + Max(��������)
                                FROM   tb_rhzh_gr
                                WHERE  �˻����� = '���ǿ�')
        SET @s_tb_rhzh_gr_djk2=(SELECT Count(DISTINCT �˺�)
                                FROM   tb_rhzh_gr
                                WHERE  �˻����� = '���ǿ�')
        SET @s_tb_rhzh_gr_qt1=(SELECT '������' + Min(��������) + '��' + Max(��������) + '--������'
                                      + Min(��������) + '��' + Max(��������)
                               FROM   tb_rhzh_gr
                               WHERE  �˻����� = '����')
        SET @s_tb_rhzh_gr_qt2=(SELECT Count(DISTINCT �˺�)
                               FROM   tb_rhzh_gr
                               WHERE  �˻����� = '����')
        SET @s_tb_rhzh_gr_zdjk1=(SELECT '������' + Min(��������) + '��' + Max(��������) + '--������'
                                        + Min(��������) + '��' + Max(��������)
                                 FROM   tb_rhzh_gr
                                 WHERE  �˻����� = '׼���ǿ�')
        SET @s_tb_rhzh_gr_zdjk2=(SELECT Count(DISTINCT �˺�)
                                 FROM   tb_rhzh_gr
                                 WHERE  �˻����� = '׼���ǿ�')
      END
    ELSE
      BEGIN
        SET @s_tb_rhzh_gr1='�����и����˻�����δ����'
      END

    -----------------------------------------------------------------------
    SET @s_tb_shzh_gr='���и����˻����ݣ��ܣ�'
    SET @s_tb_shzh_gr_I='���и����˻����ݣ�I�໧��'
    SET @s_tb_shzh_gr_II='���и����˻����ݣ�II�໧��'
    SET @s_tb_shzh_gr_III='���и����˻����ݣ�III�໧��'
    SET @s_tb_shzh_gr_dj='���и����˻����ݣ����ǣ�'
    SET @s_tb_shzh_gr_qt='���и����˻����ݣ�������'
    SET @s_tb_shzh_gr_not='���и����˻����ݣ����Ϲ棩'

    ---------------------------------------------------
    IF Object_id(N'tb_shzh_gr', N'U') IS NOT NULL
      BEGIN
        SET @s_tb_shzh_gr1=(SELECT '������' + Min(��������) + '��' + Max(��������) + '--������'
                                   + Min(��������) + '��' + Max(��������)
                            FROM   tb_shzh_gr)
        SET @s_tb_shzh_gr2=(SELECT Count(DISTINCT �˺�)
                            FROM   tb_shzh_gr)
        SET @s_tb_shzh_gr_I1=(SELECT '������' + Min(��������) + '��' + Max(��������) + '--������'
                                     + Min(��������) + '��' + Max(��������)
                              FROM   tb_shzh_gr
                              WHERE  �˻����� = 'һ��')
        SET @s_tb_shzh_gr_I2=(SELECT Count(DISTINCT �˺�)
                              FROM   tb_shzh_gr
                              WHERE  �˻����� = 'һ��')
        SET @s_tb_shzh_gr_II1=(SELECT '������' + Min(��������) + '��' + Max(��������) + '--������'
                                      + Min(��������) + '��' + Max(��������)
                               FROM   tb_shzh_gr
                               WHERE  �˻����� = '����')
        SET @s_tb_shzh_gr_II2=(SELECT Count(DISTINCT �˺�)
                               FROM   tb_shzh_gr
                               WHERE  �˻����� = '����')
        SET @s_tb_shzh_gr_III1=(SELECT '������' + Min(��������) + '��' + Max(��������) + '--������'
                                       + Min(��������) + '��' + Max(��������)
                                FROM   tb_shzh_gr
                                WHERE  �˻����� = '����')
        SET @s_tb_shzh_gr_III2=(SELECT Count(DISTINCT �˺�)
                                FROM   tb_shzh_gr
                                WHERE  �˻����� = '����')
        SET @s_tb_shzh_gr_dj1=(SELECT '������' + Min(��������) + '��' + Max(��������) + '--������'
                                      + Min(��������) + '��' + Max(��������)
                               FROM   tb_shzh_gr
                               WHERE  �˻����� = '����')
        SET @s_tb_shzh_gr_dj2=(SELECT Count(DISTINCT �˺�)
                               FROM   tb_shzh_gr
                               WHERE  �˻����� = '����')
        SET @s_tb_shzh_gr_qt1=(SELECT '������' + Min(��������) + '��' + Max(��������) + '--������'
                                      + Min(��������) + '��' + Max(��������)
                               FROM   tb_shzh_gr
                               WHERE  �˻����� = '����')
        SET @s_tb_shzh_gr_qt2=(SELECT Count(DISTINCT �˺�)
                               FROM   tb_shzh_gr
                               WHERE  �˻����� = '����')
        SET @s_tb_shzh_gr_not1=(SELECT '������' + Min(��������) + '��' + Max(��������) + '--������'
                                       + Min(��������) + '��' + Max(��������)
                                FROM   tb_shzh_gr
                                WHERE  NOT �˻����� IN ( 'һ��', '����', '����', '����', '����' ))
        SET @s_tb_shzh_gr_not2=(SELECT Count(DISTINCT �˺�)
                                FROM   tb_shzh_gr
                                WHERE  NOT �˻����� IN ( 'һ��', '����', '����', '����', '����' ))
      END
    ELSE
      BEGIN
        SET @s_tb_shzh_gr1='�����и����˻�����δ����'
      END

    --------------------------------------------
    SET @s_tb_shjy_gr='���н������ݣ��ܣ�'

    IF Object_id(N'tb_shjy_gr', N'U') IS NOT NULL
      BEGIN
        SET @s_tb_shjy_gr1=(SELECT Min(��������) + '��' + Max(��������)
                            FROM   tb_shjy_gr)
        SET @s_tb_shjy_gr2=(SELECT Count(DISTINCT �˺�)
                            FROM   tb_shjy_gr)
      END
    ELSE
      BEGIN
        SET @s_tb_shjy_gr1='�����и��˽�������δ����'
      END

    ---------------------------------------------------
    SELECT @s_tb_rhzh_gr ����Դ,
           @s_tb_rhzh_gr1 ʱ�䷶Χ,
           @s_tb_rhzh_gr2 ���� --�����˻�
    UNION ALL
    SELECT @s_tb_rhzh_gr_zpzh,
           @s_tb_rhzh_gr_zpzh1,
           @s_tb_rhzh_gr_zpzh2 --֧Ʊ�˻�
    UNION ALL
    SELECT @s_tb_rhzh_gr_jjk,
           @s_tb_rhzh_gr_jjk1,
           @s_tb_rhzh_gr_jjk2 --��ǿ�
    UNION ALL
    SELECT @s_tb_rhzh_gr_djk,
           @s_tb_rhzh_gr_djk1,
           @s_tb_rhzh_gr_djk2 --���ǿ�
    UNION ALL
    SELECT @s_tb_rhzh_gr_qt,
           @s_tb_rhzh_gr_qt1,
           @s_tb_rhzh_gr_qt2 --����
    UNION ALL
    SELECT @s_tb_rhzh_gr_zdjk,
           @s_tb_rhzh_gr_zdjk1,
           @s_tb_rhzh_gr_zdjk2 --׼���ǿ�
    UNION ALL
    SELECT '------------------------',
           '----------------------------------------',
           '-------------'
    -------------------------------
    UNION ALL
    SELECT @s_tb_shzh_gr,
           @s_tb_shzh_gr1,
           @s_tb_shzh_gr2 --�����˻�
    UNION ALL
    SELECT @s_tb_shzh_gr_I,
           @s_tb_shzh_gr_I1,
           @s_tb_shzh_gr_I2 --I�໧
    UNION ALL
    SELECT @s_tb_shzh_gr_II,
           @s_tb_shzh_gr_II1,
           @s_tb_shzh_gr_II2 --I�໧
    UNION ALL
    SELECT @s_tb_shzh_gr_III,
           @s_tb_shzh_gr_III1,
           @s_tb_shzh_gr_III2 --I�໧
    UNION ALL
    SELECT @s_tb_shzh_gr_dj,
           @s_tb_shzh_gr_dj1,
           @s_tb_shzh_gr_dj2 --����
    UNION ALL
    SELECT @s_tb_shzh_gr_qt,
           @s_tb_shzh_gr_qt1,
           @s_tb_shzh_gr_qt2 --����
    UNION ALL
    SELECT @s_tb_shzh_gr_not,
           @s_tb_shzh_gr_not1,
           @s_tb_shzh_gr_not2 --���Ϲ�
    UNION ALL
    SELECT '------------------------',
           '----------------------------------------',
           '-------------'
    ----------------
    UNION ALL
    SELECT @s_tb_shjy_gr,
           @s_tb_shjy_gr1,
           @s_tb_shjy_gr2 --���н���
  END
GO ��� !    �"  �   �      ���и����˻��ֶ��ṩ���           $       010202	    0
    1    1 o>  CREATE PROCEDURE Pg_zh_num
WITH ENCRYPTION
AS
  BEGIN
    SELECT ' -----�˻�����-----' ��Ϣ����,
           Cast(Count(*) AS VARCHAR(20)) ����,
           '' ˵��
    FROM   tb_shzh_gr
    UNION
    SELECT '1. ---�˻�����---' ��Ϣ����,
           '' ����,
           '��������Ϣ�������������˻��������޷�ʵʩ' ˵��
    FROM   tb_shzh_gr
    UNION
    SELECT '1.1 I���˻�' ��Ϣ����,
           Cast(Count(*) AS VARCHAR(20)) ����,
           CASE
             WHEN Count(*) = 0 THEN 'û��I�໧���ݿ���������'
             ELSE ''
           END ˵��
    FROM   tb_shzh_gr
    WHERE  �˻����� = 'һ��'
    UNION
    SELECT '1.2 II���˻�' ��Ϣ����,
           Cast(Count(*) AS VARCHAR(20)) ����,
           CASE
             WHEN Count(*) = 0 THEN 'û��II�໧���ݿ���������'
             ELSE ''
           END ˵��
    FROM   tb_shzh_gr
    WHERE  �˻����� = '����'
    UNION
    SELECT '1.3 III���˻�' ��Ϣ����,
           Cast(Count(*) AS VARCHAR(20)) ����,
           '' ˵��
    FROM   tb_shzh_gr
    WHERE  �˻����� = '����'
    UNION
    SELECT '1.4 �����˻�' ��Ϣ����,
           Cast(Count(*) AS VARCHAR(20)) ����,
           '' ˵��
    FROM   tb_shzh_gr
    WHERE  �˻����� = '����'
    UNION
    SELECT '1.5 ��������' ��Ϣ����,
           Cast(Count(*) AS VARCHAR(20)) ����,
           CASE
             WHEN Count(*) > 0 THEN '���������ͽ϶ཫӰ����'
             ELSE ''
           END ˵��
    FROM   tb_shzh_gr
    WHERE  �˻����� = '����'
    UNION
    SELECT '1.6 ���������ݹ淶' ��Ϣ����,
           Cast(Count(*) AS VARCHAR(20)) ����,
           CASE
             WHEN Count(*) > 0 THEN '�������淶���ݽ϶ཫӰ����'
             ELSE ''
           END ˵��
    FROM   tb_shzh_gr
    WHERE  �˻����� IS NULL
            OR ( NOT �˻����� IS NULL
                 AND Len(�˻�����) = 0 )
            OR ( �˻����� <> 'һ��'
                 AND �˻����� <> '����'
                 AND �˻����� <> '����'
                 AND �˻����� <> '����'
                 AND �˻����� <> '����' )
    UNION
    SELECT '2.---�˻�״̬---' ��Ϣ����,
           '---' ����,
           '�˻�״̬����������������Ӱ����' ˵��
    FROM   tb_shzh_gr
    UNION
    SELECT '2.1 ����' ��Ϣ����,
           Cast(Count(*) AS VARCHAR(20)) ����,
           '' ˵��
    FROM   tb_shzh_gr
    WHERE  �˻�״̬ = '����'
    UNION
    SELECT '2.2 δ����' ��Ϣ����,
           Cast(Count(*) AS VARCHAR(20)) ����,
           '' ˵��
    FROM   tb_shzh_gr
    WHERE  �˻�״̬ = 'δ����'
    UNION
    SELECT '2.3 ֻ�ղ���' ��Ϣ����,
           Cast(Count(*) AS VARCHAR(20)) ����,
           '' ˵��
    FROM   tb_shzh_gr
    WHERE  �˻�״̬ = 'ֻ�ղ���'
    UNION
    SELECT '2.4 ���ղ���' ��Ϣ����,
           Cast(Count(*) AS VARCHAR(20)) ����,
           '' ˵��
    FROM   tb_shzh_gr
    WHERE  �˻�״̬ = '���ղ���'
    UNION
    SELECT '2.5 �Ѷ���' ��Ϣ����,
           Cast(Count(*) AS VARCHAR(20)) ����,
           '' ˵��
    FROM   tb_shzh_gr
    WHERE  �˻�״̬ = '����'
    UNION
    SELECT '2.6 ��ע��' ��Ϣ����,
           Cast(Count(*) AS VARCHAR(20)) ����,
           '' ˵��
    FROM   tb_shzh_gr
    WHERE  �˻�״̬ = 'ע��'
    UNION
    SELECT '2.7 ����' ��Ϣ����,
           Cast(Count(*) AS VARCHAR(20)) ����,
           CASE
             WHEN Count(*) > 0 THEN '������״̬�϶ཫӰ����'
             ELSE ''
           END ˵��
    FROM   tb_shzh_gr
    WHERE  �˻�״̬ = '����'
    UNION
    SELECT '2.8 ���������ݹ淶' ��Ϣ����,
           Cast(Count(*) AS VARCHAR(20)) ����,
           CASE
             WHEN Count(*) > 0 THEN '�������淶���ݽ϶ཫӰ����'
             ELSE ''
           END ˵��
    FROM   tb_shzh_gr
    WHERE  �˻�״̬ IS NULL
            OR ( NOT �˻�״̬ IS NULL
                 AND Len(�˻�״̬) = 0 )
            OR ( �˻�״̬ <> '����'
                 AND �˻�״̬ <> 'δ����'
                 AND �˻�״̬ <> 'ֻ�ղ���'
                 AND �˻�״̬ <> '���ղ���'
                 AND �˻�״̬ <> '����'
                 AND �˻�״̬ <> 'ע��'
                 AND �˻�״̬ <> '����' )
    UNION
    SELECT '3.---�����֤������---' ��Ϣ����,
           '---' ����,
           '��֤������δ�ṩ�򲻷��Ϲ淶��Ӱ��ʵ���Ƽ��' ˵��
    FROM   tb_shzh_gr
    UNION
    SELECT '3.1 ��������֤' ��Ϣ����,
           Cast(Count(*) AS VARCHAR(20)) ����,
           '' ˵��
    FROM   tb_shzh_gr
    WHERE  ֤������ = '����֤'
    UNION
    SELECT '3.2 ��ʱ��������֤' ��Ϣ����,
           Cast(Count(*) AS VARCHAR(20)) ����,
           '' ˵��
    FROM   tb_shzh_gr
    WHERE  ֤������ = '��ʱ����֤'
    UNION
    SELECT '3.3 ���ڲ�' ��Ϣ����,
           Cast(Count(*) AS VARCHAR(20)) ����,
           '' ˵��
    FROM   tb_shzh_gr
    WHERE  ֤������ = '���ڲ�'
    UNION
    SELECT '3.4 ���˻��侯����֤' ��Ϣ����,
           Cast(Count(*) AS VARCHAR(20)) ����,
           '' ˵��
    FROM   tb_shzh_gr
    WHERE  ֤������ = '���˻��侯����֤'
    UNION
    SELECT '3.5 ���������' ��Ϣ����,
           Cast(Count(*) AS VARCHAR(20)) ����,
           '' ˵��
    FROM   tb_shzh_gr
    WHERE  ֤������ = '���������'
    UNION
    SELECT '3.6 �۰�̨���������ڵػ��½ͨ��֤' ��Ϣ����,
           Cast(Count(*) AS VARCHAR(20)) ����,
           '' ˵��
    FROM   tb_shzh_gr
    WHERE  ֤������ = '�۰�̨ͨ��֤'
    UNION
    SELECT '3.7 ��������þ���֤' ��Ϣ����,
           Cast(Count(*) AS VARCHAR(20)) ����,
           '' ˵��
    FROM   tb_shzh_gr
    WHERE  ֤������ = '��������þ���֤'
    UNION
    SELECT '3.8 �۰�̨�����ס֤' ��Ϣ����,
           Cast(Count(*) AS VARCHAR(20)) ����,
           '' ˵��
    FROM   tb_shzh_gr
    WHERE  ֤������ = '�۰�̨�����ס֤'
    UNION
    SELECT '3.9 �й�����' ��Ϣ����,
           Cast(Count(*) AS VARCHAR(20)) ����,
           '' ˵��
    FROM   tb_shzh_gr
    WHERE  ֤������ = '�й�����'
    UNION
    SELECT '3.10 ������뾳ͨ��֤' ��Ϣ����,
           Cast(Count(*) AS VARCHAR(20)) ����,
           '' ˵��
    FROM   tb_shzh_gr
    WHERE  ֤������ = '������뾳ͨ��֤'
    UNION
    SELECT '3.11 ���������������Ч֤��' ��Ϣ����,
           Cast(Count(*) AS VARCHAR(20)) ����,
           '' ˵��
    FROM   tb_shzh_gr
    WHERE  ֤������ = '����'
    UNION
    SELECT '3.12 ���������ݹ淶' ��Ϣ����,
           Cast(Count(*) AS VARCHAR(20)) ����,
           CASE
             WHEN Count(*) > 0 THEN '֤������Ϊ�գ��������������ṩ���⣬����С����Ϊ�������'
             ELSE ''
           END ˵��
    FROM   tb_shzh_gr
    WHERE  ֤������ IS NULL
            OR Len(֤������) = 0
    UNION
    SELECT '4.---������֤������---' ��Ϣ����,
           '---' ����,
           '��������֤������δ�ṩ�򲻷��Ϲ淶��Ӱ��ʵ���Ƽ��' ˵��
    FROM   tb_shzh_gr
    UNION
    SELECT '4.1 ��������֤' ��Ϣ����,
           Cast(Count(*) AS VARCHAR(20)) ����,
           '' ˵��
    FROM   tb_shzh_gr
    WHERE  ������֤������ = '����֤'
    UNION
    SELECT '4.2 ��ʱ��������֤' ��Ϣ����,
           Cast(Count(*) AS VARCHAR(20)) ����,
           '' ˵��
    FROM   tb_shzh_gr
    WHERE  ������֤������ = '��ʱ����֤'
    UNION
    SELECT '4.3 ���ڲ�' ��Ϣ����,
           Cast(Count(*) AS VARCHAR(20)) ����,
           '' ˵��
    FROM   tb_shzh_gr
    WHERE  ������֤������ = '���ڲ�'
    UNION
    SELECT '4.4 ���˻��侯����֤' ��Ϣ����,
           Cast(Count(*) AS VARCHAR(20)) ����,
           '' ˵��
    FROM   tb_shzh_gr
    WHERE  ������֤������ = '���˻��侯����֤'
    UNION
    SELECT '4.5 ���������' ��Ϣ����,
           Cast(Count(*) AS VARCHAR(20)) ����,
           '' ˵��
    FROM   tb_shzh_gr
    WHERE  ������֤������ = '���������'
    UNION
    SELECT '4.6 �۰�̨���������ڵػ��½ͨ��֤' ��Ϣ����,
           Cast(Count(*) AS VARCHAR(20)) ����,
           '' ˵��
    FROM   tb_shzh_gr
    WHERE  ������֤������ = '�۰�̨ͨ��֤'
    UNION
    SELECT '4.7 ��������þ���֤' ��Ϣ����,
           Cast(Count(*) AS VARCHAR(20)) ����,
           '' ˵��
    FROM   tb_shzh_gr
    WHERE  ������֤������ = '��������þ���֤'
    UNION
    SELECT '4.8 �۰�̨�����ס֤' ��Ϣ����,
           Cast(Count(*) AS VARCHAR(20)) ����,
           '' ˵��
    FROM   tb_shzh_gr
    WHERE  ������֤������ = '�۰�̨�����ס֤'
    UNION
    SELECT '4.9 �й�����' ��Ϣ����,
           Cast(Count(*) AS VARCHAR(20)) ����,
           '' ˵��
    FROM   tb_shzh_gr
    WHERE  ������֤������ = '�й�����'
    UNION
    SELECT '4.10 ������뾳ͨ��֤' ��Ϣ����,
           Cast(Count(*) AS VARCHAR(20)) ����,
           '' ˵��
    FROM   tb_shzh_gr
    WHERE  ������֤������ = '������뾳ͨ��֤'
    UNION
    SELECT '4.11 ���������������Ч֤��' ��Ϣ����,
           Cast(Count(*) AS VARCHAR(20)) ����,
           '' ˵��
    FROM   tb_shzh_gr
    WHERE  ������֤������ = '����'
    UNION
    SELECT '4.12 ���������ݹ淶' ��Ϣ����,
           Cast(Count(*) AS VARCHAR(20)) ����,
           CASE
             WHEN Count(*) > 0 THEN '������֤������Ϊ�գ��������������ṩ���⣬����С����Ϊ�������'
             ELSE ''
           END ˵��
    FROM   tb_shzh_gr
    WHERE  ������֤������ IS NULL
            OR Len(������֤������) = 0
    UNION
    SELECT '5.---���ݺ��鷽ʽ---' ��Ϣ����,
           '---' ����,
           '���ݺ��鷽ʽ�����Ϲ淶��Ӱ����' ˵��
    FROM   tb_shzh_gr
    UNION
    SELECT '5.1 �����' ��Ϣ����,
           Cast(Count(*) AS VARCHAR(20)) ����,
           CASE
             WHEN Count(*) = 0 THEN '��Ϊ���������ṩ�����⣬����Ӱ����'
             ELSE ''
           END ˵��
    FROM   tb_shzh_gr
    WHERE  ���ݺ��鷽ʽ = '�����'
    UNION
    SELECT '5.2 �������' ��Ϣ����,
           Cast(Count(*) AS VARCHAR(20)) ����,
           CASE
             WHEN Count(*) = 0 THEN '��Ϊ���������ṩ�����⣬����Ӱ����'
             ELSE ''
           END ˵��
    FROM   tb_shzh_gr
    WHERE  ���ݺ��鷽ʽ = '�������'
    UNION
    SELECT '5.3 ���������ݹ淶' ��Ϣ����,
           Cast(Count(*) AS VARCHAR(20)) ����,
           CASE
             WHEN Count(*) > 0 THEN '���������ݹ淶������Ӱ��ʵ���Ƽ��'
             ELSE ''
           END ˵��
    FROM   tb_shzh_gr
    WHERE  ���ݺ��鷽ʽ IS NULL
            OR Len(���ݺ��鷽ʽ) = 0
            OR ���ݺ��鷽ʽ <> '�����'
               AND ���ݺ��鷽ʽ <> '�������'
    UNION
    SELECT '6.---��������---' ��Ϣ����,
           '---' ����,
           '' ˵��
    FROM   tb_shzh_gr
    UNION
    SELECT '6.1 ���п�' ��Ϣ����,
           Cast(Count(*) AS VARCHAR(20)) ����,
           CASE
             WHEN Count(*) = 0 THEN '��Ϊ���������ṩ������'
             ELSE ''
           END ˵��
    FROM   tb_shzh_gr
    WHERE  �������� = '���п�'
    UNION
    SELECT '6.2 ����' ��Ϣ����,
           Cast(Count(*) AS VARCHAR(20)) ����,
           CASE
             WHEN Count(*) = 0 THEN '��Ϊ���������ṩ����������'
             ELSE ''
           END ˵��
    FROM   tb_shzh_gr
    WHERE  �������� = '����'
    UNION
    SELECT '6.3 �浥' ��Ϣ����,
           Cast(Count(*) AS VARCHAR(20)) ����,
           CASE
             WHEN Count(*) = 0 THEN '��Ϊ���������ṩ����������'
             ELSE ''
           END ˵��
    FROM   tb_shzh_gr
    WHERE  �������� = '�浥'
    UNION
    SELECT '6.4 �ֻ�' ��Ϣ����,
           Cast(Count(*) AS VARCHAR(20)) ����,
           CASE
             WHEN Count(*) = 0 THEN '��Ϊ���������ṩ����������'
             ELSE ''
           END ˵��
    FROM   tb_shzh_gr
    WHERE  �������� = '�ֻ�'
    UNION
    SELECT '6.5 �޽���' ��Ϣ����,
           Cast(Count(*) AS VARCHAR(20)) ����,
           CASE
             WHEN Count(*) = 0 THEN '��Ϊ���������ṩ����������'
             ELSE ''
           END ˵��
    FROM   tb_shzh_gr
    WHERE  �������� = '�޽���'
    UNION
    SELECT '6.6 ��������Ϊ��' ��Ϣ����,
           Cast(Count(*) AS VARCHAR(20)) ����,
           CASE
             WHEN Count(*) > 0 THEN 'Ϊ�������ϴ��������ṩ������'
             ELSE ''
           END ˵��
    FROM   tb_shzh_gr
    WHERE  �������� IS NULL
            OR Len(��������) = 0
    UNION
    SELECT '9.---������Ϣ---' ��Ϣ����,
           '---' ����,
           '����֤��������Ϣδ�ṩ�����϶ཫӰ����' ˵��
    FROM   tb_shzh_gr
    UNION
    SELECT '9.1 �˺���ϢΪ��' ��Ϣ����,
           Cast(Count(*) AS VARCHAR(20)) ����,
           CASE
             WHEN Count(*) > 0 THEN '�˺�Ϊ�գ��������������ṩ���⣬����С����Ϊ�������'
             ELSE ''
           END ˵��
    FROM   tb_shzh_gr
    WHERE  �˺� IS NULL
            OR Len(�˺�) = 0
    UNION
    SELECT '9.2 �˻�����Ϊ��' ��Ϣ����,
           Cast(Count(*) AS VARCHAR(20)) ����,
           CASE
             WHEN Count(*) > 0 THEN '�˻�����Ϊ���������������ṩ����'
             ELSE ''
           END ˵��
    FROM   tb_shzh_gr
    WHERE  �˻����� IS NULL
            OR Len(�˻�����) = 0
    UNION
    SELECT '9.3 ��������Ϊ��' ��Ϣ����,
           Cast(Count(*) AS VARCHAR(20)) ����,
           CASE
             WHEN Count(*) > 0 THEN '��������Ϊ���������������ṩ����'
             ELSE ''
           END ˵��
    FROM   tb_shzh_gr
    WHERE  �������� IS NULL
            OR Len(��������) = 0
    UNION
    SELECT '9.4 ��������Ϊ��' ��Ϣ����,
           Cast(Count(*) AS VARCHAR(20)) ����,
           CASE
             WHEN Count(*) > 0 THEN '��������Ϊ�ջ�99991231�������������ṩ����'
             ELSE ''
           END ˵��
    FROM   tb_shzh_gr
    WHERE  �������� IS NULL
            OR Len(��������) = 0
            OR �������� = '99991231'
    UNION
    SELECT '9.5 ����֤������Ϊ��' ��Ϣ����,
           Cast(Count(*) AS VARCHAR(20)) ����,
           CASE
             WHEN Count(*) > 0 THEN '֤������Ϊ�գ��������������ṩ���⣬����С����Ϊ�������'
             ELSE ''
           END ˵��
    FROM   tb_shzh_gr
    WHERE  ����֤������ IS NULL
            OR Len(����֤������) = 0
    UNION
    SELECT '9.6 ������֤������Ϊ��' ��Ϣ����,
           Cast(Count(*) AS VARCHAR(20)) ����,
           CASE
             WHEN Count(*) > 0 THEN '������֤������Ϊ�գ��������������ṩ���⣬����С����Ϊ�������'
             ELSE ''
           END ˵��
    FROM   tb_shzh_gr
    WHERE  ������֤������ IS NULL
            OR Len(������֤������) = 0
    UNION
    SELECT '9.7 ����֤����Ч�ڿ�ʼ��Ϊ��' ��Ϣ����,
           Cast(Count(*) AS VARCHAR(20)) ����,
           CASE
             WHEN Count(*) > 0 THEN '����֤����Ч�ڿ�ʼ��Ϊ��Ӱ��ʵ���Ƽ��'
             ELSE ''
           END ˵��
    FROM   tb_shzh_gr
    WHERE  ����֤����Ч�ڿ�ʼ�� IS NULL
            OR Len(����֤����Ч�ڿ�ʼ��) = 0
    UNION
    SELECT '9.8 ����֤����Ч�ڽ�ֹ��' ��Ϣ����,
           Cast(Count(*) AS VARCHAR(20)) ����,
           CASE
             WHEN Count(*) > 0 THEN '����֤����Ч�ڽ�ֹ��Ϊ��Ӱ��ʵ���Ƽ��'
             ELSE ''
           END ˵��
    FROM   tb_shzh_gr
    WHERE  ����֤����Ч�ڽ�ֹ�� IS NULL
            OR Len(����֤����Ч�ڽ�ֹ��) = 0
    UNION
    SELECT '9.9 �������δ�������˻�' ��Ϣ����,
           Cast(Count(*) AS VARCHAR(20)) ����,
           CASE
             WHEN Count(*) = 0 THEN 'Ϊ���������������ṩ���⣬��������������Ϊ�������'
             ELSE ''
           END ˵��
    FROM   tb_shzh_gr
    WHERE  ( �������˻��˺� IS NULL
              OR Len(�������˻��˺�) = 0 )
           AND ���ݺ��鷽ʽ = '�������'
    UNION
    SELECT '9.10 ���ֻ�����' ��Ϣ����,
           Cast(Count(*) AS VARCHAR(20)) ����,
           CASE
             WHEN Count(*) = 0 THEN 'Ϊ���������������ṩ���⣬��������������Ϊ�������'
             ELSE ''
           END ˵��
    FROM   tb_shzh_gr
    WHERE  ( ���ֻ����� IS NULL
              OR Len(���ֻ�����) = 0 )
  END
GO ��� !    �"  �   �      ���и����˻��������������           (       010204	    0
    1    1 =  CREATE PROCEDURE Pg_zh_all
WITH ENCRYPTION
AS
  BEGIN
    IF Object_id('tempdb..#tmp') IS NOT NULL
      DROP TABLE #tmp

    SELECT �����н��ڻ�������,
           Count(*) �˻�����,
           Count(CASE
                   WHEN �˻����� = 'һ��' THEN �˻�����
                 END) I���˻�����,
           Count(CASE
                   WHEN �˻����� = '����' THEN �˻�����
                 END) II���˻�����,
           Count(CASE
                   WHEN �˻����� = '����' THEN �˻�����
                 END) III���˻�����,
           Count(CASE
                   WHEN �˻����� = '����' THEN �˻�����
                 END) �����˻�����,
           Count(CASE
                   WHEN �˻����� = '����' THEN �˻�����
                 END) �����˻�����,
           Count(CASE
                   WHEN �˻����� <> 'һ��'
                        AND �˻����� <> '����'
                        AND �˻����� <> '����'
                        AND �˻����� <> '����'
                        AND �˻����� <> '����' THEN �˻�����
                 END) δ�����˻�����
    INTO   #tmp
    FROM   tb_shzh_gr
    GROUP  BY �����н��ڻ�������
    ORDER  BY �����н��ڻ�������

    SELECT DISTINCT a.�����н��ڻ�������,
                    b.���л�������,
                    a.�˻����� �˻�����,
                    a.I���˻����� + a.II���˻����� + a.III���˻����� + a.�����˻�����
                    + a.�����˻����� + a.δ�����˻����� ����ϼ�,
                    a.I���˻�����,
                    a.II���˻�����,
                    a.III���˻�����,
                    a.�����˻�����,
                    a.�����˻�����,
                    a.δ�����˻�����
    FROM   #tmp a
           LEFT JOIN v_bank b
                  ON a.�����н��ڻ������� = b.���б�������
    ORDER  BY �����н��ڻ�������
  END
GO ��� !    �"  �   �      ���и����˻��ظ������б� .   �����˺š��������˻�״̬����Ϣ���Ͳ����ظ��к�    @��������!N:1000 *       010205	    0
    1    1 �  CREATE PROCEDURE Pg_cf_zh(@row_num INT)
WITH ENCRYPTION
AS
  BEGIN
    IF Object_id('tempdb..#tmp') IS NOT NULL
      DROP TABLE #tmp

    SELECT DISTINCT �˺�
    INTO   #tmp
    FROM   tb_shzh_gr
    GROUP  BY �˺�,
              �˻�����,
              �˻�״̬,
              �˻�����
    HAVING Count(*) > 1
    ORDER  BY �˺�

    SET ROWCOUNT 0

    SELECT *
    FROM   tb_shzh_gr
    WHERE  �˺� IN(SELECT �˺�
                 FROM   #tmp)

    SET ROWCOUNT 0
  END
GO ��� !    �"  �   �      ���и��˽����ֶ��ṩ��� &       010206	    0
    0    1 n  CREATE PROCEDURE Pg_shjy_num
WITH ENCRYPTION
AS
  BEGIN
    SELECT ' �ｻ��������' ��Ϣ����,
           Cast(Count(*) AS VARCHAR(20)) ����,
           '' ˵��
    FROM   tb_shjy_gr
    UNION
    SELECT ' ���˻�������' ��Ϣ����,
           Cast(Count(DISTINCT �˺�) AS VARCHAR(20)) ����,
           '' ˵��
    FROM   tb_shjy_gr
    UNION
    SELECT '1. ---�����ʶ---' ��Ϣ����,
           '' ����,
           '�������ʶ��Ϣ�����������޷�ʵʩ' ˵��
    FROM   tb_shjy_gr
    UNION
    SELECT '1.1 ��������' ��Ϣ����,
           Cast(Count(*) AS VARCHAR(20)) ����,
           CASE
             WHEN Count(*) = 0 THEN 'û�д������ף����ݿ���������'
             ELSE ''
           END ˵��
    FROM   tb_shjy_gr
    WHERE  �����ʶ = '��'
    UNION
    SELECT '1.2 �跽����' ��Ϣ����,
           Cast(Count(*) AS VARCHAR(20)) ����,
           CASE
             WHEN Count(*) = 0 THEN 'û�н跽���ף����ݿ���������'
             ELSE ''
           END ˵��
    FROM   tb_shjy_gr
    WHERE  �����ʶ = '��'
    UNION
    SELECT '1.6 ���������ݹ淶' ��Ϣ����,
           Cast(Count(*) AS VARCHAR(20)) ����,
           CASE
             WHEN Count(*) > 0 THEN '�������淶���ݽ϶ཫӰ����'
             ELSE ''
           END ˵��
    FROM   tb_shjy_gr
    WHERE  �����ʶ IS NULL
            OR ( NOT �����ʶ IS NULL
                 AND Len(�����ʶ) = 0 )
            OR ( �����ʶ <> '��'
                 AND �����ʶ <> '��' )
    UNION
    SELECT '2.---��ת��ʶ---' ��Ϣ����,
           '---' ����,
           '��ת��ʶ����������������Ӱ����' ˵��
    FROM   tb_shjy_gr
    UNION
    SELECT '2.1 ת��' ��Ϣ����,
           Cast(Count(*) AS VARCHAR(20)) ����,
           CASE
             WHEN Count(*) = 0 THEN '��Ϊ0���ݿ���������'
             ELSE ''
           END ˵��
    FROM   tb_shjy_gr
    WHERE  ��ת��ʶ = 'ת��'
    UNION
    SELECT '2.2 �ֽ�' ��Ϣ����,
           Cast(Count(*) AS VARCHAR(20)) ����,
           CASE
             WHEN Count(*) = 0 THEN '��Ϊ0���ݿ���������'
             ELSE ''
           END ˵��
    FROM   tb_shjy_gr
    WHERE  ��ת��ʶ = '�ֽ�'
    UNION
    SELECT '2.3 ���������ݹ淶' ��Ϣ����,
           Cast(Count(*) AS VARCHAR(20)) ����,
           CASE
             WHEN Count(*) > 0 THEN '�������淶���ݽ϶ཫӰ����'
             ELSE ''
           END ˵��
    FROM   tb_shjy_gr
    WHERE  ��ת��ʶ IS NULL
            OR ( NOT ��ת��ʶ IS NULL
                 AND Len(��ת��ʶ) = 0 )
            OR ( ��ת��ʶ <> '�ֽ�'
                 AND ��ת��ʶ <> 'ת��' )
    UNION
    SELECT '3.---��������---' ��Ϣ����,
           '---' ����,
           'δ�ṩ�򲻷��Ϲ淶��Ӱ����' ˵��
    FROM   tb_shjy_gr
    UNION
    SELECT '3.1 ����' ��Ϣ����,
           Cast(Count(*) AS VARCHAR(20)) ����,
           CASE
             WHEN Count(*) = 0 THEN '��Ϊ0���ݿ���������'
             ELSE ''
           END ˵��
    FROM   tb_shjy_gr
    WHERE  �������� = '����'
    UNION
    SELECT '3.2 ��������' ��Ϣ����,
           Cast(Count(*) AS VARCHAR(20)) ����,
           '' ˵��
    FROM   tb_shjy_gr
    WHERE  �������� = '����'
    UNION
    SELECT '3.3 ����' ��Ϣ����,
           Cast(Count(*) AS VARCHAR(20)) ����,
           '' ˵��
    FROM   tb_shjy_gr
    WHERE  �������� = '����'
    UNION
    SELECT '3.4 �ֻ�����' ��Ϣ����,
           Cast(Count(*) AS VARCHAR(20)) ����,
           '' ˵��
    FROM   tb_shjy_gr
    WHERE  �������� = '�ֻ�'
    UNION
    SELECT '3.5 ����' ��Ϣ����,
           Cast(Count(*) AS VARCHAR(20)) ����,
           '' ˵��
    FROM   tb_shjy_gr
    WHERE  �������� = '����'
    UNION
    SELECT '3.12 ���������ݹ淶' ��Ϣ����,
           Cast(Count(*) AS VARCHAR(20)) ����,
           CASE
             WHEN Count(*) > 0 THEN '���������������ṩ����'
             ELSE ''
           END ˵��
    FROM   tb_shjy_gr
    WHERE  �������� IS NULL
            OR Len(��������) = 0
            OR ( �������� <> '����'
                 AND �������� <> '����'
                 AND �������� <> '����'
                 AND �������� <> '�ֻ�'
                 AND �������� <> '����' )
    UNION
    SELECT '9.---������Ϣ---' ��Ϣ����,
           '---' ����,
           '�й���Ϣδ�ṩ�������϶ཫӰ����' ˵��
    FROM   tb_shjy_gr
    UNION
    SELECT '9.1 �˺���ϢΪ��' ��Ϣ����,
           Cast(Count(*) AS VARCHAR(20)) ����,
           CASE
             WHEN Count(*) > 0 THEN '�˺�Ϊ�գ��������������ṩ���⣬����С����Ϊ�������'
             ELSE ''
           END ˵��
    FROM   tb_shjy_gr
    WHERE  �˺� IS NULL
            OR Len(�˺�) = 0
    UNION
    SELECT '9.2 �˻�����Ϊ��' ��Ϣ����,
           Cast(Count(*) AS VARCHAR(20)) ����,
           CASE
             WHEN Count(*) > 0 THEN '�˻�����Ϊ���������������ṩ����'
             ELSE ''
           END ˵��
    FROM   tb_shjy_gr
    WHERE  �˻����� IS NULL
            OR Len(�˻�����) = 0
    UNION
    SELECT '9.3 ��������Ϊ��' ��Ϣ����,
           Cast(Count(*) AS VARCHAR(20)) ����,
           CASE
             WHEN Count(*) > 0 THEN '��������Ϊ���������������ṩ����'
             ELSE ''
           END ˵��
    FROM   tb_shjy_gr
    WHERE  �������� IS NULL
            OR Len(��������) = 0
    UNION
    SELECT '9.4 ����ʱ��Ϊ��' ��Ϣ����,
           Cast(Count(*) AS VARCHAR(20)) ����,
           CASE
             WHEN Count(*) > 0 THEN '��������Ϊ���������������ṩ����'
             ELSE ''
           END ˵��
    FROM   tb_shjy_gr
    WHERE  ����ʱ�� IS NULL
            OR Len(����ʱ��) = 0
    UNION
    SELECT '9.5 ���׽��Ϊ��' ��Ϣ����,
           Cast(Count(*) AS VARCHAR(20)) ����,
           CASE
             WHEN Count(*) > 0 THEN '�����������ṩ����'
             ELSE ''
           END ˵��
    FROM   tb_shjy_gr
    WHERE  [���׽��] IS NULL
            OR [���׽��] = 0
    UNION
    SELECT '9.6 ���׶Է���ϢΪ��' ��Ϣ����,
           Cast(Count(*) AS VARCHAR(20)) ����,
           CASE
             WHEN Count(*) > 0 THEN '����̫�������ṩ����'
             ELSE ''
           END ˵��
    FROM   tb_shjy_gr
    WHERE  [���׶Է��˻�����] IS NULL
            OR Len([���׶Է��˻�����]) = 0
            OR [���׶Է��˺�] IS NULL
            OR Len([���׶Է��˺�]) = 0
            OR [���׶Է���������] IS NULL
            OR Len([���׶Է���������]) = 0
    UNION
    SELECT '9.7 ���׸���Ϊ��' ��Ϣ����,
           Cast(Count(*) AS VARCHAR(20)) ����,
           CASE
             WHEN Count(*) > 0 THEN '����̫���������ṩ����'
             ELSE ''
           END ˵��
    FROM   tb_shjy_gr
    WHERE  [���׸���] IS NULL
            OR Len([���׸���]) = 0
  END
GO ��� !    �"  =           ������ݷ���           2       02	    0
    1    1    1 *   CREATE PROCEDURE      AS
BEGIN

END
GO��� !    �"  �   =      ���е�λ�˻����� 
   ����������      X       0201	    0
    1    1    1��� !    �"     �      ����ҵ���˻�δ��׼�����ƣ� $   ͨ�������жϲ���ȡ�����ɵ��˻�δ��׼ Z   @���Ʒ���ҵ�˻����ƹؼ���!S:����|���չ���|��������|�칫��|ίԱ��|�ֵ����´�|ҽԺ|ѧУ|ѧԺ Z       020101	    0
    1    1 B  CREATE PROCEDURE  P_yszh_acc_name(@acc_name_key varchar(200))  WITH ENCRYPTION AS
BEGIN

SET NOCOUNT ON;
if object_id('tempdb..##tmp') is not null drop table ##tmp
SET NOCOUNT ON;
DECLARE @acc_name VARCHAR(400),@sql VARCHAR(max)              
set @acc_name=''
set @SQL=''
DECLARE acc_name CURSOR FOR 
   SELECT * FROM [dbo].[ufn_SplitStringToTable] (@acc_name_key,'|')
    OPEN acc_name
    FETCH NEXT FROM acc_name INTO @acc_name
    WHILE @@FETCH_STATUS = 0
    BEGIN
       --print @acc_name
      if LEN(@acc_name)>0 
         set @SQL=@SQL+' select [���л�������],[���л�������],[�˺�] ,[�˻�����],[�˻�����],[��������],[��������],[��������],[��������],[�˻�״̬]  from v_rhzh_dw where �˻����� not like ''%��˾%'' and �˻����� like '''+'%'+@acc_name+'%'+''' and [��������] in (''��ҵ����'',''�Ƿ�����ҵ'',''���ֺŸ��幤�̻�'',''���ֺŸ��幤�̻�'')' 
      FETCH NEXT FROM acc_name INTO @acc_name     
      if @@FETCH_STATUS=0 
         set @SQL=@SQL+' union '  
    END                
    CLOSE acc_name
    DEALLOCATE acc_name
  -- select @sql
   set @sql=left(@sql,81) +' into ##tmp '+RIGHT(@sql,len(@sql)-len(left(@sql,81)))
  --select @sql
  exec(@sql) 
   --delete ##tmp where ([�˻�״̬]='����' and [��������]<@bgn_date) or ([�˻�״̬]='����' and [��������]<@bgn_date)
  select * from ##tmp
END
GO��� !    �"  �   �      �˻��ٱ�����ٺ�׼ F   �˻�ϵͳ��־�͵�λ�˻���Ϣ��������ҵ����������ʱ��һ�㡢ר���˻��ٱ��� >   @ȡ����������!D:20190520@�������涨����!N:1@һ�㻧�涨����!N:1 \       020102	    0
    1    1 �   CREATE PROCEDURE P_dwzh_late_bak(@bgn_date CHAR(8),@inter_day1 INT,@inter_day2 INT)
WITH ENCRYPTION
AS
  BEGIN
  /****** Script for SelectTopNRows command from SSMS  ******/
  /*��ҵ������ʱ�������ձ������������2�ձ���*/
  /*�����˻����������2�ձ���*/
  /*һ�㡢��ҵר��5�����ձ���*/
      --declare @bgn_date char(8)
      --declare @inter_day1 int
      --declare @inter_day2 int
      --set @bgn_date='20150101'
      --set @inter_day1=0
      --set @inter_day2=5
      IF Object_id('tempdb..#tmp1') IS NOT NULL
        DROP TABLE #tmp1
      IF Object_id('tempdb..#tmp2') IS NOT NULL
        DROP TABLE #tmp2
      IF Object_id('tempdb..#tmp0') IS NOT NULL
        DROP TABLE #tmp0
      IF Object_id('tempdb..#tmp11') IS NOT NULL
        DROP TABLE #tmp11
      IF Object_id('tempdb..#tmp22') IS NOT NULL
        DROP TABLE #tmp22
      IF Object_id('tempdb..#tmp00') IS NOT NULL
        DROP TABLE #tmp00
      IF Object_id('tempdb..#tmp111') IS NOT NULL
        DROP TABLE #tmp111
      IF Object_id('tempdb..#tmp222') IS NOT NULL
        DROP TABLE #tmp222
      IF Object_id('tempdb..#tmp000') IS NOT NULL
        DROP TABLE #tmp000
      IF Object_id('tempdb..#tmp1111') IS NOT NULL
        DROP TABLE #tmp1111
      IF Object_id('tempdb..#tmp2222') IS NOT NULL
        DROP TABLE #tmp2222
      IF Object_id('tempdb..#tmp0000') IS NOT NULL
        DROP TABLE #tmp0000
      IF Object_id(N'tb_rhzh_dw', N'U') IS NULL or  Object_id(N'tb_log', N'U') IS NULL
        BEGIN
            SELECT '���˻�ϵͳ��λ�˻����ݻ���־����δ����' ע��
        END
      ELSE
        BEGIN
            --������
            SELECT a.[���л�������],
                   [���л�������],
                   a.[�˺�],
                   [�˻�����],
                   [�˻�����],
                   [��������],
                   LEFT(b.ҵ����ʱ��, 8)                                                      ��������,
                   Datediff(day, CONVERT(DATE, a.��������), CONVERT(DATE, LEFT(b.ҵ����ʱ��, 8))) ���,
                   [��������],
                   [��������],
                   [�˻�״̬],
                   [����ԭ��],
                   [��������]
            INTO   #tmp111
            FROM   [v_rhzh_dw] a
                   LEFT JOIN tb_log b
                          ON a.�˺� = b.�˺�
            WHERE  a.�˻����� = '����'
                   AND ( �������� = '��ҵ����'
                          OR �������� = '�Ƿ�����ҵ'
                          OR �������� = '���ֺŸ��幤�̻�'
                          OR �������� = '���ֺŸ��幤�̻�' )
                   AND Charindex('����', b.ҵ������) > 0
                   AND [��������] <= LEFT(b.ҵ����ʱ��, 8)
                   AND a.�������� >= @bgn_date
            ORDER  BY a.�˺�,
                      a.���л�������
            SELECT a.*
            INTO   #tmp222
            FROM   #tmp111 a
            WHERE  �������� = (SELECT Min (��������)
                           FROM   #tmp111 b
                           WHERE  a.�˺� = b.�˺�
                                  AND a.�������� = b.��������)
            ORDER  BY a.�˺�,
                      a.���л�������
            SELECT *
            INTO   #tmp000
            FROM   #tmp222
            WHERE  ��� > @inter_day1
            --����ʱ
            SELECT a.[���л�������],
                   [���л�������],
                   a.[�˺�],
                   [�˻�����],
                   [�˻�����],
                   [��������],
                   LEFT(b.ҵ����ʱ��, 8)                                                      ��������,
                   Datediff(day, CONVERT(DATE, a.��������), CONVERT(DATE, LEFT(b.ҵ����ʱ��, 8))) ���,
                   [��������],
                   [��������],
                   [�˻�״̬],
                   [����ԭ��],
                   [��������]
            INTO   #tmp1111
            FROM   [v_rhzh_dw] a
                   LEFT JOIN tb_log b
                          ON a.�˺� = b.�˺�
            WHERE  a.�˻����� = '����ʱ'
                   AND ( �������� = '��ҵ����'
                          OR �������� = '�Ƿ�����ҵ'
                          OR �������� = '���ֺŸ��幤�̻�'
                          OR �������� = '���ֺŸ��幤�̻�' )
                   AND Charindex('����ʱ', b.ҵ������) > 0
                   AND [��������] <= LEFT(b.ҵ����ʱ��, 8)
                   AND a.�������� >= @bgn_date
            ORDER  BY a.�˺�,
                      a.���л�������
            SELECT a.*
            INTO   #tmp2222
            FROM   #tmp1111 a
            WHERE  �������� = (SELECT Min (��������)
                           FROM   #tmp1111 b
                           WHERE  a.�˺� = b.�˺�
                                  AND a.�������� = b.��������)
            ORDER  BY a.�˺�,
                      a.���л�������
            SELECT *
            INTO   #tmp0000
            FROM   #tmp2222
            WHERE  ��� > @inter_day1
            --һ�㻧
            SELECT a.[���л�������],
                   [���л�������],
                   a.[�˺�],
                   [�˻�����],
                   [�˻�����],
                   [��������],
                   LEFT(b.ҵ����ʱ��, 8)                                                      ��������,
                   Datediff(day, CONVERT(DATE, a.��������), CONVERT(DATE, LEFT(b.ҵ����ʱ��, 8))) ���,
                   [��������],
                   [��������],
                   [�˻�״̬],
                   [����ԭ��],
                   [��������]
            INTO   #tmp1
            FROM   [v_rhzh_dw] a
                   LEFT JOIN tb_log b
                          ON a.�˺� = b.�˺�
            WHERE  a.�˻����� = 'һ��'
                   AND Charindex('һ��', b.ҵ������) > 0
                   AND [��������] <= LEFT(b.ҵ����ʱ��, 8)
                   AND a.�������� >= @bgn_date
            ORDER  BY a.�˺�,
                      a.���л�������
            SELECT a.*
            INTO   #tmp2
            FROM   #tmp1 a
            WHERE  �������� = (SELECT Min (��������)
                           FROM   #tmp1 b
                           WHERE  a.�˺� = b.�˺�
                                  AND a.�������� = b.��������)
            ORDER  BY a.�˺�,
                      a.���л�������
            SELECT *
            INTO   #tmp0
            FROM   #tmp2
            WHERE  ��� > @inter_day2
            --��Ԥ��ר��
            SELECT a.[���л�������],
                   [���л�������],
                   a.[�˺�],
                   [�˻�����],
                   [�˻�����],
                   [��������],
                   LEFT(b.ҵ����ʱ��, 8)                                                      ��������,
                   Datediff(day, CONVERT(DATE, a.��������), CONVERT(DATE, LEFT(b.ҵ����ʱ��, 8))) ���,
                   [��������],
                   [��������],
                   [�˻�״̬],
                   [����ԭ��],
                   [��������]
            INTO   #tmp11
            FROM   [v_rhzh_dw] a
                   LEFT JOIN tb_log b
                          ON a.�˺� = b.�˺�
            WHERE  a.�˻����� = '��Ԥ��'
                   AND Charindex('��Ԥ��', b.ҵ������) > 0
                   AND [��������] <= LEFT(b.ҵ����ʱ��, 8)
                   AND a.�������� >= @bgn_date
            ORDER  BY a.�˺�,
                      a.���л�������
            SELECT a.*
            INTO   #tmp22
            FROM   #tmp11 a
            WHERE  �������� = (SELECT Min (��������)
                           FROM   #tmp11 b
                           WHERE  a.�˺� = b.�˺�
                                  AND a.�������� = b.��������)
            ORDER  BY a.�˺�,
                      a.���л�������
            SELECT *
            INTO   #tmp00
            FROM   #tmp22
            WHERE  ��� > @inter_day2
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
��� !    �"      =      ���е�λ�˻�ʵ���Ʒ��� j   �Ӽ������Դ�в��ҿͻ������п��ܴ��ڵ����⣨��Ҫ��ʾ��������ݣ����ص������б����Ϊ���ݹ淶�ж����Ӣ�ģ�      ^       0202	    0
    1    1    1��� !    �"            ��λ�˻������������� .   ͨ�����Ҳ��淶�˻����ƣ����ֿ��ܵ��˻���������    @��������!N:10000 f       020201	    0
    1    1 �  CREATE PROCEDURE  P_acc_name_not_real_ent(@row_num int) WITH ENCRYPTION AS
BEGIN
if object_id(N'tb_shzh_dw',N'U') is not null 
begin
set rowcount @row_num
select * from tb_shzh_dw 
where len(�˻�����)<5  or �˻����� is null or isnumeric(�˻�����)=1 or �˻����� like '[A-Z,a-z,0-9,!@#$%^&*/?<>~`]%'
set rowcount 0
end
else
begin
select '����ҵ���е�λ�˻�����δ����' ע��
end
END
GO��� !    �"  3           ��λ�˻�֤�������������� 8   ������������֤��������Ϣ�����ֿ��ܴ��ڵĵ�λ�˻���������    @��������!N:100000 h       020202	    0
    1    1 �  CREATE PROCEDURE P_acc_ent_id_wt (@row_num INT)
WITH ENCRYPTION
AS
  BEGIN
      IF Object_id(N'tb_shzh_dw', N'U') IS NOT NULL
        BEGIN
            SET ROWCOUNT @row_num
            SELECT *
            FROM   tb_shzh_dw a
            WHERE  ( a.ִ�պ��� IS NULL )
                    OR Len(Ltrim(ִ�պ���)) < 6
                    OR ( ִ�պ��� LIKE '%00000000%' )
                    OR ( ִ�պ��� LIKE '%1111%' )
                    OR ( ִ�պ��� LIKE '%2222%' )
                    OR ( ִ�պ��� LIKE '%8888%' )
                    OR ( ִ�պ��� LIKE '%9999%' )
                    OR ( Substring(Ltrim(ִ�պ���), 1, 1) = Substring(Ltrim(ִ�պ���), 2, 1)
                         AND Substring(Ltrim(ִ�պ���), 3, 1) = Substring(Ltrim(ִ�պ���), 2, 1)
                         AND Substring(Ltrim(ִ�պ���), 3, 1) = Substring(Ltrim(ִ�պ���), 4, 1)
                         AND Substring(Ltrim(ִ�պ���), 5, 1) = Substring(Ltrim(ִ�պ���), 4, 1)
                         AND Substring(Ltrim(ִ�պ���), 5, 1) = Substring(Ltrim(ִ�պ���), 6, 1) )
            SET ROWCOUNT 0
        END
      ELSE
        BEGIN
            SELECT '����ҵ���е�λ�˻�����δ����' ע��
        END
  END
GO ��� !    �"  �           ��λ֤������ͬ���Ʋ�ͬ      -   @�ȽϺ��ֵ�����������!N:6@��������!N:100000 j       020203	    0
    1    1 W  CREATE PROCEDURE P_acc_same_id_no_name_ent(@bj_num int,@row_num int) WITH ENCRYPTION AS
BEGIN
if object_id(N'tb_shzh_dw',N'U') is not null 
begin
if object_id('tempdb..#tmp') is not null drop table #tmp
select distinct ִ�պ���,count(distinct left(replace(�˻�����,' ',''),@bj_num )) �˻�����
into #tmp
from tb_shzh_dw
group by ִ�պ���
having count(distinct left(replace(�˻�����,' ',''),@bj_num ))>1
select a.*,b.�˻�����,b.�˺� from #tmp a
left join tb_shzh_dw b
on a.ִ�պ���=b.ִ�պ���
order by a.ִ�պ���
end
else
begin
select '����ҵ���е�λ�˻�����δ����' ע��
end
END
GO��� !    �"  �           3104����ʱ����ϴ��˻�     �����е�֤��������ȫ�ſ����н�� %   @����ʱ��С����!N:90@��������!N:10000 `       020203	    0
    0    1   CREATE PROCEDURE P_acc_per_age_60 (@min_age int,@row_num int) WITH ENCRYPTION AS
BEGIN
if object_id('tempdb..#tmp') is not null drop table #tmp
if object_id('tempdb..#tmp0') is not null drop table #tmp0
if object_id('tempdb..#tmp00') is not null drop table #tmp00
if object_id('tempdb..#tmp000') is not null drop table #tmp000
if object_id('tempdb..#tmp1') is not null drop table #tmp1
if object_id('tempdb..#tmp2') is not null drop table #tmp2  
if object_id('tempdb..#tmp3') is not null drop table #tmp3
select a.bank_code �����������,b.���л�������,a.acc_no �˺�,a.acc_name ����,a.cst_no �ͻ���,
a.id_no ֤����,a.open_time ����ʱ��,a.close_time ����ʱ��,
(case when close_flag='0' then '����' when close_flag='1' then '����' when close_flag='2' then '����' end ) ��������־,
(case when len(rtrim(ltrim(id_no)))=15 then year(open_time)-convert(int,'19'+substring(ltrim(id_no),7,2))
      when len(rtrim(ltrim(id_no)))=18 then year(open_time)-convert(int,substring(ltrim(id_no),7,4))
      end
) ����
into #tmp1
from tb_acc a left join V_Bank b on a.bank_code=b.���л�������
where (acc_type='0' or acc_type='1' ) and (patindex('%[^0-9xX]%',rtrim(ltrim(id_no)))<=0) and
(
  (
   len(rtrim(ltrim(id_no)))=15 and year(open_time)-convert(int,'19'+substring(ltrim(id_no),7,2))>=@min_age
   )
   or
   (
   len(rtrim(ltrim(id_no)))=18 and year(open_time)-convert(int,substring(ltrim(id_no),7,4))>=@min_age
    )
 )

select �˺�,count(�˺�) ���ױ���,sum(case when (��ת='�ֽ�') then 1 else 0 end) �ֽ���� 
into #tmp2
from V_Txn
where �˺� in (select distinct �˺� from #tmp1)
group by �˺�
order by �˺�
set rowcount @row_num
select a.*,b.���ױ���,b.�ֽ����
from #tmp1 a left join #tmp2 b
on a.�˺�=b.�˺�
order by a.�����������,a.�˺�
set rowcount 0
END
GO��� !    �"  �           3105����֤ͬ�������Ʋ�ͬ ,   ����֤������ͬ����������ͬ�����ɸѡ�쳣�˻�    @��������!N:10000 b       020204	    0
    0    1 4  CREATE PROCEDURE P_acc_same_id_no_name_per(@row_num int) WITH ENCRYPTION AS
BEGIN
if object_id('tempdb..#tmp') is not null drop table #tmp
if object_id('tempdb..#tmp0') is not null drop table #tmp0
if object_id('tempdb..#tmp00') is not null drop table #tmp00
if object_id('tempdb..#tmp000') is not null drop table #tmp000
if object_id('tempdb..#tmp1') is not null drop table #tmp1
if object_id('tempdb..#tmp2') is not null drop table #tmp2  
if object_id('tempdb..#tmp3') is not null drop table #tmp3
select distinct id_no,count(distinct replace(acc_name,' ','')) cst_cnt
into #tmp3
from tb_acc
where (acc_type='0' or acc_type='1') and (patindex('%[^0-9xX]%',rtrim(ltrim(id_no)))<=0) and (len(rtrim(ltrim(id_no)))=15 or len(rtrim(ltrim(id_no)))=18)
group by id_no
having count(distinct replace(acc_name,' ',''))>=2


select a.bank_code �����������,b.���л�������,acc_no �˺�,acc_name ����,cst_no �ͻ���,id_no ֤���� 
,open_time ����ʱ��,close_time ����ʱ��,
(case when close_flag='0' then '����' when close_flag='1' then '����' when close_flag='2' then '����' end ) ��������־
into #tmp1
    from tb_acc a left join V_Bank b on a.bank_code=b.���л�������
WHERE  id_no in (select id_no from #tmp3)

select �˺�,count(�˺�) ���ױ���,sum(case when (��ת='�ֽ�') then 1 else 0 end) �ֽ���� 
into #tmp2
from V_Txn
where �˺� in (select distinct �˺� from #tmp1)
group by �˺�
order by �˺�
set rowcount @row_num
select a.*,b.���ױ���,b.�ֽ����
from #tmp1 a left join #tmp2 b
on a.�˺�=b.�˺�
order by a.֤����,a.�����������,a.�˺�
set rowcount 0
END
GO��� !     �"  .          3106�����˻����ɶԹ��˻�    ����    @��������!N:1000 d       020205	    0
    0    1 �  CREATE PROCEDURE  P_acc_per_no_per (@row_num int) WITH ENCRYPTION AS
BEGIN
if object_id('tempdb..#tmp') is not null drop table #tmp
if object_id('tempdb..#tmp0') is not null drop table #tmp0
if object_id('tempdb..#tmp00') is not null drop table #tmp00
if object_id('tempdb..#tmp000') is not null drop table #tmp000
if object_id('tempdb..#tmp1') is not null drop table #tmp1
if object_id('tempdb..#tmp2') is not null drop table #tmp2  
if object_id('tempdb..#tmp3') is not null drop table #tmp3
select a.bank_code �����������,b.���л�������,a.acc_no �˺�,a.acc_name ����,a.cst_no �ͻ���,a.id_no ֤����,
a.ent_cst_type �˻�����,a.acc_type �˻���ʶ,a.open_time ����ʱ��,a.close_time ����ʱ�� into #tmp1
    from tb_acc a left join V_Bank b
    on a.bank_code=b.���л�������
    where  len(ltrim(rtrim(acc_name)))<=4 AND (acc_type='2')
select �˺�,count(�˺�) ���ױ���,sum(case when (��ת='�ֽ�') then 1 else 0 end) �ֽ���� 
into #tmp2
from V_Txn
where �˺� in (select distinct �˺� from #tmp1)
group by �˺�
order by �˺�
set rowcount @row_num
select a.*,b.���ױ���,b.�ֽ����
from #tmp1 a left join #tmp2 b
on a.�˺�=b.�˺�
order by a.�����������,a.�˺�
set rowcount 0
END
GO��� ! !   �"  Z    =      ���е�λ�˻��ȶԷ��� 4   ��Ҫ���ܣ�ɸѡ��ҵ�����˻�������������ʹ�÷�������� ?   @ҵ��ʼʱ��!D:20110101@ҵ�����ʱ��!D:20120530@��������!N:100 l       0203	    0
    1    1    1 P  CREATE PROCEDURE P_acc_ent_rmb_sum (@bgn_date char(8), @end_date char(8), @row_num int) AS
BEGIN
if object_id('tempdb..#tmp') is not null drop table #tmp
set rowcount @row_num
select self_acc_no �˺�, count(*) �ܱ���, sum(amt) �ܽ��, avg(amt) ƽ�����
into #tmp
from tb_rmb_txn
where (tb_rmb_txn.acc_type='2' )
and tb_rmb_txn.date between @bgn_date and @end_date
group by self_acc_no
order by count(*) desc
set rowcount 0
select b.id_no ֤������, b.acc_name �˻�����, b.bank_code ���д���, a.*
from  #tmp a left join tb_acc b on  a.�˺� = b.acc_no
order by �ܽ�� desc
END
GO��� ! "   �"  [    Z       .�˻���������      >   @ҵ��ʼʱ��!D:20120101@ҵ�����ʱ��!D:20130228@��������!N:20 n       020301	    0
    1    1 �  CREATE PROCEDURE P_acc_ent_rmb_single (@bgn_date char(8), @end_date char(8), @row_num int) AS
BEGIN
set rowcount @row_num
select self_acc_no �˺�, max(amt) ���ʽ��
into #tmp
from tb_rmb_txn
where (tb_rmb_txn.acc_type='2')
and tb_rmb_txn.date between @bgn_date and @end_date
group by self_acc_no
order by max(amt) desc
set rowcount 0
select b.id_no ֤������, b.acc_name �˻�����, b.bank_code ���д���, a.*
from  #tmp a left join tb_acc b on  a.�˺� = b.acc_no
order by ���ʽ�� desc
END
GO��� ! #   �"  M   [    %   ��λ�˻�δ��׼��δ����_�ȶ��������� @   �����в���δ�����˻�ϵͳ���������˻�����ϵͳ�ѳ������Ѿ����˻� \   @�Ƿ��޳����Ϊ0���˻�����1�ǡ�0��!S:1@�Ƿ���ʾ���ױ�������1�ǡ�0��!S:1@��С���ױ���!N:2 o       02030101	    0
    1    1 l  CREATE PROCEDURE P_yeb_not_bak (@is_ok CHAR(1),@txn_ok CHAR(1),@jybs INT)
WITH ENCRYPTION
AS
  BEGIN
    IF Object_id('tempdb..#tmp') IS NOT NULL
      DROP TABLE #tmp

    IF Object_id('tempdb..#tmp0') IS NOT NULL
      DROP TABLE #tmp0

    IF Object_id('tempdb..#tmp1') IS NOT NULL
      DROP TABLE #tmp1

    IF Object_id('tempdb..#tmp2') IS NOT NULL
      DROP TABLE #tmp2

    IF Object_id(N'tb_yeb', N'U') IS NULL
        OR Object_id(N'tb_rhzh_dw', N'U') IS NULL
      BEGIN
        SELECT '����ҵ�����������˻�ϵͳ����δ����' ע��
      END
    ELSE
      BEGIN
        -- DECLARE @yeb_date VARCHAR(8)
        --DECLARE @is_ok CHAR(1)
        --DECLARE @txn_ok CHAR(1)
        --SET @is_ok='1'
        --SET @txn_ok='1'
        IF @is_ok <> '1'
           AND @is_ok <> '0'
            OR @txn_ok <> '1'
               AND @txn_ok <> '0'
          BEGIN
            SELECT '���Ƿ�������Ϊ0���˻�����ֻ��Ϊ0��1���Ƿ���ʾ���ױ�������ֻ��Ϊ0��1' ��������
          END
        ELSE
          BEGIN
            IF Object_id(N'tb_shjy_dw', N'U') IS NULL--δ�������н���ʱ��Ĭ��Ϊ���������
              BEGIN
                SET @txn_ok='0'
              END

            SELECT �����������,
                   ������,
                   ����,
                   �˺�,
                   ���,
                   �������
            INTO   #tmp
            FROM   [tb_yeb]
            WHERE  �˺� NOT IN (SELECT DISTINCT �˺�
                              FROM   v_rhzh_dw
                              WHERE  �˻�״̬ = '����')

            --RETURN
            SELECT a.*,
                   b.�������� ���п���,
                   b.�������� ��������,
                   b.�������� ���о���,
                   b.�˻����� ��������,
                   b.�˻�״̬ ����״̬
            INTO   #tmp0
            FROM   #tmp a
                   LEFT JOIN v_rhzh_dw b
                          ON a.�˺� = b.�˺�
            ORDER  BY �����������,
                      �˺�

            IF Ltrim(@is_ok) = '1'
              DELETE FROM #tmp0
              WHERE  �������� >= �������
                      OR ���о��� >= �������
                      OR ��� = 0
            ELSE
              DELETE FROM #tmp0
              WHERE  �������� >= �������
                      OR ���о��� >= �������

            --SELECT *
            --FROM   #tmp0
            IF @txn_ok = '1'
              BEGIN
                SELECT DISTINCT �˺�
                INTO   #tmp1
                FROM   #tmp0

                SELECT a.�˺�,
                       Count(b.�˺�) ����,
                       Max(���׽��) ����׽��,
                       Sum(CASE
                             WHEN ( �����ʶ = '��' ) THEN 1
                             ELSE 0
                           END) ����,
                       Sum(CASE
                             WHEN ( �����ʶ = '��' ) THEN 1
                             ELSE 0
                           END) �跽,
                       Sum(CASE
                             WHEN ( ��ת��ʶ = '�ֽ�'
                                    AND �����ʶ = '��' ) THEN 1
                             ELSE 0
                           END) �����ֽ�,
                       Sum(CASE
                             WHEN ( ��ת��ʶ = '�ֽ�'
                                    AND �����ʶ = '��' ) THEN 1
                             ELSE 0
                           END) �跽�ֽ�,
                       Min(��������) ����ʱ��,
                       Max(��������) ���ʱ��
                INTO   #tmp2
                FROM   #tmp1 a
                       LEFT JOIN tb_shjy_dw b
                              ON a.�˺� = b.�˺�
                GROUP  BY a.�˺�

                SELECT a.*,
                       b.����,
                       b.����׽��,
                       b.����,
                       b.�跽,
                       b.�����ֽ�,
                       b.�跽�ֽ�,
                       b.���ʱ��,
                       b.����ʱ��
                FROM   #tmp0 a
                       LEFT JOIN #tmp2 b
                              ON a.�˺� = b.�˺�
                WHERE  ���� >= @jybs
              END
            ELSE
              BEGIN
                SELECT *
                FROM   #tmp0
              END
          END
      END
  END
GO��� ! $   �"  ]    [    '   ��λ�˻�δ��׼��δ����_�ȶ������˻����� �   ����1�����з�ע��״̬�˻�������ϵͳ�����ڻ��ѳ���;����2�����м��������ע���˻����˻�ϵͳ������;����3:������ע���˻����˻�ϵͳ����ʱ��ʱ���;����9�����С� �   @��鿪ʼ����!D:20190101@δ�������ͣ�1����1��2����2��3����3��9�ϲ���!S:9@�Ƿ�ȶ��˻����ʣ�0��1�ǣ�!S:0@�Ƿ���ʾ���ױ�������1�ǡ�0��!S:1@��С���ױ���!N:2 p       02030102	    0
    1    1 <1  CREATE PROCEDURE P_zh_not_bak(@bgn_date CHAR(8),@mode CHAR(1),@zhxz CHAR(1),@txn_ok CHAR(1),@jybs INT)
WITH ENCRYPTION
AS
  BEGIN
    --����״̬Ϊ����������������������
    --״̬Ϊ������������״̬Ϊ�����ҳ��������ڼ�����ڻ�����
    IF Object_id('tempdb..#tmp') IS NOT NULL
      DROP TABLE #tmp

    IF Object_id('tempdb..#tmp1') IS NOT NULL
      DROP TABLE #tmp1

    IF Object_id('tempdb..#tmp11') IS NOT NULL
      DROP TABLE #tmp11

    IF Object_id('tempdb..#tmp111') IS NOT NULL
      DROP TABLE #tmp111

    IF Object_id('tempdb..#tmp2') IS NOT NULL
      DROP TABLE #tmp2

    IF Object_id('tempdb..#tmp22') IS NOT NULL
      DROP TABLE #tmp22

    IF Object_id('tempdb..#tmp222') IS NOT NULL
      DROP TABLE #tmp222

    IF Object_id('tempdb..#tmp3') IS NOT NULL
      DROP TABLE #tmp3

    IF Object_id('tempdb..#tmp33') IS NOT NULL
      DROP TABLE #tmp33

    IF Object_id('tempdb..#tmp333') IS NOT NULL
      DROP TABLE #tmp333

    IF Object_id('tempdb..#tmp4') IS NOT NULL
      DROP TABLE #tmp4

    IF Object_id('tempdb..#tmp44') IS NOT NULL
      DROP TABLE #tmp44

    IF Object_id('tempdb..#tmp444') IS NOT NULL
      DROP TABLE #tmp444

    IF Object_id('tempdb..#tmp5') IS NOT NULL
      DROP TABLE #tmp5

    IF Object_id('tempdb..#tmp6') IS NOT NULL
      DROP TABLE #tmp6

    IF Object_id('tempdb..##tmp_end') IS NOT NULL
      DROP TABLE ##tmp_end

    --DECLARE @bgn_date CHAR(8)
    --DECLARE @mode CHAR(1)
    --DECLARE @zhxz CHAR(1)
    --DECLARE @txn_ok CHAR(1)
    --DECLARE @jybs INT

    --SET @bgn_date='20190101'
    --SET @mode='1'
    --SET @zhxz='0'
    --SET @txn_ok='1'
    --SET @jybs=2

    IF Object_id(N'tb_rhzh_dw', N'U') IS NULL
        OR Object_id(N'tb_shzh_dw', N'U') IS NULL
      BEGIN
        SELECT '���˻�ϵͳ��λ�˻����ݻ���ҵ���е�λ�˻�����δ����' ע��
      END
    ELSE
      BEGIN
        IF @mode <> '1'
           AND @mode <> '2'
           AND @mode <> '3'
           AND @mode <> '9'
          BEGIN
            SELECT '��δ����ģʽֻ��Ϊ1��2��3��9' ��������
          END
        ELSE
          BEGIN
            IF Object_id(N'tb_shjy_dw', N'U') IS NULL--δ�������н���ʱ��Ĭ��Ϊ���������
              BEGIN
                SET @txn_ok='0'
              END

            ----����1�����з�ע��״̬�˻�������ϵͳ�����ڻ��ѳ���
            --������������˻����˻�ϵͳ�����˻��в�����(�Ƚ��������ڷ�ֹ���вɼ����˻����ڴ��ڼ���ڶ������)
            ----��ȡ�˻�ϵͳ����״̬�����˻�into tmp1����������պ������˻���
            ----ͬһ�˻����������ͳ���״̬ʱ��һ������״̬Ϊ���״̬
            SELECT DISTINCT �˺�,
                            ( CASE
                                WHEN �˻����� = 'Ԥ��'
                                      OR �˻����� = '��Ԥ��' THEN 'ר��'
                                WHEN �˻����� = '��ʱ'
                                      OR �˻����� = '����ʱ' THEN '��ʱ'
                                ELSE �˻�����
                              END ) �˻�����
            INTO   #tmp1
            FROM   tb_rhzh_dw
            WHERE  ( �˻�״̬ = '����'
                      OR �˻�״̬ = '����' )

            -- ��ȡ�˻�����λ�˻��ǳ���״̬������tmp2
            SELECT DISTINCT �˺�,
                            �˻�����
            INTO   #tmp2
            FROM   tb_shzh_dw
            WHERE  �˻�״̬ <> 'ע��'

            ---�ǳ���״̬��������ϵͳ�����˺��в����� #tmp3 --------------
            SELECT a.�˺�,
                   a.�˻�����
            INTO   #tmp3
            FROM   #tmp2 a
            WHERE  NOT EXISTS (SELECT �˺�,
                                      �˻�����
                               FROM   #tmp1 b
                               WHERE  a.�˺� = b.�˺�
                                      AND a.�˻����� = CASE
                                                     WHEN @zhxz = '0' THEN a.�˻����� --���Ƚ��˻�����
                                                     WHEN @zhxz = '1' THEN b.�˻����� --�Ƚ��˻�����
                                                   END)

            -- AND �˺� = '178257227216'
            --��ȡ������Ϣ#tmp4
            SELECT DISTINCT c.�����н��ڻ�������,
                            d.���л�������,
                            a.�˺�,
                            c.�˻�����,
                            c.�˻�����,
                            c.��������,
                            c.��������,
                            c.�˻�״̬,
                            b.�˻����� ��������,
                            b.�������� ���п���,
                            b.�������� ��������,
                            b.�������� ���о���,
                            b.�˻�״̬ ����״̬
            INTO   #tmp4
            FROM   #tmp3 a
                   LEFT JOIN tb_rhzh_dw b
                          ON a.�˺� = b.�˺�
                   LEFT JOIN tb_shzh_dw c
                          ON a.�˺� = c.�˺�
                   LEFT JOIN V_Bank d
                          ON c.�����н��ڻ������� = d.���б�������
            ORDER  BY �����н��ڻ�������,
                      �˻�����

            --RETURN
            ---����2�����м��������ע���˻����˻�ϵͳ������
            --��ȡ�˻�ϵͳ����״̬�����˻�into tmp1
            SELECT DISTINCT �˺�
            INTO   #tmp11
            FROM   tb_rhzh_dw

            -- WHERE  �˻����� = '����'
            ---- ��ȡ�˻�����λ�˻�����������tmp2
            SELECT DISTINCT �˺�,
                            ��������
            INTO   #tmp22
            FROM   tb_shzh_dw
            WHERE
              --�˻����� = '����'
              --AND 
              �˻�״̬ = 'ע��'
              AND �������� >= @bgn_date --�������ע����ȥ�������˻����ڴ�����Χ��

            ---���ݼ�����ڳ����˺���ϵͳ����״̬�˺��в�����  #tmp3 --------------
            SELECT �˺�,
                   ��������
            INTO   #tmp33
            FROM   #tmp22
            WHERE  �˺� NOT IN (SELECT �˺�
                              FROM   #tmp11)

            --��ȡ������Ϣ
            SELECT DISTINCT c.�����н��ڻ�������,
                            d.���л�������,
                            a.�˺�,
                            c.�˻�����,
                            c.�˻�����,
                            c.��������,
                            c.��������,
                            c.�˻�״̬,
                            b.�˻����� ��������,
                            b.�������� ���п���,
                            b.�������� ��������,
                            b.�������� ���о���,
                            b.�˻�״̬ ����״̬
            --datediff(day,CONVERT(date,c.��������),CONVERT(date,c.��������)) 
            INTO   #tmp44
            FROM   #tmp33 a
                   LEFT JOIN tb_rhzh_dw b
                          ON a.�˺� = b.�˺�
                   LEFT JOIN tb_shzh_dw c
                          ON a.�˺� = c.�˺�
                   LEFT JOIN V_Bank d
                          ON c.�����н��ڻ������� = d.���б�������
            --�޳������ڲ��������������������������˻�
            WHERE  Datediff(day, CONVERT(DATE, c.��������), CONVERT(DATE, c.��������)) > 3

            --return
            ---����3:������ע���˻����˻�ϵͳ����ʱ��ʱ���
            --��ȡ�˻�ϵͳ����״̬�����˻�into tmp1
            SELECT DISTINCT �˺�,
                            Max(��������) ��������
            INTO   #tmp111
            FROM   tb_rhzh_dw
            WHERE  �˻�״̬ = '����'
            -- AND �˺� = '176726208967'
            GROUP  BY �˺�

            ---- ��ȡ�˻�����λ�˻�����������tmp2
            SELECT DISTINCT �˺�,
                            ��������
            INTO   #tmp222
            FROM   tb_shzh_dw
            WHERE  �˻�״̬ = 'ע��'

            -- AND �˺� = '176726208967'
            ---��ȡ������������>�����������ڵļ�¼  #tmp3 --------------
            SELECT a.�˺�
            INTO   #tmp333
            FROM   #tmp222 a
                   INNER JOIN #tmp111 b
                           ON a.�˺� = b.�˺�
            WHERE  a.�������� > b.��������

            --  RETURN
            --��ȡ������Ϣ
            SELECT DISTINCT c.�����н��ڻ�������,
                            d.���л�������,
                            a.�˺�,
                            c.�˻�����,
                            c.�˻�����,
                            c.��������,
                            c.��������,
                            c.�˻�״̬,
                            b.�˻����� ��������,
                            b.�������� ���п���,
                            b.�������� ��������,
                            b.�������� ���о���,
                            b.�˻�״̬ ����״̬
            INTO   #tmp444
            FROM   #tmp333 a
                   LEFT JOIN v_rhzh_dw b
                          ON a.�˺� = b.�˺�
                   LEFT JOIN tb_shzh_dw c
                          ON a.�˺� = c.�˺�
                   LEFT JOIN V_Bank d
                          ON c.�����н��ڻ������� = d.���б�������

            --return
            DECLARE @s VARCHAR(400)

            IF @mode = '1'
              BEGIN
                SET @s ='
				SELECT *
				into ##tmp_end
                FROM   #tmp4
                ORDER  BY �����н��ڻ�������,
                          �˻�����'
              END

            IF @mode = '2'
              BEGIN
                SET @s ='
				SELECT *
				into ##tmp_end
                FROM   #tmp44
                ORDER  BY �����н��ڻ�������,
                          �˻�����'
              END

            IF @mode = '3'
              BEGIN
                SET @s ='
				SELECT *
				into ##tmp_end
                FROM   #tmp444
                ORDER  BY �����н��ڻ�������,
                          �˻�����'
              END

            --�ϲ�����δ��׼������
            IF @mode = '9'
              BEGIN
                SET @s ='
				SELECT *
                into ##tmp_end
                FROM   #tmp4
                UNION
                SELECT *
                FROM   #tmp44
                UNION
                SELECT *
                FROM   #tmp444
                ORDER  BY �����н��ڻ�������,
                          �˻�����'
              END

            EXEC(@s)

            IF @txn_ok = '1'
              BEGIN
                SELECT DISTINCT �˺�
                INTO   #tmp5
                FROM   ##tmp_end

                SELECT a.�˺�,
                       Count(b.�˺�) ����,
                       Max(���׽��) ����׽��,
                       Sum(CASE
                             WHEN ( �����ʶ = '��' ) THEN 1
                             ELSE 0
                           END) ����,
                       Sum(CASE
                             WHEN ( �����ʶ = '��' ) THEN 1
                             ELSE 0
                           END) �跽,
                       Sum(CASE
                             WHEN ( ��ת��ʶ = '�ֽ�'
                                    AND �����ʶ = '��' ) THEN 1
                             ELSE 0
                           END) �����ֽ�,
                       Sum(CASE
                             WHEN ( ��ת��ʶ = '�ֽ�'
                                    AND �����ʶ = '��' ) THEN 1
                             ELSE 0
                           END) �跽�ֽ�,
                       Min(��������) ����ʱ��,
                       Max(��������) ���ʱ��
                INTO   #tmp6
                FROM   #tmp5 a
                       LEFT JOIN tb_shjy_dw b
                              ON a.�˺� = b.�˺�
                GROUP  BY a.�˺�

                SELECT a.*,
                       b.����,
                       b.����׽��,
                       b.����,
                       b.�跽,
                       b.�����ֽ�,
                       b.�跽�ֽ�,
                       b.���ʱ��,
                       b.����ʱ��
                FROM   ##tmp_end a
                       LEFT JOIN #tmp6 b
                              ON a.�˺� = b.�˺�
                WHERE  ���� >= @jybs
              END
            ELSE
              BEGIN
                SELECT *
                FROM   ##tmp_end
              END
          END
      END
  END
GO ��� ! %   �"  (   [    '   ��λ�˻�δ��׼��δ����_�ȶ����н������� [   ����1���н��׵�δ�ṩ�˻���Ϣ���˻�δ������--����2�������������ں��Է������ף�����9���ϲ��� M   @��С���ױ���!N:5@����׽��!N:1000@δ�������ͣ�1����1��2����2��9�ϲ���!N:9 r       02030103	    0
    1    1 [  CREATE PROCEDURE P_jy_not_bak(@jybs INT,@jyje INT,@mode CHAR(1))
WITH ENCRYPTION
AS
  BEGIN
    IF Object_id('tempdb..#tmp') IS NOT NULL
      DROP TABLE #tmp

    IF Object_id('tempdb..#tmp0') IS NOT NULL
      DROP TABLE #tmp0

    IF Object_id('tempdb..#tmp00') IS NOT NULL
      DROP TABLE #tmp00

    IF Object_id('tempdb..#tmp000') IS NOT NULL
      DROP TABLE #tmp000

    IF Object_id('tempdb..#tmp1') IS NOT NULL
      DROP TABLE #tmp1

    IF Object_id('tempdb..#tmp11') IS NOT NULL
      DROP TABLE #tmp11

    IF Object_id('tempdb..#tmp2') IS NOT NULL
      DROP TABLE #tmp2

    IF Object_id('tempdb..#tmp22') IS NOT NULL
      DROP TABLE #tmp22

    IF Object_id('tempdb..#tmp3') IS NOT NULL
      DROP TABLE #tmp3

    IF Object_id('tempdb..#tmp33') IS NOT NULL
      DROP TABLE #tmp33

    IF Object_id('tempdb..#tmp4') IS NOT NULL
      DROP TABLE #tmp4

    IF Object_id('tempdb..#tmp44') IS NOT NULL
      DROP TABLE #tmp44

    IF Object_id('tempdb..#tmp5') IS NOT NULL
      DROP TABLE #tmp5

    IF Object_id('tempdb..#tmp55') IS NOT NULL
      DROP TABLE #tmp55

    IF Object_id('tempdb..#tmp6') IS NOT NULL
      DROP TABLE #tmp6

    IF Object_id('tempdb..#tmp7') IS NOT NULL
      DROP TABLE #tmp7

    IF Object_id('tempdb..#tmp8') IS NOT NULL
      DROP TABLE #tmp8

    IF Object_id('tempdb..#tmp9') IS NOT NULL
      DROP TABLE #tmp9

    IF Object_id('tempdb..#tmp_end1') IS NOT NULL
      DROP TABLE #tmp_end1

    IF Object_id('tempdb..#tmp_end11') IS NOT NULL
      DROP TABLE #tmp_end11

    --DECLARE @jybs INT
    --DECLARE @jyje INT
    --DECLARE @mode CHAR(1)
    --SET @jybs=3
    --SET @jyje=1000
    --SET @mode='1'
    --����1���н��׵�δ�ṩ�˻���Ϣ���˻�δ����
    /*��ȡ��ȡ���н��׵��˺�tmp1*/
    SELECT �˺� �˺�,
           Count(�˺�) ����,
           Max(���׽��) ����׽��,
           Sum(CASE
                 WHEN ( �����ʶ = '��' ) THEN 1
                 ELSE 0
               END) ����,
           Sum(CASE
                 WHEN ( �����ʶ = '��' ) THEN 1
                 ELSE 0
               END) �跽,
           Sum(CASE
                 WHEN ( ��ת��ʶ = '�ֽ�'
                        AND �����ʶ = '��' ) THEN 1
                 ELSE 0
               END) �����ֽ�,
           Sum(CASE
                 WHEN ( ��ת��ʶ = '�ֽ�'
                        AND �����ʶ = '��' ) THEN 1
                 ELSE 0
               END) �跽�ֽ�,
           Min(��������) ����ʱ��,
           Max(��������) ���ʱ��,
           '' ����������ڼ�
    INTO   #tmp1
    FROM   tb_shjy_dw
    GROUP  BY �˺�
    HAVING Count(*) >= @jybs
           AND Max(���׽��) >= @jyje

    --RETURN 
    /*��ȡtb_acc��δ�ṩ���˺�*/
    SELECT DISTINCT *
    INTO   #tmp2
    FROM   #tmp1
    WHERE  �˺� NOT IN (SELECT DISTINCT �˺�
                      FROM   tb_shzh_dw)

    /*��ȡzhsys��δ�ṩ���˺�#tmp3*/
    SELECT DISTINCT *
    INTO   #tmp3
    FROM   #tmp2
    -- FROM   #tmp2
    WHERE  �˺� NOT IN(SELECT DISTINCT �˺�
                     FROM   tb_rhzh_dw)

    /*��ȡ���ױ��н����С������д���#tmp5*/
    SELECT DISTINCT �˺�,
                    Max(�˻�����) �˻�����,
                    Max(�����н��ڻ�������) �����н��ڻ�������
    INTO   #tmp5
    FROM   tb_shjy_dw
    GROUP  BY �˺�

    --/*�ϲ�������Ϣ��ʾ*/
    SELECT b.�����н��ڻ�������,
           c.���л�������,
           a.*
    INTO   #tmp_end1
    FROM   #tmp3 a
           LEFT JOIN #tmp5 b
                  ON a.�˺� = b.�˺�
           LEFT JOIN v_bank c
                  ON b.�����н��ڻ������� = c.���б�������
    --where c.���� >= @jybs
    ORDER  BY a.�˺�

    --c.�����н��ڻ�������
    --����2�������������ں��Է�������
    /*��ȡ�����������˺�tmp1*/
    SELECT �˺� �˺�,
           Count(�˺�) ����,
           Max(���׽��) ����׽��,
           Sum(CASE
                 WHEN ( �����ʶ = '��' ) THEN 1
                 ELSE 0
               END) ����,
           Sum(CASE
                 WHEN ( �����ʶ = '��' ) THEN 1
                 ELSE 0
               END) �跽,
           Sum(CASE
                 WHEN ( ��ת��ʶ = '�ֽ�'
                        AND �����ʶ = '��' ) THEN 1
                 ELSE 0
               END) �����ֽ�,
           Sum(CASE
                 WHEN ( ��ת��ʶ = '�ֽ�'
                        AND �����ʶ = '��' ) THEN 1
                 ELSE 0
               END) �跽�ֽ�,
           Min(��������) ����ʱ��,
           Max(��������) ���ʱ��
    INTO   #tmp11
    FROM   tb_shjy_dw
    GROUP  BY �˺�
    HAVING Count(�˺�) >= @jybs
           AND Max(���׽��) >= @jyje

    --RETURN 
    --��ȡ���������������˻�
    SELECT �˺�,
           Max(��������) �����������
    INTO   #tmp22
    FROM   tb_rhzh_dw
    WHERE  �˺� IN (SELECT DISTINCT �˺�
                  FROM   #tmp11)
           AND �˻�״̬ = '����'
    GROUP  BY �˺�

    SELECT a.*,
           b.�����������
    INTO   #tmp33
    FROM   #tmp11 a
           LEFT JOIN #tmp22 b
                  ON a.�˺� = b.�˺�
    WHERE  a.���ʱ�� > b.�����������

    --/*�ϲ�������Ϣ��ʾ*/
    SELECT DISTINCT b.���л������� �����н��ڻ�������,
                    c.���л�������,
                    a.*
    INTO   #tmp_end11
    FROM   #tmp33 a
           LEFT JOIN tb_rhzh_dw b
                  ON a.�˺� = b.�˺�
           LEFT JOIN v_bank c
                  ON b.���л������� = c.���б�������
    --where c.���� >= @jybs
    ORDER  BY a.�˺�

    IF @mode = '1'
      BEGIN
        SELECT *
        FROM   #tmp_end1
      END

    IF @mode = '2'
      BEGIN
        SELECT *
        FROM   #tmp_end11
      END

    IF @mode = '9'
      BEGIN
        SELECT *
        FROM   #tmp_end1
        UNION
        SELECT *
        FROM   #tmp_end11
      END
  ----c.�����н��ڻ�������
  END
GO ��� ! &   �"     [    '   ��λ�˻��ٺ�׼��ٱ���_�ȶ������˻����� (   �ȶ������˻���Ϣ��ɸѡδ��׼��δ�����˻� D   @��鿪ʼ����!D:20190101@������ʱ��������!N:1@һ���Ԥ�㱸������!N:5 s       02030104	    0
    1    1   CREATE PROCEDURE P_zh_late_khrq(@bgn_date CHAR(8),@inter_day1 INT,@inter_day2 INT)
WITH ENCRYPTION
AS
  BEGIN
    ------ɸѡ���������600�ĸ���������˻��������翪�����������ʹ�����ȡ�����ѵ����
    --DECLARE @bgn_date CHAR(8)
    --DECLARE @end_date CHAR(8)
    --DECLARE @inter_day1 INT
    --DECLARE @inter_day2 INT
    ----DECLARE @jyje INT
    --SET @bgn_date='20190101'
    --SET @end_date='20200630'
    --SET @inter_day1=1
    --SET @inter_day2=5
    --SET @jyje=600
    IF Object_id('tempdb..#tmp') IS NOT NULL
      DROP TABLE #tmp

    IF Object_id('tempdb..#tmp0') IS NOT NULL
      DROP TABLE #tmp0

    IF Object_id('tempdb..#tmp00') IS NOT NULL
      DROP TABLE #tmp00

    IF Object_id('tempdb..#tmp000') IS NOT NULL
      DROP TABLE #tmp000

    IF Object_id('tempdb..#tmp1') IS NOT NULL
      DROP TABLE #tmp1

    IF Object_id('tempdb..#tmp2') IS NOT NULL
      DROP TABLE #tmp2

    IF Object_id('tempdb..#tmp3') IS NOT NULL
      DROP TABLE #tmp3

    IF Object_id('tempdb..#tmp4') IS NOT NULL
      DROP TABLE #tmp4

    IF Object_id('tempdb..#tmp5') IS NOT NULL
      DROP TABLE #tmp5

    IF Object_id('tempdb..#tmp6') IS NOT NULL
      DROP TABLE #tmp6

    IF Object_id('tempdb..#tmp7') IS NOT NULL
      DROP TABLE #tmp7

    IF Object_id('tempdb..#tmp8') IS NOT NULL
      DROP TABLE #tmp8

    IF Object_id('tempdb..#tmp9') IS NOT NULL
      DROP TABLE #tmp9

    IF Object_id('tempdb..#tmp99') IS NOT NULL
      DROP TABLE #tmp99

    IF Object_id('tempdb..#tmp11') IS NOT NULL
      DROP TABLE #tmp11

    IF Object_id('tempdb..#tmp22') IS NOT NULL
      DROP TABLE #tmp22

    IF Object_id('tempdb..#tmp33') IS NOT NULL
      DROP TABLE #tmp33

    IF Object_id('tempdb..#tmp44') IS NOT NULL
      DROP TABLE #tmp44

    IF Object_id('tempdb..#tmp55') IS NOT NULL
      DROP TABLE #tmp55

    IF Object_id('tempdb..#tmp222') IS NOT NULL
      DROP TABLE #tmp222

    IF Object_id('tempdb..#tmp333') IS NOT NULL
      DROP TABLE #tmp333

    IF Object_id('tempdb..#tmp444') IS NOT NULL
      DROP TABLE #tmp444

    IF Object_id('tempdb..#tmp555') IS NOT NULL
      DROP TABLE #tmp555

    --����1����������ʱ�ٱ���
    --��ȡ��������ʱ�˻����������Ƕȣ�
    SELECT DISTINCT �˺�
    INTO   #tmp1
    FROM   tb_rhzh_dw
    WHERE  ( �˻����� = '����'
              OR �˻����� = '��ʱ'
              OR �˻����� = '����ʱ'
              OR �˻����� = 'Ԥ��' )
           AND �������� >= @bgn_date
    UNION
    SELECT DISTINCT �˺�
    FROM   tb_shzh_dw
    WHERE  ( �˻����� = '����'
              OR �˻����� = '��ʱ' )
           AND �������� >= @bgn_date

    --��ȡ�����˻����翪������
    SELECT a.�˺�,
           Min(b.��������) ��������
    INTO   #tmp2
    FROM   #tmp1 a
           INNER JOIN tb_rhzh_dw b
                   ON a.�˺� = b.�˺�
    GROUP  BY a.�˺�

    --�������˻����ӣ���ȡ���
    SELECT a.�˺�,
           a.��������,
           b.��������,
           Datediff(day, CONVERT(DATE, ��������), CONVERT(DATE, ��������)) ���
    INTO   #tmp3
    FROM   #tmp2 a
           INNER JOIN tb_shzh_dw b
                   ON a.�˺� = b.�˺�
    WHERE  Datediff(day, CONVERT(DATE, ��������), CONVERT(DATE, ��������)) > @inter_day1

    --��ȡ���к�������Ϣ
    SELECT b.���л�������,
           d.���л�������,
           a.�˺�,
           b.�˻�����,
           b.�������� ���п���,
           a.�������� �������翪��,
           c.�������� ���п���,
           a.���,
           b.�������� ��������,
           c.�������� ��������,
           b.�˻����� ��������,
           c.�˻����� ��������,
           b.�˻�״̬ ����״̬,
           c.�˻�״̬ ����״̬
    INTO   #tmp9
    FROM   #tmp3 a
           LEFT JOIN tb_rhzh_dw b
                  ON a.�˺� = b.�˺�
           LEFT JOIN tb_shzh_dw c
                  ON a.�˺� = c.�˺�
           LEFT JOIN v_bank d
                  ON b.���л������� = d.���б�������

    --����2��һ�㡢��Ԥ��ٱ���
    --��ȡһ�㡢��Ԥ�㣨�������Ƕȣ�
    SELECT DISTINCT �˺�
    INTO   #tmp11
    FROM   tb_rhzh_dw
    WHERE  ( �˻����� = 'һ��'
              OR �˻����� = '��Ԥ��' )
           AND �������� >= @bgn_date
    UNION
    SELECT DISTINCT �˺�
    FROM   tb_shzh_dw
    WHERE  ( �˻����� = 'һ��'
              OR �˻����� = 'ר��' )
           AND �������� >= @bgn_date

    --��ȡ�����˻����翪������
    SELECT a.�˺�,
           Min(b.��������) ��������
    INTO   #tmp22
    FROM   #tmp11 a
           INNER JOIN tb_rhzh_dw b
                   ON a.�˺� = b.�˺�
    GROUP  BY a.�˺�

    --�������˻����ӣ���ȡ���
    SELECT a.�˺�,
           a.��������,
           b.��������,
           Datediff(day, CONVERT(DATE, ��������), CONVERT(DATE, ��������)) ���
    INTO   #tmp33
    FROM   #tmp22 a
           INNER JOIN tb_shzh_dw b
                   ON a.�˺� = b.�˺�
    WHERE  Datediff(day, CONVERT(DATE, ��������), CONVERT(DATE, ��������)) > @inter_day2

    --��ȡ���к�������Ϣ
    SELECT b.���л�������,
           d.���л�������,
           a.�˺�,
           b.�˻�����,
           b.�������� ���п���,
           a.�������� �������翪��,
           c.�������� ���п���,
           a.���,
           b.�������� ��������,
           c.�������� ��������,
           b.�˻����� ��������,
           c.�˻����� ��������,
           b.�˻�״̬ ����״̬,
           c.�˻�״̬ ����״̬
    INTO   #tmp99
    FROM   #tmp33 a
           LEFT JOIN tb_rhzh_dw b
                  ON a.�˺� = b.�˺�
           LEFT JOIN tb_shzh_dw c
                  ON a.�˺� = c.�˺�
           LEFT JOIN v_bank d
                  ON b.���л������� = d.���б�������

    --�ϲ�
    SELECT *
    FROM   #tmp9
    UNION
    SELECT *
    FROM   #tmp9
    ORDER  BY ���л�������
  END
GO ��� ! '   �"  �   [       ר��δ��׼��δ����_�ȶ��˻����� B   ���������У����������Ч��ר�����˻�����ϵͳ�в����ڻ�������г���      t       02030105	    0
    0    1 >  CREATE PROCEDURE P_zyzh_not_bak WITH ENCRYPTION AS
BEGIN
if object_id(N'tb_rhzh_dw',N'U') is not null and object_id(N'tb_shzh_dw',N'U') is not null
begin
--����״̬Ϊ����������������������
--״̬Ϊ������������״̬Ϊ�����ҳ��������ڼ�����ڻ�����
if object_id('tempdb..#tmp') is not null drop table #tmp
if object_id('tempdb..#tmp1') is not null drop table #tmp1
if object_id('tempdb..#tmp11') is not null drop table #tmp11
if object_id('tempdb..#tmp111') is not null drop table #tmp111
if object_id('tempdb..#tmp2') is not null drop table #tmp2 
if object_id('tempdb..#tmp22') is not null drop table #tmp22 
if object_id('tempdb..#tmp222') is not null drop table #tmp222
if object_id('tempdb..#tmp3') is not null drop table #tmp3
if object_id('tempdb..#tmp33') is not null drop table #tmp33
if object_id('tempdb..#tmp333') is not null drop table #tmp333
if object_id('tempdb..#tmp4') is not null drop table #tmp4
if object_id('tempdb..#tmp44') is not null drop table #tmp44
if object_id('tempdb..#tmp444') is not null drop table #tmp444

--����1��������������˻����˻�ϵͳ�����˻��в�����(�Ƚ��������ڷ�ֹ���вɼ����˻����ڴ��ڼ���ڶ������)
--��ȡ�˻�ϵͳ����״̬�����˻�into tmp1����������պ������˻���
select distinct �˺� 
  into #tmp1
  from V_rhzh_dw
  where �˻����� like '%Ԥ��%' and (�˻�״̬='����' or �˻�״̬='����')

-- ��ȡ�˻�����λ�˻��ǳ���״̬������tmp2
select distinct �˺�
  into #tmp2
  from tb_shzh_dw 
  where (�˻����� like '%Ԥ��%' or  �˻����� ='ר��' ) and (�˻�״̬<>'����')
  
---�ǳ���״̬��������ϵͳ�����˺��в����� #tmp3 --------------
select �˺�
into #tmp3 
from #tmp2 
where �˺� not in (select �˺� from #tmp1)

--��ȡ������Ϣ#tmp4
select distinct c.�������н��ڻ�������,b.���л�������,a.�˺�,c.�˻�����,
c.�˻�����,c.��������,c.��������,c.�˻�״̬,
b.�˻����� �������� ,b.�������� ���п���,b.�������� ��������,b.�������� ���о��� ,b.�˻�״̬ ����״̬
into #tmp4
from #tmp3 a
left join v_rhzh_dw b
on a.�˺�=b.�˺�
left join tb_shzh_dw c 
on a.�˺�=c.�˺�

---����2:����������ѳ����˻����˻�ϵͳ������״̬�˻��в�����
--��ȡ�˻�ϵͳ����״̬�����˻�into tmp1
select distinct �˺� 
into #tmp11
from V_rhzh_dw
where �˻����� like '%Ԥ��%'

---- ��ȡ�˻�����λ�˻�����������tmp2
select distinct �˺�,��������
  into #tmp22
  from tb_shzh_dw 
  where (�˻����� like '%Ԥ��%' or  �˻����� ='ר��' ) and �˻�״̬='����'  
  --and ��������>=@bgn_date

---���ݼ�����ڳ����˺���ϵͳ����״̬�˺��в�����  #tmp3 --------------
select �˺�,��������
into #tmp33 
from #tmp22 
where �˺� not in (select �˺� from #tmp11)

--��ȡ������Ϣ
select distinct c.�������н��ڻ�������,b.���л�������,a.�˺�,c.�˻�����,
c.�˻�����,c.��������,c.��������,c.�˻�״̬,
b.�˻����� �������� ,b.�������� ���п���,b.�������� ��������,b.�������� ���о��� ,b.�˻�״̬ ����״̬
into #tmp44
from #tmp33 a
left join v_rhzh_dw b
on a.�˺�=b.�˺�
left join tb_shzh_dw c 
on a.�˺�=c.�˺�


---����3:����������ѳ����˻����˻��ѳ����˻�����ʱ���
--��ȡ�˻�ϵͳ����״̬�����˻�into tmp1
select distinct �˺� ,��������
into #tmp111
from V_rhzh_dw
where �˻����� like '%Ԥ��%' and �˻�״̬='����'

---- ��ȡ�˻�����λ�˻�����������tmp2
select distinct �˺�,��������
  into #tmp222
  from tb_shzh_dw 
  where (�˻����� like '%Ԥ��%' or  �˻����� ='ר��' ) and �˻�״̬='����'

---��ȡ������������>�����������ڵļ�¼  #tmp3 --------------
select a.�˺�
into #tmp333 
from #tmp222 a
inner join #tmp111 b
on a.�˺�=b.�˺�
where a.��������>b.��������

--��ȡ������Ϣ
select distinct c.�������н��ڻ�������,b.���л�������,a.�˺�,c.�˻�����,
c.�˻�����,c.��������,c.��������,c.�˻�״̬,
b.�˻����� �������� ,b.�������� ���п���,b.�������� ��������,b.�������� ���о��� ,b.�˻�״̬ ����״̬
into #tmp444
from #tmp333 a
left join v_rhzh_dw b
on a.�˺�=b.�˺�
left join tb_shzh_dw c 
on a.�˺�=c.�˺�

--�ϲ�����δ��׼������
select * 
--into #tmp5
from #tmp4
union
select * from #tmp44
union
select * from #tmp444
order by �������н��ڻ�������,�˺�
end
else
begin
select '���˻�ϵͳ��λ�˻����ݻ���ҵ���е�λ�˻�����δ����' ע��
end
END
GO��� ! (   �"  �   [       һ���˻�δ����_�ȶ��˻����� F   ���������У����������Ч��һ���˻����˻�����ϵͳ�в����ڻ�������г���      v       02030106	    0
    0    1 �  CREATE PROCEDURE P_yszh_not_bak WITH ENCRYPTION AS
BEGIN
if object_id(N'tb_rhzh_dw',N'U') is not null and object_id(N'tb_shzh_dw',N'U') is not null
begin
--����״̬Ϊ����������������������
--״̬Ϊ������������״̬Ϊ�����ҳ��������ڼ�����ڻ�����
if object_id('tempdb..#tmp') is not null drop table #tmp
if object_id('tempdb..#tmp1') is not null drop table #tmp1
if object_id('tempdb..#tmp11') is not null drop table #tmp11
if object_id('tempdb..#tmp111') is not null drop table #tmp111
if object_id('tempdb..#tmp2') is not null drop table #tmp2 
if object_id('tempdb..#tmp22') is not null drop table #tmp22 
if object_id('tempdb..#tmp222') is not null drop table #tmp222
if object_id('tempdb..#tmp3') is not null drop table #tmp3
if object_id('tempdb..#tmp33') is not null drop table #tmp33
if object_id('tempdb..#tmp333') is not null drop table #tmp333
if object_id('tempdb..#tmp4') is not null drop table #tmp4
if object_id('tempdb..#tmp44') is not null drop table #tmp44
if object_id('tempdb..#tmp444') is not null drop table #tmp444

--����1��������������˻����˻�ϵͳ�����˻��в�����(�Ƚ��������ڷ�ֹ���вɼ����˻����ڴ��ڼ���ڶ������)
--��ȡ�˻�ϵͳ����״̬�����˻�into tmp1����������պ������˻���
select distinct �˺� 
  into #tmp1
  from V_rhzh_dw
  where �˻�����= 'һ��' and (�˻�״̬='����' or �˻�״̬='����')

-- ��ȡ�˻�����λ�˻��ǳ���״̬������tmp2
select distinct �˺�
  into #tmp2
  from tb_shzh_dw 
  where �˻�����='һ��' and (�˻�״̬<>'����')
  
---�ǳ���״̬��������ϵͳ�����˺��в����� #tmp3 --------------
select �˺�
into #tmp3 
from #tmp2 
where �˺� not in (select �˺� from #tmp1)

--��ȡ������Ϣ#tmp4
select distinct c.�������н��ڻ�������,b.���л�������,a.�˺�,c.�˻�����,
c.�˻�����,c.��������,c.��������,c.�˻�״̬,
b.�˻����� �������� ,b.�������� ���п���,b.�������� ��������,b.�������� ���о��� ,b.�˻�״̬ ����״̬
into #tmp4
from #tmp3 a
left join v_rhzh_dw b
on a.�˺�=b.�˺�
left join tb_shzh_dw c 
on a.�˺�=c.�˺�

---����2:����������ѳ����˻����˻�ϵͳ������״̬�˻��в�����
--��ȡ�˻�ϵͳ����״̬�����˻�into tmp1
select distinct �˺� 
into #tmp11
from V_rhzh_dw
where �˻����� = 'һ��'

---- ��ȡ�˻�����λ�˻�����������tmp2
select distinct �˺�,��������
  into #tmp22
  from tb_shzh_dw 
  where �˻����� = 'һ��' and �˻�״̬='����'  
  --and ��������>=@bgn_date

---���ݼ�����ڳ����˺���ϵͳ����״̬�˺��в�����  #tmp3 --------------
select �˺�,��������
into #tmp33 
from #tmp22 
where �˺� not in (select �˺� from #tmp11)

--��ȡ������Ϣ
select distinct c.�������н��ڻ�������,b.���л�������,a.�˺�,c.�˻�����,
c.�˻�����,c.��������,c.��������,c.�˻�״̬,
b.�˻����� �������� ,b.�������� ���п���,b.�������� ��������,b.�������� ���о��� ,b.�˻�״̬ ����״̬
into #tmp44
from #tmp33 a
left join v_rhzh_dw b
on a.�˺�=b.�˺�
left join tb_shzh_dw c 
on a.�˺�=c.�˺�


---����3:����������ѳ����˻����˻��ѳ����˻�����ʱ���
--��ȡ�˻�ϵͳ����״̬�����˻�into tmp1
select distinct �˺� ,��������
into #tmp111
from V_rhzh_dw
where �˻����� = 'һ��' and �˻�״̬='����'

---- ��ȡ�˻�����λ�˻�����������tmp2
select distinct �˺�,��������
  into #tmp222
  from tb_shzh_dw 
  where �˻�����='һ��'and �˻�״̬='����'

---��ȡ������������>�����������ڵļ�¼  #tmp3 --------------
select a.�˺�
into #tmp333 
from #tmp222 a
inner join #tmp111 b
on a.�˺�=b.�˺�
where a.��������>b.��������

--��ȡ������Ϣ
select distinct c.�������н��ڻ�������,b.���л�������,a.�˺�,c.�˻�����,
c.�˻�����,c.��������,c.��������,c.�˻�״̬,
b.�˻����� �������� ,b.�������� ���п���,b.�������� ��������,b.�������� ���о��� ,b.�˻�״̬ ����״̬
into #tmp444
from #tmp333 a
left join v_rhzh_dw b
on a.�˺�=b.�˺�
left join tb_shzh_dw c 
on a.�˺�=c.�˺�

--�ϲ�����δ��׼������
select * 
--into #tmp5
from #tmp4
union
select * from #tmp44
union
select * from #tmp444
order by �������н��ڻ�������,�˺�
end
else
begin
select '���˻�ϵͳ��λ�˻����ݻ���ҵ���е�λ�˻�����δ����' ע��
end
END
GO��� ! )   �"     [       4105��׼��δ��׼_�����Խ��� @   ��������ʱ��Ԥ�����˻��ѳ���������Է������ף��ɹ���Ϊδ��׼�˻�    @��С�������׽��!N:60 x       02030107	    0
    0    1 )  CREATE PROCEDURE P_jblsys_cx_jy(@jyje int)  WITH ENCRYPTION  AS
BEGIN
if object_id('tempdb..#tmp') is not null drop table #tmp
if object_id('tempdb..#tmp0') is not null drop table #tmp0
if object_id('tempdb..#tmp00') is not null drop table #tmp00
if object_id('tempdb..#tmp000') is not null drop table #tmp000
if object_id('tempdb..#tmp1') is not null drop table #tmp1
if object_id('tempdb..#tmp11') is not null drop table #tmp11
if object_id('tempdb..#tmp2') is not null drop table #tmp2 
if object_id('tempdb..#tmp22') is not null drop table #tmp22  
if object_id('tempdb..#tmp3') is not null drop table #tmp3
if object_id('tempdb..#tmp33') is not null drop table #tmp33
if object_id('tempdb..#tmp4') is not null drop table #tmp4
if object_id('tempdb..#tmp44') is not null drop table #tmp44
if object_id('tempdb..#tmp5') is not null drop table #tmp5
if object_id('tempdb..#tmp6') is not null drop table #tmp6
if object_id('tempdb..#tmp7') is not null drop table #tmp7
if object_id('tempdb..#tmp8') is not null drop table #tmp8
if object_id('tempdb..#tmp9') is not null drop table #tmp9

/*��ȡ����ȡ�ֽ��׵��˺�->tmp1*/
select �˺� ,sum(case when (���>=@jyje) then 1 else 0 end) ���ױ���
into #tmp1
from V_txn
group by �˺�
having sum(case when (���>=@jyje) then 1 else 0 end)>0
/*��ȡzhsys���ѳ������Ѿ����˺�-->#tmp2��--�����ܰ��������������˻��������--*/
select distinct �˺�
into #tmp2
from zhsys where ״̬='����' or ״̬='����'
/*��ý��������ѳ������Ѿ����е��˻�-->#tmp3*/
select �˺�
into #tmp3
from #tmp1 where �˺� in (select �˺� from #tmp2)

---��ȡ������Ϣ->tmp4
select c.bank_code �����������,b.���л�������,b.���л�������,a.�˺� �˺�,c.acc_name ����,
(CASE c.ent_cst_type WHEN '0' THEN '����' WHEN '1' THEN 'һ��' WHEN '2' THEN '��Ԥ��'  WHEN '3' THEN '��ʱ' WHEN '4' THEN 'Ԥ��' END) ����,
c.open_time ����,c.close_time ����,
(CASE c.close_flag WHEN '0' THEN '����' WHEN '1' THEN '����' WHEN '2' THEN '���'  WHEN '3' THEN '����' END)  ״̬,
b.�˻����� �������� ,b.�������� ��������,b.�������� ���о��� ,b.״̬ ����״̬
into #tmp4
from #tmp3 a
left join zhsys b
on a.�˺�=b.�˺�
left join tb_acc c 
on a.�˺�=c.acc_no
/*��ú�������״̬���˻�->tmp5*/
select distinct �˺� 
into #tmp5
from #tmp4 where ����״̬='����'
/*ȥ������״̬�˻�->tmp4*/
delete #tmp4 where �˺� in (select �˺� from #tmp5)
--select * from #tmp4
--#tmp4�˻��Ľ������->#tmp6-----------------
select �˺� �˺�,count(�˺�) ����,
       sum(case when (���='��') then 1 else 0 end) ����,  
       sum(case when (���='��') then 1 else 0 end) �跽, 
       sum(case when (��ת='�ֽ�' and ���='��') then 1 else 0 end) �����ֽ�,
       sum(case when (��ת='�ֽ�' and ���='��') then 1 else 0 end) �跽�ֽ�,
       min(��������) ����ʱ��,max(��������) ���ʱ��
into #tmp6
from V_txn
where �˺� in (select distinct �˺� from #tmp4)
group by �˺�

/*�ϲ�������Ϣ��ʾ->tmp7*/
select a.*,b.����,b.�跽,b.����,b.�跽�ֽ�,b.�����ֽ�,b.����ʱ��,b.���ʱ��
into #tmp7
from #tmp4 a
left join #tmp6 b 
on a.�˺�=b.�˺�
--where (a.����״̬ is null) or (a.����״̬='����') or (a.����״̬='����' and b.���ʱ��>a.��������) or (a.����״̬='����' and b.���ʱ��>a.���о���)



/*ȡ���������ڴ�����ٽ���ʱ����˻�����ɾ��*/
select distinct �˺�
into #tmp8
from #tmp7 
where (����״̬='����' and ���ʱ��<=��������) or (����״̬='����' and ���ʱ��<=���о���)

delete #tmp7 where �˺� in (select  �˺� from #tmp8)

/*��ʾ���ս��*/
select * from #tmp7 
where �������� like '����%' or �������� like '%��ʱ%' or ��������= 'Ԥ��'
order by  �˺�,���л�������
END
GO��� ! *   �"  2   [       4106������δ����_������������ V   ���������У����������Ч�ı������˻����˻�����ϵͳ�в����ڻ�������г�������Ԥ��ר���� A   @ҵ��ʼ����!D:20120101@ҵ���������!D:20130430@��С���ױ���!N:1 z       02030108	    0
    0    1 �  CREATE PROCEDURE P_ybzyzh_not_bak(@bgn_date char(8),@end_date char(8),@jybs int)  WITH ENCRYPTION AS
BEGIN
--declare @bgn_date char(8)
--declare @end_date char(8)
--declare @row_num int
--declare @jybs int
--declare @wdm varchar(8)
--set @bgn_date='20120101'
--set @end_date='20130430'
--set @row_num=100000
--set @jybs=0
--set @wdm='����'
--����״̬Ϊ����������������������
--״̬Ϊ������������״̬Ϊ�����ҳ��������ڼ�����ڻ�����
if object_id('tempdb..#tmp') is not null drop table #tmp
if object_id('tempdb..#tmp0') is not null drop table #tmp0
if object_id('tempdb..#tmp00') is not null drop table #tmp00
if object_id('tempdb..#tmp000') is not null drop table #tmp000
if object_id('tempdb..#tmp1') is not null drop table #tmp1
if object_id('tempdb..#tmp11') is not null drop table #tmp11
if object_id('tempdb..#tmp111') is not null drop table #tmp111
if object_id('tempdb..#tmp2') is not null drop table #tmp2 
if object_id('tempdb..#tmp22') is not null drop table #tmp22 
if object_id('tempdb..#tmp222') is not null drop table #tmp222
if object_id('tempdb..#tmp30') is not null drop table #tmp30
if object_id('tempdb..#tmp300') is not null drop table #tmp300
if object_id('tempdb..#tmp3') is not null drop table #tmp3
if object_id('tempdb..#tmp33') is not null drop table #tmp33
if object_id('tempdb..#tmp333') is not null drop table #tmp333
if object_id('tempdb..#tmp4') is not null drop table #tmp4
if object_id('tempdb..#tmp44') is not null drop table #tmp44
if object_id('tempdb..#tmp444') is not null drop table #tmp444
if object_id('tempdb..#tmp5') is not null drop table #tmp5
if object_id('tempdb..#tmp6') is not null drop table #tmp6
if object_id('tempdb..#tmp7') is not null drop table #tmp7
if object_id('tempdb..#tmp8') is not null drop table #tmp8
if object_id('tempdb..#tmp9') is not null drop table #tmp9
--����1��������������˻����˻����������˻��в�����(�Ƚ��������ڷ�ֹ���вɼ����˻����ڴ��ڼ���ڶ������)
--��ȡ�˻���������״̬�����˻�into tmp1����������պ������˻���
select distinct �˺� 
into #tmp1
from V_ZhLast
where (�˻����� like '%Ԥ��%' or �˻�����='һ��') and (״̬='����' or (��������<=@end_date and ��������>@end_date) or (��������<=@end_date and ��������>@end_date))

-- ��ȡ�˻�����λ�˻�����������tmp2
select distinct acc_no
  into #tmp2
  from tb_acc 
  where (ent_cst_type='1' or ent_cst_type='2' or ent_cst_type='4') and acc_type='2' and (close_flag='0')

  
---���������������������˺��в����� #tmp3 --------------
select acc_no
into #tmp3 
from #tmp2 
where acc_no not in (select �˺� from #tmp1)
--�޳����˻��ɼ����ڴ���ҵ���ֹ������м�ʱ�λ������仯�����
---��ȡÿ���˺ŵ��˻�����������Ϣtmp30
select a.acc_no,b.�˻�����,b.��������,b.��������,b.״̬
into #tmp30
from #tmp3 a
left join zhsys b
on a.acc_no=b.�˺�
delete #tmp30 where acc_no in (select acc_no from #tmp30 where (�˻����� like '%Ԥ��%' or �˻�����='һ��') and (��������>=@end_date or ��������>=@end_date))
--��ȡ������Ϣ#tmp4
select distinct c.bank_code �����������,b.���л�������,a.acc_no �˺�,c.acc_name ����,
(CASE c.ent_cst_type WHEN '0' THEN '����' WHEN '1' THEN 'һ��' WHEN '2' THEN '��Ԥ��'  WHEN '3' THEN '��ʱ' WHEN '4' THEN 'Ԥ��' END) ����,
c.open_time ��������,c.close_time ��������,
(CASE c.close_flag WHEN '0' THEN '����' WHEN '1' THEN '����' WHEN '2' THEN '���'  WHEN '3' THEN '����' END)  ״̬,
b.�˻����� �������� ,b.�������� ��������,b.�������� ���о��� ,b.״̬ ����״̬
into #tmp4
from #tmp30 a
left join v_zhLast b
on a.acc_no=b.�˺�
left join tb_acc c 
on a.acc_no=c.acc_no

---����2:����������ѳ����˻����˻�����������״̬�˻��в�����
--��ȡ�˻���������״̬�����˻�into tmp1
select distinct �˺� 
into #tmp11
from V_zhLast
where (�˻����� like '%Ԥ��%' or �˻�����='һ��')

---- ��ȡ�˻�����λ�˻�����������tmp2
select distinct acc_no,close_time
  into #tmp22
  from tb_acc 
  where (ent_cst_type='1' or ent_cst_type='2' or ent_cst_type='4') and acc_type='2' and close_flag='1'  and close_time>=@bgn_date

---���ݼ�����ڳ����˺�����������״̬�˺��в�����  #tmp3 --------------
select acc_no,close_time
into #tmp33 
from #tmp22 
where acc_no not in (select �˺� from #tmp11)

--�޳����˻��ɼ����ڴ���ҵ���ֹ������м�ʱ�λ������仯�����
---��ȡÿ���˺ŵ��˻�����������Ϣtmp300
select a.acc_no,a.close_time,b.�˻�����,b.��������,b.��������,b.״̬
into #tmp300
from #tmp33 a
left join zhsys b
on a.acc_no=b.�˺�
delete #tmp300 where acc_no in (select acc_no from #tmp300 where (�˻����� like '%Ԥ��%' or �˻�����='һ��') and (��������>close_time))

--��ȡ������Ϣ
select distinct c.bank_code �����������,b.���л�������,a.acc_no �˺�,c.acc_name ����,
(CASE c.ent_cst_type WHEN '0' THEN '����' WHEN '1' THEN 'һ��' WHEN '2' THEN '��Ԥ��'  WHEN '3' THEN '��ʱ' WHEN '4' THEN 'Ԥ��' END) ����,
c.open_time ��������,c.close_time ��������,
(CASE c.close_flag WHEN '0' THEN '����' WHEN '1' THEN '����' WHEN '2' THEN '���'  WHEN '3' THEN '����' END)  ״̬,
b.�˻����� �������� ,b.�������� ��������,b.�������� ���о��� ,b.״̬ ����״̬
into #tmp44
from #tmp300 a
left join V_ZhLast b
on a.acc_no=b.�˺�
left join tb_acc c 
on a.acc_no=c.acc_no

---����3:����������ѳ����˻����˻��ѳ����˻�����ʱ���
--��ȡ�˻���������״̬�����˻�into tmp1
select distinct �˺� ,��������,��������
into #tmp111
from V_zhLast
where (�˻����� like '%Ԥ��%' or �˻�����='һ��') and ((״̬='����' and ��������<=@end_date) or (״̬='����' and ��������<=@end_date))
---- ��ȡ�˻�����λ�˻�����������tmp2
select distinct acc_no,close_time
  into #tmp222
  from tb_acc 
  where (ent_cst_type='1' or ent_cst_type='2' or ent_cst_type='4') and acc_type='2' and close_flag='1' and close_time>=@bgn_date

---��ȡ������������>�����������ڵļ�¼  #tmp3 --------------
select a.acc_no
into #tmp333 
from #tmp222 a
inner join #tmp111 b
on a.acc_no=b.�˺�
where a.close_time<b.�������� or a.close_time<b.��������

--��ȡ������Ϣ
select distinct c.bank_code �����������,b.���л�������,a.acc_no �˺�,c.acc_name ����,
(CASE c.ent_cst_type WHEN '0' THEN '����' WHEN '1' THEN 'һ��' WHEN '2' THEN '��Ԥ��'  WHEN '3' THEN '��ʱ' WHEN '4' THEN 'Ԥ��' END) ����,
c.open_time ��������,c.close_time ��������,
(CASE c.close_flag WHEN '0' THEN '����' WHEN '1' THEN '����' WHEN '2' THEN '���'  WHEN '3' THEN '����' END)  ״̬,
b.�˻����� �������� ,b.�������� ��������,b.�������� ���о��� ,b.״̬ ����״̬
into #tmp444
from #tmp333 a
left join V_ZhLast b
on a.acc_no=b.�˺�
left join tb_acc c 
on a.acc_no=c.acc_no

--�ϲ�����δ��׼������
select * 
into #tmp5
from #tmp4
union
select * from #tmp44
union
select * from #tmp444
order by �����������,�˺�
--select * from #tmp5

--#tmp5�˻��Ľ������#tmp6-----------------
select �˺�,count(�˺�) ����, 
       sum(case when (��ת='�ֽ�' and ���='��') then 1 else 0 end) �����ֽ�,
       sum(case when (��ת='�ֽ�' and ���='��') then 1 else 0 end) �跽�ֽ�
       --min(��������) ���罻��,max(��������) ��ٽ���
into #tmp6
from V_txn
where �˺� in (select  �˺� from #tmp5)
group by �˺�
--/*�ϲ�������Ϣ��ʾ*/
select a.�����������,a.���л�������,a.�˺�,a.����,a.����,
a.��������,a.��������,a.״̬,a.�������� ,a.����״̬,
b.����,b.�跽�ֽ�,b.�����ֽ�
--into #tmp9
from #tmp5 a
left JOIN #tmp6 b 
on a.�˺�=b.�˺�
where isnull(b.����,0)>=@jybs
order by  a.�˺�,a.�����������
END
GO��� ! +   �"  '   [       4107������δ����_�����Խ��� 2   һ���Ԥ���˻��ѳ����Է������ף��ɹ���Ϊδ�����˻�    @��С�������׽��!N:60 |       02030109	    0
    0    1 4  CREATE PROCEDURE P_ybfys_cx_jy(@jyje int)  WITH ENCRYPTION AS
BEGIN
if object_id('tempdb..#tmp') is not null drop table #tmp
if object_id('tempdb..#tmp0') is not null drop table #tmp0
if object_id('tempdb..#tmp00') is not null drop table #tmp00
if object_id('tempdb..#tmp000') is not null drop table #tmp000
if object_id('tempdb..#tmp1') is not null drop table #tmp1
if object_id('tempdb..#tmp11') is not null drop table #tmp11
if object_id('tempdb..#tmp2') is not null drop table #tmp2 
if object_id('tempdb..#tmp22') is not null drop table #tmp22  
if object_id('tempdb..#tmp3') is not null drop table #tmp3
if object_id('tempdb..#tmp33') is not null drop table #tmp33
if object_id('tempdb..#tmp4') is not null drop table #tmp4
if object_id('tempdb..#tmp44') is not null drop table #tmp44
if object_id('tempdb..#tmp5') is not null drop table #tmp5
if object_id('tempdb..#tmp6') is not null drop table #tmp6
if object_id('tempdb..#tmp7') is not null drop table #tmp7
if object_id('tempdb..#tmp8') is not null drop table #tmp8
if object_id('tempdb..#tmp9') is not null drop table #tmp9

/*��ȡ����ȡ�ֽ��׵��˺�->tmp1*/
select �˺� ,sum(case when (���>=@jyje) then 1 else 0 end) ���ױ���
into #tmp1
from V_txn
group by �˺�
having sum(case when (���>=@jyje) then 1 else 0 end)>0
/*��ȡzhsys���ѳ������Ѿ����˺�-->#tmp2��--�����ܰ��������������˻��������--*/
select distinct �˺�
into #tmp2
from zhsys where ״̬='����' or ״̬='����'
/*��ý��������ѳ������Ѿ����е��˻�-->#tmp3*/
select �˺�
into #tmp3
from #tmp1 where �˺� in (select �˺� from #tmp2)

---��ȡ������Ϣ->tmp4
select c.bank_code �����������,b.���л�������,b.���л�������,a.�˺� �˺�,c.acc_name ����,
(CASE c.ent_cst_type WHEN '0' THEN '����' WHEN '1' THEN 'һ��' WHEN '2' THEN '��Ԥ��'  WHEN '3' THEN '��ʱ' WHEN '4' THEN 'Ԥ��' END) ����,
c.open_time ����,c.close_time ����,
(CASE c.close_flag WHEN '0' THEN '����' WHEN '1' THEN '����' WHEN '2' THEN '���'  WHEN '3' THEN '����' END)  ״̬,
b.�˻����� ���л��� ,b.�˻����� �������� ,b.�������� ���п��� ,b.�������� ��������,b.�������� ���о��� ,b.״̬ ����״̬
into #tmp4
from #tmp3 a
left join zhsys b
on a.�˺�=b.�˺�
left join tb_acc c 
on a.�˺�=c.acc_no
/*��ú�������״̬���˻�->tmp5*/
select distinct �˺� 
into #tmp5
from #tmp4 where ����״̬='����'
/*ȥ������״̬�˻�->tmp4*/
delete #tmp4 where �˺� in (select �˺� from #tmp5)
--select * from #tmp4
--#tmp4�˻��Ľ������->#tmp6-----------------
select �˺� �˺�,count(�˺�) ����,
       sum(case when (���='��') then 1 else 0 end) ����,  
       sum(case when (���='��') then 1 else 0 end) �跽, 
       sum(case when (��ת='�ֽ�' and ���='��') then 1 else 0 end) �����ֽ�,
       sum(case when (��ת='�ֽ�' and ���='��') then 1 else 0 end) �跽�ֽ�,
       min(��������) ����ʱ��,max(��������) ���ʱ��
into #tmp6
from V_txn
where �˺� in (select distinct �˺� from #tmp4)
group by �˺�

/*�ϲ�������Ϣ��ʾ->tmp7*/
select a.*,b.����,b.�跽,b.����,b.�跽�ֽ�,b.�����ֽ�,b.����ʱ��,b.���ʱ��
into #tmp7
from #tmp4 a
left join #tmp6 b 
on a.�˺�=b.�˺�
--where (a.����״̬ is null) or (a.����״̬='����') or (a.����״̬='����' and b.���ʱ��>a.��������) or (a.����״̬='����' and b.���ʱ��>a.���о���)



/*ȡ���������ڴ�����ٽ���ʱ����˻�����ɾ��*/
select distinct �˺�
into #tmp8
from #tmp7 
where (����״̬='����' and ���ʱ��<=��������) or (����״̬='����' and ���ʱ��<=���о���)

delete #tmp7 where �˺� in (select  �˺� from #tmp8)

/*��ʾ���ս��*/
select * from #tmp7 
where ��������= 'һ��' or ��������= '��Ԥ��'
order by  �˺�,���л�������
END
GO��� ! ,   �"  F   [       4109��׼��ٺ�׼_�����縶�� N   ��������ʱ��Ԥ��ר��δ�ڹ涨��ʱ���ں�׼���Դ���һ������������縶�������ж�    @��С������!N:600@����!N:2 �       02030110	    0
    0    1 6  CREATE PROCEDURE P_jblsys_late_fkrq(@jyje int,@inter_day int)  WITH ENCRYPTION  AS
BEGIN
------ɸѡ���������600�ĸ���������˻��������翪�����������ʹ�����ȡ�����ѵ����
--declare @bgn_date char(8)
--declare @end_date char(8)
--declare @inter_day int
--declare @jyje int
--set @bgn_date='20120101'
--set @end_date='20130430'
--set @inter_day=1
--set @jyje=600
if object_id('tempdb..#tmp') is not null drop table #tmp
if object_id('tempdb..#tmp0') is not null drop table #tmp0
if object_id('tempdb..#tmp00') is not null drop table #tmp00
if object_id('tempdb..#tmp000') is not null drop table #tmp000
if object_id('tempdb..#tmp1') is not null drop table #tmp1
if object_id('tempdb..#tmp2') is not null drop table #tmp2  
if object_id('tempdb..#tmp3') is not null drop table #tmp3
if object_id('tempdb..#tmp4') is not null drop table #tmp4
if object_id('tempdb..#tmp5') is not null drop table #tmp5
if object_id('tempdb..#tmp6') is not null drop table #tmp6
if object_id('tempdb..#tmp7') is not null drop table #tmp7
if object_id('tempdb..#tmp8') is not null drop table #tmp8
if object_id('tempdb..#tmp9') is not null drop table #tmp9
if object_id('tempdb..#tmp99') is not null drop table #tmp99
if object_id('tempdb..#tmp22') is not null drop table #tmp22  
if object_id('tempdb..#tmp33') is not null drop table #tmp33
if object_id('tempdb..#tmp44') is not null drop table #tmp44
if object_id('tempdb..#tmp55') is not null drop table #tmp55
if object_id('tempdb..#tmp222') is not null drop table #tmp222  
if object_id('tempdb..#tmp333') is not null drop table #tmp333
if object_id('tempdb..#tmp444') is not null drop table #tmp444
if object_id('tempdb..#tmp555') is not null drop table #tmp555

--������縶��ʱ��
select �˺�,min(��������) ���縶��
into #tmp1
from V_txn
where ���='��' and ���>=@jyje
group by �˺�
--���˻�������ȡ�й��˻�
select �˺�,�������� ���п���
into #tmp2
from zhsys where �˺� in (select �˺� from #tmp1)
--����2��
select a.�˺�,a.���縶��,b.���п���
into #tmp3
from #tmp1 a
inner join #tmp2 b
on a.�˺�=b.�˺�
--�ҵ����翪��
select �˺�,MIN(���縶��) ���縶��,MIN(���п���) ��������
into #tmp4
from #tmp3
group by �˺�
--������ʱ��
select �˺�,���縶��,��������,datediff(day,CONVERT(date,���縶��),CONVERT(date,��������)) ���
into #tmp5
from #tmp4
--���ֽ��
select �˺�,���縶��,��������,���
into #tmp6
from #tmp5
where ���>=@inter_day

--#tmp6�˻��Ľ������#tmp7-----------------
select �˺� �˺�,count(�˺�) ����,
       sum(case when (���='��') then 1 else 0 end) ����,  
       sum(case when (���='��') then 1 else 0 end) �跽, 
       sum(case when (��ת='�ֽ�' and ���='��') then 1 else 0 end) �����ֽ�,
       sum(case when (��ת='�ֽ�' and ���='��') then 1 else 0 end) �跽�ֽ�,
       min(��������) ���罻��,max(��������) ��ٽ���
into #tmp7
from V_txn
where �˺� in (select �˺� from #tmp6)
group by �˺�

---��ȡ������Ϣ
select b.���л�������,b.���л�������,a.�˺� �˺�,a.���縶��,��������,a.���,
b.�˻����� �������� ,b.�������� ���п��� ,b.�������� ��������,b.�������� ���о��� ,b.״̬ ����״̬
into #tmp8
from #tmp6 a
left join zhsys b
on a.�˺�=b.�˺�

select a.*,c.bank_code �����������,c.acc_name ����,
(CASE c.ent_cst_type WHEN '0' THEN '����' WHEN '1' THEN 'һ��' WHEN '2' THEN '��Ԥ��'  WHEN '3' THEN '��ʱ' WHEN '4' THEN 'Ԥ��' END) ����,
c.open_time ��������,c.close_time ��������,
(CASE c.close_flag WHEN '0' THEN '����' WHEN '1' THEN '����' WHEN '2' THEN '���'  WHEN '3' THEN '����' END)  ״̬
into #tmp9
from #tmp8 a
left join tb_acc c 
on a.�˺�=c.acc_no

select a.*,
d.����,d.�跽,d.����,d.�跽�ֽ�,d.�����ֽ�,d.���罻��,d.��ٽ���
into #tmp99
from #tmp9 a
left join #tmp7 d
on a.�˺�=d.�˺�
select * from #tmp99
where �������� like '����%' or �������� like '%��ʱ%' or ��������='Ԥ��'
order by �˺�,���л�������
END
GO��� ! -   �"     [       4110������ٱ���_�����翪�� F   �Ǻ�׼��δ�ڹ涨��ʱ���ں�׼�������п��������жϣ��ֲ��˻�ϵͳ����� 9   @��鿪ʼ����!D:20120101@����������!D:20130430@����!N:5 �       02030111	    0
    0    1 o  CREATE PROCEDURE P_ybfys_late_khrq(@bgn_date char(8),@end_date char(8),@inter_day int) WITH ENCRYPTION  AS
BEGIN
------ɸѡ���������600�ĸ���������˻��������翪�����������ʹ�����ȡ�����ѵ����
--declare @bgn_date char(8)
--declare @end_date char(8)
--declare @inter_day int
--declare @jyje int
--set @bgn_date='20120101'
--set @end_date='20130430'
--set @inter_day=1
--set @jyje=600
if object_id('tempdb..#tmp') is not null drop table #tmp
if object_id('tempdb..#tmp0') is not null drop table #tmp0
if object_id('tempdb..#tmp00') is not null drop table #tmp00
if object_id('tempdb..#tmp000') is not null drop table #tmp000
if object_id('tempdb..#tmp1') is not null drop table #tmp1
if object_id('tempdb..#tmp2') is not null drop table #tmp2  
if object_id('tempdb..#tmp3') is not null drop table #tmp3
if object_id('tempdb..#tmp4') is not null drop table #tmp4
if object_id('tempdb..#tmp5') is not null drop table #tmp5
if object_id('tempdb..#tmp6') is not null drop table #tmp6
if object_id('tempdb..#tmp7') is not null drop table #tmp7
if object_id('tempdb..#tmp8') is not null drop table #tmp8
if object_id('tempdb..#tmp9') is not null drop table #tmp9
if object_id('tempdb..#tmp99') is not null drop table #tmp99
if object_id('tempdb..#tmp22') is not null drop table #tmp22  
if object_id('tempdb..#tmp33') is not null drop table #tmp33
if object_id('tempdb..#tmp44') is not null drop table #tmp44
if object_id('tempdb..#tmp55') is not null drop table #tmp55
if object_id('tempdb..#tmp222') is not null drop table #tmp222  
if object_id('tempdb..#tmp333') is not null drop table #tmp333
if object_id('tempdb..#tmp444') is not null drop table #tmp444
if object_id('tempdb..#tmp555') is not null drop table #tmp555

--��ȡtb_acc�м�����ڿ����˻����й���Ϣ
select distinct acc_no,open_time ����ʱ��
into #tmp1
from tb_acc where acc_type='2' and open_time>= @bgn_date
--���˻�������ȡ�й��˻�
select �˺�,�������� ���п���
into #tmp2
from zhsys where �˺� in (select acc_no from #tmp1)
--����2��
select a.acc_no,a.����ʱ��,b.���п���
into #tmp3
from #tmp1 a
inner join #tmp2 b
on a.acc_no=b.�˺�

--�ҵ����翪��
select acc_no,MIN(����ʱ��) ����ʱ��,MIN(���п���) ��������
into #tmp4
from #tmp3
group by acc_no
--������ʱ��
select acc_no,����ʱ��,��������,datediff(day,CONVERT(date,����ʱ��),CONVERT(date,��������)) ���
into #tmp5
from #tmp4
--���ֽ��
select acc_no,����ʱ��,��������,���
into #tmp6
from #tmp5
where ���>=@inter_day

--#tmp6�˻��Ľ������#tmp7-----------------
select �˺� �˺�,count(�˺�) ����,
       sum(case when (���='��') then 1 else 0 end) ����,  
       sum(case when (���='��') then 1 else 0 end) �跽, 
       sum(case when (��ת='�ֽ�' and ���='��') then 1 else 0 end) �����ֽ�,
       sum(case when (��ת='�ֽ�' and ���='��') then 1 else 0 end) �跽�ֽ�,
       min(��������) ���罻��,max(��������) ��ٽ���
into #tmp7
from V_txn
where �˺� in (select acc_no from #tmp6)
group by �˺�
---��ȡ������Ϣ
select b.���л�������,b.���л�������,a.acc_no �˺�,
a.��������,a.���,
b.�˻����� ���л��� ,b.�˻����� �������� ,b.�������� ���п��� ,b.�������� ��������,b.�������� ���о��� ,b.״̬ ����״̬
into #tmp8
from #tmp6 a
left join zhsys b
on a.acc_no=b.�˺�

select a.*,c.bank_code �����������,c.acc_name ����,
c.open_time ��������,c.close_time ��������,
(CASE c.ent_cst_type WHEN '0' THEN '����' WHEN '1' THEN 'һ��' WHEN '2' THEN '��Ԥ��'  WHEN '3' THEN '��ʱ' WHEN '4' THEN 'Ԥ��' END) ����,
(CASE c.close_flag WHEN '0' THEN '����' WHEN '1' THEN '����' WHEN '2' THEN '���'  WHEN '3' THEN '����' END)  ״̬
into #tmp9
from #tmp8 a
left join tb_acc c 
on a.�˺�=c.acc_no

select a.*,
d.����,d.�跽,d.����,d.�跽�ֽ�,d.�����ֽ�,d.���罻��,d.��ٽ���
into #tmp99
from #tmp9 a
left join #tmp7 d
on a.�˺�=d.�˺�

select * from #tmp99
where ��������='һ��' or ��������='��Ԥ��'
order by �˺�,���л�������
END
GO��� ! .   �"  G   [       4111������ٱ���_�����縶�� F   �Ǻ�׼��δ�ڹ涨��ʱ���ں�׼�������и��������жϣ��ֲ��˻�ϵͳ�����    @��С������!N:600@����!N:5 �       02030112	    0
    0    1 %  CREATE PROCEDURE P_ybfys_late_fkrq(@jyje int,@inter_day int)  WITH ENCRYPTION AS
BEGIN
------ɸѡ���������600�ĸ���������˻��������翪�����������ʹ�����ȡ�����ѵ����
--declare @bgn_date char(8)
--declare @end_date char(8)
--declare @inter_day int
--declare @jyje int
--set @bgn_date='20120101'
--set @end_date='20130430'
--set @inter_day=1
--set @jyje=600
if object_id('tempdb..#tmp') is not null drop table #tmp
if object_id('tempdb..#tmp0') is not null drop table #tmp0
if object_id('tempdb..#tmp00') is not null drop table #tmp00
if object_id('tempdb..#tmp000') is not null drop table #tmp000
if object_id('tempdb..#tmp1') is not null drop table #tmp1
if object_id('tempdb..#tmp2') is not null drop table #tmp2  
if object_id('tempdb..#tmp3') is not null drop table #tmp3
if object_id('tempdb..#tmp4') is not null drop table #tmp4
if object_id('tempdb..#tmp5') is not null drop table #tmp5
if object_id('tempdb..#tmp6') is not null drop table #tmp6
if object_id('tempdb..#tmp7') is not null drop table #tmp7
if object_id('tempdb..#tmp8') is not null drop table #tmp8
if object_id('tempdb..#tmp9') is not null drop table #tmp9
if object_id('tempdb..#tmp99') is not null drop table #tmp99
if object_id('tempdb..#tmp22') is not null drop table #tmp22  
if object_id('tempdb..#tmp33') is not null drop table #tmp33
if object_id('tempdb..#tmp44') is not null drop table #tmp44
if object_id('tempdb..#tmp55') is not null drop table #tmp55
if object_id('tempdb..#tmp222') is not null drop table #tmp222  
if object_id('tempdb..#tmp333') is not null drop table #tmp333
if object_id('tempdb..#tmp444') is not null drop table #tmp444
if object_id('tempdb..#tmp555') is not null drop table #tmp555

--������縶��ʱ��
select �˺�,min(��������) ���縶��
into #tmp1
from V_txn
where ���='1' and ���>=@jyje
group by �˺�
--���˻�������ȡ�й��˻�
select �˺�,�������� ���п���
into #tmp2
from zhsys where �˺� in (select �˺� from #tmp1)
--����2��
select a.�˺�,a.���縶��,b.���п���
into #tmp3
from #tmp1 a
inner join #tmp2 b
on a.�˺�=b.�˺�
--�ҵ����翪��
select �˺�,MIN(���縶��) ���縶��,MIN(���п���) ��������
into #tmp4
from #tmp3
group by �˺�
--������ʱ��
select �˺�,���縶��,��������,datediff(day,CONVERT(date,���縶��),CONVERT(date,��������)) ���
into #tmp5
from #tmp4
--���ֽ��
select �˺�,���縶��,��������,���
into #tmp6
from #tmp5
where ���>=@inter_day

--#tmp6�˻��Ľ������#tmp7-----------------
select �˺� �˺�,count(�˺�) ����,
       sum(case when (���='��') then 1 else 0 end) ����,  
       sum(case when (���='��') then 1 else 0 end) �跽, 
       sum(case when (��ת='�ֽ�' and ���='��') then 1 else 0 end) �����ֽ�,
       sum(case when (��ת='�ֽ�' and ���='��') then 1 else 0 end) �跽�ֽ�,
       min(��������) ���罻��,max(��������) ��ٽ���
into #tmp7
from V_txn
where �˺� in (select �˺� from #tmp6)
group by �˺�
---��ȡ������Ϣ
select b.���л�������,b.���л�������,a.�˺� �˺�,
a.��������,a.���,
b.�˻����� ���л��� ,b.�˻����� �������� ,b.�������� ���п��� ,b.�������� ��������,b.�������� ���о��� ,b.״̬ ����״̬
into #tmp8
from #tmp6 a
left join zhsys b
on a.�˺�=b.�˺�

select a.*,c.bank_code �����������,c.acc_name ����,
c.open_time ��������,c.close_time ��������,
(CASE c.ent_cst_type WHEN '0' THEN '����' WHEN '1' THEN 'һ��' WHEN '2' THEN '��Ԥ��'  WHEN '3' THEN '��ʱ' WHEN '4' THEN 'Ԥ��' END) ����,
(CASE c.close_flag WHEN '0' THEN '����' WHEN '1' THEN '����' WHEN '2' THEN '���'  WHEN '3' THEN '����' END)  ״̬
into #tmp9
from #tmp8 a
left join tb_acc c 
on a.�˺�=c.acc_no

select a.*,
d.����,d.�跽,d.����,d.�跽�ֽ�,d.�����ֽ�,d.���罻��,d.��ٽ���
into #tmp99
from #tmp9 a
left join #tmp7 d
on a.�˺�=d.�˺�

select * from #tmp99
where ��������='һ��' or ��������='��Ԥ��'
order by �˺�,���л�������

END
GO��� ! /   �"      [       4112δ��׼��δ����_���˻��н��� *   ����δ�ṩ�˻����ݣ������ױ��д��ڽ��׼�¼    @��С���ױ���!N:3 �       02030113	    0
    0    1 �
  CREATE PROCEDURE P_wqxybzyzh_not_bak(@jybs int)  WITH ENCRYPTION  AS
BEGIN
if object_id('tempdb..#tmp') is not null drop table #tmp
if object_id('tempdb..#tmp0') is not null drop table #tmp0
if object_id('tempdb..#tmp00') is not null drop table #tmp00
if object_id('tempdb..#tmp000') is not null drop table #tmp000
if object_id('tempdb..#tmp1') is not null drop table #tmp1
if object_id('tempdb..#tmp11') is not null drop table #tmp11
if object_id('tempdb..#tmp2') is not null drop table #tmp2 
if object_id('tempdb..#tmp22') is not null drop table #tmp22  
if object_id('tempdb..#tmp3') is not null drop table #tmp3
if object_id('tempdb..#tmp33') is not null drop table #tmp33
if object_id('tempdb..#tmp4') is not null drop table #tmp4
if object_id('tempdb..#tmp44') is not null drop table #tmp44
if object_id('tempdb..#tmp5') is not null drop table #tmp5
if object_id('tempdb..#tmp55') is not null drop table #tmp55
if object_id('tempdb..#tmp6') is not null drop table #tmp6
if object_id('tempdb..#tmp7') is not null drop table #tmp7
if object_id('tempdb..#tmp8') is not null drop table #tmp8
if object_id('tempdb..#tmp9') is not null drop table #tmp9

/*��ȡ��ȡ���н��׵��˺�tmp1*/
select �˺� ,sum(case when (��ת='�ֽ�' and ���='��') then 1 else 0 end) �跽�ֽ�
into #tmp1
from V_txn
group by �˺�
having sum(case when (��ת='�ֽ�' and ���='��') then 1 else 0 end)<=0
/*��ȡtb_acc��δ�ṩ���˺�*/
select distinct �˺� 
into #tmp2
from #tmp1 where �˺� not in(select distinct acc_no from tb_acc )
/*��ȡzhsys��δ�ṩ���˺�#tmp3*/
select distinct �˺� 
into #tmp3
from #tmp2 where �˺� not in(select distinct �˺� from zhsys )

--#tmp3�˻��Ľ������#tmp4-----------------
select �˺� �˺�,count(�˺�) ����,
       sum(case when (���='��') then 1 else 0 end) ����,  
       sum(case when (���='��') then 1 else 0 end) �跽, 
       sum(case when (��ת='�ֽ�' and ���='��') then 1 else 0 end) �����ֽ�,
       sum(case when (��ת='�ֽ�' and ���='��') then 1 else 0 end) �跽�ֽ�,
       min(��������) ����ʱ��,max(��������) ���ʱ��
into #tmp4
from V_txn
where �˺� in (select  �˺� from #tmp3)
group by �˺�

/*��ȡ���ױ��н����С������д���#tmp5*/
select distinct �˺�,������
into #tmp5
from V_Txn
/*���Ͻ��ױ��н���������#tmp55*/
select distinct a.�˺�,a.������,b.���л������� ����������
into #tmp55
from #tmp5 a
left join V_Bank b on a.������=b.���л�������

/*�ϲ�������Ϣ��ʾ*/
select a.�˺� �˺�,b.������ �����д���,b.����������,c.����,c.�跽,c.����,c.�跽�ֽ�,c.�����ֽ�,c.����ʱ��,c.���ʱ��
from #tmp3 a
left join #tmp55 b on a.�˺�=b.�˺�
left join #tmp4 c on a.�˺�=c.�˺�
where c.���� >= @jybs
order by a.�˺�
END
GO��� ! 0   �"  `   [       4113δ��׼��δ����_���˻���ȡ�� *   ����δ�ṩ�˻����ݣ������ױ��д���ȡ�ּ�¼    @ɸѡȡ�ֵ���С����!N:1 �       02030114	    0
    0    1 }
  CREATE PROCEDURE P_jyzh_not_in_tb_acc(@qxbs int)  WITH ENCRYPTION  AS
BEGIN
if object_id('tempdb..#tmp') is not null drop table #tmp
if object_id('tempdb..#tmp0') is not null drop table #tmp0
if object_id('tempdb..#tmp00') is not null drop table #tmp00
if object_id('tempdb..#tmp000') is not null drop table #tmp000
if object_id('tempdb..#tmp1') is not null drop table #tmp1
if object_id('tempdb..#tmp11') is not null drop table #tmp11
if object_id('tempdb..#tmp2') is not null drop table #tmp2 
if object_id('tempdb..#tmp22') is not null drop table #tmp22  
if object_id('tempdb..#tmp3') is not null drop table #tmp3
if object_id('tempdb..#tmp33') is not null drop table #tmp33
if object_id('tempdb..#tmp4') is not null drop table #tmp4
if object_id('tempdb..#tmp44') is not null drop table #tmp44
if object_id('tempdb..#tmp5') is not null drop table #tmp5
if object_id('tempdb..#tmp55') is not null drop table #tmp55
if object_id('tempdb..#tmp6') is not null drop table #tmp6
if object_id('tempdb..#tmp7') is not null drop table #tmp7
if object_id('tempdb..#tmp8') is not null drop table #tmp8
if object_id('tempdb..#tmp9') is not null drop table #tmp9

/*��ȡ����ȡ�ֽ��׵��˺�tmp1*/
select �˺� ,sum(case when (��ת='�ֽ�' and ���='��') then 1 else 0 end) �跽�ֽ�
into #tmp1
from V_txn
group by �˺�
having sum(case when (��ת='�ֽ�' and ���='��') then 1 else 0 end)>=@qxbs
/*��ȡtb_acc��δ�ṩ���˺�*/
select distinct �˺� 
into #tmp2
from #tmp1 where �˺� not in(select distinct acc_no from tb_acc )
/*��ȡzhsys��δ�ṩ���˺�#tmp3*/
select distinct �˺� 
into #tmp3
from #tmp2 where �˺� not in(select distinct �˺� from zhsys )

--#tmp3�˻��Ľ������#tmp4-----------------
select �˺� �˺�,count(�˺�) ����,
       sum(case when (���='��') then 1 else 0 end) ����,  
       sum(case when (���='��') then 1 else 0 end) �跽, 
       sum(case when (��ת='�ֽ�' and ���='��') then 1 else 0 end) �����ֽ�,
       sum(case when (��ת='�ֽ�' and ���='��') then 1 else 0 end) �跽�ֽ�,
       min(��������) ����ʱ��,max(��������) ���ʱ��
into #tmp4
from V_txn
where �˺� in (select  �˺� from #tmp3)
group by �˺�

/*��ȡ���ױ��н����С������д���#tmp5*/
select distinct �˺�,������
into #tmp5
from V_Txn
/*���Ͻ��ױ��н���������#tmp55*/
select distinct a.�˺�,a.������,b.���л������� ����������
into #tmp55
from #tmp5 a
left join V_Bank b on a.������=b.���л�������

/*�ϲ�������Ϣ��ʾ*/
select a.�˺� �˺�,b.������ �����д���,b.����������,c.����,c.�跽,c.����,c.�跽�ֽ�,c.�����ֽ�,c.����ʱ��,c.���ʱ��
from #tmp3 a
left join #tmp55 b on a.�˺�=b.�˺�
left join #tmp4 c on a.�˺�=c.�˺�
order by a.�˺�
END
GO��� ! 1   �"  @   Z       .�˻���������           �       020302	    0
    0    1��� ! 2   �"     @      4201�˻�����δ���� .   ��������ṩ�ĳ����˻��������˻�ϵͳ����ʾ����      �       02030201	    0
    0    1 
  CREATE PROCEDURE  P_zhcx_no_bak  WITH ENCRYPTION  AS
BEGIN

if object_id('tempdb..#tmp') is not null drop table #tmp
if object_id('tempdb..#tmp0') is not null drop table #tmp0
if object_id('tempdb..#tmp00') is not null drop table #tmp00
if object_id('tempdb..#tmp000') is not null drop table #tmp000
if object_id('tempdb..#tmp1') is not null drop table #tmp1
if object_id('tempdb..#tmp11') is not null drop table #tmp11
if object_id('tempdb..#tmp2') is not null drop table #tmp2 
if object_id('tempdb..#tmp22') is not null drop table #tmp22  
if object_id('tempdb..#tmp3') is not null drop table #tmp3
if object_id('tempdb..#tmp33') is not null drop table #tmp33
if object_id('tempdb..#tmp4') is not null drop table #tmp4
if object_id('tempdb..#tmp44') is not null drop table #tmp44
if object_id('tempdb..#tmp5') is not null drop table #tmp5
if object_id('tempdb..#tmp6') is not null drop table #tmp6
if object_id('tempdb..#tmp7') is not null drop table #tmp7
if object_id('tempdb..#tmp8') is not null drop table #tmp8
if object_id('tempdb..#tmp9') is not null drop table #tmp9
--�˻�������ȡ״̬Ϊ�������˻�
Select a.bank_code �����������,c.���л�������,c.���л�������,a.acc_no �˺�,a.acc_name ����,
(CASE a.ent_cst_type WHEN '0' THEN '����' WHEN '1' THEN 'һ��' WHEN '2' THEN 'ר��'
WHEN '3' THEN '��ʱ' WHEN '4' THEN 'Ԥ��' END) ����,
a.open_time ����ʱ��,a.close_time ����ʱ��,
(CASE a.close_flag WHEN '0' THEN '����' WHEN '1' THEN '����' WHEN '2' THEN '���'   END)  ״̬,
c.�˻����� ��������,c.״̬ ����״̬
from tb_acc a
left join zhsys c on a.acc_no=c.�˺�
where close_flag='1' and acc_type='2' and acc_no in 
--��ȡ�˻�ϵͳ������״̬Ϊ�������˻�
(select �˺� from zhsys  where len(��������)=0 and �������� is null ) and c.״̬='����'
order by a.acc_no
END
GO��� ! 3   �"  #   @      4202�˻������ٱ��� (   ������������������������˻�ϵͳ�гٱ��� 9   @��鿪ʼ����!D:20120101@����������!D:20130430@����!N:7 �       02030202	    0
    0    1 �  CREATE PROCEDURE P_zhcx_late_bak(@bgn_date char(8),@end_date char(8),@inter_day int)  WITH ENCRYPTION AS
BEGIN
--declare @bgn_date char(8)
--declare @end_date char(8)
--declare @inter_day int
--declare @jyje int
--set @bgn_date='20120101'
--set @end_date='20130430'
--set @inter_day=7
--set @jyje=600
if object_id('tempdb..#tmp') is not null drop table #tmp
if object_id('tempdb..#tmp0') is not null drop table #tmp0
if object_id('tempdb..#tmp00') is not null drop table #tmp00
if object_id('tempdb..#tmp000') is not null drop table #tmp000
if object_id('tempdb..#tmp1') is not null drop table #tmp1
if object_id('tempdb..#tmp2') is not null drop table #tmp2  
if object_id('tempdb..#tmp3') is not null drop table #tmp3
if object_id('tempdb..#tmp4') is not null drop table #tmp4
if object_id('tempdb..#tmp5') is not null drop table #tmp5
if object_id('tempdb..#tmp6') is not null drop table #tmp6
if object_id('tempdb..#tmp7') is not null drop table #tmp7
if object_id('tempdb..#tmp8') is not null drop table #tmp8
if object_id('tempdb..#tmp9') is not null drop table #tmp9
if object_id('tempdb..#tmp22') is not null drop table #tmp22  
if object_id('tempdb..#tmp33') is not null drop table #tmp33
if object_id('tempdb..#tmp44') is not null drop table #tmp44
if object_id('tempdb..#tmp55') is not null drop table #tmp55
if object_id('tempdb..#tmp222') is not null drop table #tmp222  
if object_id('tempdb..#tmp333') is not null drop table #tmp333
if object_id('tempdb..#tmp444') is not null drop table #tmp444
if object_id('tempdb..#tmp555') is not null drop table #tmp555

--��ȡtb_acc�м�������˻��������й���Ϣ
select distinct acc_no,close_time ��������
into #tmp1
from tb_acc where acc_type='2' and close_time>= @bgn_date 
--����˻���Ϣ
select a.acc_no,a.�������� ,b.�������� ��������,b.�������� ���о���,b.״̬ ����״̬
into #tmp2
from #tmp1 a
inner join zhsys b
on a.acc_no=b.�˺�
--ɾ��ϵͳ�������˻��йص��˺�
select distinct acc_no 
into #tmp22
from #tmp2
where ����״̬='����'
delete #tmp2 where acc_no in (select acc_no from #tmp22)
--select * from #tmp2

--�ҵ����翪��
select acc_no,MAX(��������) ��������,MAX(��������) ��������,MAX(���о���) ���о���
into #tmp3
from #tmp2
group by acc_no
--������ʱ��
select acc_no,��������,��������,���о���,
datediff(day,CONVERT(date,��������),CONVERT(date,case when len(��������)=0 then ���о��� else �������� end )) ���
into #tmp4
from #tmp3
--���ֽ��
select acc_no,��������,��������,���о���,���
into #tmp5
from #tmp4
where ���>=@inter_day
---��ȡ������Ϣ
select c.bank_code �����������,b.���л�������,a.acc_no �˺�,c.acc_name ����,
c.close_time ��������,b.�������� ��������,b.�������� ���о���,a.���,c.open_time ��������,
(CASE c.ent_cst_type WHEN '0' THEN '����' WHEN '1' THEN 'һ��' WHEN '2' THEN '��Ԥ��'  WHEN '3' THEN '��ʱ' WHEN '4' THEN 'Ԥ��' END) ����,
(CASE c.close_flag WHEN '0' THEN '����' WHEN '1' THEN '����' WHEN '2' THEN '���'  WHEN '3' THEN '����' END)  ״̬,
b.�˻����� �������� ,b.״̬ ����״̬
into #tmp6
from #tmp5 a
left join V_ZhLast b
on a.acc_no=b.�˺�
left join tb_acc c 
on a.acc_no=c.acc_no
select * from #tmp6
order by �����������,�˺�
END
GO��� ! 4   �"  9   Z       .�˻�ʹ�÷���           �       020303	    0
    1    1��� ! 5   �"     9      �������˻�ȡ�� (   һ��ͷ�Ԥ���˻�����ȡ��ҵ���ṩ������ X   @ҵ��ʼ����!D:20190101@ҵ���������!D:20200630@ÿ����Сȡ�ֽ��!N:100@����ȡ�ֱ���!N:1 �       02030301	    0
    1    1 x  CREATE PROCEDURE P_ybzh_qx(@bgn_date char(8),@end_date char(8),@jfxjje int,@jfxjbs int)   WITH ENCRYPTION AS
BEGIN
--declare @bgn_date char(8)
--declare @end_date char(8)
--set @bgn_date='20180101'
--set @end_date='20190830'
--declare @jfxjje int
--set @jfxjje=10
if object_id('tempdb..#tmp') is not null drop table #tmp
if object_id('tempdb..#tmp0') is not null drop table #tmp0
if object_id('tempdb..#tmp00') is not null drop table #tmp00
if object_id('tempdb..#tmp000') is not null drop table #tmp000
if object_id('tempdb..#tmp1') is not null drop table #tmp1
if object_id('tempdb..#tmp2') is not null drop table #tmp2  
if object_id('tempdb..#tmp3') is not null drop table #tmp3
if object_id('tempdb..#tmp4') is not null drop table #tmp4
if object_id('tempdb..#tmp5') is not null drop table #tmp5
if object_id('tempdb..#tmp6') is not null drop table #tmp6
if object_id('tempdb..#tmp7') is not null drop table #tmp7
if object_id('tempdb..#tmp8') is not null drop table #tmp8
if object_id('tempdb..#tmp9') is not null drop table #tmp9
--�˻�ϵͳ����ȡһ��ͷ�Ԥ��
select a.�˺�,a.��������,a.��������,a.�������� 
into #tmp1
from v_rhzh_dw a
where (a.�˻�����='һ��' or a.�˻�����='��Ԥ��') and (�˻�״̬='����' or ��������>@bgn_date) 

--��ȡ��Щ�˻����ڽ��Ľ���
select *
into #tmp2
from tb_shjy_dw a 
where �˺� in (select distinct �˺� from #tmp1) and a.�����ʶ='��' and a.��ת��ʶ ='�ֽ�' and ���׽��>=@jfxjje
--���������������ڷ�Χ�ڵĽ���
select distinct b.*
into #tmp3
from #tmp1 a
join #tmp2 b on a.�˺�=b.�˺�
where (a.�������� is null or len(a.��������)=0) and (b.��������>a.��������) or
 (len(a.��������)>0 and b.��������>a.�������� and b.��������<a.��������) 
--��ȡ����С���ںͱ���
select �˺�,COUNT(�˺�) ȡ�ֱ��� ,MIN(��������) ����ȡ��,MAX(��������) ���ȡ��
into #tmp4
from #tmp3
group by �˺�
having COUNT(�˺�)>=@jfxjbs
--��ȡ������Ϣ

select b.���л�������,b.���л�������, a.�˺�,b.�˻�����,
a.ȡ�ֱ���,a.����ȡ��,a.���ȡ��,b.�˻�����,
b.�ɷ�ȡ��,b.��������,b.��������,b.�˻�״̬
from #tmp4 a
left join v_rhzh_dw b on a.�˺�=b.�˺�
--left join V_Bank d on b.bank_code=d.���л�������
END
GO��� ! 6   �"     9      Ԥ��ר���˻�ȡ��    Ԥ��ר���˻�����ȡ��ҵ�� X   @ҵ��ʼ����!D:20190101@ҵ���������!D:20200630@ÿ����Сȡ�ֽ��!N:100@����ȡ�ֱ���!N:1 �       02030302	    0
    1    1 `  CREATE PROCEDURE P_zyzh_qx(@bgn_date char(8),@end_date char(8),@jfxjje int,@jfxjbs int)  WITH ENCRYPTION AS
BEGIN
--declare @bgn_date char(8)
--declare @end_date char(8)
--set @bgn_date='20180101'
--set @end_date='20190830'
--declare @jfxjje int
--set @jfxjje=10
if object_id('tempdb..#tmp') is not null drop table #tmp
if object_id('tempdb..#tmp0') is not null drop table #tmp0
if object_id('tempdb..#tmp00') is not null drop table #tmp00
if object_id('tempdb..#tmp000') is not null drop table #tmp000
if object_id('tempdb..#tmp1') is not null drop table #tmp1
if object_id('tempdb..#tmp2') is not null drop table #tmp2  
if object_id('tempdb..#tmp3') is not null drop table #tmp3
if object_id('tempdb..#tmp4') is not null drop table #tmp4
if object_id('tempdb..#tmp5') is not null drop table #tmp5
if object_id('tempdb..#tmp6') is not null drop table #tmp6
if object_id('tempdb..#tmp7') is not null drop table #tmp7
if object_id('tempdb..#tmp8') is not null drop table #tmp8
if object_id('tempdb..#tmp9') is not null drop table #tmp9
--�˻�ϵͳ����ȡһ��ͷ�Ԥ��
select a.�˺�,a.��������,a.��������,a.�������� 
into #tmp1
from v_rhzh_dw a
where (a.�˻�����='Ԥ��') and (�˻�״̬='����' or ��������>@bgn_date) 

--��ȡ��Щ�˻����ڽ��Ľ���
select *
into #tmp2
from tb_shjy_dw a 
where �˺� in (select distinct �˺� from #tmp1) and a.�����ʶ='��' and a.��ת��ʶ ='�ֽ�' and ���׽��>=@jfxjje
--���������������ڷ�Χ�ڵĽ���
select distinct b.*
into #tmp3
from #tmp1 a
join #tmp2 b on a.�˺�=b.�˺�
where (a.�������� is null or len(a.��������)=0) and (b.��������>a.��������) or
 (len(a.��������)>0 and b.��������>a.�������� and b.��������<a.��������) 
--��ȡ����С���ںͱ���
select �˺�,COUNT(�˺�) ȡ�ֱ��� ,MIN(��������) ����ȡ��,MAX(��������) ���ȡ��
into #tmp4
from #tmp3
group by �˺�
having COUNT(�˺�)>=@jfxjbs
--��ȡ������Ϣ

select b.���л�������,b.���л�������, a.�˺�,b.�˻�����,
a.ȡ�ֱ���,a.����ȡ��,a.���ȡ��,b.�˻�����,
b.�ɷ�ȡ��,b.��������,b.��������,b.�˻�״̬
from #tmp4 a
left join v_rhzh_dw b on a.�˺�=b.�˺�
--left join V_Bank d on b.bank_code=d.���л�������
END
GO��� ! 7   �"  -   9      4304��������Ч���ڷ�������ҵ�� 6   ��������Ч���ڷ�������ҵ��(�ֳ��ֹ��޳����ʻ�ת������) R   @��鿪ʼ����!D:20120101@����������!D:20130430@��Ч������!N:3@��С������!N:200 �       02030303	    0
    0    1 �
  CREATE PROCEDURE P_sxr_zf_jb(@bgn_date char(8),@end_date char(8),@inter_day int,@jyje int)  WITH ENCRYPTION  AS
BEGIN
--declare @bgn_date char(8)
--declare @end_date char(8)
--declare @row_num int
--declare @zh_len int
--declare @jyje int
--declare @inter_day int
--set @bgn_date='20120101'
--set @end_date='20130430'
--set @zh_len=20
--set @jyje=600
--set @inter_day=2
if object_id('tempdb..#tmp') is not null drop table #tmp
if object_id('tempdb..#tmp0') is not null drop table #tmp0
if object_id('tempdb..#tmp00') is not null drop table #tmp00
if object_id('tempdb..#tmp000') is not null drop table #tmp000
if object_id('tempdb..#tmp1') is not null drop table #tmp1
if object_id('tempdb..#tmp2') is not null drop table #tmp2  
if object_id('tempdb..#tmp3') is not null drop table #tmp3
if object_id('tempdb..#tmp4') is not null drop table #tmp4
if object_id('tempdb..#tmp5') is not null drop table #tmp5
if object_id('tempdb..#tmp6') is not null drop table #tmp6
if object_id('tempdb..#tmp7') is not null drop table #tmp7
if object_id('tempdb..#tmp8') is not null drop table #tmp8
if object_id('tempdb..#tmp9') is not null drop table #tmp9
--�ҳ�����������С���˺ż����翪������
select distinct [�˺�],min(��������) ���翪��
into #tmp1
from zhsys
group by �˺�
having convert(date,min(��������))>=convert(date,@bgn_date)

--���˺���Ч�������ĸ����
select a.�˺�,min(b.���翪��) ���翪�� ,MIN(a.��������) ���縶��,
count(a.�˺�) ������� 
into #tmp2
from V_Txn a
left join #tmp1 b on a.�˺�=b.�˺�
where a.���='��' and datediff(day,convert(date,b.���翪��),convert(date,a.��������))>0 and datediff(day,convert(date,b.���翪��),convert(date,a.��������))<=@inter_day and ���>=@jyje
group by a.�˺�
having sum(case when (���='��') then 1 else 0 end)>0

---��ȡ������Ϣ
select b.���л�������,b.���л�������,a.�˺� �˺�,
a.���翪��,a.���縶��,a.�������,
b.�˻����� ��������, 
b.�������� ���п���,b.״̬ ����״̬
into #tmp3
from #tmp2 a
left join zhsys b
on a.�˺�=b.�˺�

select c.bank_code �����������,a.���л�������,a.�˺�,c.acc_name ����,a.���翪��,a.���縶��,a.�������,a.���п���,a.����״̬,a.��������,
(CASE c.ent_cst_type WHEN '0' THEN '����' WHEN '1' THEN 'һ��' WHEN '2' THEN '��Ԥ��'  WHEN '3' THEN '��ʱ' WHEN '4' THEN 'Ԥ��' END) ����,
 c.open_time ��������,c.close_time ��������,
(CASE c.close_flag WHEN '0' THEN '����' WHEN '1' THEN '����' WHEN '2' THEN '���'  WHEN '3' THEN '����' END)  ״̬
into #tmp4
from #tmp3 a
left join tb_acc c 
on a.�˺�=c.acc_no
delete #tmp4 where ���翪��<>���п���

select a.�����������,a.���л�������,a.�˺�,a.����,a.���翪��,a.���縶��,a.�������,a.��������,a.��������,a.����,a.״̬,
a.��������,a.����״̬
 from #tmp4 a
where ��������='����'
order by �����������,�˺�
END
GO��� ! 8   �"  &   9       4303�ǻ�������Ч���ڷ�������ҵ�� 4   ����Ϊ�ǻ�������Ч���ڷ�������ҵ��(ע���ֹ��޳���ĩ) R   @��鿪ʼ����!D:20120101@����������!D:20130430@��Ч������!N:3@��С������!N:200 �       02030304	    0
    0    1 �
  CREATE PROCEDURE P_sxr_zf_no_jb(@bgn_date char(8),@end_date char(8),@inter_day int,@jyje int)  WITH ENCRYPTION AS
BEGIN
--declare @bgn_date char(8)
--declare @end_date char(8)
--declare @row_num int
--declare @zh_len int
--declare @jyje int
--declare @inter_day int
--set @bgn_date='20120101'
--set @end_date='20130430'
--set @zh_len=20
--set @jyje=600
--set @inter_day=2
if object_id('tempdb..#tmp') is not null drop table #tmp
if object_id('tempdb..#tmp0') is not null drop table #tmp0
if object_id('tempdb..#tmp00') is not null drop table #tmp00
if object_id('tempdb..#tmp000') is not null drop table #tmp000
if object_id('tempdb..#tmp1') is not null drop table #tmp1
if object_id('tempdb..#tmp2') is not null drop table #tmp2  
if object_id('tempdb..#tmp3') is not null drop table #tmp3
if object_id('tempdb..#tmp4') is not null drop table #tmp4
if object_id('tempdb..#tmp5') is not null drop table #tmp5
if object_id('tempdb..#tmp6') is not null drop table #tmp6
if object_id('tempdb..#tmp7') is not null drop table #tmp7
if object_id('tempdb..#tmp8') is not null drop table #tmp8
if object_id('tempdb..#tmp9') is not null drop table #tmp9
--�ҳ�����������С���˺ż����翪������
select distinct [�˺�],min(��������) ���翪��
into #tmp1
from zhsys
group by �˺�
having convert(date,min(��������))>=convert(date,@bgn_date)

--���˺���Ч�������ĸ����
select a.�˺�,min(b.���翪��) ���翪�� ,MIN(a.��������) ���縶��,
count(a.�˺�) ������� 
into #tmp2
from V_Txn a
left join #tmp1 b on a.�˺�=b.�˺�
where a.���='��' and datediff(day,convert(date,b.���翪��),convert(date,a.��������))>0 and datediff(day,convert(date,b.���翪��),convert(date,a.��������))<=@inter_day and ���>=@jyje
group by a.�˺�
having sum(case when (���='��') then 1 else 0 end)>0

---��ȡ������Ϣ
select b.���л�������,b.���л�������,a.�˺� �˺�,
a.���翪��,a.���縶��,a.�������,
b.�˻����� ��������, 
b.�������� ���п��� ,b.״̬ ����״̬
into #tmp3
from #tmp2 a
left join zhsys b
on a.�˺�=b.�˺�

select a.*,c.bank_code �����������,c.acc_name ����,
(CASE c.ent_cst_type WHEN '0' THEN '����' WHEN '1' THEN 'һ��' WHEN '2' THEN '��Ԥ��'  WHEN '3' THEN '��ʱ' WHEN '4' THEN 'Ԥ��' END) ����,
 c.open_time ��������,c.close_time ��������,
(CASE c.close_flag WHEN '0' THEN '����' WHEN '1' THEN '����' WHEN '2' THEN '���'  WHEN '3' THEN '����' END)  ״̬
into #tmp4
from #tmp3 a
left join tb_acc c 
on a.�˺�=c.acc_no
delete #tmp4 where ���翪��<>���п���

select a.�����������,a.���л�������,a.�˺�,a.����,a.���翪��,a.���縶��,a.�������,a.��������,a.��������,a.����,a.״̬,
a.��������,a.����״̬
 from #tmp4 a
where ��������='һ��' or ��������='��Ԥ��' or ��������='Ԥ��' or ��������='��ʱ' or ��������='����ʱ'
order by �����������,�˺�
END
GO��� ! 9   �"  ?   Z       4.�˻���������      0   @��ʾ1!��������1:Ĭ��ֵ1@��ʾ2!��������2:Ĭ��ֵ2 �       020304	    0
    0    1 *   CREATE PROCEDURE      AS
BEGIN

END
GO��� ! :   �"  J   ?       4401ͬһ�˺ź�׼�򱸰�������һ�� .   ��ͬ�˺����л����Ļ������˻�ϵͳ�еĻ�����һ��      �       02030401	    0
    0    1 �  CREATE PROCEDURE  P_SameAcc_NotName  WITH ENCRYPTION   AS
BEGIN
if object_id('tempdb..#tmp') is not null drop table #tmp
if object_id('tempdb..#tmp0') is not null drop table #tmp0
if object_id('tempdb..#tmp00') is not null drop table #tmp00
if object_id('tempdb..#tmp000') is not null drop table #tmp000
if object_id('tempdb..#tmp1') is not null drop table #tmp1
if object_id('tempdb..#tmp2') is not null drop table #tmp2  
if object_id('tempdb..#tmp3') is not null drop table #tmp3
if object_id('tempdb..#tmp33') is not null drop table #tmp33
if object_id('tempdb..#tmp333') is not null drop table #tmp333
if object_id('tempdb..#tmp4') is not null drop table #tmp4
if object_id('tempdb..#tmp5') is not null drop table #tmp5
if object_id('tempdb..#tmp6') is not null drop table #tmp6
if object_id('tempdb..#tmp7') is not null drop table #tmp7
if object_id('tempdb..#tmp8') is not null drop table #tmp8
if object_id('tempdb..#tmp9') is not null drop table #tmp9
select distinct a.���л�������,a.���л�������, a.�˺�, b.acc_name ���л���,a.�˻����� ���л���, 
                b.open_time ���п���,
                b.close_time �������� ,(CASE b.ent_cst_type WHEN '0' THEN '����' WHEN '1' THEN 'һ��' WHEN '2' THEN '��Ԥ��'  WHEN '3' THEN '��ʱ' WHEN '4' THEN 'Ԥ��' ELSE '    ' END) ��������,              
(CASE b.close_flag WHEN '0' THEN '����' WHEN '1' THEN '����' WHEN '2' THEN '���' WHEN '3' THEN '����' ELSE '    ' END)  ����״̬,
                a.�˻����� ��������,
                a.״̬ ����״̬           
into #tmp1
from V_zhlast a
left join tb_acc b on ltrim(a.�˺�)=ltrim(b.acc_no) 
where ltrim(a.�˻�����)<>ltrim(b.acc_name)

select �˺�,COUNT(�˺�) ����,
       SUM(case ��� when '��' then 1 when '��' then 0 end) ����, 
       SUM(case ��� when '��' then 1 when '��' then 0 end) �跽,
       sum(case when (��ת='�ֽ�' and ���='��') then 1 else 0 end) �����ֽ�,
       sum(case when (��ת='�ֽ�' and ���='��') then 1 else 0 end) �跽�ֽ�
       into #tmp2
       from V_Txn
       where �˺� in (SELECT distinct �˺� from #tmp1)
       group by �˺�
select a.*,����,����, �跽, �����ֽ�,�跽�ֽ�
       from #tmp1 a
       left join #tmp2 b on a.�˺�=b.�˺�
       order by a.���л�������,a.�˺�
end
GO��� ! ;   �"  5   ?      ͬһ����ͬʱ��������һ��    ���������� ���� 0   @��ʾ1!��������1:Ĭ��ֵ1@��ʾ2!��������2:Ĭ��ֵ2 �       02030402	    0
    0    1 *   CREATE PROCEDURE      AS
BEGIN

END
GO��� ! <   �"  6   ?      ͬһ����ͬʱ����������ʱ    ���������� ���� 0   @��ʾ1!��������1:Ĭ��ֵ1@��ʾ2!��������2:Ĭ��ֵ2 �       02030403	    0
    0    1 *   CREATE PROCEDURE      AS
BEGIN

END
GO��� ! =   �"  ;   Z       5.��ͷ�˻����    �������������� 0   @��ʾ1!��������1:Ĭ��ֵ1@��ʾ2!��������2:Ĭ��ֵ2 �       020305	    0
    0    1 *   CREATE PROCEDURE      AS
BEGIN

END
GO��� ! >   �"  I   ;       6704�����˻���Ϊ�����˻�ʹ�á��� S   δ��׼���׼����Ϊ�ǻ����˻��������ʽ���Ƚ��ף���ɸѡ������˹��������ֳ��鿴 ���� 0   @��ʾ1!��������1:Ĭ��ֵ1@��ʾ2!��������2:Ĭ��ֵ2 �       02030501	    0
    0    1 *   CREATE PROCEDURE      AS
BEGIN

END
GO��� ! ?   �"  E   ;   $   6703�����˻���׼�򱸰�Ϊ�����˻����� #   ��ɸѡ������˹��������ֳ��鿴 ���� 0   @��ʾ1!��������1:Ĭ��ֵ1@��ʾ2!��������2:Ĭ��ֵ2 �       02030502	    0
    0    1 *   CREATE PROCEDURE      AS
BEGIN

END
GO��� ! @   �"  ,   ;      6702ͬһ֤�����������Ϸǻ����� #   ��ɸѡ������˹��������ֳ��鿴 ����    @��������!N:10000 �       02030503	    0
    0    1 �  CREATE PROCEDURE  P_ysdtzh_zjh(@row_num int) AS
BEGIN
if object_id('tempdb..#tmp') is not null drop table #tmp
if object_id('tempdb..#tmp0') is not null drop table #tmp0
if object_id('tempdb..#tmp00') is not null drop table #tmp00
if object_id('tempdb..#tmp000') is not null drop table #tmp000
if object_id('tempdb..#tmp1') is not null drop table #tmp1
if object_id('tempdb..#tmp2') is not null drop table #tmp2  
if object_id('tempdb..#tmp3') is not null drop table #tmp3
if object_id('tempdb..#tmp4') is not null drop table #tmp4
if object_id('tempdb..#tmp5') is not null drop table #tmp5
if object_id('tempdb..#tmp6') is not null drop table #tmp6
if object_id('tempdb..#tmp7') is not null drop table #tmp7
if object_id('tempdb..#tmp8') is not null drop table #tmp8
if object_id('tempdb..#tmp9') is not null drop table #tmp9
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
select wddm,'��'+wdmc wdmc from bankinfo 
where wddm in (select wddm from #tmp00)
order by wddm
select a.wddm,max(b.wdmc) wdmc into #tmp 
from #tmp0 a left join #tmp000 b
on a.wddm=b.wddm
group by a.wddm
order by a.wddm

--��ȡϵͳ״̬�����Ļ����˻�tmp1
select distinct �˺� into #tmp1
from zhsys
where ״̬='����' and �˻����� like '����%'
order by �˺�

-- ��ȡ�˻��������ױ������˺ţ��ϲ���tmp2
select distinct jyzh zh into #tmp2  --��ȡ�н��׵ĵ�λ�˺� 
  from AccountTra
  where zhbz='1' 
union
select distinct zh zh
  from AccountInfo 
  where zhbs='1' --��ȡ��λ�����˺�
order by zh

--��ȡ��ϵͳ��Ϣ���˻���Ϣ���˻�#tmp3--------------------------------
select zh --�Ӻϲ��˻�#tmp2����ȡ��ϵͳ�е��˺�--��ϵͳ��Ϣ
into #tmp3
from #tmp2
where zh in (select �˺� from #tmp1)
union
select zh --�Ӻϲ��˻�#tmp2����ȡ����ϵͳ֮�������˻���Ϣ���˻�
from #tmp2
where (zh not in (select �˺� from zhsys group by �˺� having max(״̬)='����')) and (zh in (select zh from AccountInfo))
--#tmp3�˻��Ľ������#tmp4-----------------
select jyzh,count(jyzh) jybs,sum(case when (xzbz='0') then 1 else 0 end) xjbs,
       sum(case when (jdbz='0') then 1 else 0 end) dfbs,
       min(rq) rq1,max(rq) rq2,max(kxgsj) kxgsj,max(kxhbs) kxhbs
into #tmp4
from AccountTra
where jyzh in (select distinct zh from #tmp3)
group by jyzh
order by jyzh
--�ϲ���Ϣ#tmp5------
select  a.zh �˺�,c.wddm �������,b.���л�������,d.wdmc ��������,b.���л�������,c.hm ����,b.�˻����� ϵͳ����,c.khh �ͻ���,c.zjhm ֤����,
       (CASE c.jszhxz WHEN '0' THEN '����' WHEN '1' THEN 'һ��' WHEN '2' THEN 'ר��'
         WHEN '3' THEN '��ʱ' END) �˻�����,
        b.�˻����� ϵͳ�˻�����,b.��������֤��׼��,b.�������� ϵͳ��������,b.�������� ϵͳ��������,
        (CASE c.zhbs WHEN '0' THEN '����'  WHEN '1' THEN '��λ'  END)  �˻���ʶ,
        c.kxgsj ������ʱ��,
        (CASE c.kxhbs WHEN '0' THEN '����' WHEN '1' THEN '����' WHEN '2' THEN '���'   END)  �˻�״̬,
        b.״̬ ϵͳ״̬,
        e.rq1 ���罻��ʱ��,e.rq2 ��ٽ���ʱ��,e.jybs ���ױ���,e.xjbs �ֽ��ױ���,e.dfbs ��������,
        e.kxgsj ���ױ�_������ʱ��,(CASE e.kxhbs WHEN '0' THEN '����' WHEN '1' THEN '����' WHEN '2' THEN '���'   END) ���ױ�_�˻�״̬
into #tmp5
from #tmp3 a
left join zhsys b on a.zh=b.�˺�
left join AccountInfo c on a.zh=c.zh
left join #tmp d on c.wddm=d.wddm
left join #tmp4 e on a.zh=e.jyzh
where e.xjbs>0
----����ϵͳ����
update #tmp5 set ������ʱ��=���ױ�_������ʱ��,�˻�״̬=���ױ�_�˻�״̬ where ������ʱ�� is null
update #tmp5 set ϵͳ����=���� where ϵͳ���� is null

--�Ի���Ϊ�����ж϶�ͷ��
select ֤����,count(֤����) ����
into #tmp6
from #tmp5
group by ֤����
having count(֤����)>2
set rowcount @row_num
select a.֤����,b.ϵͳ���� ����,b.�˺�,�������,���л�������,��������,���л�������,�ͻ���,��������֤��׼��,�˻���ʶ,
       �˻�����,ϵͳ�˻�����,�˻�״̬,ϵͳ״̬,������ʱ��,ϵͳ��������,ϵͳ��������,���罻��ʱ��,��ٽ���ʱ��,���ױ���,�ֽ��ױ���
from #tmp6 a left join #tmp5 b on a.֤����=b.֤����
order by a.֤����
set rowcount 0
END
GO��� ! A   �"  +   ;      6702���ƶ�ͷ�˻�(�ͻ��ţ� k   ���ͻ���ͬһ�ͻ����δ�����˻���ȡ�֣���������ʹ�ã������ݲ��������Է��֣���ʹ��������鹦��ʱ�˹�ע�� ����    @��������!N:10000 �       02030504	    0
    0    1 �  CREATE PROCEDURE  P_ysdtzh_khh(@row_num int) AS
BEGIN
if object_id('tempdb..#tmp') is not null drop table #tmp
if object_id('tempdb..#tmp0') is not null drop table #tmp0
if object_id('tempdb..#tmp00') is not null drop table #tmp00
if object_id('tempdb..#tmp000') is not null drop table #tmp000
if object_id('tempdb..#tmp1') is not null drop table #tmp1
if object_id('tempdb..#tmp2') is not null drop table #tmp2  
if object_id('tempdb..#tmp3') is not null drop table #tmp3
if object_id('tempdb..#tmp4') is not null drop table #tmp4
if object_id('tempdb..#tmp5') is not null drop table #tmp5
if object_id('tempdb..#tmp6') is not null drop table #tmp6
if object_id('tempdb..#tmp7') is not null drop table #tmp7
if object_id('tempdb..#tmp8') is not null drop table #tmp8
if object_id('tempdb..#tmp9') is not null drop table #tmp9
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
select wddm,'��'+wdmc wdmc from bankinfo 
where wddm in (select wddm from #tmp00)
order by wddm
select a.wddm,max(b.wdmc) wdmc into #tmp 
from #tmp0 a left join #tmp000 b
on a.wddm=b.wddm
group by a.wddm
order by a.wddm

--��ȡϵͳ״̬�����Ļ����˻�tmp1
select distinct �˺� into #tmp1
from zhsys
where ״̬='����' and �˻����� like '����%'
order by �˺�

-- ��ȡ�˻��������ױ������˺ţ��ϲ���tmp2
select distinct jyzh zh into #tmp2  --��ȡ�н��׵ĵ�λ�˺� 
  from AccountTra
  where zhbz='1' 
union
select distinct zh zh
  from AccountInfo 
  where zhbs='1' --��ȡ��λ�����˺�
order by zh

--��ȡ��ϵͳ��Ϣ���˻���Ϣ���˻�#tmp3--------------------------------
select zh --�Ӻϲ��˻�#tmp2����ȡ��ϵͳ�е��˺�--��ϵͳ��Ϣ
into #tmp3
from #tmp2
where zh in (select �˺� from #tmp1)
union
select zh --�Ӻϲ��˻�#tmp2����ȡ����ϵͳ֮�������˻���Ϣ���˻�
from #tmp2
where (zh not in (select �˺� from zhsys group by �˺� having max(״̬)='����')) and (zh in (select zh from AccountInfo))
--#tmp3�˻��Ľ������#tmp4-----------------
select jyzh,count(jyzh) jybs,sum(case when (xzbz='0') then 1 else 0 end) xjbs,
       sum(case when (jdbz='0') then 1 else 0 end) dfbs,
       min(rq) rq1,max(rq) rq2,max(kxgsj) kxgsj,max(kxhbs) kxhbs
into #tmp4
from AccountTra
where jyzh in (select distinct zh from #tmp3)
group by jyzh
order by jyzh
--�ϲ���Ϣ#tmp5------
select  a.zh �˺�,c.wddm �������,b.���л�������,d.wdmc ��������,b.���л�������,c.hm ����,b.�˻����� ϵͳ����,c.khh �ͻ���,c.zjhm ֤����,
       (CASE c.jszhxz WHEN '0' THEN '����' WHEN '1' THEN 'һ��' WHEN '2' THEN 'ר��'
         WHEN '3' THEN '��ʱ' END) �˻�����,
        b.�˻����� ϵͳ�˻�����,b.��������֤��׼��,b.�������� ϵͳ��������,b.�������� ϵͳ��������,
        (CASE c.zhbs WHEN '0' THEN '����'  WHEN '1' THEN '��λ'  END)  �˻���ʶ,
        c.kxgsj ������ʱ��,
        (CASE c.kxhbs WHEN '0' THEN '����' WHEN '1' THEN '����' WHEN '2' THEN '���'   END)  �˻�״̬,
        b.״̬ ϵͳ״̬,
        e.rq1 ���罻��ʱ��,e.rq2 ��ٽ���ʱ��,e.jybs ���ױ���,e.xjbs �ֽ��ױ���,e.dfbs ��������,
        e.kxgsj ���ױ�_������ʱ��,(CASE e.kxhbs WHEN '0' THEN '����' WHEN '1' THEN '����' WHEN '2' THEN '���'   END) ���ױ�_�˻�״̬
into #tmp5
from #tmp3 a
left join zhsys b on a.zh=b.�˺�
left join AccountInfo c on a.zh=c.zh
left join #tmp d on c.wddm=d.wddm
left join #tmp4 e on a.zh=e.jyzh
where e.xjbs>0
----����ϵͳ����
update #tmp5 set ������ʱ��=���ױ�_������ʱ��,�˻�״̬=���ױ�_�˻�״̬ where ������ʱ�� is null
update #tmp5 set ϵͳ����=���� where ϵͳ���� is null

--�Ի���Ϊ�����ж϶�ͷ��
select �ͻ���,count(�ͻ���) ����
into #tmp6
from #tmp5
group by �ͻ���
having count(�ͻ���)>2
set rowcount @row_num
select a.�ͻ���,b.ϵͳ���� ����,b.�˺�,�������,���л�������,��������,���л�������,֤����,��������֤��׼��,�˻���ʶ,
       �˻�����,ϵͳ�˻�����,�˻�״̬,ϵͳ״̬,������ʱ��,ϵͳ��������,ϵͳ��������,���罻��ʱ��,��ٽ���ʱ��,���ױ���,�ֽ��ױ���
from #tmp6 a left join #tmp5 b on a.�ͻ���=b.�ͻ���
order by a.�ͻ���
set rowcount 0
END
GO��� ! B   �"  *   ;      6701���ƶ�ͷ�˻�(������ "   ��ɸѡ������˹��������ֳ��鿴���� A   @��鿪ʼ����!D:20120101@����������!D:23130228@��������!N:10000 �       02030505	    0
    0    1 �  CREATE PROCEDURE  P_ysdtzh_hm(@bgn_date char(8),@end_date char(8),@row_num int) AS
BEGIN
--declare @bgn_date char(8)
--declare @end_date char(8)
--declare @row_num int
--declare @zh_len int
--declare @old_new_zh char(1)
--declare @inter_day int
--declare @cash int
--set @bgn_date='20110101'
--set @end_date='20120531'
--set @row_num=100000
--set @zh_len=12
--set @old_new_zh='1'--'0'�¾ɲ��ȶԣ���1���ȶԣ������˾��˺ŵĳٱ�����
--set @inter_day=7
--set @cash=20

if object_id('tempdb..#tmp') is not null drop table #tmp
if object_id('tempdb..#tmp0') is not null drop table #tmp0
if object_id('tempdb..#tmp00') is not null drop table #tmp00
if object_id('tempdb..#tmp000') is not null drop table #tmp000
if object_id('tempdb..#tmp1') is not null drop table #tmp1
if object_id('tempdb..#tmp2') is not null drop table #tmp2  
if object_id('tempdb..#tmp3') is not null drop table #tmp3
if object_id('tempdb..#tmp4') is not null drop table #tmp4
if object_id('tempdb..#tmp5') is not null drop table #tmp5
if object_id('tempdb..#tmp6') is not null drop table #tmp6
if object_id('tempdb..#tmp7') is not null drop table #tmp7
if object_id('tempdb..#tmp8') is not null drop table #tmp8
if object_id('tempdb..#tmp9') is not null drop table #tmp9
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
select wddm,'��'+wdmc wdmc from bankinfo 
where wddm in (select wddm from #tmp00)
order by wddm
select a.wddm,max(b.wdmc) wdmc into #tmp 
from #tmp0 a left join #tmp000 b
on a.wddm=b.wddm
group by a.wddm
order by a.wddm

--��ȡϵͳ״̬�����ͳ��������ڼ�����ڵĻ����˻�tmp1
select distinct a.�˺�,a.�˻����� ����,a.�˻����� ����,CONVERT(date,a.��������) ����,CONVERT(date,a.��������) ����,
                CONVERT(date,a.��������) ����,b.khh �ͻ���,b.zjhm ֤����
into #tmp1
from zhsys a
left join AccountInfo b on a.�˺�=b.zh
where (״̬='����' or CONVERT(date,��������)>CONVERT(date,@bgn_date) or CONVERT(date,��������)>CONVERT(date,@bgn_date)) 
      and (�˻����� like '����%' or �˻����� like '%��ʱ%')
order by �˺� 

--select * from #tmp1 
--where �˺�='34001635308053000701'

--��ȡ�˻����л�������ʱ���������򳷻������ڼ�����ڣ��������˻�ϵͳ����
select a.zh �˺�,a.hm ����,
      (CASE a.jszhxz WHEN '0' THEN '����' WHEN '1' THEN 'һ��' WHEN '2' THEN '��Ԥ��' WHEN '3' THEN '��ʱ' WHEN '4' THEN 'Ԥ��' END) ����,
      CONVERT(date,a.khsj) ����,CONVERT(date,a.xhsj) ����,
        null ����,a.khh �ͻ���,a.zjhm ֤����
        into #tmp2 
        from AccountInfo a
        where zhbs='1' and (a.jszhxz='0' or a.jszhxz='3') 
              and (a.kxhbs='0' or (a.kxhbs='1' and CONVERT(date,a.xhsj)>CONVERT(date,@bgn_date))) 
              and a.zh not in (select distinct �˺� from #tmp1)
union
select * from #tmp1 

--ÿ���˺�ֻ����һ��
select left(�˺�,20) �˺� ,MAX(����) ����, MAX(�ͻ���) �ͻ���,MAX(֤����) ֤����
into #tmp3
from #tmp2
group by left(�˺�,20)

--���ݻ����ж϶�ͷ
select ���� 
into #tmp4
from #tmp3
group by ����
having COUNT(����)>1
--��ȡ��ͷ���˺�
select b.�˺�
into #tmp5
from #tmp4 a
left join #tmp3 b on a.����=b.����
--��Щ�˺ŵĽ������
select jyzh,count(jyzh) jybs,sum(case when (jdbz='0' and xzbz='0') then 1 else 0 end) dfxj,
       sum(case when (jdbz='1' and xzbz='0') then 1 else 0 end) jfxj
into #tmp6
from AccountTra
where jyzh in (select distinct �˺� from #tmp5)
group by jyzh
order by jyzh

--�ϲ���Ϣ#tmp7------
select  b.�˺� ϵͳ�˺�,b.�˻����� ϵͳ����,b.���л������� ���д���,b.���л������� ��������,b.�˻����� ϵͳ����,b.��������֤��׼�� ��׼��,
        CONVERT(date,b.��������) ϵͳ����,(case len(b.��������) when 0 then null else CONVERT(date,b.��������) end) ϵͳ����,
       (case len(b.��������) when 0 then null else CONVERT(date,b.��������) end) ϵͳ����,b.״̬ ϵͳ״̬,       
        c.zh �˺�,c.wddm �����,d.wdmc ������,c.hm ����,c.khh �ͻ���,c.zjhm ֤����,
        (CASE c.zhbs WHEN '0' THEN '����'  WHEN '1' THEN '��λ'  END)  ��ʶ, 
        (CASE c.jszhxz WHEN '0' THEN '����' WHEN '1' THEN 'һ��' WHEN '2' THEN '��Ԥ��'
         WHEN '3' THEN '��ʱ' WHEN '4' THEN 'Ԥ��' END) ����,
         CONVERT(date,c.khsj) ����,CONVERT(date,c.xhsj) ����,
        (CASE c.kxhbs WHEN '0' THEN '����' WHEN '1' THEN '����' WHEN '2' THEN '���' WHEN '3' THEN '����'  END)  ״̬,
         e.jybs ����,e.dfxj ����,e.jfxj ȡ��    
into #tmp7
from #tmp5 a
left join Zhsys b on a.�˺�=b.�˺� 
left join AccountInfo c on a.�˺�=c.zh
left join #tmp d on c.wddm=d.wddm
left join #tmp6 e on a.�˺�=e.jyzh

set rowcount @row_num
select  �����,������,����,ϵͳ����,�ͻ���,֤����,�˺�,ϵͳ�˺�,���д���,��������,����,ϵͳ����,��׼��,����,����,ȡ��
        ����,ϵͳ����,����,ϵͳ����,ϵͳ����,״̬,ϵͳ״̬
        from  #tmp7
        order by ����
set rowcount 0
END
GO��� ! C   �"  A   Z       6.��׼�򱸰���Ϣһ�������    �������������� 0   @��ʾ1!��������1:Ĭ��ֵ1@��ʾ2!��������2:Ĭ��ֵ2 �       020306	    0
    0    1 *   CREATE PROCEDURE      AS
BEGIN

END
GO��� ! D   �"  B   A      �Ѻ�׼�򱸰���δ��ҵ��ϵͳ����    �������������� 0   @��ʾ1!��������1:Ĭ��ֵ1@��ʾ2!��������2:Ĭ��ֵ2 �       02030601	    0
    0    1 *   CREATE PROCEDURE      AS
BEGIN

END
GO��� ! E   �"  �   =      ���и����˻�������ϵͳ�ȶ� 
   ���������� 0   @��ʾ1!��������1:Ĭ��ֵ1@��ʾ2!��������2:Ĭ��ֵ2       0204	    0
    1    1    1 *   CREATE PROCEDURE      AS
BEGIN

END
GO��� ! F   �"  �   �   "   �����˻�����δ�������˺Ž��ʺţ���    �ȶ��˺źͽ��ʺ� 9   @��ʼ����!D:20190101@��������!D:20200831@��������!N:10000       020401	    0
    1    1 .  CREATE PROCEDURE Pg_grzh_not_bak_zh(@bgn_date CHAR(8),@end_date CHAR(8),@row_num INT)
WITH ENCRYPTION
AS
  BEGIN
    --DECLARE @bgn_date CHAR(8)
    --DECLARE @end_date CHAR(8)
    --DECLARE @row_num INT

    --SET @bgn_date ='20190101'
    --SET @end_date ='20200630'
    --SET @row_num=10000
    SET ROWCOUNT @row_num

    SELECT [�����н��ڻ�������],
           c.[���л�������],
           [�ͻ����],
           [�˻�����],
           a.[�˺�],
           a.[�˻�����],
           a.[��������],
           a.[��������],
           [�˻�״̬],
           [֤������],
           [����֤������],
           [����֤����Ч�ڿ�ʼ��],
           [����֤����Ч�ڽ�ֹ��],
           [��֤���ص�������],
           [�ͻ���������],
           [�ͻ��Ա�],
           [��ϵ��ַ],
           [���ݺ��鷽ʽ],
           [���ֻ�����],
           [�������˻��˺�],
           [�������˺�����],
           [�������˺�ʱ��],
           [�󶨿����з��˴���],
           [����������],
           [������֤������],
           [������֤������],
           [������֤����Ч�ڿ�ʼ��],
           [������֤����Ч�ڽ�ֹ��],
           [��������ϵ�绰],
           a.[�����ص�������],
           [���ʺ�],
           [��������],
           [����״̬]
    FROM   tb_shzh_gr a
           LEFT JOIN v_bank c
                  ON [�����н��ڻ�������] = c.���б�������
    WHERE  [�˻�״̬] <> 'ע��'
           AND ( a.�������� BETWEEN @bgn_date AND @end_date )
           AND a.�˺� NOT IN (SELECT DISTINCT �˺�
                            FROM   tb_rhzh_gr
                           --WHERE  ( �������� IS NULL
                           --          OR Len(��������) = 0 )
                           )
           AND [���ʺ�] NOT IN (SELECT DISTINCT �˺�
                             FROM   tb_rhzh_gr
                            --WHERE  ( �������� IS NULL
                            --          OR Len(��������) = 0 )
                            )
    ORDER  BY [�����н��ڻ�������],
              [�˻�����]

    SET ROWCOUNT 0
  END

GO ��� ! G   �"  �   �   "   �����˻������ٱ������˺Ž��ʺţ���      #   @�ٱ�������!N:14@��������!N:1000000 "      020402	    0
    1    1 �  CREATE PROCEDURE Pg_grzh_late_bak_zh(@day_num INT,@row_num INT)
WITH ENCRYPTION
AS
  BEGIN
    --DECLARE @bgn_date CHAR(8)
    --DECLARE @end_date CHAR(8)
    --DECLARE @row_num INT
    --DECLARE @day_num INT
    --SET @bgn_date ='20190101'
    --SET @end_date ='20200630'
    --SET @row_num=100000
    --SET @day_num=14
    SET ROWCOUNT @row_num

    SELECT [�����н��ڻ�������],
           c.[���л�������],
           [�ͻ����],
           [�˻�����],
           a.[�˺�],
           a.[�˻�����],
           a.[��������],
           b.�������� ���п���,
           b.�����Ǽ�����,
           Datediff(Day, a.��������, b.��������) ���п��������п������ڼ��,
           Datediff(Day, b.��������, b.�����Ǽ�����) �Ǽ��뿪�����ڼ��,
           a.[��������],
           [�˻�״̬],
           [֤������],
           [����֤������],
           [����֤����Ч�ڿ�ʼ��],
           [����֤����Ч�ڽ�ֹ��],
           [��֤���ص�������],
           [�ͻ���������],
           [�ͻ��Ա�],
           [��ϵ��ַ],
           [���ݺ��鷽ʽ],
           [���ֻ�����],
           [�������˻��˺�],
           [�������˺�����],
           [�������˺�ʱ��],
           [�󶨿����з��˴���],
           [����������],
           [������֤������],
           [������֤������],
           [������֤����Ч�ڿ�ʼ��],
           [������֤����Ч�ڽ�ֹ��],
           [��������ϵ�绰],
           a.[�����ص�������],
           [���ʺ�],
           [��������],
           [����״̬]
    FROM   tb_shzh_gr a
           INNER JOIN tb_rhzh_gr b
                   ON a.�˺� = b.�˺�
           LEFT JOIN v_bank c
                  ON a.[�����н��ڻ�������] = c.���б�������
    WHERE  [�˻�״̬] <> 'ע��'
           AND ( Datediff(Day, a.��������, b.��������) > @day_num
                  OR Datediff(Day, b.��������, b.�����Ǽ�����) > @day_num )
    UNION
    SELECT [�����н��ڻ�������],
           c.[���л�������],
           [�ͻ����],
           [�˻�����],
           a.[�˺�],
           a.[�˻�����],
           a.[��������],
           b.�������� ���п���,
           b.�����Ǽ�����,
           Datediff(Day, a.��������, b.��������) ���п��������п������ڼ��,
           Datediff(Day, b.��������, b.�����Ǽ�����) �Ǽ��뿪�����ڼ��,
           a.[��������],
           [�˻�״̬],
           [֤������],
           [����֤������],
           [����֤����Ч�ڿ�ʼ��],
           [����֤����Ч�ڽ�ֹ��],
           [��֤���ص�������],
           [�ͻ���������],
           [�ͻ��Ա�],
           [��ϵ��ַ],
           [���ݺ��鷽ʽ],
           [���ֻ�����],
           [�������˻��˺�],
           [�������˺�����],
           [�������˺�ʱ��],
           [�󶨿����з��˴���],
           [����������],
           [������֤������],
           [������֤������],
           [������֤����Ч�ڿ�ʼ��],
           [������֤����Ч�ڽ�ֹ��],
           [��������ϵ�绰],
           a.[�����ص�������],
           [���ʺ�],
           [��������],
           [����״̬]
    FROM   tb_shzh_gr a
           INNER JOIN tb_rhzh_gr b
                   ON a.[���ʺ�] = b.�˺�
           LEFT JOIN v_bank c
                  ON a.[�����н��ڻ�������] = c.���б�������
    WHERE  [�˻�״̬] <> 'ע��'
           AND ( Datediff(Day, a.��������, b.��������) > @day_num
                  OR Datediff(Day, b.��������, b.�����Ǽ�����) > @day_num )
    ORDER  BY a.[�����н��ڻ�������],
              a.�˺�

    SET ROWCOUNT 0
  END
GO ��� ! H   �"  �   =      ���и����˻�ʵ����������      0   @��ʾ1!��������1:Ĭ��ֵ1@��ʾ2!��������2:Ĭ��ֵ2 &      0205	    0
    1    1    1 *   CREATE PROCEDURE      AS
BEGIN

END
GO��� ! I   �"  �   �      �����˻�����֤�������������    ����֤����ͨ���߼�У�� X   @����У��λ��(2λУ��ʡ��,4λУ��ʡ�ݳ���,6λУ���ؼ�)!S:2@�˻�״̬(1��������,9����)!S:9 '      020501	    0
    1    1 �  CREATE PROCEDURE P_gr_id_chk(@area_mode CHAR(1),@zh_state CHAR(1))
WITH ENCRYPTION
AS
  BEGIN
    IF Object_id('tempdb..#tmp') IS NOT NULL
      DROP TABLE #tmp

    IF Object_id('tempdb..#tmp1') IS NOT NULL
      DROP TABLE #tmp1

    --DECLARE @area_mode CHAR(1)

    --SET @area_mode = '2'

    --DECLARE @zh_state CHAR(1)

    --SET @zh_state = '9'

    --DECLARE @sazh CHAR(1)

    --SET @sazh = '1'

    IF Object_id(N'tb_rhzh_gr', N'U') IS NULL
      BEGIN
        SELECT '���˻�ϵͳ�����˻����ݻ���ҵ���и����˻�����δ����' ע��
      END
    ELSE
      BEGIN
        IF @area_mode <> '2'
           AND @area_mode <> '4'
           AND @area_mode <> '6'
            OR @zh_state <> '1'
               AND @zh_state <> '9'
          BEGIN
            SELECT '������У��λ��ֻ��Ϊ2��4��6���˻�״ֻ̬��Ϊ1��9���永ֻ��Ϊ0��1��9' ��������
          END
        ELSE
          BEGIN
            SELECT [�����н��ڻ�������],
                   [�ͻ����],
                   [�˻�����],
                   [�˺�],
                   [�˻�����],
                   [��������],
                   [����ʱ��],
                   [��������],
                   [����ʱ��],
                   [�˻�״̬],
                   [֤������],
                   [����֤������],
                   CASE
                     WHEN ( [֤������] = '����֤'
                             OR [֤������] = '���ڲ�' )
                          AND NOT [����֤������] IS NULL THEN dbo.Verifyperid([����֤������], @area_mode)
                     ELSE ''
                   END ����֤���������,
                   [����֤����Ч�ڿ�ʼ��],
                   [����֤����Ч�ڽ�ֹ��],
                   [���ݺ��鷽ʽ],
                   [���ֻ�����],
                   [�������˻��˺�],
                   [�󶨿����з��˴���],
                   [����������],
                   [������֤������],
                   [������֤������],
                   CASE
                     WHEN [������֤������] = '����֤'
                          AND NOT [������֤������] IS NULL THEN dbo.Verifyperid([������֤������], @area_mode)
                     ELSE ''
                   END ����������֤���������,
                   [������֤����Ч�ڿ�ʼ��],
                   [������֤����Ч�ڽ�ֹ��],
                   [��������ϵ�绰],
                   [�����ص�������],
                   [���ʺ�],
                   [��������],
                   [����״̬]
            INTO   #tmp1
            FROM   tb_shzh_gr
            WHERE  �˻�״̬ <> ( CASE
                               WHEN @zh_state = '1' THEN 'ע��'
                               WHEN @zh_state = '9' THEN '����'
                             END )

            SELECT b.���л�������,
                   a.*
            FROM   #tmp1 a
                   LEFT JOIN V_Bank b
                          ON a.[�����н��ڻ�������] = b.���б�������
            WHERE  ����֤��������� <> '��ȷ'
                   AND ����֤��������� <> ''
                    OR ����������֤��������� <> '��ȷ'
                       AND ����������֤��������� <> ''
            ORDER  BY [�����н��ڻ�������],
                      �˻�����
          END
      END
  END
GO ��� ! J   �"  �   �      �����˻�֤������Ϊ�ա�         @���������ʼ����!D:20190101 (      020502	    0
    1    1 �  CREATE PROCEDURE Pg_ID_empty(@bgn_date CHAR(8))
WITH ENCRYPTION
AS
  BEGIN
    --DECLARE @bgn_date CHAR(8)
    --SET @bgn_date ='20190101'
    SELECT b.[���л�������],
           [�����н��ڻ�������],
           [�ͻ����],
           [�˻�����],
           [�˺�],
           [�˻�����],
           [��������],
           [����ʱ��],
           [��������],
           [����ʱ��],
           [�˻�״̬],
           [֤������],
           [����֤������],
           [����֤����Ч�ڿ�ʼ��],
           [����֤����Ч�ڽ�ֹ��],
           [���ݺ��鷽ʽ],
           [���ֻ�����],
           [�������˻��˺�],
           [�󶨿����з��˴���],
           [����������],
           [������֤������],
           [������֤������],
           [������֤����Ч�ڿ�ʼ��],
           [������֤����Ч�ڽ�ֹ��],
           [��������ϵ�绰],
           [�����ص�������],
           [���ʺ�],
           [��������],
           [����״̬]
    FROM   tb_shzh_gr a
           LEFT JOIN v_bank b
                  ON [�����н��ڻ�������] = b.���б�������
    WHERE  [����֤������] is null or len([����֤������])<6
	       and ��������>=@bgn_date
    ORDER  BY [�����н��ڻ�������],
              �˻�����
  END
GO ��� ! K   �"  �   �   "   �����˻�16��������δ������֤������    16�����û��ڲ�����      )      020503	    0
    1    1 �  CREATE PROCEDURE Pg_16up
WITH ENCRYPTION
AS
  BEGIN
    SELECT b.[���л�������],
           [�����н��ڻ�������],
           [�ͻ����],
           [�˻�����],
           [�˺�],
           [�˻�����],
           [��������],
           [����ʱ��],
           [��������],
           [����ʱ��],
           [�˻�״̬],
           [֤������],
           [����֤������],
           dbo.Fn_getage([����֤������], [��������]) ����,
           [����֤����Ч�ڿ�ʼ��],
           [����֤����Ч�ڽ�ֹ��],
           [���ݺ��鷽ʽ],
           [���ֻ�����],
           [�������˻��˺�],
           [�󶨿����з��˴���],
           [����������],
           [������֤������],
           [������֤������],
           [������֤����Ч�ڿ�ʼ��],
           [������֤����Ч�ڽ�ֹ��],
           [��������ϵ�绰],
           [�����ص�������],
           [���ʺ�],
           [��������],
           [����״̬]
    FROM   tb_shzh_gr a
           LEFT JOIN v_bank b
                  ON [�����н��ڻ�������] = b.���б�������
    WHERE  dbo.Fn_getage([����֤������], [��������]) > 16
           AND ֤������ = '���ڲ�'
    ORDER  BY [�����н��ڻ�������],
              �˻�����
  END
GO ��� ! L   �"  �   �   "   �����˻�����ʱ����ʱ����֤���ڡ�    �ȶ�����֤������������    @������޽�ֹ��!D:20200630 *      020504	    0
    1    1 �  CREATE PROCEDURE Pg_16up_date(@bgn_date CHAR(8))
WITH ENCRYPTION
AS
  BEGIN
    --DECLARE @bgn_date CHAR(8)
    --SET @bgn_date ='20200720'
    SELECT b.[���л�������],
           [�����н��ڻ�������],
           [�ͻ����],
           [�˻�����],
           [�˺�],
           [�˻�����],
           [��������],
           [����ʱ��],
           [��������],
           [����ʱ��],
           [�˻�״̬],
           [֤������],
           [����֤������],
           [����֤����Ч�ڿ�ʼ��],
           [����֤����Ч�ڽ�ֹ��],
           Datediff(day, CONVERT(DATE, [����֤����Ч�ڽ�ֹ��]), CONVERT(DATE, ��������)) ������������,
           Datediff(day, CONVERT(DATE, [����֤����Ч�ڽ�ֹ��]), CONVERT(DATE, @bgn_date)) ����չ�������,
           [���ݺ��鷽ʽ],
           [���ֻ�����],
           [�������˻��˺�],
           [�󶨿����з��˴���],
           [����������],
           [������֤������],
           [������֤������],
           [������֤����Ч�ڿ�ʼ��],
           [������֤����Ч�ڽ�ֹ��],
           [��������ϵ�绰],
           [�����ص�������],
           [���ʺ�],
           [��������],
           [����״̬]
    FROM   tb_shzh_gr a
           LEFT JOIN v_bank b
                  ON [�����н��ڻ�������] = b.���б�������
    WHERE  �������� > [����֤����Ч�ڽ�ֹ��]
            OR @bgn_date > [����֤����Ч�ڽ�ֹ��]
    ORDER  BY [�����н��ڻ�������],
              �˻�����
  END
GO ��� ! M   �"  �   �       �����˻�֤��������ͬ�����Ʋ�ͬ��         @���������ʼ����!D:20190101 +      020505	    0
    1    1 �  CREATE PROCEDURE Pg_acc_same_id_no_name(@bgn_date CHAR(8))
WITH ENCRYPTION
AS
  BEGIN
    IF Object_id('tempdb..#tmp') IS NOT NULL
      DROP TABLE #tmp

    SELECT DISTINCT [����֤������],
                    Count(�˻�����) ����
    INTO   #tmp
    FROM   tb_shzh_gr
    WHERE  Len([����֤������]) > 0
    GROUP  BY [����֤������]
    HAVING Count(DISTINCT �˻�����) >= 2

    SELECT c.[���л�������],
           [�����н��ڻ�������],
           [�ͻ����],
           [�˻�����],
           [�˺�],
           [�˻�����],
           [��������],
           [����ʱ��],
           [��������],
           [����ʱ��],
           [�˻�״̬],
           [֤������],
           a.[����֤������],
           [����֤����Ч�ڿ�ʼ��],
           [����֤����Ч�ڽ�ֹ��],
           [���ݺ��鷽ʽ],
           [���ֻ�����],
           [�������˻��˺�],
           [�󶨿����з��˴���],
           [����������],
           [������֤������],
           [������֤������],
           [������֤����Ч�ڿ�ʼ��],
           [������֤����Ч�ڽ�ֹ��],
           [��������ϵ�绰],
           [�����ص�������],
           [���ʺ�],
           [��������],
           [����״̬]
    FROM   #tmp a
           LEFT JOIN tb_shzh_gr b
                  ON a.[����֤������] = b.[����֤������]
           LEFT JOIN v_bank c
                  ON b.�����н��ڻ������� = c.���б�������
    WHERE  �������� > @bgn_date
    ORDER  BY a.[����֤������],
              �˻�����
  END
go ��� ! N   �"  �   �      �����˻����ڲ�����û�д�����         @���������ʼ����!D:20190101 ,      020506	    0
    1    1 �  CREATE PROCEDURE Pg_hkb_no_dl(@bgn_date CHAR(8))
WITH ENCRYPTION
AS
  BEGIN
    IF Object_id('tempdb..#tmp') IS NOT NULL
      DROP TABLE #tmp

    --DECLARE @bgn_date CHAR(8)
    --SET @bgn_date='20190101'
    SELECT b.[���л�������],
           [�����н��ڻ�������],
           [�ͻ����],
           [�˻�����],
           [�˺�],
           [�˻�����],
           [��������],
           [����ʱ��],
           [��������],
           [����ʱ��],
           [�˻�״̬],
           [֤������],
           [����֤������],
           dbo.Fn_getage([����֤������], [��������]) ����ʱ����,
           [����֤����Ч�ڿ�ʼ��],
           [����֤����Ч�ڽ�ֹ��],
           [���ݺ��鷽ʽ],
           [���ֻ�����],
           [�������˻��˺�],
           [�󶨿����з��˴���],
           [����������],
           [������֤������],
           [������֤������],
           [������֤����Ч�ڿ�ʼ��],
           [������֤����Ч�ڽ�ֹ��],
           [��������ϵ�绰],
           [�����ص�������],
           [���ʺ�],
           [��������],
           [����״̬]
    FROM   tb_shzh_gr a
           LEFT JOIN v_bank b
                  ON a.�����н��ڻ������� = b.���б�������
    WHERE  �������� > @bgn_date
           AND ( Len([����������]) = 0
                  OR [����������] IS NULL )
           AND [֤������] = '���ڲ�'
           AND dbo.Fn_getage([����֤������], [��������]) <= 16
    ORDER  BY �����н��ڻ�������,
              �˻�����
  END
go ��� ! O   �"  �   �      ����˵绰��������      -   @���л������루Ϊ��ȫ����!S:@��������!N:10000 7      020507	    0
    0    1 �  CREATE PROCEDURE PG_acc_dh_wt(@bank_code varchar(14),@row_num int) WITH ENCRYPTION AS
BEGIN
if len(ltrim(rtrim(@bank_code)))=0 or @bank_code is null
   set @bank_code=''
set rowcount @row_num
select *
from tb_shzh_gr
where (LEN(����˵绰)<=6  or [dbo].[FN_DupChar](����˵绰,7)=1 or isnumeric (����˵绰)=0 or  ����˵绰 is null)
      and �������н��ڻ������� like'%'+rtrim(ltrim(@bank_code))+'%'        
order by �������н��ڻ�������,����������
set rowcount 0
END
GO��� ! P   �"  �   =      ���и����˻�����ʹ�úϹ���� 
   ���������� 0   @��ʾ1!��������1:Ĭ��ֵ1@��ʾ2!��������2:Ĭ��ֵ2 0      0206	    0
    1    1    1 *   CREATE PROCEDURE      AS
BEGIN

END
GO��� ! Q   �"  �   �      �����˻������������������    ����I��II��III�˻��������� 9   @I�໧�����޶�!N:1@II�໧�����޶�!N:4@III�໧�����޶�!N:5 0      020601	    0
    1    1 2  CREATE PROCEDURE Pg_acc_count(@n_I INT,@n_II INT,@n_III INT)
WITH ENCRYPTION
AS
  BEGIN
    --DECLARE @n_I INT
    --DECLARE @n_II INT
    --DECLARE @n_III INT
    --SET @n_I=1
    --SET @n_II=4
    --SET @n_III=5
    IF Object_id('tempdb..#tmp1') IS NOT NULL
      DROP TABLE #tmp1

    IF Object_id('tempdb..#tmp2') IS NOT NULL
      DROP TABLE #tmp2

    IF Object_id('tempdb..#tmp3') IS NOT NULL
      DROP TABLE #tmp3

    IF Object_id('tempdb..#tmp4') IS NOT NULL
      DROP TABLE #tmp4

    IF Object_id('tempdb..#tmp5') IS NOT NULL
      DROP TABLE #tmp5

    SELECT ����֤������,
           --Count(�˻�����) I�໧����,
           Sum(CASE �˻�����
                 WHEN 'һ��' THEN 1
                 ELSE 0
               END) I�໧����,
           Sum(CASE �˻�����
                 WHEN '����' THEN 1
                 ELSE 0
               END) II�໧����,
           Sum(CASE �˻�����
                 WHEN '����' THEN 1
                 ELSE 0
               END) III�໧����
    INTO   #tmp1
    FROM   tb_shzh_gr
    WHERE  NOT �˻����� IS NULL
           AND �˻�״̬ = '����'
    GROUP  BY ����֤������
    HAVING ( Sum(CASE �˻�����
                   WHEN 'һ��' THEN 1
                   ELSE 0
                 END) > @n_I
              OR Sum(CASE �˻�����
                       WHEN '����' THEN 1
                       ELSE 0
                     END) > @n_II
              OR Sum(CASE �˻�����
                       WHEN '����' THEN 1
                       ELSE 0
                     END) > @n_III )
           AND Max(��������) >= '20161201'

    SELECT c.[���л�������],
           [�����н��ڻ�������],
           [�ͻ����],
           [�˻�����],
           [�˺�],
           [�˻�����],
           [��������],
           [����ʱ��],
           [��������],
           [����ʱ��],
           [�˻�״̬],
           [֤������],
           a.[����֤������],
           a.I�໧����,
           a.II�໧����,
           a.III�໧����,
           [����֤����Ч�ڿ�ʼ��],
           [����֤����Ч�ڽ�ֹ��],
           [���ݺ��鷽ʽ],
           [���ֻ�����],
           [�������˻��˺�],
           [�󶨿����з��˴���],
           [����������],
           [������֤������],
           [������֤������],
           [������֤����Ч�ڿ�ʼ��],
           [������֤����Ч�ڽ�ֹ��],
           [��������ϵ�绰],
           [�����ص�������],
           [���ʺ�],
           [��������],
           [����״̬]
    FROM   #tmp1 a
           LEFT JOIN tb_shzh_gr b
                  ON a.����֤������ = b.����֤������
           LEFT JOIN V_Bank c
                  ON b.�����н��ڻ������� = c.���б�������
    --WHERE  b.�˻�״̬ = '����'
    ORDER  BY a.����֤������,
              b.�˻�����,
              b.�����н��ڻ�������
  END
GO ��� ! R   �"  �   �   0   II�໧���˹���˿��������ֽ��ǰ��˻�ת����� �   II�໧�ǹ��������˹���˿����������ֽ��ǰ��˻�ת�����ҵ��ע�⣺�����׶�Ӧ���˻���Ϣ���˺š����˺š��˻����͡��������������׶Է��˺ŵ���Ϣδ�ṩ����ɸѡ��ȫ�棡      1      020602	    0
    1    1 !  CREATE PROCEDURE PG_II_XJ_RJ  WITH ENCRYPTION AS
BEGIN
  --�ǹ��������˹���ˣ��ֽ��ǰ��˻�ת�����
  if object_id('tempdb..#tmp1') is not null drop table #tmp1
  if object_id('tempdb..#tmp2') is not null drop table #tmp2
  if object_id('tempdb..#tmp3') is not null drop table #tmp3
  SELECT a.�˺�,count(���׽��) �ֽ���� 
  into #tmp1
  FROM tb_shjy_gr a
  inner join tb_shzh_gr b
  on a.�˺�=b.�˺�
  where a.��ת��ʶ='�ֽ�'  and  b.�˻�����='II��' and b.��������<>'����'  and b.��������<>'�������ߣ��˹�������ˣ�'
  group by  a.�˺�
  having count(���׽��)>0
  order by �˺�

  SELECT a.�˺�,count(���׽��) ת�������� 
  into #tmp2
  FROM tb_shjy_gr a
  inner join tb_shzh_gr b
  on a.�˺�=b.�˺�
  where ( a.��ת��ʶ='ת��' and a.�����ʶ='��')  and  b.�˻�����='II��' and b.��������<>'����'  and b.��������<>'�������ߣ��˹�������ˣ�'
        and (b.��I���˻��˺� is null or a.���׶Է��˺�<>b.��I���˻��˺�)
  group by  a.�˺�
  having count(���׽��)>0
  order by �˺�

  select (case when a.�˺� is null then b.�˺� else a.�˺� end) �˺�,a.�ֽ����,b.ת�������� 
   into #tmp3
   from #tmp1 a
   full join #tmp2 b
   on a.�˺�=b.�˺�
   order by �˺�

   select b.�������н��ڻ�������,c.���л�������,a.�˺�,b.���������,b.���������֤������,a.�ֽ����,a.ת��������,b.��I���˻��˺�,b.��������,b.��������,b.��������,b.�˻�״̬
   from #tmp3 a
   left join tb_shzh_gr b on a.�˺�=b.�˺�
   left join V_Bank c on b.�������н��ڻ�������=c.���б�������
   order by b.�������н��ڻ�������,a.�˺�

END
GO��� ! S   �"  �   �   $   II�໧�ǰ��˻����ۼ��������޶� �   II�໧�ǰ��˻���𡢳����ֽ��ת�ˣ����ۼƳ��޶ע�⣺�����׶�Ӧ���˻���Ϣ���˺š����˺š��˻����͡��������������׶Է��˺ŵ���Ϣδ�ṩ����ɸѡ��ȫ�棡 $   @���ۼ��޶�!N:10000@��������!N:20000 2      020603	    0
    1    1 �  CREATE PROCEDURE PG_II_RJ_CJ_day_out(@n_rlj int,@row_num int)  WITH ENCRYPTION AS
BEGIN
  --II�໧�ǰ��˻���𡢳����ֽ��ת�ˣ����ۼƺ����ۼƳ��޶�
  if object_id('tempdb..#tmp1') is not null drop table #tmp1
  if object_id('tempdb..#tmp2') is not null drop table #tmp2
  if object_id('tempdb..#tmp3') is not null drop table #tmp3
  SELECT a.�˺�,a.��������,sum(���׽��) ���ۼ���� 
  into #tmp1
  FROM tb_shjy_gr a
  inner join tb_shzh_gr b
  on a.�˺�=b.�˺�
  where a.�����ʶ='��' and  b.�˻�����='II��' and (b.��I���˻��˺� is null or a.���׶Է��˺�<>b.��I���˻��˺�)
  group by  a.�˺�,a.��������
  having sum(���׽��)>@n_rlj
  order by �˺�,a.��������

  SELECT a.�˺�,a.��������,sum(���׽��) ���ۼƳ���
  into #tmp2
  FROM tb_shjy_gr a
  inner join tb_shzh_gr b
  on a.�˺�=b.�˺�
  where a.�����ʶ='��'  and  b.�˻�����='II��' and (b.��I���˻��˺� is null or a.���׶Է��˺�<>b.��I���˻��˺�)
  group by  a.�˺�,a.��������
  having sum(���׽��)>@n_rlj
  order by �˺�,a.��������

  select (case when a.�˺� is null then b.�˺� else a.�˺� end) �˺�,
        (case when a.�������� is null then b.�������� else a.�������� end) ��������,
		a.���ۼ����,b.���ۼƳ��� 
   into #tmp3
   from #tmp1 a
   full join #tmp2 b
   on a.�˺�=b.�˺� and a.��������=b.��������
   order by �˺�,��������
set rowcount @row_num
   select b.�������н��ڻ�������,c.���л�������,a.�˺�,b.���������,b.���������֤������,a.��������,a.���ۼ����,a.���ۼƳ���,b.�˻�����,b.��I���˻��˺�,b.��������,b.��������,b.��������,b.�˻�״̬
   from #tmp3 a
   left join tb_shzh_gr b on a.�˺�=b.�˺�
   left join V_Bank c on b.�������н��ڻ�������=c.���б�������
   order by b.�������н��ڻ�������,a.�˺�,a.��������
set rowcount 0
END
GO��� ! T   �"  �   �   $   II�໧�ǰ��˻����ۼ��������޶� �   II�໧�ǰ��˻���𡢳����ֽ��ת�ˣ����ۼƳ��޶ע�⣺�����׶�Ӧ���˻���Ϣ���˺š����˺š��˻����͡��������������׶Է��˺ŵ���Ϣδ�ṩ����ɸѡ��ȫ�棡 $   @���ۼ��޶�!N:200000@��������!N:1000 3      020604	    0
    1    1 0  CREATE PROCEDURE PG_II_RJ_CJ_year_out(@n_nlj int,@row_num int)  WITH ENCRYPTION AS
BEGIN
  --II�໧�ǰ��˻���𡢳����ֽ��ת�ˣ����ۼƺ����ۼƳ��޶�
  if object_id('tempdb..#tmp1') is not null drop table #tmp1
  if object_id('tempdb..#tmp2') is not null drop table #tmp2
  if object_id('tempdb..#tmp3') is not null drop table #tmp3
  SELECT a.�˺�,left(a.��������,4) �������,sum(���׽��) ���ۼ���� 
  into #tmp1
  FROM tb_shjy_gr a
  inner join tb_shzh_gr b
  on a.�˺�=b.�˺�
  where a.�����ʶ='��' and  b.�˻�����='II��' and (b.��I���˻��˺� is null or a.���׶Է��˺�<>b.��I���˻��˺�)
  group by  a.�˺�,left(a.��������,4)
  having sum(���׽��)>@n_nlj
  order by �˺�,left(a.��������,4)

 SELECT a.�˺�,left(a.��������,4) �������,sum(���׽��) ���ۼƳ��� 
  into #tmp2
  FROM tb_shjy_gr a
  inner join tb_shzh_gr b
  on a.�˺�=b.�˺�
  where a.�����ʶ='��' and  b.�˻�����='II��' and (b.��I���˻��˺� is null or a.���׶Է��˺�<>b.��I���˻��˺�)
  group by  a.�˺�,left(a.��������,4)
  having sum(���׽��)>@n_nlj
  order by �˺�,left(a.��������,4)

  select (case when a.�˺� is null then b.�˺� else a.�˺� end) �˺�,
        (case when a.������� is null then b.������� else a.������� end) �������,
		a.���ۼ����,b.���ۼƳ��� 
   into #tmp3
   from #tmp1 a
   full join #tmp2 b
   on a.�˺�=b.�˺� and a.�������=b.�������
   order by �˺�,�������
set rowcount @row_num
   select b.�������н��ڻ�������,c.���л�������,a.�˺�,b.���������,b.���������֤������,a.�������,a.���ۼ����,a.���ۼƳ���,b.�˻�����,b.��I���˻��˺�,b.��������,b.��������,b.��������,b.�˻�״̬
   from #tmp3 a
   left join tb_shzh_gr b on a.�˺�=b.�˺�
   left join V_Bank c on b.�������н��ڻ�������=c.���б�������
   order by b.�������н��ڻ�������,a.�˺�,a.�������
set rowcount 0
END
GO��� ! U   �"  �   �      �ǽ����˻�����ת�˽��� L   �������˵���ǽ����˻�ʹ���˽��㹦�ܻ��������ṩ�����������⣬����Ϊ�������    @��������!N:1000 4      020605	    0
    0    1 �  CREATE PROCEDURE PG_NoJS_YesJY(@row_num int)  WITH ENCRYPTION AS
BEGIN
if object_id('tempdb..#tmp') is not null drop table #tmp
select �˺�,sum(case when ��ת��ʶ='�ֽ�' and �����ʶ='��' then 1 else 0 end) �ֽ��,sum(case when ��ת��ʶ='�ֽ�' and �����ʶ='��' then 1 else 0 end) �ֽ��
,sum(case when ��ת��ʶ='ת��' and �����ʶ='��' then 1 else 0 end) ת�˽�,sum(case when ��ת��ʶ='ת��' and �����ʶ='��' then 1 else 0 end)  ת�˴� 
into #tmp
from tb_shjy_gr
where �˺� in (select distinct �˺� from tb_shjy_gr where �˺� in ( select distinct �˺� from tb_shzh_gr where �˻�����='�ǽ����˻�'))
group by �˺�
having sum(case when ��ת��ʶ='ת��' and �����ʶ='��' then 1 else 0 end)>0 or sum(case when ��ת��ʶ='ת��' and �����ʶ='��' then 1 else 0 end)>0
set rowcount @row_num
select b.�������н��ڻ�������,c.���л�������,a.�˺�,b.���������,b.���������֤������,a.�ֽ�� ����,a.�ֽ�� ȡ��,a.ת�˴� ת��,a.ת�˽� ת��,b.��I���˻��˺�,b.��������,b.��������,b.��������,b.�˻�״̬
   from #tmp a
   left join tb_shzh_gr b on a.�˺�=b.�˺�
   left join V_Bank c on b.�������н��ڻ�������=c.���б�������
   order by b.�������н��ڻ�������,a.�˺�
set rowcount 0
END
GO��� ! V   �"  7   �      I���˻�������濪�� 
   ���������� 0   @��ʾ1!��������1:Ĭ��ֵ1@��ʾ2!��������2:Ĭ��ֵ2 7      020606	    0
    1    1 *   CREATE PROCEDURE      AS
BEGIN

END
GO��� ! W   �"  8   �      ������濪��δ�������˻� 
   ���������� 0   @��ʾ1!��������1:Ĭ��ֵ1@��ʾ2!��������2:Ĭ��ֵ2 8      020607	    0
    1    1 *   CREATE PROCEDURE      AS
BEGIN

END
GO��� ! X   �"  
           ���е�λ�˻��ͽ��ײ�ѯ 0   @��ʾ1!��������1:Ĭ��ֵ1@��ʾ2!��������2:Ĭ��ֵ2 �       03	    0
    1    1    1 *   CREATE PROCEDURE      AS
BEGIN

END
GO��� ! Y   �"  ^    
      ���е�λ�˻���ѯ_���л������� "   ��ѯ��ҵ�����˻����ͽ��ױ��й���Ϣ /   @���������л�������!S:1041029786@��������!N:100 �       0301	    0
    1    1 �  CREATE PROCEDURE Pd_shzh_bankcode(@bankcode VARCHAR(60), @row_num  INT)
WITH ENCRYPTION
AS
  BEGIN
    IF Object_id(N'tb_shzh_dw', N'U') IS NOT NULL
      BEGIN
		SET ROWCOUNT @row_num
        SELECT [�����н��ڻ�������],
               b.[���л�������],
               [�ͻ����],
               [�˻�����],
               [�˺�],
               [�˻�����],
               [��������],
               [����ʱ��],
               [��������],
               [����ʱ��],
               [�˻�״̬],
               [ִ������],
               [ִ�պ���],
               [ִ����Ч��],
               [��Ӫ��Χ],
               [��ϵ��ַ],
               [ִ��ע���������],
               [��Ӫ��������],
               [ע���ʱ���],
               [���˴�������������],
               [���˴���������֤������],
               [���˴���������֤������],
               [���˴���������֤����Ч�ڿ�ʼ��],
               [���˴���������֤����Ч�ڽ�ֹ��],
               [���˴�����������ϵ�绰],
               [����������],
               [������֤������],
               [������֤������],
               [������֤����Ч�ڿ�ʼ��],
               [������֤����Ч�ڽ�ֹ��],
               [��������ϵ�绰],
               [�󶨵��ֻ�����],
               [�����ص�������],
               [��ʱ���˻�������]
        FROM   [tb_shzh_dw] a
               LEFT JOIN v_bank b
                      ON a.[�����н��ڻ�������] = b.���б�������
        WHERE  [�����н��ڻ�������] LIKE '%' + @bankcode + '%'
		order by [�����н��ڻ�������]
		SET ROWCOUNT 0
      END
    ELSE
      BEGIN
        SELECT '����ҵ���е�λ�˻�����δ����' ע��
      END
  END
GO��� ! Z   �"  z    
      ���е�λ�˻���ѯ_�˺�    �����˺Ų�ѯ�˻���Ϣ    @�˺�!S:184251703252 �       0302	    0
    1    1 9  CREATE PROCEDURE Pd_shzh_acc_no(@s_acc_no VARCHAR(60))
WITH ENCRYPTION
AS
  BEGIN
    IF Object_id(N'tb_shzh_dw', N'U') IS NOT NULL
      BEGIN
        SELECT [�����н��ڻ�������],
               b.[���л�������],
               [�ͻ����],
               [�˻�����],
               [�˺�],
               [�˻�����],
               [��������],
               [����ʱ��],
               [��������],
               [����ʱ��],
               [�˻�״̬],
               [ִ������],
               [ִ�պ���],
               [ִ����Ч��],
               [��Ӫ��Χ],
               [��ϵ��ַ],
               [ִ��ע���������],
               [��Ӫ��������],
               [ע���ʱ���],
               [���˴�������������],
               [���˴���������֤������],
               [���˴���������֤������],
               [���˴���������֤����Ч�ڿ�ʼ��],
               [���˴���������֤����Ч�ڽ�ֹ��],
               [���˴�����������ϵ�绰],
               [����������],
               [������֤������],
               [������֤������],
               [������֤����Ч�ڿ�ʼ��],
               [������֤����Ч�ڽ�ֹ��],
               [��������ϵ�绰],
               [�󶨵��ֻ�����],
               [�����ص�������],
               [��ʱ���˻�������]
        FROM   [tb_shzh_dw] a
               LEFT JOIN v_bank b
                      ON a.[�����н��ڻ�������] = b.���б�������
        WHERE  �˺� LIKE '%' + @s_acc_no + '%'
      END
    ELSE
      BEGIN
        SELECT '����ҵ���е�λ�˻�����δ����' ע��
      END
  END
GO��� ! [   �"  x    
      ���˻����Ʋ��˻�_1���ƹؼ��� .   �����˻�����ģ����ѯ�˻���Ϣ������һ���ؼ��֣� "   @�˻�����!S:��̨����ӯ��ó���޹�˾ �       0303	    0
    1    1 ?  CREATE PROCEDURE Pd_shzh_name(@s_acc_name VARCHAR(60))
WITH ENCRYPTION
AS
  BEGIN
    IF Object_id(N'tb_shzh_dw', N'U') IS NOT NULL
      BEGIN
        SELECT [�����н��ڻ�������],
               b.[���л�������],
               [�ͻ����],
               [�˻�����],
               [�˺�],
               [�˻�����],
               [��������],
               [����ʱ��],
               [��������],
               [����ʱ��],
               [�˻�״̬],
               [ִ������],
               [ִ�պ���],
               [ִ����Ч��],
               [��Ӫ��Χ],
               [��ϵ��ַ],
               [ִ��ע���������],
               [��Ӫ��������],
               [ע���ʱ���],
               [���˴�������������],
               [���˴���������֤������],
               [���˴���������֤������],
               [���˴���������֤����Ч�ڿ�ʼ��],
               [���˴���������֤����Ч�ڽ�ֹ��],
               [���˴�����������ϵ�绰],
               [����������],
               [������֤������],
               [������֤������],
               [������֤����Ч�ڿ�ʼ��],
               [������֤����Ч�ڽ�ֹ��],
               [��������ϵ�绰],
               [�󶨵��ֻ�����],
               [�����ص�������],
               [��ʱ���˻�������]
        FROM   [tb_shzh_dw] a
               LEFT JOIN v_bank b
                      ON a.[�����н��ڻ�������] = b.���б�������
        WHERE  �˻����� LIKE '%' + @s_acc_name + '%'
      END
    ELSE
      BEGIN
        SELECT '����ҵ���е�λ�˻�����δ����' ע��
      END
  END
GO��� ! \   �"  y    
      ���˻����Ʋ��˻�_2���ƹؼ��� ,   �����˻�����ģ����ѯ�˻���Ϣ�����������ؼ��� .   @�ͻ����ƹؼ���1!S:��ó@�ͻ����ƹؼ���2!S:��˾ �       0304	    0
    1    1 �  CREATE PROCEDURE Pd_shzh_name2(@acc_name1 VARCHAR(60),@acc_name2 VARCHAR(60))
WITH ENCRYPTION
AS
  BEGIN
    IF Object_id(N'tb_shzh_dw', N'U') IS NOT NULL
      BEGIN
        SELECT [�����н��ڻ�������],
               b.[���л�������],
               [�ͻ����],
               [�˻�����],
               [�˺�],
               [�˻�����],
               [��������],
               [����ʱ��],
               [��������],
               [����ʱ��],
               [�˻�״̬],
               [ִ������],
               [ִ�պ���],
               [ִ����Ч��],
               [��Ӫ��Χ],
               [��ϵ��ַ],
               [ִ��ע���������],
               [��Ӫ��������],
               [ע���ʱ���],
               [���˴�������������],
               [���˴���������֤������],
               [���˴���������֤������],
               [���˴���������֤����Ч�ڿ�ʼ��],
               [���˴���������֤����Ч�ڽ�ֹ��],
               [���˴�����������ϵ�绰],
               [����������],
               [������֤������],
               [������֤������],
               [������֤����Ч�ڿ�ʼ��],
               [������֤����Ч�ڽ�ֹ��],
               [��������ϵ�绰],
               [�󶨵��ֻ�����],
               [�����ص�������],
               [��ʱ���˻�������]
        FROM   [tb_shzh_dw] a
               LEFT JOIN v_bank b
                      ON a.[�����н��ڻ�������] = b.���б�������
        WHERE  �˻����� LIKE '%' + @acc_name1 + '%'
               AND �˻����� LIKE '%' + @acc_name2 + '%'
      END
    ELSE
      BEGIN
        SELECT '����ҵ���е�λ�˻�����δ����' ע��
      END
  END
GO 
��� ! ]   �"  {    
      ���е�λ�˻���ѯ_��λ֤����    ����֤�������ѯ�˻���Ϣ    @��λ֤���ļ����!S:MA63BC9U6 �       0305	    0
    1    1 6  CREATE PROCEDURE Pd_shzh_zjh(@s_zjh VARCHAR(60))
WITH ENCRYPTION
AS
  BEGIN
    IF Object_id(N'tb_shzh_dw', N'U') IS NOT NULL
      BEGIN
        SELECT [�����н��ڻ�������],
               b.[���л�������],
               [�ͻ����],
               [�˻�����],
               [�˺�],
               [�˻�����],
               [��������],
               [����ʱ��],
               [��������],
               [����ʱ��],
               [�˻�״̬],
               [ִ������],
               [ִ�պ���],
               [ִ����Ч��],
               [��Ӫ��Χ],
               [��ϵ��ַ],
               [ִ��ע���������],
               [��Ӫ��������],
               [ע���ʱ���],
               [���˴�������������],
               [���˴���������֤������],
               [���˴���������֤������],
               [���˴���������֤����Ч�ڿ�ʼ��],
               [���˴���������֤����Ч�ڽ�ֹ��],
               [���˴�����������ϵ�绰],
               [����������],
               [������֤������],
               [������֤������],
               [������֤����Ч�ڿ�ʼ��],
               [������֤����Ч�ڽ�ֹ��],
               [��������ϵ�绰],
               [�󶨵��ֻ�����],
               [�����ص�������],
               [��ʱ���˻�������]
        FROM   [tb_shzh_dw] a
               LEFT JOIN v_bank b
                      ON a.[�����н��ڻ�������] = b.���б�������
        WHERE  [ִ�պ���] LIKE '%' + @s_zjh + '%'
      END
    ELSE
      BEGIN
        SELECT '����ҵ���е�λ�˻�����δ����' ע��
      END
  END
GO��� ! ^   �"  |    
      ���е�λ�˻���ѯ_�ͻ����    ��ѯ�����ͻ��ŵ������˻���Ϣ    @�ͻ����!S:43862754 �       0306	    0
    1    1 9  CREATE PROCEDURE Pd_shzh_khbh(@s_khbh VARCHAR(60))
WITH ENCRYPTION
AS
  BEGIN
    IF Object_id(N'tb_shzh_dw', N'U') IS NOT NULL
      BEGIN
        SELECT [�����н��ڻ�������],
               b.[���л�������],
               [�ͻ����],
               [�˻�����],
               [�˺�],
               [�˻�����],
               [��������],
               [����ʱ��],
               [��������],
               [����ʱ��],
               [�˻�״̬],
               [ִ������],
               [ִ�պ���],
               [ִ����Ч��],
               [��Ӫ��Χ],
               [��ϵ��ַ],
               [ִ��ע���������],
               [��Ӫ��������],
               [ע���ʱ���],
               [���˴�������������],
               [���˴���������֤������],
               [���˴���������֤������],
               [���˴���������֤����Ч�ڿ�ʼ��],
               [���˴���������֤����Ч�ڽ�ֹ��],
               [���˴�����������ϵ�绰],
               [����������],
               [������֤������],
               [������֤������],
               [������֤����Ч�ڿ�ʼ��],
               [������֤����Ч�ڽ�ֹ��],
               [��������ϵ�绰],
               [�󶨵��ֻ�����],
               [�����ص�������],
               [��ʱ���˻�������]
        FROM   [tb_shzh_dw] a
               LEFT JOIN v_bank b
                      ON a.[�����н��ڻ�������] = b.���б�������
        WHERE  [�ͻ����] LIKE '%' + @s_khbh + '%'
      END
    ELSE
      BEGIN
        SELECT '����ҵ���е�λ�˻�����δ����' ע��
      END
  END
GO��� ! _   �"     
      ������;�����˻�_�����ʻ� @   ���ݽ��ױ���;�����й��˻��������ʻ������ʻ��ȣ�������Ҫ�ֳ����    @��;�ؼ���!S:���� �       0307	    0
    1    1 F  CREATE PROCEDURE P_acc_yz2(@s_id_no VARCHAR(60))
WITH ENCRYPTION
AS
  BEGIN
      IF Object_id('tempdb..#tmp') IS NOT NULL
        DROP TABLE #tmp
      IF Object_id('tempdb..#tmp0') IS NOT NULL
        DROP TABLE #tmp0
      IF Object_id('tempdb..#tmp00') IS NOT NULL
        DROP TABLE #tmp00
      IF Object_id('tempdb..#tmp000') IS NOT NULL
        DROP TABLE #tmp000
      IF Object_id('tempdb..#tmp1') IS NOT NULL
        DROP TABLE #tmp1
      IF Object_id('tempdb..#tmp2') IS NOT NULL
        DROP TABLE #tmp2
      IF Object_id('tempdb..#tmp3') IS NOT NULL
        DROP TABLE #tmp3
      IF Object_id('tempdb..#tmp4') IS NOT NULL
        DROP TABLE #tmp4
      IF Object_id('tempdb..#tmp5') IS NOT NULL
        DROP TABLE #tmp5
      --declare @s_id_no varchar(60)
      --set @s_id_no= '����'
      SELECT DISTINCT �˺�
      INTO   #tmp
      FROM   tb_shjy_dw
      WHERE  [���׸���] LIKE '%' + @s_id_no + '%'
      --������Ϣ
      SELECT �˺�,
             Count(�˺�) ���ױ���,
             Sum(CASE
                   WHEN ( ��ת��ʶ = '�ֽ�' ) THEN 1
                   ELSE 0
                 END)  �ֽ����,
             Sum(CASE
                   WHEN ( ( ��ת��ʶ = '�ֽ�' )
                          AND ( �����ʶ = '��' ) ) THEN 1
                   ELSE 0
                 END)  �跽�ֽ�
      INTO   #tmp2
      FROM   tb_shjy_dw
      WHERE  �˺� IN (SELECT DISTINCT �˺�
                    FROM   #tmp)
      GROUP  BY �˺�
      ORDER  BY �˺�
      --��ȡ�˻���Ϣ
      SELECT c.���л�������,
             c.���л�������,
             a.�˺�,
             b.�˻����� ����,
             b.ִ�պ���,
             b.�˻�����,
             b.��������,
             b.��������,
             b.�˻�״̬,
             c.�˻����� ��������,
             c.�˻�״̬ ����״̬,
             a.���ױ���,
             a.�ֽ����,
             a.�跽�ֽ�
      FROM   #tmp2 a
             LEFT JOIN tb_shzh_dw b
                    ON a.�˺� = b.�˺�
             LEFT JOIN v_rhzh_dw c
                    ON a.�˺� = c.�˺�
  END
GO ��� ! `   �"  P   
      ���е�λ�˻���ѯ_���˴�������    @���˴�������!S:���� �       0308	    0
    0    1 L  CREATE PROCEDURE Pd_shzh_fr_name(@s_fr_name VARCHAR(60))
WITH ENCRYPTION
AS
  BEGIN
    IF Object_id(N'tb_shzh_dw', N'U') IS NOT NULL
      BEGIN
        SELECT [�����н��ڻ�������],
               b.[���л�������],
               [�ͻ����],
               [�˻�����],
               [�˺�],
               [�˻�����],
               [��������],
               [����ʱ��],
               [��������],
               [����ʱ��],
               [�˻�״̬],
               [ִ������],
               [ִ�պ���],
               [ִ����Ч��],
               [��Ӫ��Χ],
               [��ϵ��ַ],
               [ִ��ע���������],
               [��Ӫ��������],
               [ע���ʱ���],
               [���˴�������������],
               [���˴���������֤������],
               [���˴���������֤������],
               [���˴���������֤����Ч�ڿ�ʼ��],
               [���˴���������֤����Ч�ڽ�ֹ��],
               [���˴�����������ϵ�绰],
               [����������],
               [������֤������],
               [������֤������],
               [������֤����Ч�ڿ�ʼ��],
               [������֤����Ч�ڽ�ֹ��],
               [��������ϵ�绰],
               [�󶨵��ֻ�����],
               [�����ص�������],
               [��ʱ���˻�������]
        FROM   [tb_shzh_dw] a
               LEFT JOIN v_bank b
                      ON a.[�����н��ڻ�������] = b.���б�������
        WHERE  [���˴�������������] LIKE '%' + @fr_name + '%'
      END
    ELSE
      BEGIN
        SELECT '����ҵ���е�λ�˻�����δ����' ע��
      END
  END
GO��� ! a   �"  <   
      ���е�λ�˻���ѯ_���˴���֤����    @���˴���֤������!S:0000 �       0309	    0
    1    1 l  CREATE PROCEDURE Pd_shzh_fr_zjh(@fr_zjh VARCHAR(60))
WITH ENCRYPTION
AS
  BEGIN
    IF Object_id(N'tb_shzh_dw', N'U') IS NOT NULL
      BEGIN
        SELECT [�����н��ڻ�������],
               b.[���л�������],
               [�ͻ����],
               [�˻�����],
               [�˺�],
               [�˻�����],
               [��������],
               [����ʱ��],
               [��������],
               [����ʱ��],
               [�˻�״̬],
               [ִ������],
               [ִ�պ���],
               [ִ����Ч��],
               [��Ӫ��Χ],
               [��ϵ��ַ],
               [ִ��ע���������],
               [��Ӫ��������],
               [ע���ʱ���],
               [���˴�������������],
               [���˴���������֤������],
               [���˴���������֤������],
               [���˴���������֤����Ч�ڿ�ʼ��],
               [���˴���������֤����Ч�ڽ�ֹ��],
               [���˴�����������ϵ�绰],
               [����������],
               [������֤������],
               [������֤������],
               [������֤����Ч�ڿ�ʼ��],
               [������֤����Ч�ڽ�ֹ��],
               [��������ϵ�绰],
               [�󶨵��ֻ�����],
               [�����ص�������],
               [��ʱ���˻�������]
        FROM   [tb_shzh_dw] a
               LEFT JOIN v_bank b
                      ON a.[�����н��ڻ�������] = b.���б�������
        WHERE  [���˴���������֤������] LIKE '%' + @fr_zjh + '%'
		order by [�����н��ڻ�������]
      END
    ELSE
      BEGIN
        SELECT '����ҵ���е�λ�˻�����δ����' ע��
      END
  END
GO��� ! b   �"  f   
      ���е�λ�˻���ѯ_���˴����绰 "   �����˺Ų�ѯ�������Ǽǲ����˻���Ϣ    @���˴����绰����!S:17155514171 �       0310	    0
    1    1 i  CREATE PROCEDURE Pd_shzh_fr_dh(@fr_dh VARCHAR(60))
WITH ENCRYPTION
AS
  BEGIN
    IF Object_id(N'tb_shzh_dw', N'U') IS NOT NULL
      BEGIN
        SELECT [�����н��ڻ�������],
               b.[���л�������],
               [�ͻ����],
               [�˻�����],
               [�˺�],
               [�˻�����],
               [��������],
               [����ʱ��],
               [��������],
               [����ʱ��],
               [�˻�״̬],
               [ִ������],
               [ִ�պ���],
               [ִ����Ч��],
               [��Ӫ��Χ],
               [��ϵ��ַ],
               [ִ��ע���������],
               [��Ӫ��������],
               [ע���ʱ���],
               [���˴�������������],
               [���˴���������֤������],
               [���˴���������֤������],
               [���˴���������֤����Ч�ڿ�ʼ��],
               [���˴���������֤����Ч�ڽ�ֹ��],
               [���˴�����������ϵ�绰],
               [����������],
               [������֤������],
               [������֤������],
               [������֤����Ч�ڿ�ʼ��],
               [������֤����Ч�ڽ�ֹ��],
               [��������ϵ�绰],
               [�󶨵��ֻ�����],
               [�����ص�������],
               [��ʱ���˻�������]
        FROM   [tb_shzh_dw] a
               LEFT JOIN v_bank b
                      ON a.[�����н��ڻ�������] = b.���б�������
        WHERE  [���˴�����������ϵ�绰] LIKE '%' + @fr_dh + '%'
		order by [�����н��ڻ�������]
      END
    ELSE
      BEGIN
        SELECT '����ҵ���е�λ�˻�����δ����' ע��
      END
  END
GO��� ! c   �"  �    
      ���е�λ�˻���ѯ_����������    @���˴�������!S:�� �       0311	    0
    1    1 d  CREATE PROCEDURE Pd_shzh_dlr_name(@dlr_name VARCHAR(60))
WITH ENCRYPTION
AS
  BEGIN
    IF Object_id(N'tb_shzh_dw', N'U') IS NOT NULL
      BEGIN
        SELECT [�����н��ڻ�������],
               b.[���л�������],
               [�ͻ����],
               [�˻�����],
               [�˺�],
               [�˻�����],
               [��������],
               [����ʱ��],
               [��������],
               [����ʱ��],
               [�˻�״̬],
               [ִ������],
               [ִ�պ���],
               [ִ����Ч��],
               [��Ӫ��Χ],
               [��ϵ��ַ],
               [ִ��ע���������],
               [��Ӫ��������],
               [ע���ʱ���],
               [���˴�������������],
               [���˴���������֤������],
               [���˴���������֤������],
               [���˴���������֤����Ч�ڿ�ʼ��],
               [���˴���������֤����Ч�ڽ�ֹ��],
               [���˴�����������ϵ�绰],
               [����������],
               [������֤������],
               [������֤������],
               [������֤����Ч�ڿ�ʼ��],
               [������֤����Ч�ڽ�ֹ��],
               [��������ϵ�绰],
               [�󶨵��ֻ�����],
               [�����ص�������],
               [��ʱ���˻�������]
        FROM   [tb_shzh_dw] a
               LEFT JOIN v_bank b
                      ON a.[�����н��ڻ�������] = b.���б�������
        WHERE  [����������] LIKE '%' + @dlr_name + '%'
		order by [�����н��ڻ�������]
      END
    ELSE
      BEGIN
        SELECT '����ҵ���е�λ�˻�����δ����' ע��
      END
  END
GO��� ! d   �"  �    
      ���е�λ�˻���ѯ_������֤���� $   @���˴���֤����!S:342622197508281855 �       0312	    0
    1    1 e  CREATE PROCEDURE Pd_shzh_dlr_zjh(@dlr_zjh VARCHAR(60))
WITH ENCRYPTION
AS
  BEGIN
    IF Object_id(N'tb_shzh_dw', N'U') IS NOT NULL
      BEGIN
        SELECT [�����н��ڻ�������],
               b.[���л�������],
               [�ͻ����],
               [�˻�����],
               [�˺�],
               [�˻�����],
               [��������],
               [����ʱ��],
               [��������],
               [����ʱ��],
               [�˻�״̬],
               [ִ������],
               [ִ�պ���],
               [ִ����Ч��],
               [��Ӫ��Χ],
               [��ϵ��ַ],
               [ִ��ע���������],
               [��Ӫ��������],
               [ע���ʱ���],
               [���˴�������������],
               [���˴���������֤������],
               [���˴���������֤������],
               [���˴���������֤����Ч�ڿ�ʼ��],
               [���˴���������֤����Ч�ڽ�ֹ��],
               [���˴�����������ϵ�绰],
               [����������],
               [������֤������],
               [������֤������],
               [������֤����Ч�ڿ�ʼ��],
               [������֤����Ч�ڽ�ֹ��],
               [��������ϵ�绰],
               [�󶨵��ֻ�����],
               [�����ص�������],
               [��ʱ���˻�������]
        FROM   [tb_shzh_dw] a
               LEFT JOIN v_bank b
                      ON a.[�����н��ڻ�������] = b.���б�������
        WHERE  [������֤������] LIKE '%' + @dlr_zjh + '%'
		order by [�����н��ڻ�������]
      END
    ELSE
      BEGIN
        SELECT '����ҵ���е�λ�˻�����δ����' ע��
      END
  END
GO��� ! e   �"     
      ���е�λ�˻���ѯ_�����˵绰    @���˴����绰!S:000 �       0313	    0
    1    1 b  CREATE PROCEDURE Pd_shzh_dlr_dh(@dlr_dh VARCHAR(60))
WITH ENCRYPTION
AS
  BEGIN
    IF Object_id(N'tb_shzh_dw', N'U') IS NOT NULL
      BEGIN
        SELECT [�����н��ڻ�������],
               b.[���л�������],
               [�ͻ����],
               [�˻�����],
               [�˺�],
               [�˻�����],
               [��������],
               [����ʱ��],
               [��������],
               [����ʱ��],
               [�˻�״̬],
               [ִ������],
               [ִ�պ���],
               [ִ����Ч��],
               [��Ӫ��Χ],
               [��ϵ��ַ],
               [ִ��ע���������],
               [��Ӫ��������],
               [ע���ʱ���],
               [���˴�������������],
               [���˴���������֤������],
               [���˴���������֤������],
               [���˴���������֤����Ч�ڿ�ʼ��],
               [���˴���������֤����Ч�ڽ�ֹ��],
               [���˴�����������ϵ�绰],
               [����������],
               [������֤������],
               [������֤������],
               [������֤����Ч�ڿ�ʼ��],
               [������֤����Ч�ڽ�ֹ��],
               [��������ϵ�绰],
               [�󶨵��ֻ�����],
               [�����ص�������],
               [��ʱ���˻�������]
        FROM   [tb_shzh_dw] a
               LEFT JOIN v_bank b
                      ON a.[�����н��ڻ�������] = b.���б�������
        WHERE  [��������ϵ�绰] LIKE '%' + @dlr_dh + '%'
		order by [�����н��ڻ�������]
      END
    ELSE
      BEGIN
        SELECT '����ҵ���е�λ�˻�����δ����' ע��
      END
  END
GO��� ! f   �"     
      ���е�λ�˻���ѯ_���ֻ�    @���ֻ�����!S:17155514171 �       0314	    0
    1    1 \  CREATE PROCEDURE Pd_shzh_bdsj(@bdsj VARCHAR(60))
WITH ENCRYPTION
AS
  BEGIN
    IF Object_id(N'tb_shzh_dw', N'U') IS NOT NULL
      BEGIN
        SELECT [�����н��ڻ�������],
               b.[���л�������],
               [�ͻ����],
               [�˻�����],
               [�˺�],
               [�˻�����],
               [��������],
               [����ʱ��],
               [��������],
               [����ʱ��],
               [�˻�״̬],
               [ִ������],
               [ִ�պ���],
               [ִ����Ч��],
               [��Ӫ��Χ],
               [��ϵ��ַ],
               [ִ��ע���������],
               [��Ӫ��������],
               [ע���ʱ���],
               [���˴�������������],
               [���˴���������֤������],
               [���˴���������֤������],
               [���˴���������֤����Ч�ڿ�ʼ��],
               [���˴���������֤����Ч�ڽ�ֹ��],
               [���˴�����������ϵ�绰],
               [����������],
               [������֤������],
               [������֤������],
               [������֤����Ч�ڿ�ʼ��],
               [������֤����Ч�ڽ�ֹ��],
               [��������ϵ�绰],
               [�󶨵��ֻ�����],
               [�����ص�������],
               [��ʱ���˻�������]
        FROM   [tb_shzh_dw] a
               LEFT JOIN v_bank b
                      ON a.[�����н��ڻ�������] = b.���б�������
        WHERE  [�󶨵��ֻ�����] LIKE '%' + @bdsj + '%'
		order by [�����н��ڻ�������]
      END
    ELSE
      BEGIN
        SELECT '����ҵ���е�λ�˻�����δ����' ע��
      END
  END
GO��� ! g   �"     
      ���е�λ�˻���ѯ_��Ӫ��Χ    @��Ӫ��Χ!S:ó��@��������!N:100 �       0315	    0
    1    1 �  CREATE PROCEDURE Pd_shzh_jyfw(@jyfw VARCHAR(60), @row_num  INT)
WITH ENCRYPTION
AS
  BEGIN
    IF Object_id(N'tb_shzh_dw', N'U') IS NOT NULL
      BEGIN
		SET ROWCOUNT @row_num
        SELECT [�����н��ڻ�������],
               b.[���л�������],
               [�ͻ����],
               [�˻�����],
               [�˺�],
               [�˻�����],
               [��������],
               [����ʱ��],
               [��������],
               [����ʱ��],
               [�˻�״̬],
               [ִ������],
               [ִ�պ���],
               [ִ����Ч��],
               [��Ӫ��Χ],
               [��ϵ��ַ],
               [ִ��ע���������],
               [��Ӫ��������],
               [ע���ʱ���],
               [���˴�������������],
               [���˴���������֤������],
               [���˴���������֤������],
               [���˴���������֤����Ч�ڿ�ʼ��],
               [���˴���������֤����Ч�ڽ�ֹ��],
               [���˴�����������ϵ�绰],
               [����������],
               [������֤������],
               [������֤������],
               [������֤����Ч�ڿ�ʼ��],
               [������֤����Ч�ڽ�ֹ��],
               [��������ϵ�绰],
               [�󶨵��ֻ�����],
               [�����ص�������],
               [��ʱ���˻�������]
        FROM   [tb_shzh_dw] a
               LEFT JOIN v_bank b
                      ON a.[�����н��ڻ�������] = b.���б�������
        WHERE  [��Ӫ��Χ] LIKE '%' + @jyfw + '%'
		order by [�����н��ڻ�������]
		SET ROWCOUNT 0
      END
    ELSE
      BEGIN
        SELECT '����ҵ���е�λ�˻�����δ����' ע��
      END
  END
GO��� ! h   �"  	   
      ���е�λ�˻���ѯ_��ַ    ��������������    @��ַ!S:����@��������!N:100 �       0316	    0
    1    1 �  CREATE PROCEDURE Pd_shzh_dz(@dz VARCHAR(60), @row_num  INT)
WITH ENCRYPTION
AS
  BEGIN
    IF Object_id(N'tb_shzh_dw', N'U') IS NOT NULL
      BEGIN
		SET ROWCOUNT @row_num
        SELECT [�����н��ڻ�������],
               b.[���л�������],
               [�ͻ����],
               [�˻�����],
               [�˺�],
               [�˻�����],
               [��������],
               [����ʱ��],
               [��������],
               [����ʱ��],
               [�˻�״̬],
               [ִ������],
               [ִ�պ���],
               [ִ����Ч��],
               [��Ӫ��Χ],
               [��ϵ��ַ],
               [ִ��ע���������],
               [��Ӫ��������],
               [ע���ʱ���],
               [���˴�������������],
               [���˴���������֤������],
               [���˴���������֤������],
               [���˴���������֤����Ч�ڿ�ʼ��],
               [���˴���������֤����Ч�ڽ�ֹ��],
               [���˴�����������ϵ�绰],
               [����������],
               [������֤������],
               [������֤������],
               [������֤����Ч�ڿ�ʼ��],
               [������֤����Ч�ڽ�ֹ��],
               [��������ϵ�绰],
               [�󶨵��ֻ�����],
               [�����ص�������],
               [��ʱ���˻�������]
        FROM   [tb_shzh_dw] a
               LEFT JOIN v_bank b
                      ON a.[�����н��ڻ�������] = b.���б�������
        WHERE  [��ϵ��ַ] LIKE '%' + @dz + '%'
		order by [�����н��ڻ�������]
		SET ROWCOUNT 0
      END
    ELSE
      BEGIN
        SELECT '����ҵ���е�λ�˻�����δ����' ע��
      END
  END
GO��� ! i   �"  =   
      .�������ݽ�����Ϣ��ѯ��    ���� ���������� 0   @��ʾ1!��������1:Ĭ��ֵ1@��ʾ2!��������2:Ĭ��ֵ2 �       0317	    0
    0    1 *   CREATE PROCEDURE      AS
BEGIN

END
GO��� ! j   �"  �    =      SC12�޶�����ֽ�����ˮ 8   ��ѯĳ���˻���һ��ʱ����ĳ�����׽�Χ�ڵ��ֽ�����ˮ �   @�˺�!S:1861101021000197462@��С�ֽ��׽��!N:100@����ֽ��׽��!N:100000000@��ʼ����!D:20120101@��������!D:20130430@��������!N:30000 �       031701	    0
    0    1 `  CREATE PROCEDURE  P_rmb_lim_cash_txn(@s_acc_no varchar(40),@min_amt decimal,@max_amt decimal,@bgn_date char(8), @end_date char(8), @row_num int) WITH ENCRYPTION AS
BEGIN
if object_id('tempdb..#tmp1') is not null drop table #tmp1
if object_id('tempdb..#tmp2') is not null drop table #tmp2
--declare @s_acc_no varchar(40)
--declare @bgn_date char(8)
--declare @end_date char(8)
--declare @row_num int
--set @s_acc_no='176705791770'
--set @bgn_date='20120101'
--set @end_date='20120430'
--set @row_num=1000

set rowcount @row_num
select  ������,�˺�,�Է��к�,��������,�Է��˺�,���,��ת,���,���˱�־,���,ҵ������,��;
        into #tmp1
	from V_Txn
	where �˺�=@s_acc_no and (�������� between @bgn_date and @end_date) 
	and (��� between @min_amt and @max_amt)
	and ��ת='�ֽ�'
	order by ��������
select  distinct
        a.������,
        d.���л�������,a.�˺�,a.�Է��к�,a.��������,a.�Է��˺�,a.���,a.��ת,a.���,a.���˱�־,
        a.���,a.ҵ������,a.��;,
        b.acc_name ����,
        b.cst_no �ͻ���,
        b.id_no ֤������,
        (case b.acc_type when '0' then '����' when '1' then '���п�' when '2' then  '��λ' end) ����,
        (CASE b.ent_cst_type WHEN '0' THEN '����' WHEN '1' THEN 'һ��' WHEN '2' THEN '��Ԥ��'  WHEN '3' THEN '��ʱ' WHEN '4' THEN 'Ԥ��' ELSE '    ' END) AS ����,
        b.open_time ����,b.close_time ����,
        (case b.close_flag when '0' then '����' when '1' then '����' WHEN '3' THEN '����' end) ״̬
   from #tmp1 a
   left join tb_acc b on a.�˺�=b.acc_no
   left join V_Bank d on a.������=d.���л�������
   order by ��������
set rowcount 0
END
GO��� ! k   �"  �    =      SC11�޶�������ˮ >   ��ѯĳ���˻���һ��ʱ����ĳ�����׽�Χ�ڵ���������ҽ�����ˮ {   @�˺�!S:1861101021000197462@��С���׽��!N:100@����׽��!N:100000@��ʼ����!D:20120101@��������!D:20130430@��������!N:200 �       031702	    0
    0    1 :  CREATE PROCEDURE  P_rmb_lim_txn_all(@s_acc_no varchar(40),@min_amt decimal,@max_amt decimal,@bgn_date char(8), @end_date char(8), @row_num int) WITH ENCRYPTION AS
BEGIN
if object_id('tempdb..#tmp1') is not null drop table #tmp1
if object_id('tempdb..#tmp2') is not null drop table #tmp2
--declare @s_acc_no varchar(40)
--declare @bgn_date char(8)
--declare @end_date char(8)
--declare @row_num int
--set @s_acc_no='176705791770'
--set @bgn_date='20120101'
--set @end_date='20120430'
--set @row_num=1000

set rowcount @row_num
select  ������,�˺�,�Է��к�,��������,�Է��˺�,���,��ת,���,���˱�־,���,ҵ������,��;
        into #tmp1
	from V_Txn
	where �˺�=@s_acc_no and (�������� between @bgn_date and @end_date) and (��� between @min_amt and @max_amt)
	order by ��������
select  distinct
        a.������,
        d.���л�������,a.�˺�,a.�Է��к�,a.��������,a.�Է��˺�,a.���,a.��ת,a.���,a.���˱�־,
        a.���,a.ҵ������,a.��;,
        b.acc_name ����,
        b.cst_no �ͻ���,
        b.id_no ֤������,
        (case b.acc_type when '0' then '����' when '1' then '���п�' when '2' then  '��λ' end) ����,
        (CASE b.ent_cst_type WHEN '0' THEN '����' WHEN '1' THEN 'һ��' WHEN '2' THEN '��Ԥ��'  WHEN '3' THEN '��ʱ' WHEN '4' THEN 'Ԥ��' ELSE '    ' END) AS ����,
        b.open_time ����,b.close_time ����,
        (case b.close_flag when '0' then '����' when '1' then '����' WHEN '3' THEN '����' end) ״̬
   from #tmp1 a
   left join tb_acc b on a.�˺�=b.acc_no
   left join V_Bank d on a.������=d.���л�������
   order by ��������
END
GO��� ! l   �"  �    =      SC10�ֽ�����ˮ $   ��ѯĳ���˻���һ��ʱ����ֽ�����ˮ R   @�˺�!S:1861101021000197462@��ʼ����!D:20120101@��������!D:20130430@��������!N:600 �       031703	    0
    0    1   CREATE PROCEDURE  P_rmb_cash_txn(@s_acc_no varchar(40),@bgn_date char(8), @end_date char(8), @row_num int) WITH ENCRYPTION AS
BEGIN
if object_id('tempdb..#tmp1') is not null drop table #tmp1
if object_id('tempdb..#tmp2') is not null drop table #tmp2
--declare @s_acc_no varchar(40)
--declare @bgn_date char(8)
--declare @end_date char(8)
--declare @row_num int
--set @s_acc_no='176705791770'
--set @bgn_date='20120101'
--set @end_date='20120430'
--set @row_num=1000

set rowcount @row_num
select  ������,�˺�,�Է��к�,��������,�Է��˺�,���,��ת,���,���˱�־,���,ҵ������,��;
        into #tmp1
	from V_Txn
	where �˺�=@s_acc_no and (�������� between @bgn_date and @end_date)
        and ��ת='�ֽ�'
	order by ��������
select  distinct
        a.������,
        d.���л�������,a.�˺�,a.�Է��к�,a.��������,a.�Է��˺�,a.���,a.��ת,a.���,a.���˱�־,
        a.���,a.ҵ������,a.��;,
        b.acc_name ����,
        b.cst_no �ͻ���,
        b.id_no ֤������,
        (case b.acc_type when '0' then '����' when '1' then '���п�' when '2' then  '��λ' end) ����,
        (CASE b.ent_cst_type WHEN '0' THEN '����' WHEN '1' THEN 'һ��' WHEN '2' THEN '��Ԥ��'  WHEN '3' THEN '��ʱ' WHEN '4' THEN 'Ԥ��' ELSE '    ' END) AS ����,
        b.open_time ����,b.close_time ����,
        (case b.close_flag when '0' then '����' when '1' then '����' WHEN '3' THEN '����' end) ״̬
   from #tmp1 a
   left join tb_acc b on a.�˺�=b.acc_no
   left join V_Bank d on a.������=d.���л�������
   order by ��������
set rowcount 0
END
GO��� ! m   �"  }    =      SC09�����˺Ž�����ˮ $   ��ѯĳ���˻���һ��ʱ������н�����ˮ T   @�˺�!S:1860201021000231028@��ʼ����!D:20120101@��������!D:20130430@��������!N:30000        031704	    0
    0    1 �  CREATE PROCEDURE  P_rmb_txn_all(@s_acc_no varchar(40),@bgn_date char(8), @end_date char(8), @row_num int) WITH ENCRYPTION AS
BEGIN
if object_id('tempdb..#tmp1') is not null drop table #tmp1
if object_id('tempdb..#tmp2') is not null drop table #tmp2
--declare @s_acc_no varchar(40)
--declare @bgn_date char(8)
--declare @end_date char(8)
--declare @row_num int
--set @s_acc_no='176705791770'
--set @bgn_date='20120101'
--set @end_date='20120430'
--set @row_num=1000

set rowcount @row_num
select  ������,�˺�,�Է��к�,��������,�Է��˺�,���,��ת,���,���˱�־,���,ҵ������,��;
        into #tmp1
	from V_Txn
	where �˺�=@s_acc_no and (�������� between @bgn_date and @end_date)
	order by ��������
select  distinct
        a.������,
        d.���л�������,a.�˺�,a.�Է��к�,a.��������,a.�Է��˺�,a.���,a.��ת,a.���,a.���˱�־,
        a.���,a.ҵ������,a.��;,
        b.acc_name ����,
        b.cst_no �ͻ���,
        b.id_no ֤������,
        (case b.acc_type when '0' then '����' when '1' then '���п�' when '2' then  '��λ' end) ����,
        (CASE b.ent_cst_type WHEN '0' THEN '����' WHEN '1' THEN 'һ��' WHEN '2' THEN '��Ԥ��'  WHEN '3' THEN '��ʱ' WHEN '4' THEN 'Ԥ��' ELSE '    ' END) AS ����,
        b.open_time ����,b.close_time ����,
        (case b.close_flag when '0' then '����' when '1' then '����' WHEN '3' THEN '����' end) ״̬
   from #tmp1 a
   left join tb_acc b on a.�˺�=b.acc_no
   left join V_Bank d on a.������=d.���л�������
   order by ��������
set rowcount 0
END
GO��� ! n   �"  C   
      �����е�λ���׷���    @����ױ�׼����Ԫ��!N:100 �       0318	    0
    1    1 �  CREATE PROCEDURE P_All_Fx_DW(@huge_amt decimal)  WITH ENCRYPTION  AS
BEGIN
/****** Script for SelectTopNRows command from SSMS  ******/
if object_id(N'tb_shjy_dw',N'U') is not null
begin
SELECT �˺�,�˻�����,count(�˺�) ����, 
       sum(case when (���׽��>=@huge_amt*10000) then 1 else 0 end) �������,
   	   sum(case when (��ת��ʶ='�ֽ�' and ���׽��>=@huge_amt*10000100) then 1 else 0 end) �����ֽ����,
       sum(case when (��ת��ʶ='ת��' and �����ʶ='��') then 1 else 0 end) ����ת��,
       sum(case when (��ת��ʶ='ת��' and �����ʶ='��') then 1 else 0 end) �跽ת��,
       sum(case when (��ת��ʶ='�ֽ�' and �����ʶ='��') then 1 else 0 end) �����ֽ�,
       sum(case when (��ת��ʶ='�ֽ�' and �����ʶ='��') then 1 else 0 end) �跽�ֽ�,
	   sum(case when (��ת��ʶ not in ('�ֽ�','ת��')) then 1 else 0 end) ����ת��ʶ,
       sum(case when (�����ʶ not in ('��','��')) then 1 else 0 end) �޽����ʶ,
	   min(���׽��) ��С���׽��,max(���׽��) ����׽��,
	   min(��������) ���罻��,max(��������) ��ٽ���
  FROM [tb_shjy_dw]
  --where �˺�='2002860391000880' and ��������>='20180101' and ��������<='20190630'
  group by �˺�,�˻�����
 end
 else
begin
select '����ҵ���е�λ��������δ����' ע��
end

END
GO��� ! o   �"  D   
      ���е�λ���ײ�ѯ_�˻���ˮ    �����˺Ų�ѯ�˻���ˮ @   @�˺�!S:2002860391000880@��ʼ����!D:20180101@��������!D:20190630 �       0319	    0
    1    1 {  CREATE PROCEDURE P_jyls_dw(@s_acc_no varchar(40),@bgn_date char(8), @end_date char(8))  WITH ENCRYPTION  AS
BEGIN
if object_id(N'tb_shjy_dw',N'U') is not null
begin
  SELECT *
  FROM [tb_shjy_dw]
  where �˺�= @s_acc_no and ��������>=@bgn_date and ��������<=@end_date
  order by ��������,����ʱ��
end
else
begin
select '����ҵ���е�λ��������δ����' ע��
end
END
GO��� ! p   �"      
      ��������������ѯ -   @�������л�������!S:%@�˺�!S:178@�������!S:% �       0320	    0
    1    1 ;  CREATE PROCEDURE P_list_ye(@bank VARCHAR(14),@s_acc_no VARCHAR(40),@bgn_date CHAR(8))
WITH ENCRYPTION
AS
  BEGIN
      IF Object_id(N'tb_yeb', N'U') IS NOT NULL
        BEGIN
            SELECT *
            FROM   [tb_yeb]
            WHERE  ����������� LIKE '%' + trim(@bank) + '%'
                   AND �˺� LIKE '%' + trim(@s_acc_no) + '%'
                   AND ������� LIKE '%' +trim( @bgn_date) + '%'
            ORDER  BY �������
        END
      ELSE
        BEGIN
            SELECT '����ҵ������������δ����' ע��
        END
  END
GO ��� ! q   �"  �           ���и����˻���Ϣ��ѯ 
   ���������� 0   @��ʾ1!��������1:Ĭ��ֵ1@��ʾ2!��������2:Ĭ��ֵ2 :      04	    0
    1    1    1 *   CREATE PROCEDURE      AS
BEGIN

END
GO��� ! r   �"  �   �      ����������Ʋ�ѯ�˻���      +   @�����������ģ����!S:������@��������!N:100 ;      0401	    0
    1    1   CREATE PROCEDURE  PG_acc_from_name(@acc_name varchar(60),@row_num int) WITH ENCRYPTION AS
BEGIN
--declare @s_acc_name varchar(60)
--declare @s_bank_code_no varchar(60)
--set @s_acc_no='ӣ��һ��'
set rowcount @row_num
select [�����н��ڻ�������]
      ,b.[���л�������]
      ,[�ͻ����]
      ,[�˻�����]
      ,[�˺�]
      ,[�˻�����]
      ,[��������]
      ,[����ʱ��]
      ,[��������]
      ,[����ʱ��]
      ,[�˻�״̬]
      ,[֤������]
      ,[����֤������]
      ,[����֤����Ч�ڿ�ʼ��]
      ,[����֤����Ч�ڽ�ֹ��]
      ,[��֤���ص�������]
      ,[�ͻ���������]
      ,[�ͻ��Ա�]
      ,[��ϵ��ַ]
      ,[���ݺ��鷽ʽ]
      ,[���ֻ�����]
      ,[�������˻��˺�]
      ,[�������˺�����]
      ,[�������˺�ʱ��]
      ,[�󶨿����з��˴���]
      ,[����������]
      ,[������֤������]
      ,[������֤������]
      ,[������֤����Ч�ڿ�ʼ��]
      ,[������֤����Ч�ڽ�ֹ��]
      ,[��������ϵ�绰]
      ,[�����ص�������]
      ,[���ʺ�]
      ,[��������]
      ,[����״̬]
      ,[����IP]
      ,[����MAC] 
from tb_shzh_gr a 
left join v_bank b on [�����н��ڻ�������]=b.���б�������   
where [�˻�����] like '%'+rtrim(ltrim(@acc_name))+'%'           
order by [�����н��ڻ�������] , [�˻�����]
set rowcount 0
END
GO��� ! s   �"  �   �      ��֤�������ѯ�˻���      .   @���������֤�����루ģ����!S: @��������!N:100 <      0402	    0
    1    1   CREATE PROCEDURE  PG_acc_from_idno(@acc_id varchar(60),@row_num int) WITH ENCRYPTION AS
BEGIN
--declare @s_acc_name varchar(60)
--declare @s_bank_code_no varchar(60)
--set @s_acc_no='ӣ��һ��'
set rowcount @row_num
select [�����н��ڻ�������]
      ,b.[���л�������]
      ,[�ͻ����]
      ,[�˻�����]
      ,[�˺�]
      ,[�˻�����]
      ,[��������]
      ,[����ʱ��]
      ,[��������]
      ,[����ʱ��]
      ,[�˻�״̬]
      ,[֤������]
      ,[����֤������]
      ,[����֤����Ч�ڿ�ʼ��]
      ,[����֤����Ч�ڽ�ֹ��]
      ,[��֤���ص�������]
      ,[�ͻ���������]
      ,[�ͻ��Ա�]
      ,[��ϵ��ַ]
      ,[���ݺ��鷽ʽ]
      ,[���ֻ�����]
      ,[�������˻��˺�]
      ,[�������˺�����]
      ,[�������˺�ʱ��]
      ,[�󶨿����з��˴���]
      ,[����������]
      ,[������֤������]
      ,[������֤������]
      ,[������֤����Ч�ڿ�ʼ��]
      ,[������֤����Ч�ڽ�ֹ��]
      ,[��������ϵ�绰]
      ,[�����ص�������]
      ,[���ʺ�]
      ,[��������]
      ,[����״̬]
      ,[����IP]
      ,[����MAC] 
from tb_shzh_gr a 
left join v_bank b on [�����н��ڻ�������]=b.���б�������   
where [����֤������] like '%'+rtrim(ltrim(@acc_id))+'%'           
order by [�����н��ڻ�������] , [����֤������]
set rowcount 0 
END
GO��� ! t   �"  �   �      ���˺Ż򿨺Ų�ѯ�˻���      &   @�˺Ż򿨺ţ�ģ����!S: @��������!N:100 =      0403	    0
    1    1 ,  CREATE PROCEDURE  PG_acc_from_acc_no(@acc_no varchar(60),@row_num int) WITH ENCRYPTION AS
BEGIN
--declare @s_acc_name varchar(60)
--declare @s_bank_code_no varchar(60)
--set @s_acc_no='ӣ��һ��'
set rowcount @row_num
select [�����н��ڻ�������]
      ,b.[���л�������]
      ,[�ͻ����]
      ,[�˻�����]
      ,[�˺�]
      ,[�˻�����]
      ,[��������]
      ,[����ʱ��]
      ,[��������]
      ,[����ʱ��]
      ,[�˻�״̬]
      ,[֤������]
      ,[����֤������]
      ,[����֤����Ч�ڿ�ʼ��]
      ,[����֤����Ч�ڽ�ֹ��]
      ,[��֤���ص�������]
      ,[�ͻ���������]
      ,[�ͻ��Ա�]
      ,[��ϵ��ַ]
      ,[���ݺ��鷽ʽ]
      ,[���ֻ�����]
      ,[�������˻��˺�]
      ,[�������˺�����]
      ,[�������˺�ʱ��]
      ,[�󶨿����з��˴���]
      ,[����������]
      ,[������֤������]
      ,[������֤������]
      ,[������֤����Ч�ڿ�ʼ��]
      ,[������֤����Ч�ڽ�ֹ��]
      ,[��������ϵ�绰]
      ,[�����ص�������]
      ,[���ʺ�]
      ,[��������]
      ,[����״̬]
      ,[����IP]
      ,[����MAC] 
from tb_shzh_gr a 
left join v_bank b on [�����н��ڻ�������]=b.���б�������   
where �˺� like '%'+rtrim(ltrim(@acc_no))+'%' or  [���ʺ�] like '%'+rtrim(ltrim(@acc_no))+'%'             
order by [�����н��ڻ�������] , �˺�
set rowcount 0 
END
GO��� ! u   �"  �   �      ��֤��������ȡ�˻��� x   һ������������ʱ���й������ڣ�����ѧ�������٣����ݣ����٣���ְ�����£��侯��ʿ��֤���۰ģ�̨�壻������������������� S   @���л������루Ϊ��ȫ����!S:@���������֤�����ࣨģ����20�����ࣩ!S:@��������!N:100 D      0404	    0
    1    1 �  CREATE PROCEDURE  PG_acc_from_idzl(@bank_code varchar(14),@acc_idzl varchar(60),@row_num int) WITH ENCRYPTION AS
BEGIN
--declare @acc_idzl varchar(60)
--declare @bank_code varchar(14)
--set @acc_idzl='����֤'
--set @bank_code=''
set rowcount @row_num
if len(ltrim(rtrim(@bank_code)))=0 or @bank_code is null
   set @bank_code=''
select [�����н��ڻ�������]
      ,b.[���л�������]
      ,[�ͻ����]
      ,[�˻�����]
      ,[�˺�]
      ,[�˻�����]
      ,[��������]
      ,[����ʱ��]
      ,[��������]
      ,[����ʱ��]
      ,[�˻�״̬]
      ,[֤������]
      ,[����֤������]
      ,[����֤����Ч�ڿ�ʼ��]
      ,[����֤����Ч�ڽ�ֹ��]
      ,[��֤���ص�������]
      ,[�ͻ���������]
      ,[�ͻ��Ա�]
      ,[��ϵ��ַ]
      ,[���ݺ��鷽ʽ]
      ,[���ֻ�����]
      ,[�������˻��˺�]
      ,[�������˺�����]
      ,[�������˺�ʱ��]
      ,[�󶨿����з��˴���]
      ,[����������]
      ,[������֤������]
      ,[������֤������]
      ,[������֤����Ч�ڿ�ʼ��]
      ,[������֤����Ч�ڽ�ֹ��]
      ,[��������ϵ�绰]
      ,[�����ص�������]
      ,[���ʺ�]
      ,[��������]
      ,[����״̬]
      ,[����IP]
      ,[����MAC]
from tb_shzh_gr a 
left join v_bank b on [�����н��ڻ�������]=b.���б�������   
where [֤������] like '%'+rtrim(ltrim(@acc_idzl))+'%'  
      and   [�����н��ڻ�������] like'%'+rtrim(ltrim(@bank_code))+'%'        
order by [�����н��ڻ�������] ,[����֤������]
set rowcount 0
END
GO��� ! v   �"  �   �      ���˻�������ȡ�˻���    I�ࡢII�ࡢIII���� M   @���л������루Ϊ��ȫ����!S:@�˻����ͣ�ģ����һ����������!S:��@��������!N:100 E      0405	    0
    1    1 �  CREATE PROCEDURE  PG_acc_from_zllx(@bank_code varchar(14),@acc_lx varchar(60),@row_num int) WITH ENCRYPTION AS
BEGIN
--declare @acc_idzl varchar(60)
--declare @bank_code varchar(14)
--set @acc_idzl='����֤'
--set @bank_code=''
set rowcount @row_num
if len(ltrim(rtrim(@bank_code)))=0 or @bank_code is null
   set @bank_code=''
select [�����н��ڻ�������]
      ,b.[���л�������]
      ,[�ͻ����]
      ,[�˻�����]
      ,[�˺�]
      ,[�˻�����]
      ,[��������]
      ,[����ʱ��]
      ,[��������]
      ,[����ʱ��]
      ,[�˻�״̬]
      ,[֤������]
      ,[����֤������]
      ,[����֤����Ч�ڿ�ʼ��]
      ,[����֤����Ч�ڽ�ֹ��]
      ,[��֤���ص�������]
      ,[�ͻ���������]
      ,[�ͻ��Ա�]
      ,[��ϵ��ַ]
      ,[���ݺ��鷽ʽ]
      ,[���ֻ�����]
      ,[�������˻��˺�]
      ,[�������˺�����]
      ,[�������˺�ʱ��]
      ,[�󶨿����з��˴���]
      ,[����������]
      ,[������֤������]
      ,[������֤������]
      ,[������֤����Ч�ڿ�ʼ��]
      ,[������֤����Ч�ڽ�ֹ��]
      ,[��������ϵ�绰]
      ,[�����ص�������]
      ,[���ʺ�]
      ,[��������]
      ,[����״̬]
      ,[����IP]
      ,[����MAC]
from tb_shzh_gr a 
left join v_bank b on [�����н��ڻ�������]=b.���б�������   
where �˻����� like '%'+rtrim(ltrim(@acc_lx))+'%'  
      and   [�����н��ڻ�������] like'%'+rtrim(ltrim(@bank_code))+'%'        
order by [�����н��ڻ�������] ,[�˻�����]
set rowcount 0

END
GO��� ! w   �"  �   �      �����ݺ��鷽ʽ��ȡ�˻���    ����棻������� M   @���л������루Ϊ��ȫ����!S:@���ݺ��鷽ʽ��ģ�����棬�ǣ�!S:��@��������!N:100 G      0406	    0
    1    1 �  CREATE PROCEDURE  PG_acc_from_khqd(@bank_code varchar(14),@khqd varchar(60),@row_num int) WITH ENCRYPTION AS
BEGIN
--declare @acc_idzl varchar(60)
--declare @bank_code varchar(14)
--set @acc_idzl='����֤'
--set @bank_code=''
set rowcount @row_num
if len(ltrim(rtrim(@bank_code)))=0 or @bank_code is null
   set @bank_code=''
select [�����н��ڻ�������]
      ,b.[���л�������]
      ,[�ͻ����]
      ,[�˻�����]
      ,[�˺�]
      ,[�˻�����]
      ,[��������]
      ,[����ʱ��]
      ,[��������]
      ,[����ʱ��]
      ,[�˻�״̬]
      ,[֤������]
      ,[����֤������]
      ,[����֤����Ч�ڿ�ʼ��]
      ,[����֤����Ч�ڽ�ֹ��]
      ,[��֤���ص�������]
      ,[�ͻ���������]
      ,[�ͻ��Ա�]
      ,[��ϵ��ַ]
      ,[���ݺ��鷽ʽ]
      ,[���ֻ�����]
      ,[�������˻��˺�]
      ,[�������˺�����]
      ,[�������˺�ʱ��]
      ,[�󶨿����з��˴���]
      ,[����������]
      ,[������֤������]
      ,[������֤������]
      ,[������֤����Ч�ڿ�ʼ��]
      ,[������֤����Ч�ڽ�ֹ��]
      ,[��������ϵ�绰]
      ,[�����ص�������]
      ,[���ʺ�]
      ,[��������]
      ,[����״̬]
      ,[����IP]
      ,[����MAC]
from tb_shzh_gr a 
left join v_bank b on [�����н��ڻ�������]=b.���б�������   
where [���ݺ��鷽ʽ] like rtrim(ltrim(@khqd))+'%'
      and   [�����н��ڻ�������] like'%'+rtrim(ltrim(@bank_code))+'%'        
order by [�����н��ڻ�������] ,[���ݺ��鷽ʽ]
set rowcount 0

END
GO��� ! x   �"  �   �      ��ȡ��������Ϣ���˻�    ��ȡ�����˻���һ�Ŷ࿨�˻�    @���л������루Ϊ��ȫ����!S: I      0407	    0
    0    1 @  CREATE PROCEDURE  PG_acc_sub_infor(@bank_code varchar(14)) WITH ENCRYPTION AS
BEGIN

select * from tb_shzh_gr where  (CHARINDEX(';', ���������)>0 or CHARINDEX(';', ����)>0) and
      �������н��ڻ������� like '%'+rtrim(ltrim(@bank_code))+'%'        
      order by �������н��ڻ������� ,���������֤������
END
GO��� ! y   �"  �   �      ��ȡ�д����˵��˻��� 
   ���������� ,   @���л������루Ϊ��ȫ����!S:@��������!N:1000 J      0408	    0
    1    1 h  CREATE PROCEDURE PG_acc_dl_zh(@bank_code varchar(14),@row_num int) WITH ENCRYPTION AS
BEGIN
set rowcount @row_num
if len(ltrim(rtrim(@bank_code)))=0 or @bank_code is null
   set @bank_code=''
select [�����н��ڻ�������]
      ,b.[���л�������]
      ,[�ͻ����]
      ,[�˻�����]
      ,[�˺�]
      ,[�˻�����]
      ,[��������]
      ,[����ʱ��]
      ,[��������]
      ,[����ʱ��]
      ,[�˻�״̬]
      ,[֤������]
      ,[����֤������]
      ,[����֤����Ч�ڿ�ʼ��]
      ,[����֤����Ч�ڽ�ֹ��]
      ,[��֤���ص�������]
      ,[�ͻ���������]
      ,[�ͻ��Ա�]
      ,[��ϵ��ַ]
      ,[���ݺ��鷽ʽ]
      ,[���ֻ�����]
      ,[�������˻��˺�]
      ,[�������˺�����]
      ,[�������˺�ʱ��]
      ,[�󶨿����з��˴���]
      ,[����������]
      ,[������֤������]
      ,[������֤������]
      ,[������֤����Ч�ڿ�ʼ��]
      ,[������֤����Ч�ڽ�ֹ��]
      ,[��������ϵ�绰]
      ,[�����ص�������]
      ,[���ʺ�]
      ,[��������]
      ,[����״̬]
      ,[����IP]
      ,[����MAC]
from tb_shzh_gr a 
left join v_bank b on [�����н��ڻ�������]=b.���б�������   
where (LEN([����������])>0 or LEN([������֤������])>0 or LEN([������֤������])>0 or LEN([��������ϵ�绰])>0)
      and   [�����н��ڻ�������] like'%'+rtrim(ltrim(@bank_code))+'%'        
order by [�����н��ڻ�������] ,[����������]
set rowcount 0
END
GO��� ! z   �"  �           ���и��˽�����Ϣ��ѯ 
   ���������� 0   @��ʾ1!��������1:Ĭ��ֵ1@��ʾ2!��������2:Ĭ��ֵ2 C      05	    0
    1    1    1 *   CREATE PROCEDURE      AS
BEGIN

END
GO��� ! {   �"  �   �      �����˺Ž�����ˮ��      O   @�˺�!S:1000200030004001@��ʼ����!D:20160101@��������!D:20180531@��������!N:300 D      0501	    0
    1    1 h  CREATE PROCEDURE  PG_rmb_txn_all(@s_acc_no varchar(40),@bgn_date char(8), @end_date char(8), @row_num int) WITH ENCRYPTION AS
BEGIN
set rowcount @row_num
SELECT b.���л�������,
		�˺�,
		�˻�����,
		��������,
		����ʱ��,
		���׽��,
		���ױ���,
		�˻���� ,
		�����ʶ ,
		��ת��ʶ,
		��������,
		�ʽ������ˮ��,
		���׶Է��˻�����,
		���׶Է��˺�,
		���׶Է���������,
		���׸���
FROM [tb_shjy_gr] a  
left join v_bank b on a.[�����н��ڻ�������]=b.���б������� 
where [�˺�] = @s_acc_no
       and (�������� between @bgn_date and @end_date)
       order by ��������
set rowcount 0
END
GO��� ! |   �"  �   �      �����˺��ֽ�����ˮ��      O   @�˺�!S:1000200030004001@��ʼ����!D:20120101@��������!D:20170930@��������!N:300 E      0502	    0
    1    1 �  CREATE PROCEDURE  PG_rmb_cash_all(@s_acc_no varchar(40),@bgn_date char(8), @end_date char(8), @row_num int) WITH ENCRYPTION AS
BEGIN
set rowcount @row_num
SELECT b.���л�������,
		�˺�,
		�˻�����,
		��������,
		����ʱ��,
		���׽��,
		���ױ���,
		�˻���� ,
		�����ʶ ,
		��ת��ʶ,
		��������,
		�ʽ������ˮ��,
		���׶Է��˻�����,
		���׶Է��˺�,
		���׶Է���������,
		���׸���
FROM [tb_shjy_gr] a  
left join v_bank b on a.[�����н��ڻ�������]=b.���б������� 
where [�˺�] = @s_acc_no
       and [��ת��ʶ]='�ֽ�'  
       and (�������� between @bgn_date and @end_date)
       order by ��������
set rowcount 0
END
GO��� ! }   �"  0           ---�˻����ռ��---    ����չ�����Ҫ��ѯ�Ĳ�����Ϣ      X      06	    0
    1    1    1 *   CREATE PROCEDURE      AS
BEGIN

END
GO��� ! ~   �"  2   0      ���ռ�����ݵ������           Z      0601	    0
    1    1 M/  CREATE PROCEDURE P_dwfx_date_ok
WITH ENCRYPTION
AS
  BEGIN
    DECLARE @s_tb_sazh VARCHAR(800),@s_tb_sazh1 VARCHAR(800),@s_tb_sazh2 VARCHAR(800) --�永�˻�
    DECLARE @s_tb_rhzh_dw VARCHAR(800),@s_tb_rhzh_dw1 VARCHAR(800),@s_tb_rhzh_dw2 VARCHAR(800)--�����˻�
    DECLARE @s_tb_rhzh_dw_jb VARCHAR(800),@s_tb_rhzh_dw_jb1 VARCHAR(800),@s_tb_rhzh_dw_jb2 VARCHAR(800)--����
    DECLARE @s_tb_rhzh_dw_yb VARCHAR(800),@s_tb_rhzh_dw_yb1 VARCHAR(800),@s_tb_rhzh_dw_yb2 VARCHAR(800)--һ��
    DECLARE @s_tb_rhzh_dw_ys VARCHAR(800),@s_tb_rhzh_dw_ys1 VARCHAR(800),@s_tb_rhzh_dw_ys2 VARCHAR(800)--Ԥ��
    DECLARE @s_tb_rhzh_dw_fys VARCHAR(800),@s_tb_rhzh_dw_fys1 VARCHAR(800),@s_tb_rhzh_dw_fys2 VARCHAR(800)--��Ԥ��
    DECLARE @s_tb_rhzh_dw_ls VARCHAR(800),@s_tb_rhzh_dw_ls1 VARCHAR(800),@s_tb_rhzh_dw_ls2 VARCHAR(800)--��ʱ
    DECLARE @s_tb_rhzh_dw_fls VARCHAR(800),@s_tb_rhzh_dw_fls1 VARCHAR(800),@s_tb_rhzh_dw_fls2 VARCHAR(800)--����ʱ
    DECLARE @s_tb_rhzh_dw_ts VARCHAR(800),@s_tb_rhzh_dw_ts1 VARCHAR(800),@s_tb_rhzh_dw_ts2 VARCHAR(800)--����
    -------------------------------------
    DECLARE @s_tb_rhzh_gr VARCHAR(80),@s_tb_rhzh_gr1 VARCHAR(80),@s_tb_rhzh_gr2 VARCHAR(80)--�����˻�
    DECLARE @s_tb_rhzh_gr_zpzh VARCHAR(80),@s_tb_rhzh_gr_zpzh1 VARCHAR(80),@s_tb_rhzh_gr_zpzh2 VARCHAR(80)--֧Ʊ�˻�
    DECLARE @s_tb_rhzh_gr_jjk VARCHAR(80),@s_tb_rhzh_gr_jjk1 VARCHAR(80),@s_tb_rhzh_gr_jjk2 VARCHAR(80)--��ǿ�
    DECLARE @s_tb_rhzh_gr_djk VARCHAR(80),@s_tb_rhzh_gr_djk1 VARCHAR(80),@s_tb_rhzh_gr_djk2 VARCHAR(80)--���ǿ�
    DECLARE @s_tb_rhzh_gr_qt VARCHAR(80),@s_tb_rhzh_gr_qt1 VARCHAR(80),@s_tb_rhzh_gr_qt2 VARCHAR(80)--����
    DECLARE @s_tb_rhzh_gr_zdjk VARCHAR(80),@s_tb_rhzh_gr_zdjk1 VARCHAR(80),@s_tb_rhzh_gr_zdjk2 VARCHAR(80)--׼���ǿ�
    ----------------------------------------------------------------
    SET @s_tb_sazh ='�永�˻�����'
    ----------------------------------------------
    SET @s_tb_rhzh_dw='���е�λ�˻����ݣ��ܣ�'
    SET @s_tb_rhzh_dw_jb='���е�λ�˻����ݣ�������'
    SET @s_tb_rhzh_dw_yb='���е�λ�˻����ݣ�һ�㣩'
    SET @s_tb_rhzh_dw_ys='���е�λ�˻����ݣ�Ԥ�㣩'
    SET @s_tb_rhzh_dw_fys='���е�λ�˻����ݣ���Ԥ�㣩'
    SET @s_tb_rhzh_dw_ls='���е�λ�˻����ݣ���ʱ��'
    SET @s_tb_rhzh_dw_fls='���е�λ�˻����ݣ�����ʱ��'
    SET @s_tb_rhzh_dw_ts='���е�λ�˻����ݣ����⣩'
    -----------------------------------------
    SET @s_tb_rhzh_gr='���и����˻����ݣ��ܣ�'
    SET @s_tb_rhzh_gr_zpzh='���и����˻����ݣ�֧Ʊ�˻���'
    SET @s_tb_rhzh_gr_jjk='���и����˻����ݣ���ǿ���'
    SET @s_tb_rhzh_gr_djk='���и����˻����ݣ����ǿ���'
    SET @s_tb_rhzh_gr_qt='���и����˻����ݣ�������'
    SET @s_tb_rhzh_gr_zdjk='���и����˻����ݣ�׼���ǿ���'
    ----------------------------------------------
    IF Object_id(N'hnxlsys.dbo.tb_sazh', N'U') IS NOT NULL
      BEGIN
        --select stuff((select distinct  ',' + ����  from hnxlsys.dbo.tb_sazh order by ','+���� for xml path('')),1,1,'')
        --select distinct ����+',' from hnxlsys.dbo.tb_sazh order by ����+',' for xml path('')
        SET @s_tb_sazh1=( Stuff((SELECT DISTINCT ',' + ����
                                 FROM   hnxlsys.dbo.tb_sazh
                                 ORDER  BY ',' + ����
                                 FOR xml path('')), 1, 1, '') )
        SET @s_tb_sazh2=(SELECT Count(*)
                         FROM   hnxlsys.dbo.tb_sazh)
      END
    ELSE
      BEGIN
        SET @s_tb_sazh='���永�˻�����δ����'
        SET @s_tb_sazh=''
      END
    --------------------------------------
    IF Object_id(N'tb_rhzh_dw', N'U') IS NOT NULL
      BEGIN
        SET @s_tb_rhzh_dw1=(SELECT '������' + Min(��������) + '��' + Max(��������) + '--������'
                                   + Min(��������) + '��' + Max(��������)
                            FROM   tb_rhzh_dw)
        SET @s_tb_rhzh_dw2=(SELECT Count(DISTINCT �˺�)
                            FROM   tb_rhzh_dw)
        SET @s_tb_rhzh_dw_jb1=(SELECT '������' + Min(��������) + '��' + Max(��������) + '--������'
                                      + Min(��������) + '��' + Max(��������)
                               FROM   tb_rhzh_dw
                               WHERE  �˻����� = '����')
        SET @s_tb_rhzh_dw_jb2=(SELECT Count(DISTINCT �˺�)
                               FROM   tb_rhzh_dw
                               WHERE  �˻����� = '����')
        SET @s_tb_rhzh_dw_yb1=(SELECT '������' + Min(��������) + '��' + Max(��������) + '--������'
                                      + Min(��������) + '��' + Max(��������)
                               FROM   tb_rhzh_dw
                               WHERE  �˻����� = 'һ��')
        SET @s_tb_rhzh_dw_yb2=(SELECT Count(DISTINCT �˺�)
                               FROM   tb_rhzh_dw
                               WHERE  �˻����� = 'һ��')
        SET @s_tb_rhzh_dw_ls1=(SELECT '������' + Min(��������) + '��' + Max(��������) + '--������'
                                      + Min(��������) + '��' + Max(��������)
                               FROM   tb_rhzh_dw
                               WHERE  �˻����� = '��ʱ')
        SET @s_tb_rhzh_dw_ls2=(SELECT Count(DISTINCT �˺�)
                               FROM   tb_rhzh_dw
                               WHERE  �˻����� = '��ʱ')
        SET @s_tb_rhzh_dw_fls1=(SELECT '������' + Min(��������) + '��' + Max(��������) + '--������'
                                       + Min(��������) + '��' + Max(��������)
                                FROM   tb_rhzh_dw
                                WHERE  �˻����� = '����ʱ')
        SET @s_tb_rhzh_dw_fls2=(SELECT Count(DISTINCT �˺�)
                                FROM   tb_rhzh_dw
                                WHERE  �˻����� = '����ʱ')
        SET @s_tb_rhzh_dw_ys1=(SELECT '������' + Min(��������) + '��' + Max(��������) + '--������'
                                      + Min(��������) + '��' + Max(��������)
                               FROM   tb_rhzh_dw
                               WHERE  �˻����� = 'Ԥ��')
        SET @s_tb_rhzh_dw_ys2=(SELECT Count(DISTINCT �˺�)
                               FROM   tb_rhzh_dw
                               WHERE  �˻����� = 'Ԥ��')
        SET @s_tb_rhzh_dw_fys1=(SELECT '������' + Min(��������) + '��' + Max(��������) + '--������'
                                       + Min(��������) + '��' + Max(��������)
                                FROM   tb_rhzh_dw
                                WHERE  �˻����� = '��Ԥ��')
        SET @s_tb_rhzh_dw_fys2=(SELECT Count(DISTINCT �˺�)
                                FROM   tb_rhzh_dw
                                WHERE  �˻����� = '��Ԥ��')
        SET @s_tb_rhzh_dw_ts1=(SELECT '������' + Min(��������) + '��' + Max(��������) + '--������'
                                      + Min(��������) + '��' + Max(��������)
                               FROM   tb_rhzh_dw
                               WHERE  �˻����� = '����')
        SET @s_tb_rhzh_dw_ts2=(SELECT Count(DISTINCT �˺�)
                               FROM   tb_rhzh_dw
                               WHERE  �˻����� = '����')
      END
    ELSE
      BEGIN
        SET @s_tb_rhzh_dw1='�����е�λ�˻�����δ����'
      END
    -----------------------------------------------------------------------
    IF Object_id(N'tb_rhzh_gr', N'U') IS NOT NULL
      BEGIN
        SET @s_tb_rhzh_gr1=(SELECT '������' + Min(��������) + '��' + Max(��������) + '--������'
                                   + Min(��������) + '��' + Max(��������)
                            FROM   tb_rhzh_gr)
        SET @s_tb_rhzh_gr2=(SELECT Count(DISTINCT �˺�)
                            FROM   tb_rhzh_gr)
        SET @s_tb_rhzh_gr_zpzh1=(SELECT '������' + Min(��������) + '��' + Max(��������) + '--������'
                                        + Min(��������) + '��' + Max(��������)
                                 FROM   tb_rhzh_gr
                                 WHERE  �˻����� = '֧Ʊ�˻�')
        SET @s_tb_rhzh_gr_zpzh2=(SELECT Count(DISTINCT �˺�)
                                 FROM   tb_rhzh_gr
                                 WHERE  �˻����� = '֧Ʊ�˻�')
        SET @s_tb_rhzh_gr_jjk1=(SELECT '������' + Min(��������) + '��' + Max(��������) + '--������'
                                       + Min(��������) + '��' + Max(��������)
                                FROM   tb_rhzh_gr
                                WHERE  �˻����� = '��ǿ�')
        SET @s_tb_rhzh_gr_jjk2=(SELECT Count(DISTINCT �˺�)
                                FROM   tb_rhzh_gr
                                WHERE  �˻����� = '��ǿ�')
        SET @s_tb_rhzh_gr_djk1=(SELECT '������' + Min(��������) + '��' + Max(��������) + '--������'
                                       + Min(��������) + '��' + Max(��������)
                                FROM   tb_rhzh_gr
                                WHERE  �˻����� = '���ǿ�')
        SET @s_tb_rhzh_gr_djk2=(SELECT Count(DISTINCT �˺�)
                                FROM   tb_rhzh_gr
                                WHERE  �˻����� = '���ǿ�')
        SET @s_tb_rhzh_gr_qt1=(SELECT '������' + Min(��������) + '��' + Max(��������) + '--������'
                                      + Min(��������) + '��' + Max(��������)
                               FROM   tb_rhzh_gr
                               WHERE  �˻����� = '����')
        SET @s_tb_rhzh_gr_qt2=(SELECT Count(DISTINCT �˺�)
                               FROM   tb_rhzh_gr
                               WHERE  �˻����� = '����')
        SET @s_tb_rhzh_gr_zdjk1=(SELECT '������' + Min(��������) + '��' + Max(��������) + '--������'
                                        + Min(��������) + '��' + Max(��������)
                                 FROM   tb_rhzh_gr
                                 WHERE  �˻����� = '׼���ǿ�')
        SET @s_tb_rhzh_gr_zdjk2=(SELECT Count(DISTINCT �˺�)
                                 FROM   tb_rhzh_gr
                                 WHERE  �˻����� = '׼���ǿ�')
      END
    ELSE
      BEGIN
        SET @s_tb_rhzh_gr1='�����и����˻�����δ����'
      END
    -----------------------------------------------------
    ---------------------------------------------------
    SELECT @s_tb_sazh ����Դ,
           @s_tb_sazh1 ʱ�䷶Χ,
           @s_tb_sazh2 ����
    UNION ALL
    SELECT '--------------------------',
           '--------------------------',
           '-------'
    UNION ALL
    SELECT @s_tb_rhzh_dw ����Դ,
           @s_tb_rhzh_dw1 ʱ�䷶Χ,
           @s_tb_rhzh_dw2 ����
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
    SELECT '------------------------',
           '------------------------------------',
           '--------------'
    UNION ALL
    SELECT @s_tb_rhzh_gr,
           @s_tb_rhzh_gr1,
           @s_tb_rhzh_gr2 --�����˻�
    UNION ALL
    SELECT @s_tb_rhzh_gr_zpzh,
           @s_tb_rhzh_gr_zpzh1,
           @s_tb_rhzh_gr_zpzh2 --֧Ʊ�˻�
    UNION ALL
    SELECT @s_tb_rhzh_gr_jjk,
           @s_tb_rhzh_gr_jjk1,
           @s_tb_rhzh_gr_jjk2 --��ǿ�
    UNION ALL
    SELECT @s_tb_rhzh_gr_djk,
           @s_tb_rhzh_gr_djk1,
           @s_tb_rhzh_gr_djk2 --���ǿ�
    UNION ALL
    SELECT @s_tb_rhzh_gr_qt,
           @s_tb_rhzh_gr_qt1,
           @s_tb_rhzh_gr_qt2 --����
    UNION ALL
    SELECT @s_tb_rhzh_gr_zdjk,
           @s_tb_rhzh_gr_zdjk1,
           @s_tb_rhzh_gr_zdjk2 --׼���ǿ�
  END
GO 
��� !    �"  ;   0      .�������������ѯ f   ���ơ�֤���š��ֻ����롢��Դ�����м���Ų顢�������ƹ��������������ţ��������˻�����״̬����λ�͸��ˣ� 0   @��ʾ1!��������1:Ĭ��ֵ1@��ʾ2!��������2:Ĭ��ֵ2 b      0602	    0
    1    1 *   CREATE PROCEDURE      AS
BEGIN

END
GO��� ! �   �"  H   ;   
   ��������� 
   ��������� 0   @��ʾ1!��������1:Ĭ��ֵ1@��ʾ2!��������2:Ĭ��ֵ2 H      060201	    0
    1    1 *   CREATE PROCEDURE      AS
BEGIN

END
GO��� ! �   �"  <   ;   
   ���ɺ����� &   �����永�˻����ɵ�λ�����ˡ��ֻ�������      d      060202	    0
    1    1 �  CREATE PROCEDURE P_red_list
WITH ENCRYPTION
AS
  BEGIN
    IF Object_id('tempdb..#tmp1') IS NOT NULL
      DROP TABLE #tmp1
    IF Object_id('tempdb..#tmp2') IS NOT NULL
      DROP TABLE #tmp2
    IF Object_id('[HNXLSYS].[dbo].[tb_red_dw]', 'u') IS NOT NULL
      DROP TABLE [HNXLSYS].[dbo].[tb_red_dw]
    IF Object_id('[HNXLSYS].[dbo].[tb_red_gr]', 'u') IS NOT NULL
      DROP TABLE [HNXLSYS].[dbo].[tb_red_gr]
    IF Object_id('[HNXLSYS].[dbo].[tb_red_phone]', 'u') IS NOT NULL
      DROP TABLE [HNXLSYS].[dbo].[tb_red_phone]
    --��λ������
    SELECT ֤������,
           ����,
           dbo.Stringlistdistinct(String_agg(Isnull(ע������, 'N/A'), ',')) ע������,
           dbo.Stringlistdistinct(String_agg(Isnull(���˴���, 'N/A'), ',')) ���˴���,
           dbo.Stringlistdistinct(String_agg(Isnull(���˴���֤����, 'N/A'), ',')) ���˴���֤����,
           '��λ' �永�˻�,
           dbo.Stringlistdistinct(String_agg(Isnull(�永����, 'N/A'), ',')) �永����,
           dbo.Stringlistdistinct(String_agg(Isnull(����, 'N/A'), ',')) �永����
    INTO   [HNXLSYS].[dbo].[tb_red_dw]
    FROM   [HNXLSYS].[dbo].[tb_sazh]
    WHERE  �˻����� = '��λ'
    GROUP  BY ֤������,
              ����
    ORDER  BY ����
    ----���˺�����
    SELECT DISTINCT ֤������,
                    ���� ����,
                    [dbo].[Regex.replace]('[^\d]*', ���˻��˴����ֻ�, '') �ֻ�����,
                    Ӫҵִ�յ�ַ ���˻�λ��ַ,
                    �˻����� �永�˻�,
                    �永����,
                    ���� �永����
    INTO   #tmp1
    FROM   [HNXLSYS].[dbo].[tb_sazh]
    WHERE  �˻����� = '����'
    UNION
    SELECT DISTINCT ���˴���֤���� ֤������,
                    ���˴��� ����,
                    [dbo].[Regex.replace]('[^\d]*', ���˻��˴����ֻ�, '') �ֻ�����,
                    Ӫҵִ�յ�ַ ���˻�λ��ַ,
                    �˻����� �永�˻�,
                    �永����,
                    ���� �永����
    FROM   [HNXLSYS].[dbo].[tb_sazh]
    WHERE  �˻����� = '��λ'
    SELECT ֤������,
           ����,
           dbo.Stringlistdistinct(String_agg(Isnull(�ֻ�����, 'N/A'), ',')) �ֻ�����,
           dbo.Stringlistdistinct(String_agg(Isnull(���˻�λ��ַ, 'N/A'), ',')) ���˻�λ��ַ,
           dbo.Stringlistdistinct(String_agg(Isnull(�永�˻�, 'N/A'), ',')) �永�˻�,
           dbo.Stringlistdistinct(String_agg(Isnull(�永����, 'N/A'), ',')) �永����,
           dbo.Stringlistdistinct(String_agg(Isnull(�永����, 'N/A'), ',')) �永����
    INTO   [HNXLSYS].[dbo].[tb_red_gr]
    FROM   #tmp1
    WHERE  Len(����) > 1
           AND Len(֤������) > 1
    GROUP  BY ֤������,
              ����
    ORDER  BY ����
    ----�ֻ�������
    SELECT DISTINCT [dbo].[Regex.replace]('[^\d]*', ���˻��˴����ֻ�, '') �ֻ�����,
                    ���� ����,
                    ֤������,
                    Ӫҵִ�յ�ַ ���˻�λ��ַ,
                    �˻����� �永�˻�,
                    �永����,
                    ���� �永����
    INTO   #tmp2
    FROM   [HNXLSYS].[dbo].[tb_sazh]
    WHERE  �˻����� = '����'
           AND Len([dbo].[Regex.replace]('[^\d]*', ���˻��˴����ֻ�, '')) > 1
           AND NOT ���˻��˴����ֻ� IS NULL
    UNION
    SELECT DISTINCT [dbo].[Regex.replace]('[^\d]*', ���˻��˴����ֻ�, '') �ֻ�����,
                    ���˴��� ����,
                    ���˴���֤���� ֤������,
                    Ӫҵִ�յ�ַ ���˻�λ��ַ,
                    �˻����� �永�˻�,
                    �永����,
                    ���� �永����
    FROM   [HNXLSYS].[dbo].[tb_sazh]
    WHERE  �˻����� = '��λ'
           AND Len([dbo].[Regex.replace]('[^\d]*', ���˻��˴����ֻ�, '')) > 1
           AND NOT ���˻��˴����ֻ� IS NULL
    UNION
    SELECT DISTINCT [dbo].[Regex.replace]('[^\d]*', ��ϵ���ֻ�, '') �ֻ�����,
                    ������ϵ�� ����,
                    '������ϵ��' ֤������,
                    Ӫҵִ�յ�ַ ���˻�λ��ַ,
                    �˻����� �永�˻�,
                    �永����,
                    ���� �永����
    FROM   [HNXLSYS].[dbo].[tb_sazh]
    WHERE  �˻����� = '��λ'
           AND Len([dbo].[Regex.replace]('[^\d]*', ��ϵ���ֻ�, '')) > 1
           AND NOT ��ϵ���ֻ� IS NULL
    SELECT �ֻ�����,
           dbo.Stringlistdistinct(String_agg(Isnull(����, 'N/A'), ',')) ����,
           dbo.Stringlistdistinct(String_agg(Isnull(֤������, 'N/A'), ',')) ֤������,
           dbo.Stringlistdistinct(String_agg(Isnull(���˻�λ��ַ, 'N/A'), ',')) ���˻�λ��ַ,
           dbo.Stringlistdistinct(String_agg(Isnull(�永�˻�, 'N/A'), ',')) �永�˻�,
           dbo.Stringlistdistinct(String_agg(Isnull(�永����, 'N/A'), ',')) �永����,
           dbo.Stringlistdistinct(String_agg(Isnull(�永����, 'N/A'), ',')) �永����
    INTO   [HNXLSYS].[dbo].[tb_red_phone]
    FROM   #tmp2
    --WHERE  Len(����) <> 0
    --     AND Len(֤������) <> 0
    GROUP  BY �ֻ�����
    ORDER  BY ����
    SELECT '�����ɵ�λ�����ˡ��ֻ����������ɲ�ѯ�����永�м����Ӧ�ã�' ��Ϣ
  END
go 
��� ! �   �"  �   ;      ��λ��������ѯ n   ���˻�����ϵͳ��ȡ���йؼ����硰���С����Ҳ����ؼ����硰�������С����˻��������ؼ���һ��Ϊ���������ƵĹؼ��֣� b   @��λ֤����!S:@��λ����!S:@���˴�������!S:@���˴���֤����!S:@�永����!S:@��ѯ��ʼ��!N:1@����!N:100 f      060203	    0
    1    1 �  CREATE PROCEDURE P_red_dw_qry(@id_no VARCHAR(20),@acc_name VARCHAR(60),@fr_name VARCHAR(20),@fr_id VARCHAR(20),@sapc VARCHAR(60),@bgn INT,@num INT)
WITH ENCRYPTION
AS
  BEGIN
    IF Object_id(N'hnxlsys.dbo.tb_red_dw1', N'U') IS NOT NULL
      BEGIN
        SELECT TOP (@num) *
        FROM   (SELECT *,
                       Row_number()
                         OVER (
                           ORDER BY ����) AS row
                FROM   hnxlsys.dbo.tb_red_dw) a
        WHERE  row >= @bgn
               AND ( [֤������] LIKE '%' + Isnull(@id_no, '') + '%'
                     AND [����] LIKE '%' + Isnull(@acc_name, '') + '%'
                     AND [���˴���] LIKE '%' + Isnull(@fr_name, '') + '%'
                     AND [���˴���֤����] LIKE '%' + Isnull(@fr_id, '') + '%'
                     AND [�永����] LIKE '%' + Isnull(@sapc, '') + '%' )
      END
    ELSE
      BEGIN
        SELECT '����������������ϵͳ���ɺ�����' ��Ϣ
      END
  END
go 
��� ! �   �"  A   ;      �ֻ���������ѯ 
   ���������� 0   @��ʾ1!��������1:Ĭ��ֵ1@��ʾ2!��������2:Ĭ��ֵ2 h      060204	    0
    1    1 *   CREATE PROCEDURE      AS
BEGIN

END
GO��� ! �   �"  @   ;      ���˺�������ѯ 
   ���������� 0   @��ʾ1!��������1:Ĭ��ֵ1@��ʾ2!��������2:Ĭ��ֵ2 j      060205	    0
    1    1 *   CREATE PROCEDURE      AS
BEGIN

END
GO��� ! �   �"  '   0      .�Ϲ��Լ�� f   �������������п��ܴ����߼������⣬���о�������߷��ռ�⾫�ȣ�ͬʱ���򲻷����߼������жϷ��������⣩      l      0603	    0
    1    1��� ! �   �"     '   $   ��λ��������֤�����Ʋ������Ź��� 4   ��λ���ˡ��ʽ�����˻��ϼ���������֤����ͨ���߼�У�� t   @����У��λ��(2λУ��ʡ��,4λУ��ʡ�ݳ���,6λУ���ؼ�)!S:2@�˻�״̬(1��������,9����)!S:1@�永�˻�(1��,0��,9ȫ��)!S:9 n      060301	    0
    1    1 �  CREATE PROCEDURE P_dw_gr_id_chk(@area_mode CHAR(1),@zh_state CHAR(1),@sazh CHAR(1))
--WITH ENCRYPTION
AS
  BEGIN
      IF Object_id('tempdb..#tmp') IS NOT NULL
        DROP TABLE #tmp
      IF Object_id('tempdb..#tmp1') IS NOT NULL
        DROP TABLE #tmp1
      --DECLARE @area_mode CHAR(1)
      --SET @area_mode = '4'
      --DECLARE @zh_state CHAR(1)
      --SET @zh_state = '1'
      --DECLARE @sazh CHAR(1)
      --SET @sazh = '1'
      IF Object_id(N'tb_rhzh_dw', N'U') IS NULL
        BEGIN
            SELECT '���˻�ϵͳ��λ�˻����ݻ���ҵ���е�λ�˻�����δ����' ע��
        END
      ELSE
        BEGIN
            IF @area_mode <> '2'
               AND @area_mode <> '4'
               AND @area_mode <> '6'
                OR @zh_state <> '1'
                   AND @zh_state <> '9'
                OR @sazh <> '0'
                   AND @sazh <> '1'
                   AND @sazh <> '9'
              BEGIN
                  SELECT '������У��λ��ֻ��Ϊ2��4��6���˻�״ֻ̬��Ϊ1��9���永ֻ��Ϊ0��1��9' ��������
              END
            ELSE
              BEGIN
                  SELECT [���л�������],
                         [�˺�],
                         [�˻�����],
                         [�˻�����],
                         [������ô���],
                         [ע��ص�������],
                         [�˻������ص�������],
                         [��������˻������ص�������],
                         [��������],
                         [��������],
                         [��������],
                         [�˻�״̬],
                         [���������˻���������],
                         [���������˻���������֤�����],
                         CASE
                           WHEN [���������˻���������֤������] = '����֤'
                                AND NOT [���������˻���������֤������] IS NULL THEN dbo.Verifyperid([���������˻���������֤�����], @area_mode)
                           ELSE ''
                         END ���������˻���������֤����Ŵ���,
                         [�ϼ����������˻���������],
                         [�ϼ����������˻�����֤�����],
                         CASE
                           WHEN [�ϼ����������˻�����֤������] = '����֤'
                                AND NOT [�ϼ����������˻�����֤������] IS NULL THEN dbo.Verifyperid([�ϼ����������˻�����֤�����], @area_mode)
                           ELSE ''
                         END �ϼ����������˻�����֤����Ŵ���,
                         [���Ż��ʽ�����˸���������],
                         [���Ż��ʽ������֤�����],
                         CASE
                           WHEN [���Ż��ʽ������֤������] = '����֤'
                                AND NOT [���Ż��ʽ������֤������] IS NULL THEN dbo.Verifyperid([���Ż��ʽ������֤�����], @area_mode)
                           ELSE ''
                         END ���Ż��ʽ������֤����Ŵ���
                  INTO   #tmp1
                  FROM   tb_rhzh_dw
                  WHERE  �˻�״̬ LIKE( CASE
                                      WHEN @zh_state = '1' THEN '����'
                                      WHEN @zh_state = '9' THEN '%'
                                    END )
                          OR �˻�״̬ LIKE( CASE
                                          WHEN @zh_state = '1' THEN '����'
                                          WHEN @zh_state = '9' THEN '%'
                                        END )
                  SELECT a.[���л�������],
                         b.���л�������,
                         [���������˻���������],
                         [���������˻���������֤�����],
                         ���������˻���������֤����Ŵ���,
                         [�ϼ����������˻���������],
                         [�ϼ����������˻�����֤�����],
                         �ϼ����������˻�����֤����Ŵ���,
                         [���Ż��ʽ�����˸���������],
                         [���Ż��ʽ������֤�����],
                         ���Ż��ʽ������֤����Ŵ���,
                         a.[�˺�],
                         [�˻�����],
                         a.[�˻�����],
                         --[������ô���],
                         [ע��ص�������],
                         [�˻������ص�������],
                         [��������˻������ص�������],
                         a.[��������],
                         [��������],
                         [��������],
                         [�˻�״̬],
                         c.���� �永���� --
                  FROM   #tmp1 a
                         LEFT JOIN V_Bank b
                                ON a.���л������� = b.���б�������
                         LEFT JOIN hnxlsys.dbo.tb_sazh c --
                                ON a.�˺� = c.�˺� --
                  WHERE  ( [���������˻���������֤����Ŵ���] <> '��ȷ'
                           AND [���������˻���������֤����Ŵ���] <> ''
                            OR �ϼ����������˻�����֤����Ŵ��� <> '��ȷ'
                               AND �ϼ����������˻�����֤����Ŵ��� <> ''
                            OR ���Ż��ʽ������֤����Ŵ��� <> '��ȷ'
                               AND ���Ż��ʽ������֤����Ŵ��� <> '' )
                         AND CASE --
                               WHEN @sazh = '1'
                                    AND NOT c.�˺� IS NULL THEN '1'
                               WHEN @sazh = '0'
                                    AND c.�˺� IS NULL THEN '0'
                               WHEN @sazh = '9' THEN '9'
                             END = @sazh --
                  ORDER  BY ���л�������,
                            �˻�����
              END
        END
  END
GO ��� ! �   �"  &   '   '   ��λ��������ͬ_���ݺŲ�ͬ��֤�������ƣ� n   ��λ����ͬһ����֤�����벻ͬ�����ƶȺܴ�����һ�������ֻ�漰����������ʱ������ʱ�����ų�����֤��������У�飩 w   @����У��λ��(2λУ��ʡ�ݣ�4λУ��ʡ�ݳ��У�6λУ���ؼ�)!S:2@�˻�״̬(1����������9����)!S:1@�永�˻�(1��,0��,9ȫ��)!S:9 p      060302	    0
    1    1 &$  CREATE PROCEDURE P_dw_gr_samename_simid(@area_mode CHAR(1),@zh_state CHAR(1),@sazh CHAR(1))
WITH ENCRYPTION
AS
  BEGIN
      --DECLARE @zh_state CHAR(1)
      --SET @zh_state = '1'
      --DECLARE @area_mode CHAR(1)
      --SET @area_mode = '2'
      --DECLARE @sazh CHAR(1)
      --SET @sazh = '9'
      IF Object_id('tempdb..#tmp') IS NOT NULL
        DROP TABLE #tmp
      IF Object_id('tempdb..#tmp1') IS NOT NULL
        DROP TABLE #tmp1
      IF Object_id('tempdb..#tmp2') IS NOT NULL
        DROP TABLE #tmp2
      IF Object_id('tempdb..#tmp3') IS NOT NULL
        DROP TABLE #tmp3
      IF Object_id('tempdb..#tmp4') IS NOT NULL
        DROP TABLE #tmp4
      IF Object_id('tempdb..#tmp5') IS NOT NULL
        DROP TABLE #tmp5
      IF Object_id(N'tb_rhzh_dw', N'U') IS NULL
        BEGIN
            SELECT '���˻�ϵͳ��λ�˻����ݻ���ҵ���е�λ�˻�����δ����' ע��
        END
      ELSE
        BEGIN
            IF @zh_state <> '1'
               AND @zh_state <> '9'
                OR @area_mode <> '2'
                   AND @area_mode <> '4'
                   AND @area_mode <> '6'
                OR @sazh <> '1'
                   AND @sazh <> '0'
                   AND @sazh <> '9'
              BEGIN
                  SELECT '������У��λ��ֻ��Ϊ2��4��6���˻�״ֻ̬��Ϊ1��9���永�˻�ֻ��Ϊ1��0��9' ��������
              END
            ELSE
              BEGIN
                  ----����Ϊͬ�������ƶ�
                  --��ȡͬһ���������������ݺŷ���
                  SELECT ���������˻���������,
                         Count(DISTINCT ���������˻���������֤�����) ����
                  INTO   #tmp
                  FROM   tb_rhzh_dw
                  WHERE  ( �˻�״̬ LIKE( CASE
                                        WHEN @zh_state = '1' THEN '����'
                                        WHEN @zh_state = '9' THEN '%'
                                      END )
                            OR �˻�״̬ LIKE( CASE
                                            WHEN @zh_state = '1' THEN '����'
                                            WHEN @zh_state = '9' THEN '%'
                                          END ) )
                         AND ( �˻����� = '����'
                                OR �˻����� = '��ʱ����' )
                  GROUP  BY ���������˻���������
                  HAVING Count(DISTINCT ���������˻���������֤�����) > 1
                  ORDER  BY ���������˻���������
                  --��ȡ������������֤������������ͱ��,ͬʱУ������֤
                  SELECT DISTINCT a.���������˻���������,
                                  b.���������˻���������֤�����,
                                  CASE
                                    WHEN [���������˻���������֤������] = '����֤'
                                         AND NOT [���������˻���������֤������] IS NULL THEN dbo.Verifyperid([���������˻���������֤�����], @area_mode)
                                    ELSE ''
                                  END ���������˻���������֤����Ŵ���
                  INTO   #tmp1
                  FROM   #tmp a
                         LEFT JOIN tb_rhzh_dw b
                                ON a.���������˻��������� = b.���������˻���������
                  WHERE  ( �˻�״̬ LIKE( CASE
                                        WHEN @zh_state = '1' THEN '����'
                                        WHEN @zh_state = '9' THEN '%'
                                      END )
                            OR �˻�״̬ LIKE( CASE
                                            WHEN @zh_state = '1' THEN '����'
                                            WHEN @zh_state = '9' THEN '%'
                                          END ) )
                         AND ( �˻����� = '����'
                                OR �˻����� = '��ʱ����' )
                  ORDER  BY ���������˻���������
                  --��ȡ���ƶȷ����߼���������ź����ݱ��
                  SELECT DISTINCT a.���������˻���������,
                                  a.���������˻���������֤�����                                              ���������˻���������֤�����1,
                                  a.���������˻���������֤����Ŵ���,
                                  b.���������˻���������֤�����                                              ���������˻���������֤�����2,
                                  DBO.Fn_resemble_onebyone(a.���������˻���������֤�����, b.���������˻���������֤�����) һ��һ���ƶ�,
                                  DBO.Fn_resemble_order(a.���������˻���������֤�����, b.���������˻���������֤�����)    ˳�����ƶ�
                  INTO   #tmp2
                  FROM   #tmp1 a
                         INNER JOIN #tmp1 b
                                 ON a.���������˻��������� = b.���������˻���������
                  WHERE  DBO.Fn_resemble_onebyone(a.���������˻���������֤�����, b.���������˻���������֤�����) > 0.8
                         AND DBO.Fn_resemble_onebyone(a.���������˻���������֤�����, b.���������˻���������֤�����) < 1
                  ORDER  BY ���������˻���������
                  --�б��������ƶȵ��˻�
                  SELECT [���л�������],
                         a.���������˻���������,
                         [���������˻���������֤������],
                         a.���������˻���������֤�����,
                         b.���������˻���������֤����Ŵ���,
                         [�˺�],
                         [�˻�����],
                         [�˻�����],
                         [��������],
                         [�˻�״̬],
                         [ע��ص�������],
                         [�˻������ص�������],
                         [��������˻������ص�������],
                         [������ô���],
                         [����Ӫҵִ����Ч��],
                         [ע���ʽ���],
                         [��ַ],
                         [��ϵ�绰]
                  INTO   #tmp3
                  FROM   tb_rhzh_dw a
                         INNER JOIN #tmp2 b
                                 ON a.���������˻��������� = b.���������˻���������
                                    AND a.���������˻���������֤����� = b.���������˻���������֤�����1
                  WHERE  ( �˻�״̬ LIKE( CASE
                                        WHEN @zh_state = '1' THEN '����'
                                        WHEN @zh_state = '9' THEN '%'
                                      END )
                            OR �˻�״̬ LIKE( CASE
                                            WHEN @zh_state = '1' THEN '����'
                                            WHEN @zh_state = '9' THEN '%'
                                          END ) )
                         AND ( �˻����� = '����'
                                OR �˻����� = '��ʱ����' )
                         AND ���������˻���������֤����Ŵ��� = '��ȷ'
                          OR ���������˻���������֤����Ŵ��� = ''
                  ORDER  BY ���������˻���������
                  SELECT ���������˻���������,
                         Count(���������˻���������֤�����) ����
                  INTO   #tmp4
                  FROM   #tmp3
                  GROUP  BY ���������˻���������
                  HAVING Count(DISTINCT ���������˻���������֤�����) > 1
                  ORDER  BY ���������˻���������
                  SELECT b.[���л�������],
                         c.���л�������,
                         a.���������˻���������,
                         [���������˻���������֤������],
                         ���������˻���������֤�����,
                         b.[�˺�],
                         [�˻�����],
                         [�˻�����],
                         b.[��������],
                         [�˻�״̬],
                         [ע��ص�������],
                         [�˻������ص�������],
                         [��������˻������ص�������],
                         [������ô���],
                         [����Ӫҵִ����Ч��],
                         [ע���ʽ���],
                         b.[��ַ],
                         [��ϵ�绰],
                         d.���� �永���� --
                  FROM   #tmp4 a
                         LEFT JOIN #tmp3 b
                                ON a.���������˻��������� = b.���������˻���������
                         LEFT JOIN v_bank c
                                ON b.���л������� = c.���б�������
                         LEFT JOIN hnxlsys.dbo.tb_sazh d --
                                ON b.�˺� = d.�˺� --
                  WHERE  CASE --
                           WHEN @sazh = '1'
                                AND NOT d.�˺� IS NULL THEN '1'
                           WHEN @sazh = '0'
                                AND d.�˺� IS NULL THEN '0'
                           WHEN @sazh = '9' THEN '9'
                         END = @sazh --
                  ORDER  BY a.���������˻���������
              END
        END
  END
GO ��� ! �   �"  $   '   '   ��λ��������ͬ_���ݺŲ�ͬ��֤�����д��� u   ���ڲ���ͬһ������֤ͬ�����ӱ���ͬһ�����жϵ��߼�����֤�����ж�ͬһ���˿��������˻����ù�����2�����Ʋ���������ظ��� p   @����У��λ��(2λУ��ʡ��,4λУ��ʡ�ݳ���,6λУ���ؼ�)!S:2@�˻�״̬(1����,9����)!S:1@�永�˻�(1��,0��,9ȫ��)!S:9 r      060303	    0
    1    1 `  CREATE PROCEDURE P_dw_gr_samename_noid(@area_mode CHAR(1),@zh_state CHAR(1),@sazh CHAR(1))
WITH ENCRYPTION
AS
  BEGIN
      --DECLARE @zh_state CHAR(1);
      --SET @zh_state = '1';
      --DECLARE @area_mode CHAR(1);
      --SET @area_mode = '2';
      IF Object_id('tempdb..#tmp') IS NOT NULL
        DROP TABLE #tmp;
      IF Object_id('tempdb..#tmp1') IS NOT NULL
        DROP TABLE #tmp1;
      IF Object_id('tempdb..#tmp2') IS NOT NULL
        DROP TABLE #tmp2;
      IF Object_id('tempdb..#tmp3') IS NOT NULL
        DROP TABLE #tmp3;
      IF Object_id(N'tb_rhzh_dw', N'U') IS NULL
        BEGIN
            SELECT '���˻�ϵͳ��λ�˻����ݻ���ҵ���е�λ�˻�����δ����' ע��;
        END;
      ELSE
        BEGIN
            IF @zh_state <> '1'
               AND @zh_state <> '9'
                OR @area_mode <> '2'
                   AND @area_mode <> '4'
                   AND @area_mode <> '6'
                OR @sazh <> '1'
                   AND @sazh <> '0'
                   AND @sazh <> '9'
              BEGIN
                  SELECT '������У��λ��ֻ��Ϊ2��4��6���˻�״ֻ̬��Ϊ1��9���永ֻ��Ϊ1��0��9' ��������;
              END;
            ELSE
              BEGIN
                  --��ȡΨһ������֤���ţ�����������ȡ�Ի�������ֻ���������������
                  SELECT DISTINCT ���������˻���������,
                                  ���������˻���������֤�����
                  INTO   #tmp
                  FROM   tb_rhzh_dw
                  WHERE  �˻�״̬ LIKE( CASE
                                      WHEN @zh_state = '1' THEN '����'
                                      WHEN @zh_state = '9' THEN '%'
                                    END )
                         AND ( �˻����� = '����'
                                OR �˻����� = '��ʱ����' );
                  --ͬһ����������������֤������
                  SELECT ���������˻���������,
                         Count(���������˻���������֤�����) ����
                  INTO   #tmp1
                  FROM   #tmp
                  GROUP  BY ���������˻���������
                  HAVING Count(���������˻���������֤�����) > 1
                  ORDER  BY ���������˻���������;
                  --select * from #tmp1
                  --��������������˻���Ϣ������֤������Ϣ����ͬʱУ������֤����
                  SELECT b.[���л�������],
                         a.���������˻���������,
                         b.[���������˻���������֤������],
                         b.���������˻���������֤�����,
                         CASE
                           WHEN [���������˻���������֤������] = '����֤'
                                AND NOT [���������˻���������֤������] IS NULL THEN dbo.Verifyperid([���������˻���������֤�����], @area_mode)
                           ELSE ''
                         END ���������˻���������֤����Ŵ���,
                         [�˺�],
                         [�˻�����],
                         [�˻�����],
                         [��������],
                         [�˻�״̬],
                         [ע��ص�������],
                         [�˻������ص�������],
                         [��������˻������ص�������],
                         [������ô���],
                         [����Ӫҵִ����Ч��],
                         [ע���ʽ���],
                         [��ַ],
                         [��ϵ�绰]
                  INTO   #tmp2
                  FROM   #tmp1 a
                         LEFT JOIN tb_rhzh_dw b
                                ON a.���������˻��������� = b.���������˻���������
                  WHERE  �˻�״̬ LIKE( CASE
                                      WHEN @zh_state = '1' THEN '����'
                                      WHEN @zh_state = '9' THEN '%'
                                    END )
                         AND ( �˻����� = '����'
                                OR �˻����� = '��ʱ����' )
                  ORDER  BY ���������˻���������;
                  --�������֤�������������֤�����಻������֤������
                  SELECT DISTINCT ���������˻���������,
                                  ���������˻���������֤����Ŵ���
                  INTO   #tmp3
                  FROM   #tmp2
                  WHERE  ���������˻���������֤����Ŵ��� <> '��ȷ'
                  --select * from #tmp3
                  --ֻ��ʾ�������˻�
                  SELECT [���л�������],
                         c.���л�������,
                         a.���������˻���������,
                         [���������˻���������֤������],
                         ���������˻���������֤�����,
                         b.���������˻���������֤����Ŵ���,
                         b.[�˺�],
                         [�˻�����],
                         [�˻�����],
                         b.[��������],
                         [�˻�״̬],
                         [ע��ص�������],
                         [�˻������ص�������],
                         [��������˻������ص�������],
                         [������ô���],
                         [����Ӫҵִ����Ч��],
                         [ע���ʽ���],
                         b.[��ַ],
                         [��ϵ�绰],
                         d.���� �永���� --
                  FROM   #tmp3 a
                         LEFT JOIN #tmp2 b
                                ON a.���������˻��������� = b.���������˻���������
                         LEFT JOIN v_bank c
                                ON b.���л������� = c.���б�������
                         LEFT JOIN hnxlsys.dbo.tb_sazh d --
                                ON b.�˺� = d.�˺� --
                  WHERE  CASE --
                           WHEN @sazh = '1'
                                AND NOT d.�˺� IS NULL THEN '1'
                           WHEN @sazh = '0'
                                AND d.�˺� IS NULL THEN '0'
                           WHEN @sazh = '9' THEN '9'
                         END = @sazh --
                  ORDER  BY ���������˻���������
              END;
        END;
  END;
GO��� ! �   �"     '      ��λ����֤ͬ���ŵ�������ͬ R   ֤������ͬ���˴���������ͬ����ҪѰ�Ҳ���С����¼�������������Ҫ�漰�����˻��� 6   @�˻�״̬(1����,9����)!S:1@�永�˻�(1��,0��,9ȫ��)!S:9 t      060304	    0
    1    1   CREATE PROCEDURE P_dw_gr_sameid_noname(@zh_state CHAR(1),@sazh CHAR(1))
WITH ENCRYPTION
AS
  BEGIN
      --DECLARE @zh_state CHAR(1);
      --SET @zh_state = '9';
      IF Object_id('tempdb..#tmp') IS NOT NULL
        DROP TABLE #tmp;
      IF Object_id('tempdb..#tmp1') IS NOT NULL
        DROP TABLE #tmp1;
      IF Object_id(N'tb_rhzh_dw', N'U') IS NULL
        BEGIN
            SELECT '���˻�ϵͳ��λ�˻����ݻ���ҵ���е�λ�˻�����δ����' ע��;
        END;
      ELSE
        BEGIN
            IF @zh_state <> '1'
               AND @zh_state <> '9'
                OR @sazh <> '1'
                   AND @sazh <> '0'
                   AND @sazh <> '9'
              BEGIN
                  SELECT '���˻�״ֻ̬��Ϊ1��9���永ֻ��Ϊ1��0��9' ��������;
              END;
            ELSE
              BEGIN
                  SELECT DISTINCT ���������˻���������,
                                  ���������˻���������֤�����
                  INTO   #tmp
                  FROM   tb_rhzh_dw
                  WHERE  �˻�״̬ LIKE( CASE
                                      WHEN @zh_state = '1' THEN '����'
                                      WHEN @zh_state = '9' THEN '%'
                                    END )
                         AND ( �˻����� = '����'
                                OR �˻����� = '��ʱ����' );
                  SELECT ���������˻���������֤�����,
                         Count(���������˻���������) ����
                  INTO   #tmp1
                  FROM   #tmp
                  GROUP  BY ���������˻���������֤�����
                  --���������˻���������
                  HAVING Count(���������˻���������) > 1
                  ORDER  BY ���������˻���������֤�����;
                  SELECT b.[���л�������],
                         c.���л�������,
                         a.���������˻���������֤�����,
                         b.[���������˻���������֤������],
                         b.���������˻���������,
                         b.[�˺�],
                         [�˻�����],
                         [�˻�����],
                         b.[��������],
                         [�˻�״̬],
                         [ע��ص�������],
                         [�˻������ص�������],
                         [��������˻������ص�������],
                         [������ô���],
                         [����Ӫҵִ����Ч��],
                         [ע���ʽ���],
                         b.[��ַ],
                         [��ϵ�绰],
                         d.���� �永���� --
                  FROM   #tmp1 a
                         LEFT JOIN tb_rhzh_dw b
                                ON a.���������˻���������֤����� = b.���������˻���������֤�����
                         LEFT JOIN v_bank c
                                ON b.���л������� = c.���б�������
                         LEFT JOIN hnxlsys.dbo.tb_sazh d --
                                ON b.�˺� = d.�˺� --
                  WHERE  �˻�״̬ LIKE( CASE
                                      WHEN @zh_state = '1' THEN '����'
                                      WHEN @zh_state = '9' THEN '%'
                                    END )
                         AND ( �˻����� = '����'
                                OR �˻����� = '��ʱ����' )
                         AND CASE --
                               WHEN @sazh = '1'
                                    AND NOT d.�˺� IS NULL THEN '1'
                               WHEN @sazh = '0'
                                    AND d.�˺� IS NULL THEN '0'
                               WHEN @sazh = '9' THEN '9'
                             END = @sazh --
                  ORDER  BY ���������˻���������֤�����;
              END;
        END;
  END;
GO ��� ! �   �"  !   '      ��λ���˷�����֤�˻� L   �г�����֤����������֤���˻�����Ҫʱ�����Ų飨ֻ�漰����������ʱ������ʱ���� :   @�˻�״̬(1��������,9����)!S:1@�永�˻�(1��,0��,9ȫ��)!S:9 v      060305	    0
    1    1 ]  CREATE PROCEDURE P_dw_gr_id_no_card(@zh_state CHAR(1),@sazh CHAR(1))
WITH ENCRYPTION
AS
  BEGIN
      IF Object_id('tempdb..#tmp') IS NOT NULL
        DROP TABLE #tmp;
      IF Object_id('tempdb..#tmp1') IS NOT NULL
        DROP TABLE #tmp1;
      IF Object_id(N'tb_rhzh_dw', N'U') IS NULL
        BEGIN
            SELECT '���˻�ϵͳ��λ�˻����ݻ���ҵ���е�λ�˻�����δ����' ע��;
        END;
      ELSE
        BEGIN
            IF @zh_state <> '1'
               AND @zh_state <> '9'
                OR @sazh <> '1'
                   AND @sazh <> '0'
                   AND @sazh <> '9'
              BEGIN
                  SELECT '���˻�״ֻ̬��Ϊ1��9�永ֻ��Ϊ1��0��9' ��������;
              END;
            ELSE
              BEGIN
                  SELECT a.[���л�������],
                         b.���л�������,
                         [���������˻���������],
                         [���������˻���������֤������],
                         [���������˻���������֤�����],
                         a.[�˺�],
                         [�˻�����],
                         [�˻�����],
                         --  [������ô���],
                         [ע��ص�������],
                         [�˻������ص�������],
                         [��������˻������ص�������],
                         a.[��������],
                         [��������],
                         [��������],
                         [�˻�״̬],
                         [�ϼ����������˻���������],
                         [�ϼ����������˻�����֤�����],
                         [���Ż��ʽ�����˸���������],
                         [���Ż��ʽ������֤�����],
                         c.���� �永���� --
                  FROM   tb_rhzh_dw a
                         LEFT JOIN V_Bank b
                                ON a.���л������� = b.���б�������
                         LEFT JOIN hnxlsys.dbo.tb_sazh c --
                                ON a.�˺� = c.�˺� --
                  WHERE  [���������˻���������֤������] <> '����֤'
                         AND ( �˻�״̬ LIKE( CASE
                                            WHEN @zh_state = '1' THEN '����'
                                            WHEN @zh_state = '9' THEN '%'
                                          END )
                                OR �˻�״̬ LIKE( CASE
                                                WHEN @zh_state = '1' THEN '����'
                                                WHEN @zh_state = '9' THEN '%'
                                              END ) )
                         AND ( �˻����� = '����'
                                OR �˻����� = '��ʱ����' )
                         AND CASE --
                               WHEN @sazh = '1'
                                    AND NOT c.�˺� IS NULL THEN '1'
                               WHEN @sazh = '0'
                                    AND c.�˺� IS NULL THEN '0'
                               WHEN @sazh = '9' THEN '9'
                             END = @sazh --
                  ORDER  BY ���л�������,
                            �˻�����;
              --OR (NOT [���Ż��ʽ������֤������] IS NULL
              --  AND [�ϼ����������˻�����֤������] <> '����֤')
              --OR [���Ż��ʽ������֤������] <> '����֤'
              END;
        END;
  END;
GO ��� ! �   �"     '      ��λ�˻��������Ʋ��ϳ���x    �˻����ƿ��ɣ���Ҫ���㷨�� 0   @��ʾ1!��������1:Ĭ��ֵ1@��ʾ2!��������2:Ĭ��ֵ2 x      060306	    0
    0    1 *   CREATE PROCEDURE      AS
BEGIN

END
GO��� ! �   �"     '      ��λ�˻�������֤���Ų�һ��x .   ͬһ�˻�����֤���Ų�һ�»�ͬһ֤�������Ʋ�һ�� 0   @��ʾ1!��������1:Ĭ��ֵ1@��ʾ2!��������2:Ĭ��ֵ2 z      060307	    0
    0    1 *   CREATE PROCEDURE      AS
BEGIN

END
GO��� ! �   �"     '      ��λͬһ֤���Ų�ͬ�����˻�x           |      060308	    0
    0    1 *   CREATE PROCEDURE      AS
BEGIN

END
GO��� ! �   �"  (   0      .��λ�˻����ռ��           �      0604	    0
    1    1��� ! �   �"  /   (       ���ط��˶�绰����ڶ�ע��򿪻� �   ����Ϊ������ʱ������Ƶ��ע����ҵ�����ע���Ӫʵ����ɣ�Ϊ�����˻�ʱ����Ϊ�����ڿ��������˻�����һ�����ɡ�����������Ϊ�ϴ���ֵ������Ϊ�����Ƕ��ڡ��˻�������Ϊ0����ɸ�����С� �   @��ʼ��!D:20210101@������!D:20210304@�˻�����(1��������ʱ����,9����)!S:9@�˻�״̬(1�����;���,9����)!S:1@��С����!N:0@�������!N:200@���䷶Χ(1С����С,2�������,3��С֮��)!S:3@ɸѡ(1�˻���,2�绰��)!S:1@����!N:5@����!N:100@�̻�λ��!N:7 �      060401	    0
    1    1 �1  CREATE PROCEDURE P_dw_bdgr_neardayzh(@bgn_date CHAR(8),@end_date CHAR(8),@zh_xz CHAR(1),@zh_state CHAR(1),@min_age INT,@max_age INT,@age_state CHAR(1),@fr_or_zh CHAR(1),@zh_count INT,@days INT,@len INT)
WITH ENCRYPTION
AS
  BEGIN
    --���ظ����˶����ڶ࿪��
    IF Object_id('tempdb..#tmp') IS NOT NULL
      DROP TABLE #tmp
    IF Object_id('tempdb..#tmp_cnt') IS NOT NULL
      DROP TABLE #tmp_cnt
    IF Object_id('tempdb..#tmp1') IS NOT NULL
      DROP TABLE #tmp1
    IF Object_id('tempdb..#tmp11') IS NOT NULL
      DROP TABLE #tmp11
    IF Object_id('tempdb..#tmp2') IS NOT NULL
      DROP TABLE #tmp2
    IF Object_id('tempdb..#tmp22') IS NOT NULL
      DROP TABLE #tmp22
    IF Object_id('tempdb..#tmp3') IS NOT NULL
      DROP TABLE #tmp3
    IF Object_id('tempdb..#tmp33') IS NOT NULL
      DROP TABLE #tmp33
    IF Object_id('tempdb..#tmp4') IS NOT NULL
      DROP TABLE #tmp4
    IF Object_id('tempdb..#tmp44') IS NOT NULL
      DROP TABLE #tmp44
    IF Object_id('tempdb..#tmp5') IS NOT NULL
      DROP TABLE #tmp5
    IF Object_id('tempdb..#tmp55') IS NOT NULL
      DROP TABLE #tmp55
    IF Object_id('tempdb..#tmp_all') IS NOT NULL
      DROP TABLE #tmp_all
    --IF Object_id('tempdb..#tmp_end') IS NOT NULL
    --DROP TABLE #tmp_end
    --DECLARE @bgn_date CHAR(8) --���ݿ�ʼ����
    --SET @bgn_date = '20210201'
    --DECLARE @end_date CHAR(8) --���ݽ�������
    --SET @end_date = '20210210'
    --DECLARE @zh_xz CHAR(1) --�˻����� 1������ʱ��9ȫ��
    --SET @zh_xz = '9'
    --DECLARE @zh_state CHAR(1) --�˻�״̬ 1���� 9ȫ������������
    --SET @zh_state = '1'
    --DECLARE @zh_count INT--�˻�����
    --SET @zh_count = 3
    --DECLARE @days INT --���ڵ�����
    --SET @days = 100
    --DECLARE @Min_age INT --��С����
    --SET @Min_age = 18
    --DECLARE @Max_age INT --�������
    --SET @Max_age = 35
    --DECLARE @age_state CHAR(1) --���䷶Χ1С����С��2�������3��С���֮��
    --SET @age_state = '3'
    --DECLARE @len INT --�̶��绰λ��
    --SET @len=7
    --DECLARE @fr_or_zh CHAR(1) --ɸѡ�˻����ǵ绰
    --SET @fr_or_zh ='1'
    --DECLARE @sazh CHAR(1)
    --SET @sazh ='9'
    IF Object_id(N'tb_rhzh_dw', N'U') IS NULL
        OR Object_id(N'hnxlsys.dbo.tb_red_gr', N'U') IS NULL
      BEGIN
        SELECT '���˻�ϵͳ�����˻�����δ�����δ���ɺ�������Ϣ����' ע��
      END
    ELSE
      BEGIN
        IF @zh_state <> '1'
           AND @zh_state <> '9'
            OR @zh_xz <> '1'
               AND @zh_xz <> '9'
            OR @age_state <> '1'
               AND @age_state <> '2'
               AND @age_state <> '3'
            OR @fr_or_zh <> '1'
               AND @fr_or_zh <> '2'
          BEGIN
            SELECT '���˻�����ֻ��Ϊ1��9���˻�״ֻ̬��Ϊ1��9�����䷶Χ����ֻ��Ϊ1��2��3��ɸѡ����ֻ��Ϊ1��2' ��������
          END
        ELSE
          BEGIN
            --��ȡʡ�������������˻�ϵͳ�������ձ���Ϊʶ�𱾵ظ���
            SELECT DISTINCT LEFT(����, 2) ��������,
                            �˻�����
            INTO   #tmp1
            FROM   [HNXLSYS].[dbo].[AreaCodeOldNew]
            WHERE  NOT �˻����� IS NULL
            ORDER  BY �˻�����
            --��ȡ���������ĸ����˻�����һ���ٷ���
            SELECT ���,
                   ��� �������,----�������ȡ���ֵ�����Ϊidenty������update
                   [���л�������],
                   [�˺�],
                   [�˻�����],
                   [������ô���],
                   [����Ӫҵִ����Ч��],
                   ���������˻���������,
                   [���������˻���������֤������],
                   ���������˻���������֤�����,
                   [��ϵ�绰],
                   dbo.F_delete_head([��ϵ�绰], '0') �绰����,--��ú������ǰ��0
                   [�˻�����],
                   [�˻�״̬],
                   [��������],
                   [��������],
                   [��������],
                   [ע��ص�������],
                   [�˻������ص�������],
                   [��������˻������ص�������],
                   [��ַ],
                   [ע���ʽ���]
            INTO   #tmp
            FROM   tb_rhzh_dw a
                   LEFT JOIN #tmp1 b
                          ON LEFT(a.[�˻������ص�������], 4) = b.�˻����� --�˻���������
            WHERE  �������� >= @bgn_date
                   AND �������� <= @end_date
                   AND ( @zh_state = '1'
                         AND �������� IS NULL
                          OR @zh_state = '9' )
                   AND ( @zh_xz = '1'
                         AND ( �˻����� LIKE '����%'
                                OR �˻����� LIKE '��ʱ����%' )
                          OR @zh_xz = '9' )
                   AND ( [���������˻���������֤������] <> '����֤'
                          OR [���������˻���������֤������] = '����֤'
                             AND LEFT(a.���������˻���������֤�����, 2) = b.�������� ) --������Ϣ
            ORDER  BY a.���������˻���������֤�����
            --RETURN    
            ----������֤ͬ���ű��ͬһ��ţ���С��ţ��������������֤�ű��ͬһ���
            ----ȡ��ÿ����֤ͬ���ŵ���С���
            SELECT Min(���) ��С���,--����֤�����ͬ���˻�����ű����ͬ����С���
                   ���������˻���������֤�����,
                   Count(���������˻���������֤�����) ����
            INTO   #tmp11
            FROM   #tmp
            GROUP  BY ���������˻���������֤�����
            HAVING Count(���������˻���������֤�����) > 1
            ORDER  BY ���������˻���������֤�����
            --��֤����ͬ��������Ź�Ϊһ��	
            UPDATE a
            SET    a.������� = b.��С���
            FROM   #tmp a
                   INNER JOIN #tmp11 b
                           ON a.���������˻���������֤����� = b.���������˻���������֤�����
            ---------------------------------------------------------------------------------------------
            ----����Ϊͬ�������ƶ�
            --��ȡͬһ���������������ݺŷ��ˣ� ͬһ������ͬ����֤��ŵ�Ӧ�������ƶȣ���Ϊ���ƶȽӽ���ӦΪͬһ���ˣ������ǵı�����һ��
            SELECT ���������˻���������,
                   Count(DISTINCT ���������˻���������֤�����) ����
            INTO   #tmp22
            FROM   #tmp
            GROUP  BY ���������˻���������
            HAVING Count(DISTINCT ���������˻���������֤�����) > 1
            ORDER  BY ���������˻���������
            --��ȡ������������֤������������ͱ��
            SELECT DISTINCT a.���������˻���������,
                            b.���������˻���������֤�����,
                            b.�������
            INTO   #tmp33
            FROM   #tmp22 a
                   LEFT JOIN #tmp b
                          ON a.���������˻��������� = b.���������˻���������
            ORDER  BY ���������˻���������
            ----��ȡ���ƶȷ����߼���������ź����ݱ��
            SELECT DISTINCT a.�������,
                            a.���������˻���������,
                            a.���������˻���������֤����� ����֤�����1,
                            b.���������˻���������֤����� ����֤�����2,
                            DBO.Fn_resemble_onebyone(a.���������˻���������֤�����, b.���������˻���������֤�����) һ��һ���ƶ�
            INTO   #tmp44
            FROM   #tmp33 a
                   INNER JOIN #tmp33 b
                           ON a.���������˻��������� = b.���������˻���������
            WHERE  DBO.Fn_resemble_onebyone(a.���������˻���������֤�����, b.���������˻���������֤�����) > 0.8
                   AND DBO.Fn_resemble_onebyone(a.���������˻���������֤�����, b.���������˻���������֤�����) < 1
            ORDER  BY ���������˻���������
            --SELECT *
            --FROM   #tmp44
            --ORDER  BY ���������
            --RETURN
            ----��ȡ���ƶ���С�������
            SELECT ���������˻���������,
                   Min(�������) ��С�������
            INTO   #tmp55
            FROM   #tmp44
            GROUP  BY ���������˻���������
            --select * from #tmp55 order by ���������
            --return
            --����#tmp44,������Ŷ������С��ţ�����������#tmp
            UPDATE a
            SET    a.������� = b.��С�������
            FROM   #tmp44 a
                   LEFT JOIN #tmp55 b
                          ON a.���������˻��������� = b.���������˻���������
            ------���»��������������������Ÿ���
            UPDATE a
            SET    a.������� = b.�������
            FROM   #tmp a
                   INNER JOIN #tmp44 b
                           ON a.���������˻��������� = b.���������˻���������
                              AND a.���������˻���������֤����� = b.����֤�����1
            WHERE  a.������� > b.�������
            -----Ū����ʱ�����ڲ��Ժ���Ĵ���
            --      SELECT *
            --into tmp
            --      FROM   #tmp
            --      ORDER  BY �������
            --------------------------------------------------------------------------------------------
            --ͬһ������Ŷ���ӵ���˻�����
            SELECT ff.�绰����,
                   ff.�����˻�����,
                   --dbo.Fn_getage(a.���������˻���������֤�����, a.��������) ��������,
                   CASE
                     WHEN [���������˻���������֤������] = '����֤' THEN dbo.Fn_getage(a.���������˻���������֤�����, a.��������)
                     ELSE NULL
                   END ��������,
                   a.*
            INTO   #tmp_all
            FROM   #tmp A
                   OUTER APPLY (SELECT Count(*) �����˻�����,
                                       Count(DISTINCT �绰����) �绰����
                                FROM   #tmp B
                                WHERE  a.������� = b.�������
                                       AND Abs(Datediff(day, CONVERT(DATE, a.��������), CONVERT(DATE, b.��������))) <= @days) AS FF
            ORDER  BY �������,
                      ��������
            ----select * from #tmp_all order by ���������
            ------RETURN
            -------------------------------------------------------------------------
            SELECT a.[���л�������],
                   d.���л�������,
                   a.[�˺�],
                   a.[�˻�����],
                   a.[������ô���],
                   a.[����Ӫҵִ����Ч��],
                   a.���������˻���������,
                   a.[���������˻���������֤������],
                   a.���������˻���������֤�����,
                   a.[��ϵ�绰],
                   a.�����˻�����,
                   a.�绰����,
                   b.�永���� ֤���永����,
                   c.�永���� �ֻ��永����,
                   a.�������� ���˿�������,
                   [�˻�����],
                   [�˻�״̬],
                   [��������],
                   [��������],
                   [��������],
                   a.[ע��ص�������],
                   a.[�˻������ص�������],
                   a.[��������˻������ص�������],
                   a.[��ַ],
                   a.[ע���ʽ���]
            --INTO #tmp_end
            FROM   #tmp_all a --
                   LEFT JOIN hnxlsys.dbo.tb_red_gr b --
                          ON a. ���������˻���������֤����� = b.֤������ --
                   LEFT JOIN hnxlsys.dbo.tb_red_phone c --
                          ON a.�绰���� = c.[�ֻ�����] --
                   LEFT JOIN V_Bank d
                          ON a.[���л�������] = d.���б�������
            WHERE  ( �������� IS NULL
                      OR �������� <= ( CASE
                                     WHEN @age_state = '1' THEN @Min_age
                                     WHEN @age_state = '2' THEN 10000
                                     WHEN @age_state = '3' THEN @max_age
                                   END )
                         AND �������� >= ( CASE
                                         WHEN @age_state = '1' THEN-10000
                                         WHEN @age_state = '2' THEN @max_age
                                         WHEN @age_state = '3' THEN @min_age
                                       END ) )
                   AND CASE
                         WHEN @fr_or_zh = '1' THEN �����˻�����
                         WHEN @fr_or_zh = '2' THEN �绰����
                       END >= @zh_count
            ORDER  BY �������,
                      ��������
          END
      END
  END
GO 
��� ! �   �"  #   (       ��ط��˶�绰����ڶ�ע��򿪻� �   ����Ϊ������ʱ������Ƶ��ע����ҵ�����ע���Ӫʵ����ɣ�Ϊ�����˻�ʱ����Ϊ�����ڿ��������˻�����һ�����ɡ�����������Ϊ�ϴ���ֵ������Ϊ�����Ƕ��ڡ��˻�������Ϊ01����ɸ�����С� �   @��ʼ��!D:20210101@������!D:20210304@�˻�����(1��������ʱ����,9����)!S:9@�˻�״̬(1�����;���,9����)!S:1@��С����!N:0@�������!N:200@���䷶Χ(1С����С,2�������,3��С֮��)!S:3@ɸѡ(1�˻���,2�绰��)!S:1@����!N:5@����!N:100@�̻�λ��!N:7 �      060402	    0
    1    1 �1  CREATE PROCEDURE P_dw_ydgr_neardayzh(@bgn_date CHAR(8),@end_date CHAR(8),@zh_xz CHAR(1),@zh_state CHAR(1),@min_age INT,@max_age INT,@age_state CHAR(1),@fr_or_zh CHAR(1),@zh_count INT,@days INT,@len INT)
WITH ENCRYPTION
AS
  BEGIN
    --���ظ����˶����ڶ࿪��
    IF Object_id('tempdb..#tmp') IS NOT NULL
      DROP TABLE #tmp
    IF Object_id('tempdb..#tmp_cnt') IS NOT NULL
      DROP TABLE #tmp_cnt
    IF Object_id('tempdb..#tmp1') IS NOT NULL
      DROP TABLE #tmp1
    IF Object_id('tempdb..#tmp11') IS NOT NULL
      DROP TABLE #tmp11
    IF Object_id('tempdb..#tmp2') IS NOT NULL
      DROP TABLE #tmp2
    IF Object_id('tempdb..#tmp22') IS NOT NULL
      DROP TABLE #tmp22
    IF Object_id('tempdb..#tmp3') IS NOT NULL
      DROP TABLE #tmp3
    IF Object_id('tempdb..#tmp33') IS NOT NULL
      DROP TABLE #tmp33
    IF Object_id('tempdb..#tmp4') IS NOT NULL
      DROP TABLE #tmp4
    IF Object_id('tempdb..#tmp44') IS NOT NULL
      DROP TABLE #tmp44
    IF Object_id('tempdb..#tmp5') IS NOT NULL
      DROP TABLE #tmp5
    IF Object_id('tempdb..#tmp55') IS NOT NULL
      DROP TABLE #tmp55
    IF Object_id('tempdb..#tmp_all') IS NOT NULL
      DROP TABLE #tmp_all
    --IF Object_id('tempdb..#tmp_end') IS NOT NULL
    --DROP TABLE #tmp_end
    --DECLARE @bgn_date CHAR(8) --���ݿ�ʼ����
    --SET @bgn_date = '20210201'
    --DECLARE @end_date CHAR(8) --���ݽ�������
    --SET @end_date = '20210210'
    --DECLARE @zh_xz CHAR(1) --�˻����� 1������ʱ��9ȫ��
    --SET @zh_xz = '9'
    --DECLARE @zh_state CHAR(1) --�˻�״̬ 1���� 9ȫ������������
    --SET @zh_state = '1'
    --DECLARE @zh_count INT--�˻�����
    --SET @zh_count = 3
    --DECLARE @days INT --���ڵ�����
    --SET @days = 100
    --DECLARE @Min_age INT --��С����
    --SET @Min_age = 18
    --DECLARE @Max_age INT --�������
    --SET @Max_age = 35
    --DECLARE @age_state CHAR(1) --���䷶Χ1С����С��2�������3��С���֮��
    --SET @age_state = '3'
    --DECLARE @len INT --�̶��绰λ��
    --SET @len=7
    --DECLARE @fr_or_zh CHAR(1) --ɸѡ�˻����ǵ绰
    --SET @fr_or_zh ='1'
    --DECLARE @sazh CHAR(1)
    --SET @sazh ='9'
    IF Object_id(N'tb_rhzh_dw', N'U') IS NULL
        OR Object_id(N'hnxlsys.dbo.tb_red_gr', N'U') IS NULL
      BEGIN
        SELECT '���˻�ϵͳ�����˻�����δ�����δ���ɺ�������Ϣ����' ע��
      END
    ELSE
      BEGIN
        IF @zh_state <> '1'
           AND @zh_state <> '9'
            OR @zh_xz <> '1'
               AND @zh_xz <> '9'
            OR @age_state <> '1'
               AND @age_state <> '2'
               AND @age_state <> '3'
            OR @fr_or_zh <> '1'
               AND @fr_or_zh <> '2'
          BEGIN
            SELECT '���˻�����ֻ��Ϊ1��9���˻�״ֻ̬��Ϊ1��9�����䷶Χ����ֻ��Ϊ1��2��3��ɸѡ����ֻ��Ϊ1��2' ��������
          END
        ELSE
          BEGIN
            --��ȡʡ�������������˻�ϵͳ�������ձ���Ϊʶ�𱾵ظ���
            SELECT DISTINCT LEFT(����, 2) ��������,
                            �˻�����
            INTO   #tmp1
            FROM   [HNXLSYS].[dbo].[AreaCodeOldNew]
            WHERE  NOT �˻����� IS NULL
            ORDER  BY �˻�����
            --��ȡ���������ĸ����˻�����һ���ٷ���
            SELECT ���,
                   ��� �������,----�������ȡ���ֵ�����Ϊidenty������update
                   [���л�������],
                   [�˺�],
                   [�˻�����],
                   [������ô���],
                   [����Ӫҵִ����Ч��],
                   ���������˻���������,
                   [���������˻���������֤������],
                   ���������˻���������֤�����,
                   [��ϵ�绰],
                   dbo.F_delete_head([��ϵ�绰], '0') �绰����,--��ú������ǰ��0
                   [�˻�����],
                   [�˻�״̬],
                   [��������],
                   [��������],
                   [��������],
                   [ע��ص�������],
                   [�˻������ص�������],
                   [��������˻������ص�������],
                   [��ַ],
                   [ע���ʽ���]
            INTO   #tmp
            FROM   tb_rhzh_dw a
                   LEFT JOIN #tmp1 b
                          ON LEFT(a.[�˻������ص�������], 4) = b.�˻����� --�˻���������
            WHERE  �������� >= @bgn_date
                   AND �������� <= @end_date
                   AND ( @zh_state = '1'
                         AND �������� IS NULL
                          OR @zh_state = '9' )
                   AND ( @zh_xz = '1'
                         AND ( �˻����� LIKE '����%'
                                OR �˻����� LIKE '��ʱ����%' )
                          OR @zh_xz = '9' )
                   AND ( [���������˻���������֤������] <> '����֤'
                          OR [���������˻���������֤������] = '����֤'
                             AND LEFT(a.���������˻���������֤�����, 2) <> b.�������� ) --������Ϣ
            ORDER  BY a.���������˻���������֤�����
            --RETURN    
            ----������֤ͬ���ű��ͬһ��ţ���С��ţ��������������֤�ű��ͬһ���
            ----ȡ��ÿ����֤ͬ���ŵ���С���
            SELECT Min(���) ��С���,--����֤�����ͬ���˻�����ű����ͬ����С���
                   ���������˻���������֤�����,
                   Count(���������˻���������֤�����) ����
            INTO   #tmp11
            FROM   #tmp
            GROUP  BY ���������˻���������֤�����
            HAVING Count(���������˻���������֤�����) > 1
            ORDER  BY ���������˻���������֤�����
            --��֤����ͬ��������Ź�Ϊһ��	
            UPDATE a
            SET    a.������� = b.��С���
            FROM   #tmp a
                   INNER JOIN #tmp11 b
                           ON a.���������˻���������֤����� = b.���������˻���������֤�����
            ---------------------------------------------------------------------------------------------
            ----����Ϊͬ�������ƶ�
            --��ȡͬһ���������������ݺŷ��ˣ� ͬһ������ͬ����֤��ŵ�Ӧ�������ƶȣ���Ϊ���ƶȽӽ���ӦΪͬһ���ˣ������ǵı�����һ��
            SELECT ���������˻���������,
                   Count(DISTINCT ���������˻���������֤�����) ����
            INTO   #tmp22
            FROM   #tmp
            GROUP  BY ���������˻���������
            HAVING Count(DISTINCT ���������˻���������֤�����) > 1
            ORDER  BY ���������˻���������
            --��ȡ������������֤������������ͱ��
            SELECT DISTINCT a.���������˻���������,
                            b.���������˻���������֤�����,
                            b.�������
            INTO   #tmp33
            FROM   #tmp22 a
                   LEFT JOIN #tmp b
                          ON a.���������˻��������� = b.���������˻���������
            ORDER  BY ���������˻���������
            ----��ȡ���ƶȷ����߼���������ź����ݱ��
            SELECT DISTINCT a.�������,
                            a.���������˻���������,
                            a.���������˻���������֤����� ����֤�����1,
                            b.���������˻���������֤����� ����֤�����2,
                            DBO.Fn_resemble_onebyone(a.���������˻���������֤�����, b.���������˻���������֤�����) һ��һ���ƶ�
            INTO   #tmp44
            FROM   #tmp33 a
                   INNER JOIN #tmp33 b
                           ON a.���������˻��������� = b.���������˻���������
            WHERE  DBO.Fn_resemble_onebyone(a.���������˻���������֤�����, b.���������˻���������֤�����) > 0.8
                   AND DBO.Fn_resemble_onebyone(a.���������˻���������֤�����, b.���������˻���������֤�����) < 1
            ORDER  BY ���������˻���������
            --SELECT *
            --FROM   #tmp44
            --ORDER  BY ���������
            --RETURN
            ----��ȡ���ƶ���С�������
            SELECT ���������˻���������,
                   Min(�������) ��С�������
            INTO   #tmp55
            FROM   #tmp44
            GROUP  BY ���������˻���������
            --select * from #tmp55 order by ���������
            --return
            --����#tmp44,������Ŷ������С��ţ�����������#tmp
            UPDATE a
            SET    a.������� = b.��С�������
            FROM   #tmp44 a
                   LEFT JOIN #tmp55 b
                          ON a.���������˻��������� = b.���������˻���������
            ------���»��������������������Ÿ���
            UPDATE a
            SET    a.������� = b.�������
            FROM   #tmp a
                   INNER JOIN #tmp44 b
                           ON a.���������˻��������� = b.���������˻���������
                              AND a.���������˻���������֤����� = b.����֤�����1
            WHERE  a.������� > b.�������
            -----Ū����ʱ�����ڲ��Ժ���Ĵ���
            --      SELECT *
            --into tmp
            --      FROM   #tmp
            --      ORDER  BY �������
            --------------------------------------------------------------------------------------------
            --ͬһ������Ŷ���ӵ���˻�����
            SELECT ff.�绰����,
                   ff.�����˻�����,
                   CASE
                     WHEN [���������˻���������֤������] = '����֤' THEN dbo.Fn_getage(a.���������˻���������֤�����, a.��������)
                     ELSE NULL
                   END ��������,
                   a.*
            INTO   #tmp_all
            FROM   #tmp A
                   OUTER APPLY (SELECT Count(*) �����˻�����,
                                       Count(DISTINCT �绰����) �绰����
                                FROM   #tmp B
                                WHERE  a.������� = b.�������
                                       AND Abs(Datediff(day, CONVERT(DATE, a.��������), CONVERT(DATE, b.��������))) <= @days) AS FF
            ORDER  BY �������,
                      ��������
            ----select * from #tmp_all order by ���������
            ------RETURN
            -------------------------------------------------------------------------
            SELECT a.[���л�������],
                   d.���л�������,
                   a.[�˺�],
                   a.[�˻�����],
                   a.[������ô���],
                   a.[����Ӫҵִ����Ч��],
                   a.���������˻���������,
                   a.[���������˻���������֤������],
                   a.���������˻���������֤�����,
                   a.[��ϵ�绰],
                   a.�����˻�����,
                   a.�绰����,
                   b.�永���� ֤���永����,
                   c.�永���� �ֻ��永����,
                   a.�������� ���˿�������,
                   [�˻�����],
                   [�˻�״̬],
                   [��������],
                   [��������],
                   [��������],
                   a.[ע��ص�������],
                   a.[�˻������ص�������],
                   a.[��������˻������ص�������],
                   a.[��ַ],
                   a.[ע���ʽ���]
            --INTO #tmp_end
            FROM   #tmp_all a --
                   LEFT JOIN hnxlsys.dbo.tb_red_gr b --
                          ON a. ���������˻���������֤����� = b.֤������ --
                   LEFT JOIN hnxlsys.dbo.tb_red_phone c --
                          ON a.�绰���� = c.[�ֻ�����] --
                   LEFT JOIN V_Bank d
                          ON a.[���л�������] = d.���б�������
            WHERE  ( �������� IS NULL
                      OR �������� <= ( CASE
                                     WHEN @age_state = '1' THEN @Min_age
                                     WHEN @age_state = '2' THEN 10000
                                     WHEN @age_state = '3' THEN @max_age
                                   END )
                         AND �������� >= ( CASE
                                         WHEN @age_state = '1' THEN-10000
                                         WHEN @age_state = '2' THEN @max_age
                                         WHEN @age_state = '3' THEN @min_age
                                       END ) )
                   AND CASE
                         WHEN @fr_or_zh = '1' THEN �����˻�����
                         WHEN @fr_or_zh = '2' THEN �绰����
                       END >= @zh_count
            ORDER  BY �������,
                      ��������
          END
      END
  END
GO 
��� ! �   �"  .   (   (   �������˶�绰����ڶ�ע��򿪻����ϲ��� �   ����Ϊ������ʱ������Ƶ��ע����ҵ�����ע���Ӫʵ����ɣ�Ϊ�����˻�ʱ����Ϊ�����ڿ��������˻�����һ�����ɡ�����������Ϊ�ϴ���ֵ������Ϊ�����Ƕ��ڡ��˻�������Ϊ0����ɸ�����С� �   @�˻�����(1��������ʱ����,9����)!S:9@�˻�״̬(1���������,9����)!S:1@�˻���绰����!N:5@ɸѡ����(1�˻�����,2�绰����)!S:1@��������!N:10000@�̻�λ��!N:7@�永�˻�(1��,0��,9ȫ��)!S:9 �      060403	    0
    0    1��� ! �   �"  +   (      ͬ�绰�෨�˻���ڶ࿪�� �   ����Ϊ������ʱ������Ƶ��ע����ҵ�����ע���Ӫʵ����ɣ�Ϊ�����˻�ʱ����Ϊ�����ڿ��������˻�����һ�����ɡ�����������Ϊ�ϴ���ֵ������Ϊ�����Ƕ��ڡ��˻�������Ϊ0����ɸ�����С� �   @��ʼ��!D:20210101@������!D:20210304@�˻�����(1��������ʱ����,9����)!S:9@�˻�״̬(1���������,9����)!S:1@ɸѡ(1�˻���,2������)!S:2@����!N:2@����!N:100@�̻�λ��!N:7 �      060404	    0
    1    1 �  CREATE PROCEDURE P_dw_phone_zh(@bgn_date CHAR(8),@end_date CHAR(8),@zh_xz CHAR(1),@zh_state CHAR(1),@fr_or_zh CHAR(1),@zh_count INT,@days INT,@len INT)
WITH ENCRYPTION
AS
  BEGIN
    --���ظ����˶����ڶ࿪��
    IF Object_id('tempdb..#tmp') IS NOT NULL
      DROP TABLE #tmp
    IF Object_id('tempdb..#tmp_cnt') IS NOT NULL
      DROP TABLE #tmp_cnt
    IF Object_id('tempdb..#tmp1') IS NOT NULL
      DROP TABLE #tmp1
    IF Object_id('tempdb..#tmp11') IS NOT NULL
      DROP TABLE #tmp11
    IF Object_id('tempdb..#tmp2') IS NOT NULL
      DROP TABLE #tmp2
    IF Object_id('tempdb..#tmp22') IS NOT NULL
      DROP TABLE #tmp22
    IF Object_id('tempdb..#tmp3') IS NOT NULL
      DROP TABLE #tmp3
    IF Object_id('tempdb..#tmp33') IS NOT NULL
      DROP TABLE #tmp33
    IF Object_id('tempdb..#tmp4') IS NOT NULL
      DROP TABLE #tmp4
    IF Object_id('tempdb..#tmp44') IS NOT NULL
      DROP TABLE #tmp44
    IF Object_id('tempdb..#tmp5') IS NOT NULL
      DROP TABLE #tmp5
    IF Object_id('tempdb..#tmp55') IS NOT NULL
      DROP TABLE #tmp55
    IF Object_id('tempdb..#tmp_all') IS NOT NULL
      DROP TABLE #tmp_all
    --IF Object_id('tempdb..#tmp_end') IS NOT NULL
    --DROP TABLE #tmp_end
    --DECLARE @bgn_date CHAR(8) --���ݿ�ʼ����
    --SET @bgn_date = '20210201'
    --DECLARE @end_date CHAR(8) --���ݽ�������
    --SET @end_date = '20210210'
    --DECLARE @zh_xz CHAR(1) --�˻����� 1������ʱ��9ȫ��
    --SET @zh_xz = '9'
    --DECLARE @zh_state CHAR(1) --�˻�״̬ 1���� 9ȫ������������
    --SET @zh_state = '1'
    --DECLARE @zh_count INT--�˻�����
    --SET @zh_count = 3
    --DECLARE @days INT --���ڵ�����
    --SET @days = 100
    --DECLARE @Min_age INT --��С����
    --SET @Min_age = 18
    --DECLARE @Max_age INT --�������
    --SET @Max_age = 35
    --DECLARE @age_state CHAR(1) --���䷶Χ1С����С��2�������3��С���֮��
    --SET @age_state = '3'
    --DECLARE @len INT --�̶��绰λ��
    --SET @len=7
    --DECLARE @fr_or_zh CHAR(1) --ɸѡ�˻����ǵ绰
    --SET @fr_or_zh ='1'
    --DECLARE @sazh CHAR(1)
    --SET @sazh ='9'
    IF Object_id(N'tb_rhzh_dw', N'U') IS NULL
        OR Object_id(N'hnxlsys.dbo.tb_red_gr', N'U') IS NULL
      BEGIN
        SELECT '���˻�ϵͳ�����˻�����δ�����δ���ɺ�������Ϣ����' ע��
      END
    ELSE
      BEGIN
        IF @zh_state <> '1'
           AND @zh_state <> '9'
            OR @zh_xz <> '1'
               AND @zh_xz <> '9'
            OR @fr_or_zh <> '1'
               AND @fr_or_zh <> '2'
          BEGIN
            SELECT '���˻�����ֻ��Ϊ1��9���˻�״ֻ̬��Ϊ1��9��ɸѡ����ֻ��Ϊ1��2' ��������
          END
        ELSE
          BEGIN
            --��ȡʡ�������������˻�ϵͳ�������ձ���Ϊʶ�𱾵ظ���
            --��ȡ���������ĸ����˻�����һ���ٷ���
            SELECT ���,
                   ��� �������,----�������ȡ���ֵ�����Ϊidenty������update
                   [���л�������],
                   [�˺�],
                   [�˻�����],
                   [������ô���],
                   [����Ӫҵִ����Ч��],
                   ���������˻���������,
                   [���������˻���������֤������],
                   ���������˻���������֤�����,
                   [��ϵ�绰],
                   dbo.F_delete_head([��ϵ�绰], '0') �绰����,--��ú������ǰ��0
                   [�˻�����],
                   [�˻�״̬],
                   [��������],
                   [��������],
                   [��������],
                   [ע��ص�������],
                   [�˻������ص�������],
                   [��������˻������ص�������],
                   [��ַ],
                   [ע���ʽ���]
            INTO   #tmp
            FROM   tb_rhzh_dw
            WHERE  �������� >= @bgn_date
                   AND �������� <= @end_date
                   AND ( NOT ��ϵ�绰 IS NULL
                          OR Len(��ϵ�绰) > 0 )
                   AND ( @zh_state = '1'
                         AND �������� IS NULL
                          OR @zh_state = '9' )
                   AND ( @zh_xz = '1'
                         AND ( �˻����� LIKE '����%'
                                OR �˻����� LIKE '��ʱ����%' )
                          OR @zh_xz = '9' )
            ORDER  BY ���
            --RETURN    
            ----������֤ͬ���ű��ͬһ��ţ���С��ţ��������������֤�ű��ͬһ���
            ----ȡ��ÿ����֤ͬ���ŵ���С���
            ---------------------------------------------------------------------------------------------
            --ȡ��ÿ����ͬ��ϵ�绰����С���
            SELECT Min(���) ��С���,
                   �绰����,
                   Count(�绰����) ����
            INTO   #tmp11
            FROM   #tmp
            GROUP  BY �绰����
            HAVING Count(�绰����) > 1
            ORDER  BY �绰����
            --����ϵ�绰��ͬ��������Ź�Ϊһ��	
            UPDATE a
            SET    a.������� = b.��С���
            FROM   #tmp a
                   INNER JOIN #tmp11 b
                           ON a.�绰���� = b.�绰����
            -------------------------------------------------------------------------------------------
            ----����Ϊͬ�������ƶ�          
            --------------------------------------------------------------------------------------------
            --ͬһ������Ŷ���ӵ���˻�����
            SELECT ff.��������,
                   ff.�����˻�����,
                   CASE
                     WHEN [���������˻���������֤������] = '����֤' THEN dbo.Fn_getage(a.���������˻���������֤�����, a.��������)
                     ELSE NULL
                   END ��������,
                   a.*
            INTO   #tmp_all
            FROM   #tmp A
                   OUTER APPLY (SELECT Count(*) �����˻�����,
                                       Count(DISTINCT ���������˻���������֤�����) ��������
                                FROM   #tmp B
                                WHERE  a.������� = b.�������
                                       AND Abs(Datediff(day, CONVERT(DATE, a.��������), CONVERT(DATE, b.��������))) <= @days) AS FF
            ORDER  BY �������,
                      ��������
            ----select * from #tmp_all order by ���������
            ------RETURN
            -------------------------------------------------------------------------
            SELECT a.[���л�������],
                   d.���л�������,
                   a.[�˺�],
                   a.[�˻�����],
                   a.[������ô���],
                   a.[����Ӫҵִ����Ч��],
                   a.���������˻���������,
                   a.[���������˻���������֤������],
                   a.���������˻���������֤�����,
                   a.[��ϵ�绰],
                   a.�����˻�����,
                   a.��������,
                   b.�永���� ֤���永����,
                   c.�永���� �ֻ��永����,
                   a.�������� ���˿�������,
                   [�˻�����],
                   [�˻�״̬],
                   [��������],
                   [��������],
                   [��������],
                   a.[ע��ص�������],
                   a.[�˻������ص�������],
                   a.[��������˻������ص�������],
                   a.[��ַ],
                   a.[ע���ʽ���]
            --INTO #tmp_end
            FROM   #tmp_all a --
                   LEFT JOIN hnxlsys.dbo.tb_red_gr b --
                          ON a. ���������˻���������֤����� = b.֤������ --
                   LEFT JOIN hnxlsys.dbo.tb_red_phone c --
                          ON a.�绰���� = c.[�ֻ�����] --
                   LEFT JOIN V_Bank d
                          ON a.[���л�������] = d.���б�������
            WHERE  CASE
                     WHEN @fr_or_zh = '1' THEN �����˻�����
                     WHEN @fr_or_zh = '2' THEN ��������
                   END >= @zh_count
            ORDER  BY �������,
                      ��������
          END
      END
  END
GO 
��� ! �   �"  /   (      ͬһ��λ֤���ڶ����˻� "   ͬһ��λ���ƻ����ô���ӵ�д����˻� �   @��ʼ��!D:20210101@������!D:20210304@�˻�����(1��������ʱ����,9����)!S:9@�˻�״̬(1���������,9����)!S:1@ɸѡ(1�˻���,2�绰��)!S:1@����!N:5@����!N:10000@�̻�λ��!N:7 �      060405	    0
    1    1 "  CREATE PROCEDURE P_dw_neardayzh(@bgn_date CHAR(8),@end_date CHAR(8),@zh_xz CHAR(1),@zh_state CHAR(1),@fr_or_zh CHAR(1),@zh_count INT,@days INT,@len INT)
WITH ENCRYPTION
AS
  BEGIN
    --���ظ����˶����ڶ࿪��
    IF Object_id('tempdb..#tmp') IS NOT NULL
      DROP TABLE #tmp
    IF Object_id('tempdb..#tmp_cnt') IS NOT NULL
      DROP TABLE #tmp_cnt
    IF Object_id('tempdb..#tmp1') IS NOT NULL
      DROP TABLE #tmp1
    IF Object_id('tempdb..#tmp11') IS NOT NULL
      DROP TABLE #tmp11
    IF Object_id('tempdb..#tmp2') IS NOT NULL
      DROP TABLE #tmp2
    IF Object_id('tempdb..#tmp22') IS NOT NULL
      DROP TABLE #tmp22
    IF Object_id('tempdb..#tmp3') IS NOT NULL
      DROP TABLE #tmp3
    IF Object_id('tempdb..#tmp33') IS NOT NULL
      DROP TABLE #tmp33
    IF Object_id('tempdb..#tmp4') IS NOT NULL
      DROP TABLE #tmp4
    IF Object_id('tempdb..#tmp44') IS NOT NULL
      DROP TABLE #tmp44
    IF Object_id('tempdb..#tmp5') IS NOT NULL
      DROP TABLE #tmp5
    IF Object_id('tempdb..#tmp55') IS NOT NULL
      DROP TABLE #tmp55
    IF Object_id('tempdb..#tmp_all') IS NOT NULL
      DROP TABLE #tmp_all
    --IF Object_id('tempdb..#tmp_end') IS NOT NULL
    --DROP TABLE #tmp_end
    --DECLARE @bgn_date CHAR(8) --���ݿ�ʼ����
    --SET @bgn_date = '20210201'
    --DECLARE @end_date CHAR(8) --���ݽ�������
    --SET @end_date = '20210210'
    --DECLARE @zh_xz CHAR(1) --�˻����� 1������ʱ��9ȫ��
    --SET @zh_xz = '9'
    --DECLARE @zh_state CHAR(1) --�˻�״̬ 1���� 9ȫ������������
    --SET @zh_state = '1'
    --DECLARE @zh_count INT--�˻�����
    --SET @zh_count = 3
    --DECLARE @days INT --���ڵ�����
    --SET @days = 100
    --DECLARE @Min_age INT --��С����
    --SET @Min_age = 18
    --DECLARE @Max_age INT --�������
    --SET @Max_age = 35
    --DECLARE @age_state CHAR(1) --���䷶Χ1С����С��2�������3��С���֮��
    --SET @age_state = '3'
    --DECLARE @len INT --�̶��绰λ��
    --SET @len=7
    --DECLARE @fr_or_zh CHAR(1) --ɸѡ�˻����ǵ绰
    --SET @fr_or_zh ='1'
    --DECLARE @sazh CHAR(1)
    --SET @sazh ='9'
    IF Object_id(N'tb_rhzh_dw', N'U') IS NULL
        OR Object_id(N'hnxlsys.dbo.tb_red_gr', N'U') IS NULL
      BEGIN
        SELECT '���˻�ϵͳ�����˻�����δ�����δ���ɺ�������Ϣ����' ע��
      END
    ELSE
      BEGIN
        IF @zh_state <> '1'
           AND @zh_state <> '9'
            OR @zh_xz <> '1'
               AND @zh_xz <> '9'
            OR @fr_or_zh <> '1'
               AND @fr_or_zh <> '2'
          BEGIN
            SELECT '���˻�����ֻ��Ϊ1��9���˻�״ֻ̬��Ϊ1��9��ɸѡ����ֻ��Ϊ1��2' ��������
          END
        ELSE
          BEGIN
            --��ȡʡ�������������˻�ϵͳ�������ձ���Ϊʶ�𱾵ظ���
            --��ȡ���������ĸ����˻�����һ���ٷ���
            SELECT ���,
                   ��� �������,----�������ȡ���ֵ�����Ϊidenty������update
                   [���л�������],
                   [�˺�],
                   ���������,
                   [�˻�����],
                   [������ô���],
                   [����Ӫҵִ����Ч��],
                   ���������˻���������,
                   [���������˻���������֤������],
                   ���������˻���������֤�����,
                   [��ϵ�绰],
                   dbo.F_delete_head([��ϵ�绰], '0') �绰����,--��ú������ǰ��0
                   [�˻�����],
                   [�˻�״̬],
                   [��������],
                   [��������],
                   [��������],
                   [ע��ص�������],
                   [�˻������ص�������],
                   [��������˻������ص�������],
                   [��ַ],
                   [ע���ʽ���]
            INTO   #tmp
            FROM   tb_rhzh_dw
            WHERE  �������� >= @bgn_date
                   AND �������� <= @end_date
                   AND ( @zh_state = '1'
                         AND �������� IS NULL
                          OR @zh_state = '9' )
                   AND ( @zh_xz = '1'
                         AND ( �˻����� LIKE '����%'
                                OR �˻����� LIKE '��ʱ����%' )
                          OR @zh_xz = '9' )
            ORDER  BY ���
            --RETURN    
            ----������֤ͬ���ű��ͬһ��ţ���С��ţ��������������֤�ű��ͬһ���
            ----ȡ��ÿ����֤ͬ���ŵ���С���
            ---------------------------------------------------------------------------------------------
            --������֤ͬ���ű��ͬһ��ţ���С��ţ��������������֤�ű��ͬһ���
            --ȡ��ÿ����֤ͬ���ŵ���С���
            SELECT Min(���) ��С���,
                   ������ô���,
                   Count(������ô���) ����
            INTO   #tmp11
            FROM   #tmp
            GROUP  BY ������ô���
            HAVING Count(������ô���) > 1
            ORDER  BY ������ô���
            --��֤����ͬ��������Ź�Ϊһ��	
            UPDATE a
            SET    a.������� = b.��С���
            FROM   #tmp a
                   INNER JOIN #tmp11 b
                           ON a.������ô��� = b.������ô���
            --ȡ��ÿ����ͬ��������Ƶ���С���
            SELECT Min(���) ��С���,
                   ���������,
                   Count(���������) ����
            INTO   #tmp22
            FROM   #tmp
            GROUP  BY ���������
            HAVING Count(���������) > 1
            ORDER  BY ���������
            --�Ѵ����������ͬ��������Ź�Ϊһ��	
            UPDATE a
            SET    a.������� = b.��С���
            FROM   #tmp a
                   INNER JOIN #tmp22 b
                           ON a.��������� = b.���������
            -------------------------------------------------------------------------------------------
            ----����Ϊͬ�������ƶ�          
            --------------------------------------------------------------------------------------------
            --ͬһ������Ŷ���ӵ���˻�����
            SELECT ff.�绰����,
                   ff.�����˻�����,
                   CASE
                     WHEN [���������˻���������֤������] = '����֤' THEN dbo.Fn_getage(a.���������˻���������֤�����, a.��������)
                     ELSE NULL
                   END ��������,
                   a.*
            INTO   #tmp_all
            FROM   #tmp A
                   OUTER APPLY (SELECT Count(*) �����˻�����,
                                       Count(DISTINCT �绰����) �绰����
                                FROM   #tmp B
                                WHERE  a.������� = b.�������
                                       AND Abs(Datediff(day, CONVERT(DATE, a.��������), CONVERT(DATE, b.��������))) <= @days) AS FF
            ORDER  BY �������,
                      ��������
            ----select * from #tmp_all order by ���������
            ------RETURN
            -------------------------------------------------------------------------
            SELECT a.[���л�������],
                   d.���л�������,
                   a.[�˺�],
                   a.[�˻�����],
                   a.[������ô���],
                   a.[����Ӫҵִ����Ч��],
                   a.���������˻���������,
                   a.[���������˻���������֤������],
                   a.���������˻���������֤�����,
                   a.[��ϵ�绰],
                   a.�����˻�����,
                   a.�绰����,
                   b.�永���� ֤���永����,
                   c.�永���� �ֻ��永����,
                   a.�������� ���˿�������,
                   [�˻�����],
                   [�˻�״̬],
                   [��������],
                   [��������],
                   [��������],
                   a.[ע��ص�������],
                   a.[�˻������ص�������],
                   a.[��������˻������ص�������],
                   a.[��ַ],
                   a.[ע���ʽ���]
            --INTO #tmp_end
            FROM   #tmp_all a --
                   LEFT JOIN hnxlsys.dbo.tb_red_gr b --
                          ON a. ���������˻���������֤����� = b.֤������ --
                   LEFT JOIN hnxlsys.dbo.tb_red_phone c --
                          ON a.�绰���� = c.[�ֻ�����] --
                   LEFT JOIN V_Bank d
                          ON a.[���л�������] = d.���б�������
            WHERE  CASE
                     WHEN @fr_or_zh = '1' THEN �����˻�����
                     WHEN @fr_or_zh = '2' THEN �绰����
                   END >= @zh_count
            ORDER  BY �������,
                      ��������
          END
      END
  END
GO 
��� ! �   �"     (      ͬ��ַ�಻ͬ������˻�      0   @��ʾ1!��������1:Ĭ��ֵ1@��ʾ2!��������2:Ĭ��ֵ2 �      060406	    0
    0    1 *   CREATE PROCEDURE      AS
BEGIN

END
GO��� ! �   �"  3   (      �˻��쳣����������⣨del��           �      060407	    0
    0    1 �  CREATE PROCEDURE  P_acc_same_cst_mult_acc_per(@acc_count int,@row_num int) WITH ENCRYPTION AS
BEGIN

if object_id('tempdb..#tmp') is not null drop table #tmp
if object_id('tempdb..#tmp0') is not null drop table #tmp0
if object_id('tempdb..#tmp00') is not null drop table #tmp00
if object_id('tempdb..#tmp000') is not null drop table #tmp000
if object_id('tempdb..#tmp1') is not null drop table #tmp1
if object_id('tempdb..#tmp2') is not null drop table #tmp2  
if object_id('tempdb..#tmp3') is not null drop table #tmp3
select distinct cst_no,count(distinct acc_no) �˻�����
into #tmp3
from tb_acc
where (acc_type='0' or acc_type='1') and LEN(rtrim(ltrim(cst_no)))>=4
-- and dbo.FN_DupChar(case when len(cst_no)=datalength(rtrim(ltrim(cst_no))) then cst_no end)=0
group by cst_no
having count(distinct acc_no)>=@acc_count

delete #tmp3 where len(cst_no)<>datalength(rtrim(ltrim(cst_no)))
delete #tmp3 where dbo.FN_DupChar(rtrim(ltrim(cst_no)),4)=1 

select a.cst_no �ͻ���,id_no ֤����,acc_name ����,acc_no �˺�,c.�˻�����,a.bank_code �����������,b.���л�������,
open_time ����ʱ��,close_time ����ʱ��,
(case when close_flag='0' then '����' when close_flag='1' then '����' when close_flag='2' then '����' end ) ��������־
into #tmp1
from tb_acc a 
left join V_Bank b on a.bank_code=b.���л�������
left join #tmp3 c on a.cst_no=c.cst_no
WHERE  a.cst_no in (select cst_no from #tmp3)
select �˺�,count(�˺�) ���ױ���,sum(case when (��ת='�ֽ�') then 1 else 0 end) �ֽ���� 
into #tmp2
from V_Txn
where �˺� in (select distinct �˺� from #tmp1)
group by �˺�
order by �˺�
set rowcount @row_num
select a.*,b.���ױ���,b.�ֽ����
from #tmp1 a left join #tmp2 b
on a.�˺�=b.�˺�
order by a.�ͻ���,a.�����������,a.�˺�
set rowcount 0
END
GO��� ! �   �"  *   0      .�����˻����ռ��           �      0605	    0
    1    1��� ! �   �"  I   *   "   ���и��˶��ڶ࿪�����绰��mark��    �ٶȽ������� 0   @��ʾ1!��������1:Ĭ��ֵ1@��ʾ2!��������2:Ĭ��ֵ2 I      060501	    0
    0    1 *   CREATE PROCEDURE      AS
BEGIN

END
GO��� ! �   �"     *      ���ظ��˶��ڶ࿪�����绰 �   ɸ�����أ���������֤�����˿�������˻�����ж����ͬ�绰�����������������Ϊ�ϴ���ֵ������Ϊ�����Ƕ��ڡ�ɸѡ����ָ����������˻��������ǵ绰������ �   @��ʼ��!D:20210101@������!D:20210304@�˻�����(1��ǿ�,9����)!S:1@�˻�״̬(1��������,9����)!S:1@��С����!N:0@�������!N:200@���䷶Χ(1С����С,2�������,3��С֮��)!S:3@ɸѡ(1�˻���,2�绰��)!S:2@����!N:3@����!N:100@�̻�λ��!N:7      �      060502	    0
    1    1 K/  CREATE PROCEDURE P_gr_bdgr_neardayzh(@bgn_date CHAR(8),@end_date CHAR(8),@zh_lx CHAR(1),@zh_state CHAR(1),@min_age INT,@max_age INT,@age_state CHAR(1),@fr_or_zh CHAR(1),@zh_count INT,@days INT,@len INT)
WITH ENCRYPTION
AS
  BEGIN
    --���ظ��˶����ڶ࿪��
    IF Object_id('tempdb..#tmp') IS NOT NULL
      DROP TABLE #tmp
    IF Object_id('tempdb..#tmp_cnt') IS NOT NULL
      DROP TABLE #tmp_cnt
    IF Object_id('tempdb..#tmp1') IS NOT NULL
      DROP TABLE #tmp1
    IF Object_id('tempdb..#tmp11') IS NOT NULL
      DROP TABLE #tmp11
    IF Object_id('tempdb..#tmp2') IS NOT NULL
      DROP TABLE #tmp2
    IF Object_id('tempdb..#tmp22') IS NOT NULL
      DROP TABLE #tmp22
    IF Object_id('tempdb..#tmp3') IS NOT NULL
      DROP TABLE #tmp3
    IF Object_id('tempdb..#tmp33') IS NOT NULL
      DROP TABLE #tmp33
    IF Object_id('tempdb..#tmp4') IS NOT NULL
      DROP TABLE #tmp4
    IF Object_id('tempdb..#tmp44') IS NOT NULL
      DROP TABLE #tmp44
    IF Object_id('tempdb..#tmp5') IS NOT NULL
      DROP TABLE #tmp5
    IF Object_id('tempdb..#tmp55') IS NOT NULL
      DROP TABLE #tmp55
    IF Object_id('tempdb..#tmp_all') IS NOT NULL
      DROP TABLE #tmp_all
    ----IF Object_id('tempdb..#tmp_end') IS NOT NULL
    --  --DROP TABLE #tmp_end
    --DECLARE @bgn_date CHAR(8) --���ݿ�ʼ����
    --SET @bgn_date = '20210201'
    --DECLARE @end_date CHAR(8) --���ݽ�������
    --SET @end_date = '20210210'
    --DECLARE @zh_state CHAR(1) --�˻�״̬ 1���� 9ȫ������������
    --SET @zh_state = '9'
    --DECLARE @zh_count INT--�˻�����
    --SET @zh_count = 5
    --DECLARE @days INT --���ڵ�����
    --SET @days = 100
    --DECLARE @Min_age INT --��С����
    --SET @Min_age = 18
    --DECLARE @Max_age INT --�������
    --SET @Max_age = 35
    --DECLARE @age_state CHAR(1) --���䷶Χ1С����С��2�������3��С���֮��
    --SET @age_state = '3'
    --DECLARE @len INT --�̶��绰λ��
    --SET @len=7
    --DECLARE @fr_or_zh CHAR(1) --ɸѡ�˻����ǵ绰
    --SET @fr_or_zh ='1'
    --DECLARE @sazh CHAR(1)
    --SET @sazh ='9'
    IF Object_id(N'tb_rhzh_gr', N'U') IS NULL
        OR Object_id(N'hnxlsys.dbo.tb_red_gr', N'U') IS NULL
      BEGIN
        SELECT '���˻�ϵͳ�����˻�����δ�����δ���ɺ�������Ϣ����' ע��
      END
    ELSE
      BEGIN
        IF @zh_lx <> '1'
           AND @zh_lx <> '9' --�˻�״̬����������
            OR @zh_state <> '1'
               AND @zh_state <> '9' --�˻�״̬����������
            OR @age_state <> '1'--���䷶Χȷ����ʽ
               AND @age_state <> '2'
               AND @age_state <> '3'
            OR @fr_or_zh <> '1'
               AND @fr_or_zh <> '2'
          BEGIN
            SELECT '���˻����Ͳ���ֻ��Ϊ1��9���˻�״̬����ֻ��Ϊ1��9�����䷶Χ����ֻ��Ϊ1��2��3��ɸѡ����ֻ��Ϊ1��2' ��������
          END
        ELSE
          BEGIN
            --��ȡʡ�������������˻�ϵͳ�������ձ���Ϊʶ�𱾵ظ���
            SELECT DISTINCT LEFT(����, 2) ��������,
                            �˻�����
            INTO   #tmp1
            FROM   [HNXLSYS].[dbo].[AreaCodeOldNew]
            WHERE  NOT �˻����� IS NULL
            ORDER  BY �˻�����
            --��ȡ���������ĸ����˻�����һ���ٷ���
            SELECT ���,
                   ��� �������,----�������ȡ���ֵ�����Ϊidenty������update
                   [�˺�],
                   [���л�������],
                   [���������],
                   [��֤�������ڵص�������],
                   [��ַ],
                   [�ʱ�],
                   [�绰],
                   dbo.F_delete_head(�绰, '0') �绰����,--��ú������ǰ��0
                   [����֤������],
                   [����֤�����],
                   [�б����],
                   [�����ص�������],
                   [�˻�����],
                   [��������],
                   [�˻���Ч����],
                   [��������],
                   [�������],
                   [�����Ǽ�����],
                   [��������],
                   [����],
                   [��������ڹ��һ����]
            INTO   #tmp
            FROM   tb_rhzh_gr a
                   LEFT JOIN #tmp1 b
                          ON LEFT(a.[�����ص�������], 4) = b.�˻����� --�˻���������
            WHERE  ( @zh_lx = '1'
                     AND �˻����� = '��ǿ�'
                      OR @zh_lx = '9' )
                   AND ( @zh_state = '1'
                         AND �������� IS NULL
                          OR @zh_state = '9' )
                   AND �������� >= @bgn_date
                   AND �������� <= @end_date
                   AND ( [����֤������] <> '����֤'
                          OR [����֤������] = '����֤'
                             AND LEFT(a.����֤�����, 2) = b.�������� ) --������Ϣ
            ORDER  BY a.����֤�����
            --RETURN    
            ----������֤ͬ���ű��ͬһ��ţ���С��ţ��������������֤�ű��ͬһ���
            ----ȡ��ÿ����֤ͬ���ŵ���С���
            SELECT Min(���) ��С���,--����֤�����ͬ���˻�����ű����ͬ����С���
                   ����֤�����,
                   Count(����֤�����) ����
            INTO   #tmp11
            FROM   #tmp
            GROUP  BY ����֤�����
            HAVING Count(����֤�����) > 1
            ORDER  BY ����֤�����
            ----��֤����ͬ��������Ź�Ϊһ��	
            UPDATE a
            SET    a.������� = b.��С���
            FROM   #tmp a
                   INNER JOIN #tmp11 b
                           ON a.����֤����� = b.����֤�����
            ---------------------------------------------------------------------------------------------
            ------����Ϊͬ�������ƶ�
            ----��ȡͬһ���������������ݺŷ��ˣ� ͬһ������ͬ����֤��ŵ�Ӧ�������ƶȣ���Ϊ���ƶȽӽ���ӦΪͬһ���ˣ������ǵı�����һ��
            SELECT ���������,
                   Count(DISTINCT ����֤�����) ����
            INTO   #tmp22
            FROM   #tmp
            GROUP  BY ���������
            HAVING Count(DISTINCT ����֤�����) > 1
            ORDER  BY ���������
            ----��ȡ������������֤������������ͱ��
            SELECT DISTINCT a.���������,
                            b.����֤�����,
                            b.�������
            INTO   #tmp33
            FROM   #tmp22 a
                   LEFT JOIN #tmp b
                          ON a.��������� = b.���������
            ORDER  BY ���������
            ----��ȡ���ƶȷ����߼���������ź����ݱ��
            SELECT DISTINCT a.�������,
                            a.���������,
                            a.����֤����� ����֤�����1,
                            b.����֤����� ����֤�����2,
                            DBO.Fn_resemble_onebyone(a.����֤�����, b.����֤�����) һ��һ���ƶ�
            --,
            --DBO.Fn_resemble_order(a.����֤�����, b.����֤�����) ˳�����ƶ�
            INTO   #tmp44
            FROM   #tmp33 a
                   INNER JOIN #tmp33 b
                           ON a.��������� = b.���������
            --INNER JOIN #tmp c
            --        ON a.��������� = c.���������
            --           AND a.����֤����� = c.����֤�����
            WHERE  DBO.Fn_resemble_onebyone(a.����֤�����, b.����֤�����) > 0.8
                   AND DBO.Fn_resemble_onebyone(a.����֤�����, b.����֤�����) < 1
            ORDER  BY ���������
            --SELECT *
            --FROM   #tmp44
            --ORDER  BY ���������
            --RETURN
            ----��ȡ���ƶ���С�������
            SELECT ���������,
                   Min(�������) ��С�������
            INTO   #tmp55
            FROM   #tmp44
            GROUP  BY ���������
            --select * from #tmp55 order by ���������
            --return
            --����#tmp44,������Ŷ������С��ţ�����������#tmp
            UPDATE a
            SET    a.������� = b.��С�������
            FROM   #tmp44 a
                   LEFT JOIN #tmp55 b
                          ON a.��������� = b.���������
            ----���»��������������������Ÿ���
            UPDATE a
            SET    a.������� = b.�������
            FROM   #tmp a
                   INNER JOIN #tmp44 b
                           ON a.��������� = b.���������
                              AND a.����֤����� = b.����֤�����1
            --       OR a.���������˻���������֤����� = c.���������˻���������֤�����2
            WHERE  a.������� > b.�������
            -----Ū����ʱ�����ڲ��Ժ���Ĵ���
            --      SELECT *
            --into tmp
            --      FROM   #tmp
            --      ORDER  BY �������
            ------------------------------------------------------------------------------------------
            --ͬһ������Ŷ���ӵ���˻�����
            SELECT ff.�绰����,
                   ff.�����˻�����,
                   CASE
                     WHEN [����֤������] = '����֤' THEN dbo.Fn_getage(a.����֤�����, a.��������)
                     ELSE NULL
                   END ��������,
                   a.*
            INTO   #tmp_all
            FROM   #tmp A
                   OUTER APPLY (SELECT Count(*) �����˻�����,
                                       Count(DISTINCT �绰����) �绰����
                                FROM   #tmp B
                                WHERE  a.������� = b.�������
                                       AND Abs(Datediff(day, CONVERT(DATE, a.��������), CONVERT(DATE, b.��������))) <= @days) AS FF
            ORDER  BY �������,
                      ��������
            --select * from #tmp_all order by ���������
            ----RETURN
            -----------------------------------------------------------------------
            SELECT a.[���л�������],
                   d.���л�������,
                   a.[�˺�],
                   a.[���������],
                   a.[����֤������],
                   a.[����֤�����],
                   a.[�绰],
                   a.�����˻�����,
                   a.�绰����,
                   b.�永���� ֤���永����,
                   c.�永���� �ֻ��永����,
                   a.[�˻�����],
                   a.[�����ص�������],
                   a.��������,
                   a.[��������],
                   a.[�˻���Ч����],
                   a.[��������],
                   a.[�������],
                   a.[�����Ǽ�����],
                   a.[��֤�������ڵص�������],
                   a.[��ַ],
                   a.[��������],
                   a.[����],
                   a.[��������ڹ��һ����]
            --INTO #tmp_end
            FROM   #tmp_all a --
                   LEFT JOIN hnxlsys.dbo.tb_red_gr b --
                          ON a. [����֤�����] = b.֤������ --
                   LEFT JOIN hnxlsys.dbo.tb_red_phone c --
                          ON a.�绰���� = c.[�ֻ�����] --
                   LEFT JOIN V_Bank d
                          ON a.[���л�������] = d.���б�������
            WHERE  ( �������� IS NULL
                      OR �������� <= ( CASE
                                     WHEN @age_state = '1' THEN @Min_age
                                     WHEN @age_state = '2' THEN 10000
                                     WHEN @age_state = '3' THEN @max_age
                                   END )
                         AND �������� >= ( CASE
                                         WHEN @age_state = '1' THEN-10000
                                         WHEN @age_state = '2' THEN @max_age
                                         WHEN @age_state = '3' THEN @min_age
                                       END ) )
                   AND CASE
                         WHEN @fr_or_zh = '1' THEN �����˻�����
                         WHEN @fr_or_zh = '2' THEN �绰����
                       END >= @zh_count
            ORDER  BY �������,
                      ��������
          END
      END
  END
GO 
��� ! �   �"  %   *      ��ظ��˶��ڶ࿪�����绰 �   ɸ����أ���������֤�����˿�������˻�����ж����ͬ�绰�����������������Ϊ�ϴ���ֵ������Ϊ�����Ƕ��ڡ�ɸѡ����ָ����������˻��������ǵ绰������ �   @��ʼ��!D:20210101@������!D:20210304@�˻�����(1��ǿ�,9����)!S:1@�˻�״̬(1��������,9����)!S:1@��С����!N:0@�������!N:200@���䷶Χ(1С����С,2�������,3��С֮��)!S:3@ɸѡ(1�˻���,2�绰��)!S:1@����!N:5@����!N:100@�̻�λ��!N:7      �      060503	    0
    1    1  /  CREATE PROCEDURE P_gr_ydgr_neardayzh(@bgn_date CHAR(8),@end_date CHAR(8),@zh_lx CHAR(1),@zh_state CHAR(1),@min_age INT,@max_age INT,@age_state CHAR(1),@fr_or_zh CHAR(1),@zh_count INT,@days INT,@len INT)
WITH ENCRYPTION
AS
  BEGIN
    --��ظ��˶����ڶ࿪��
    IF Object_id('tempdb..#tmp') IS NOT NULL
      DROP TABLE #tmp
    IF Object_id('tempdb..#tmp_cnt') IS NOT NULL
      DROP TABLE #tmp_cnt
    IF Object_id('tempdb..#tmp1') IS NOT NULL
      DROP TABLE #tmp1
    IF Object_id('tempdb..#tmp11') IS NOT NULL
      DROP TABLE #tmp11
    IF Object_id('tempdb..#tmp2') IS NOT NULL
      DROP TABLE #tmp2
    IF Object_id('tempdb..#tmp22') IS NOT NULL
      DROP TABLE #tmp22
    IF Object_id('tempdb..#tmp3') IS NOT NULL
      DROP TABLE #tmp3
    IF Object_id('tempdb..#tmp33') IS NOT NULL
      DROP TABLE #tmp33
    IF Object_id('tempdb..#tmp4') IS NOT NULL
      DROP TABLE #tmp4
    IF Object_id('tempdb..#tmp44') IS NOT NULL
      DROP TABLE #tmp44
    IF Object_id('tempdb..#tmp5') IS NOT NULL
      DROP TABLE #tmp5
    IF Object_id('tempdb..#tmp55') IS NOT NULL
      DROP TABLE #tmp55
    IF Object_id('tempdb..#tmp_all') IS NOT NULL
      DROP TABLE #tmp_all
    --IF Object_id('tempdb..#tmp_end') IS NOT NULL
    --DROP TABLE #tmp_end
    --DECLARE @bgn_date CHAR(8) --���ݿ�ʼ����
    --SET @bgn_date = '20210101'
    --DECLARE @end_date CHAR(8) --���ݽ�������
    --SET @end_date = '20210304'
    --DECLARE @zh_state CHAR(1) --�˻�״̬ 1���� 9ȫ������������
    --SET @zh_state = '9'
    --DECLARE @zh_count INT--�˻�����
    --SET @zh_count = 5
    --DECLARE @days INT --���ڵ�����
    --SET @days = 100
    --DECLARE @Min_age INT --��С����
    --SET @Min_age = 0
    --DECLARE @Max_age INT --�������
    --SET @Max_age = 200
    --DECLARE @age_state CHAR(1) --���䷶Χ1С����С��2�������3��С���֮��
    --SET @age_state = '3'
    --DECLARE @len INT --�̶��绰λ��
    --SET @len=7
    --DECLARE @fr_or_zh CHAR(1) --ɸѡ�˻����ǵ绰
    --SET @fr_or_zh ='1'
    IF Object_id(N'tb_rhzh_gr', N'U') IS NULL
        OR Object_id(N'hnxlsys.dbo.tb_red_gr', N'U') IS NULL
      BEGIN
        SELECT '���˻�ϵͳ�����˻�����δ�����δ���ɺ�������Ϣ����' ע��
      END
    ELSE
      BEGIN
        IF @zh_lx <> '1'
           AND @zh_lx <> '9' --�˻�״̬����������
            OR @zh_state <> '1'
               AND @zh_state <> '9' --�˻�״̬����������
            OR @age_state <> '1'--���䷶Χȷ����ʽ
               AND @age_state <> '2'
               AND @age_state <> '3'
            OR @fr_or_zh <> '1'
               AND @fr_or_zh <> '2'
          BEGIN
            SELECT '���˻�״̬����ֻ��Ϊ1��9�����䷶Χ����ֻ��Ϊ1��2��3��ɸѡ����ֻ��Ϊ1��2' ��������
          END
        ELSE
          BEGIN
            --��ȡʡ�������������˻�ϵͳ�������ձ���Ϊʶ�𱾵ظ���
            SELECT DISTINCT LEFT(����, 2) ��������,
                            �˻�����
            INTO   #tmp1
            FROM   [HNXLSYS].[dbo].[AreaCodeOldNew]
            WHERE  NOT �˻����� IS NULL
            ORDER  BY �˻�����
            --��ȡ���������ĸ����˻�����һ���ٷ���
            SELECT ���,
                   ��� �������,----�������ȡ���ֵ�����Ϊidenty������update
                   [�˺�],
                   [���л�������],
                   [���������],
                   [������������],
                   [��֤�������ڵص�������],
                   [��ַ],
                   [�ʱ�],
                   [�绰],
                   dbo.F_delete_head(�绰, '0') �绰����,--��ú������ǰ��0
                   [����֤������],
                   [����֤�����],
                   [�б����],
                   [�����ص�������],
                   [�˻�����],
                   [��������],
                   [�˻���Ч����],
                   [��������],
                   [�������],
                   [�����Ǽ�����],
                   [��������],
                   [����],
                   [��������ڹ��һ����]
            INTO   #tmp
            FROM   tb_rhzh_gr a
                   LEFT JOIN #tmp1 b
                          ON LEFT(a.[�����ص�������], 4) = b.�˻����� --�˻���������
            WHERE  ( @zh_lx = '1'
                     AND �˻����� = '��ǿ�'
                      OR @zh_lx = '9' )
                   AND ( @zh_state = '1'
                         AND �������� IS NULL
                          OR @zh_state = '9' )
                   AND �������� >= @bgn_date
                   AND �������� <= @end_date
                   AND ( [����֤������] <> '����֤'
                          OR [����֤������] = '����֤'
                             AND LEFT(a.����֤�����, 2) = b.�������� ) --�����Ϣ
            ORDER  BY a.����֤�����
            --RETURN    
            ----������֤ͬ���ű��ͬһ��ţ���С��ţ��������������֤�ű��ͬһ���
            ----ȡ��ÿ����֤ͬ���ŵ���С���
            SELECT Min(���) ��С���,--����֤�����ͬ���˻�����ű����ͬ����С���
                   ����֤�����,
                   Count(����֤�����) ����
            INTO   #tmp11
            FROM   #tmp
            GROUP  BY ����֤�����
            HAVING Count(����֤�����) > 1
            ORDER  BY ����֤�����
            ----��֤����ͬ��������Ź�Ϊһ��	
            UPDATE a
            SET    a.������� = b.��С���
            FROM   #tmp a
                   INNER JOIN #tmp11 b
                           ON a.����֤����� = b.����֤�����
            ---------------------------------------------------------------------------------------------
            ------����Ϊͬ�������ƶ�
            ----��ȡͬһ���������������ݺŷ��ˣ� ͬһ������ͬ����֤��ŵ�Ӧ�������ƶȣ���Ϊ���ƶȽӽ���ӦΪͬһ���ˣ������ǵı�����һ��
            SELECT ���������,
                   Count(DISTINCT ����֤�����) ����
            INTO   #tmp22
            FROM   #tmp
            GROUP  BY ���������
            HAVING Count(DISTINCT ����֤�����) > 1
            ORDER  BY ���������
            ----��ȡ������������֤������������ͱ��
            SELECT DISTINCT a.���������,
                            b.����֤�����,
                            b.�������
            INTO   #tmp33
            FROM   #tmp22 a
                   LEFT JOIN #tmp b
                          ON a.��������� = b.���������
            ORDER  BY ���������
            ----��ȡ���ƶȷ����߼���������ź����ݱ��
            SELECT DISTINCT a.�������,
                            a.���������,
                            a.����֤����� ����֤�����1,
                            b.����֤����� ����֤�����2,
                            DBO.Fn_resemble_onebyone(a.����֤�����, b.����֤�����) һ��һ���ƶ�
            --,
            --DBO.Fn_resemble_order(a.����֤�����, b.����֤�����) ˳�����ƶ�
            INTO   #tmp44
            FROM   #tmp33 a
                   INNER JOIN #tmp33 b
                           ON a.��������� = b.���������
            --INNER JOIN #tmp c
            --        ON a.��������� = c.���������
            --           AND a.����֤����� = c.����֤�����
            WHERE  DBO.Fn_resemble_onebyone(a.����֤�����, b.����֤�����) > 0.8
                   AND DBO.Fn_resemble_onebyone(a.����֤�����, b.����֤�����) < 1
            ORDER  BY ���������
            --SELECT *
            --FROM   #tmp44
            --ORDER  BY ���������
            --RETURN
            ----��ȡ���ƶ���С�������
            SELECT ���������,
                   Min(�������) ��С�������
            INTO   #tmp55
            FROM   #tmp44
            GROUP  BY ���������
            --select * from #tmp55 order by ���������
            --return
            --����#tmp44,������Ŷ������С��ţ�����������#tmp
            UPDATE a
            SET    a.������� = b.��С�������
            FROM   #tmp44 a
                   LEFT JOIN #tmp55 b
                          ON a.��������� = b.���������
            ----���»��������������������Ÿ���
            UPDATE a
            SET    a.������� = b.�������
            FROM   #tmp a
                   INNER JOIN #tmp44 b
                           ON a.��������� = b.���������
                              AND a.����֤����� = b.����֤�����1
            --       OR a.���������˻���������֤����� = c.���������˻���������֤�����2
            WHERE  a.������� > b.�������
            -----Ū����ʱ�����ڲ��Ժ���Ĵ���
            --      SELECT *
            --into tmp
            --      FROM   #tmp
            --      ORDER  BY �������
            ------------------------------------------------------------------------------------------
            --ͬһ������Ŷ���ӵ���˻�����
            SELECT ff.�绰����,
                   ff.�����˻�����,
                   CASE
                     WHEN [����֤������] = '����֤' THEN dbo.Fn_getage(a.����֤�����, a.��������)
                     ELSE NULL
                   END ��������,
                   a.*
            INTO   #tmp_all
            FROM   #tmp A
                   OUTER APPLY (SELECT Count(*) �����˻�����,
                                       Count(DISTINCT �绰����) �绰����
                                FROM   #tmp B
                                WHERE  a.������� = b.�������
                                       AND Abs(Datediff(day, CONVERT(DATE, a.��������), CONVERT(DATE, b.��������))) <= @days) AS FF
            ORDER  BY �������,
                      ��������
            --select * from #tmp_all order by ���������
            ----RETURN
            -----------------------------------------------------------------------
            SELECT a.[���л�������],
                   d.���л�������,
                   a.[�˺�],
                   a.[���������],
                   a.[����֤������],
                   a.[����֤�����],
                   a.[�绰],
                   a.�����˻�����,
                   a.�绰����,
                   b.�永���� ֤���永����,
                   c.�永���� �ֻ��永����,
                   a.[�˻�����],
                   a.[�����ص�������],
                   a.��������,
                   a.[��������],
                   a.[�˻���Ч����],
                   a.[��������],
                   a.[�������],
                   a.[�����Ǽ�����],
                   a.[��֤�������ڵص�������],
                   a.[��ַ],
                   a.[��������],
                   a.[����],
                   a.[��������ڹ��һ����]
            --INTO #tmp_end
            FROM   #tmp_all a --
                   LEFT JOIN hnxlsys.dbo.tb_red_gr b --
                          ON a. [����֤�����] = b.֤������ --
                   LEFT JOIN hnxlsys.dbo.tb_red_phone c --
                          ON a.�绰���� = c.[�ֻ�����] --
                   LEFT JOIN V_Bank d
                          ON a.[���л�������] = d.���б�������
            WHERE  ( �������� IS NULL
                      OR �������� <= ( CASE
                                     WHEN @age_state = '1' THEN @Min_age
                                     WHEN @age_state = '2' THEN 10000
                                     WHEN @age_state = '3' THEN @max_age
                                   END )
                         AND �������� >= ( CASE
                                         WHEN @age_state = '1' THEN-10000
                                         WHEN @age_state = '2' THEN @max_age
                                         WHEN @age_state = '3' THEN @min_age
                                       END ) )
                   AND CASE
                         WHEN @fr_or_zh = '1' THEN �����˻�����
                         WHEN @fr_or_zh = '2' THEN �绰����
                       END >= @zh_count
            ORDER  BY �������,
                      ��������
          END
      END
  END
GO 
��� ! �   �"  )   *   "   ������֤���ڶ࿪�����绰��mark�� �   ����Ϊ������ʱ������Ƶ��ע����ҵ�����ע���Ӫʵ����ɣ�Ϊ�����˻�ʱ����Ϊ�����ڿ��������˻�����һ�����ɡ�����������Ϊ�ϴ���ֵ������Ϊ�����Ƕ��ڡ� �   @���ݿ�ʼ����!D:20210101@���ݽ�������!D:20210304@�˻�״̬(1���������,9����)!S:1@��С����!N:0@�������!N:200@���䷶Χ(1С����С,2�������,3�����С֮��)!S:3@�˻���绰����!N:4@ɸѡ����(1�˻�����,2�绰����)!S:1@����!N:10000@�̻�λ��!N:7 �      060504	    0
    0    1 -  CREATE PROCEDURE P_gr_noid_neardayzh(@bgn_date CHAR(8),@end_date CHAR(8),@zh_state CHAR(1),@min_age INT,@max_age INT,@age_state CHAR(1),@zh_count INT,@fr_or_zh CHAR(1),@days INT,@len INT)
WITH ENCRYPTION
AS
  BEGIN
    --��ظ��˶����ڶ࿪��
    IF Object_id('tempdb..#tmp') IS NOT NULL
      DROP TABLE #tmp
    IF Object_id('tempdb..#tmp_cnt') IS NOT NULL
      DROP TABLE #tmp_cnt
    IF Object_id('tempdb..#tmp1') IS NOT NULL
      DROP TABLE #tmp1
    IF Object_id('tempdb..#tmp11') IS NOT NULL
      DROP TABLE #tmp11
    IF Object_id('tempdb..#tmp2') IS NOT NULL
      DROP TABLE #tmp2
    IF Object_id('tempdb..#tmp22') IS NOT NULL
      DROP TABLE #tmp22
    IF Object_id('tempdb..#tmp3') IS NOT NULL
      DROP TABLE #tmp3
    IF Object_id('tempdb..#tmp33') IS NOT NULL
      DROP TABLE #tmp33
    IF Object_id('tempdb..#tmp4') IS NOT NULL
      DROP TABLE #tmp4
    IF Object_id('tempdb..#tmp44') IS NOT NULL
      DROP TABLE #tmp44
    IF Object_id('tempdb..#tmp5') IS NOT NULL
      DROP TABLE #tmp5
    IF Object_id('tempdb..#tmp55') IS NOT NULL
      DROP TABLE #tmp55
    IF Object_id('tempdb..#tmp_all') IS NOT NULL
      DROP TABLE #tmp_all
    --IF Object_id('tempdb..#tmp_end') IS NOT NULL
    --DROP TABLE #tmp_end
    --DECLARE @bgn_date CHAR(8) --���ݿ�ʼ����
    --SET @bgn_date = '20210101'
    --DECLARE @end_date CHAR(8) --���ݽ�������
    --SET @end_date = '20210304'
    --DECLARE @zh_state CHAR(1) --�˻�״̬ 1���� 9ȫ������������
    --SET @zh_state = '9'
    --DECLARE @zh_count INT--�˻�����
    --SET @zh_count = 5
    --DECLARE @days INT --���ڵ�����
    --SET @days = 100
    --DECLARE @Min_age INT --��С����
    --SET @Min_age = 0
    --DECLARE @Max_age INT --�������
    --SET @Max_age = 200
    --DECLARE @age_state CHAR(1) --���䷶Χ1С����С��2�������3��С���֮��
    --SET @age_state = '3'
    --DECLARE @len INT --�̶��绰λ��
    --SET @len=7
    --DECLARE @fr_or_zh CHAR(1) --ɸѡ�˻����ǵ绰
    --SET @fr_or_zh ='1'
    IF Object_id(N'tb_rhzh_gr', N'U') IS NULL
        OR Object_id(N'hnxlsys.dbo.tb_red_gr', N'U') IS NULL
      BEGIN
        SELECT '���˻�ϵͳ�����˻�����δ�����δ���ɺ�������Ϣ����' ע��
      END
    ELSE
      BEGIN
        IF @zh_state <> '1'
           AND @zh_state <> '9' --�˻�״̬����������
            OR @age_state <> '1'--���䷶Χȷ����ʽ
               AND @age_state <> '2'
               AND @age_state <> '3'
            OR @fr_or_zh <> '1'
               AND @fr_or_zh <> '2'
          BEGIN
            SELECT '���˻�״̬����ֻ��Ϊ1��9�����䷶Χ����ֻ��Ϊ1��2��3��ɸѡ����ֻ��Ϊ1��2' ��������
          END
        ELSE
          BEGIN
            --��ȡʡ�������������˻�ϵͳ�������ձ���Ϊʶ�𱾵ظ���
            SELECT DISTINCT LEFT(����, 2) ��������,
                            �˻�����
            INTO   #tmp1
            FROM   [HNXLSYS].[dbo].[AreaCodeOldNew]
            WHERE  NOT �˻����� IS NULL
            ORDER  BY �˻�����
            --��ȡ���������ĸ����˻�����һ���ٷ���
            SELECT ���,
                   ��� �������,----�������ȡ���ֵ�����Ϊidenty������update
                   [�˺�],
                   [���л�������],
                   [���������],
                   [������������],
                   [��֤�������ڵص�������],
                   [��ַ],
                   [�ʱ�],
                   [�绰],
                   dbo.F_delete_head(�绰, '0') �绰����,--��ú������ǰ��0
                   [����֤������],
                   [����֤�����],
                   [�б����],
                   [�����ص�������],
                   [�˻�����],
                   [��������],
                   [�˻���Ч����],
                   [��������],
                   [�������],
                   [�����Ǽ�����],
                   [��������],
                   [����],
                   [��������ڹ��һ����]
            INTO   #tmp
            FROM   tb_rhzh_gr a
                   LEFT JOIN #tmp1 b
                          ON LEFT(a.[�����ص�������], 4) = b.�˻����� --�˻���������
            WHERE  ( @zh_state = '1'
                     AND �������� IS NULL
                      OR @zh_state = '9' )
                   AND �������� >= @bgn_date
                   AND �������� <= @end_date
                   AND [����֤������] <> '����֤'
                   --AND LEFT(a.����֤�����, 2) <> b.�������� --�����Ϣ
            ORDER  BY a.����֤�����
            --RETURN    
            ----������֤ͬ���ű��ͬһ��ţ���С��ţ��������������֤�ű��ͬһ���
            ----ȡ��ÿ����֤ͬ���ŵ���С���
            SELECT Min(���) ��С���,--����֤�����ͬ���˻�����ű����ͬ����С���
                   ����֤�����,
                   Count(����֤�����) ����
            INTO   #tmp11
            FROM   #tmp
            GROUP  BY ����֤�����
            HAVING Count(����֤�����) > 1
            ORDER  BY ����֤�����
            ----��֤����ͬ��������Ź�Ϊһ��	
            UPDATE a
            SET    a.������� = b.��С���
            FROM   #tmp a
                   INNER JOIN #tmp11 b
                           ON a.����֤����� = b.����֤�����
            ---------------------------------------------------------------------------------------------
            ------����Ϊͬ�������ƶ�
            ----��ȡͬһ���������������ݺŷ��ˣ� ͬһ������ͬ����֤��ŵ�Ӧ�������ƶȣ���Ϊ���ƶȽӽ���ӦΪͬһ���ˣ������ǵı�����һ��
            SELECT ���������,
                   Count(DISTINCT ����֤�����) ����
            INTO   #tmp22
            FROM   #tmp
            GROUP  BY ���������
            HAVING Count(DISTINCT ����֤�����) > 1
            ORDER  BY ���������
            ----��ȡ������������֤������������ͱ��
            SELECT DISTINCT a.���������,
                            b.����֤�����,
                            b.�������
            INTO   #tmp33
            FROM   #tmp22 a
                   LEFT JOIN #tmp b
                          ON a.��������� = b.���������
            ORDER  BY ���������
            ----��ȡ���ƶȷ����߼���������ź����ݱ��
            SELECT DISTINCT a.�������,
                            a.���������,
                            a.����֤����� ����֤�����1,
                            b.����֤����� ����֤�����2,
                            DBO.Fn_resemble_onebyone(a.����֤�����, b.����֤�����) һ��һ���ƶ�
            --,
            --DBO.Fn_resemble_order(a.����֤�����, b.����֤�����) ˳�����ƶ�
            INTO   #tmp44
            FROM   #tmp33 a
                   INNER JOIN #tmp33 b
                           ON a.��������� = b.���������
            --INNER JOIN #tmp c
            --        ON a.��������� = c.���������
            --           AND a.����֤����� = c.����֤�����
            WHERE  DBO.Fn_resemble_onebyone(a.����֤�����, b.����֤�����) > 0.8
                   AND DBO.Fn_resemble_onebyone(a.����֤�����, b.����֤�����) < 1
            ORDER  BY ���������
            --SELECT *
            --FROM   #tmp44
            --ORDER  BY ���������
            --RETURN
            ----��ȡ���ƶ���С�������
            SELECT ���������,
                   Min(�������) ��С�������
            INTO   #tmp55
            FROM   #tmp44
            GROUP  BY ���������
            --select * from #tmp55 order by ���������
            --return
            --����#tmp44,������Ŷ������С��ţ�����������#tmp
            UPDATE a
            SET    a.������� = b.��С�������
            FROM   #tmp44 a
                   LEFT JOIN #tmp55 b
                          ON a.��������� = b.���������
            ----���»��������������������Ÿ���
            UPDATE a
            SET    a.������� = b.�������
            FROM   #tmp a
                   INNER JOIN #tmp44 b
                           ON a.��������� = b.���������
                              AND a.����֤����� = b.����֤�����1
            --       OR a.���������˻���������֤����� = c.���������˻���������֤�����2
            WHERE  a.������� > b.�������
            -----Ū����ʱ�����ڲ��Ժ���Ĵ���
            --      SELECT *
            --into tmp
            --      FROM   #tmp
            --      ORDER  BY �������
            ------------------------------------------------------------------------------------------
            --ͬһ������Ŷ���ӵ���˻�����
            SELECT ff.�绰����,
                   ff.�����˻�����,
                   dbo.Fn_getage(a.����֤�����, a.��������) ��������,
                   a.*
            INTO   #tmp_all
            FROM   #tmp A
                   OUTER APPLY (SELECT Count(*) �����˻�����,
                                       Count(DISTINCT �绰����) �绰����
                                FROM   #tmp B
                                WHERE  a.������� = b.�������
                                       AND Abs(Datediff(day, CONVERT(DATE, a.��������), CONVERT(DATE, b.��������))) <= @days) AS FF
            ORDER  BY �������,
                      ��������
            --select * from #tmp_all order by ���������
            ----RETURN
            -----------------------------------------------------------------------
            SELECT a.[���л�������],
                   d.���л�������,
                   a.[�˺�],
                   a.[���������],
                   a.[����֤������],
                   a.[����֤�����],
                   a.[�绰],
                   a.�����˻�����,
                   a.�绰����,
                   b.�永���� ֤���永����,
                   c.�永���� �ֻ��永����,
                   a.��������,
                   a.[��֤�������ڵص�������],
                   a.[��ַ],
                   a.[�����ص�������],
                   a.[�˻�����],
                   a.[��������],
                   a.[�˻���Ч����],
                   a.[��������],
                   a.[�������],
                   a.[�����Ǽ�����],
                   a.[��������],
                   a.[����],
                   a.[��������ڹ��һ����]
            --INTO #tmp_end
            FROM   #tmp_all a --
                   LEFT JOIN hnxlsys.dbo.tb_red_gr b --
                          ON a. [����֤�����] = b.֤������ --
                   LEFT JOIN hnxlsys.dbo.tb_red_phone c --
                          ON a.�绰���� = c.[�ֻ�����] --
                   LEFT JOIN V_Bank d
                          ON a.[���л�������] = d.���б�������
            WHERE  �������� <= ( CASE
                               WHEN @age_state = '1' THEN @Min_age
                               WHEN @age_state = '2' THEN 10000
                               WHEN @age_state = '3' THEN @max_age
                             END )
                   AND �������� >= ( CASE
                                   WHEN @age_state = '1' THEN-10000
                                   WHEN @age_state = '2' THEN @max_age
                                   WHEN @age_state = '3' THEN @min_age
                                 END )
                   AND CASE
                         WHEN @fr_or_zh = '1' THEN �����˻�����
                         WHEN @fr_or_zh = '2' THEN �绰����
                       END >= @zh_count
            ORDER  BY �������,
                      ��������
          END
      END
  END
GO 
��� ! �   �"  3   0      .�永�˻����           �      0606	    0
    1    1��� ! �   �"  4   3      �永��λ�˻���ȡ      �   @����!S:����|��̨|����@��������!S:@����!S:�Ͽ�@����!S:@֤������!S:@���˴���!S:@���˴���֤����!S:@���˴����ֻ�!S:@�永����(�永����թ�����)!S:@�˻����ͣ���λ����)!S: �      060601	    0
    1    1 	  CREATE PROCEDURE P_sazh_list(@dm VARCHAR(100),@bank VARCHAR(60),@pc VARCHAR(20),@hm VARCHAR(100),@zjhm VARCHAR(30),@frdb VARCHAR(60),@frdbzjh VARCHAR(30),@frdbsj VARCHAR(30),@salx VARCHAR(60),@zhlx VARCHAR(60))
WITH ENCRYPTION
AS
  BEGIN
    --����˹���ģ�ͣ�������ͬ��������ʾ��Ӧ�����˻�
    --DECLARE @dm VARCHAR(100)
    --SET @dm='����|��̨|����'
    --DECLARE @bank VARCHAR(60)
    --SET @bank=''
    --DECLARE @pc VARCHAR(12)
    --SET @pc='2020974'
    --DECLARE @hm VARCHAR(100)
    --SET @hm=''
    --DECLARE @zjhm VARCHAR(30)
    --SET @zjhm=''
    --DECLARE @frdb VARCHAR(60)
    --SET @frdb=''
    --DECLARE @frdbzjh VARCHAR(30)
    --SET @frdbzjh=''
    --DECLARE @frdbsj VARCHAR(30)
    --SET @frdbsj=''
    --DECLARE @salx VARCHAR(60)
    --SET @salx=''
    --DECLARE @zhlx VARCHAR(60)
    --SET @zhlx=''
    SELECT [�˺�],
           [����],
           [֤������],
           [����],
           [����������],
           [������������],
           [��������],
           [ע������],
           [�˻�����],
           [����״̬],
           [ʡ��],
           [����],
           [����],
           [Ӫҵִ�յ�ַ],
           [���������ַ],
           [���˴���],
           [���˴���֤������],
           [���˴���֤����],
           [���˻��˴����ֻ�],
           [������ϵ��],
           [��ϵ���ֻ�],
           [��ַ],
           [IP��ַ],
           [�ص�],
           [���ᵥλ],
           [����ʱ��],
           [¼�뵥λ],
           [¼��ʱ��],
           [�永����],
           [�˻�����],
           [����],
           [��ע]
    FROM   [HNXLSYS].[dbo].[tb_sazh] a,
           dbo.Ufn_splitstringtotable(@dm, '|') b
    WHERE  ( Charindex(b.id, a.������������) > 0
              OR Charindex(b.id, a.ʡ�� + a.���� + a.����) > 0 or len(b.id)=0)
           AND a.���� LIKE '%' + @bank + '%'
           AND a.���� LIKE '%' + @pc + '%'
           AND a.���� LIKE '%' + @hm + '%'
           AND a.֤������ LIKE '%' + @zjhm + '%'
           AND a.���˴��� LIKE '%' + @frdb + '%'
           AND a.���˴���֤���� LIKE '%' + @frdbzjh + '%'
           AND a.���˻��˴����ֻ� LIKE '%' + @frdbsj + '%'
           AND a.�˻����� LIKE '%' + @zhlx + '%'
           AND a.�永���� LIKE '%' + @salx + '%'
    ORDER  BY [����]
  END
GO��� ! �   �"  �   3      �永�����˻���ȡ      �   @����!S:����|��̨|����@��������!S:ũҵ@����!S:@����!S:@֤������!S:@���˴���!S:@���˴���֤����!S:@���˴����ֻ�!S:@�永����(�永����թ�����)!S:@�˻����ͣ���λ����)!S:���� �      060602	    0
    1    1 	  CREATE PROCEDURE P_sazh_list(@dm VARCHAR(100),@bank VARCHAR(60),@pc VARCHAR(20),@hm VARCHAR(100),@zjhm VARCHAR(30),@frdb VARCHAR(60),@frdbzjh VARCHAR(30),@frdbsj VARCHAR(30),@salx VARCHAR(60),@zhlx VARCHAR(60))
WITH ENCRYPTION
AS
  BEGIN
    --�뵥λ����ģ�ͣ�������ͬ��������ʾ��Ӧ�����˻�
    --DECLARE @dm VARCHAR(100)
    --SET @dm='����|��̨|����'
    --DECLARE @bank VARCHAR(60)
    --SET @bank=''
    --DECLARE @pc VARCHAR(12)
    --SET @pc='2020974'
    --DECLARE @hm VARCHAR(100)
    --SET @hm=''
    --DECLARE @zjhm VARCHAR(30)
    --SET @zjhm=''
    --DECLARE @frdb VARCHAR(60)
    --SET @frdb=''
    --DECLARE @frdbzjh VARCHAR(30)
    --SET @frdbzjh=''
    --DECLARE @frdbsj VARCHAR(30)
    --SET @frdbsj=''
    --DECLARE @salx VARCHAR(60)
    --SET @salx=''
    --DECLARE @zhlx VARCHAR(60)
    --SET @zhlx=''
    SELECT [�˺�],
           [����],
           [֤������],
           [����],
           [����������],
           [������������],
           [��������],
           [ע������],
           [�˻�����],
           [����״̬],
           [ʡ��],
           [����],
           [����],
           [Ӫҵִ�յ�ַ],
           [���������ַ],
           [���˴���],
           [���˴���֤������],
           [���˴���֤����],
           [���˻��˴����ֻ�],
           [������ϵ��],
           [��ϵ���ֻ�],
           [��ַ],
           [IP��ַ],
           [�ص�],
           [���ᵥλ],
           [����ʱ��],
           [¼�뵥λ],
           [¼��ʱ��],
           [�永����],
           [�˻�����],
           [����],
           [��ע]
    FROM   [HNXLSYS].[dbo].[tb_sazh] a,
           dbo.Ufn_splitstringtotable(@dm, '|') b
    WHERE  ( Charindex(b.id, a.������������) > 0
              OR Charindex(b.id, a.ʡ�� + a.���� + a.����) > 0  or len(b.id)=0 )
           AND a.���� LIKE '%' + @bank + '%'
           AND a.���� LIKE '%' + @pc + '%'
           AND a.���� LIKE '%' + @hm + '%'
           AND a.֤������ LIKE '%' + @zjhm + '%'
           AND a.���˴��� LIKE '%' + @frdb + '%'
           AND a.���˴���֤���� LIKE '%' + @frdbzjh + '%'
           AND a.���˻��˴����ֻ� LIKE '%' + @frdbsj + '%'
           AND a.�˻����� LIKE '%' + @zhlx + '%'
           AND a.�永���� LIKE '%' + @salx + '%'
    ORDER  BY [����]
  END
GO��� ! �   �"  F   3      �永�˻��������е�������     �永�˻�����������ȫʡ��������� �   @����!S:@��������!S:@����!S:�Ͽ�202005@����!S:@֤������!S:@���˴���!S:@���˴���֤����!S:@���˴����ֻ�!S:@�永����(�永����թ�����)!S:@�˻����ͣ���λ����)!S: �      060603	    0
    1    1   CREATE PROCEDURE P_sazh_city_order(@dm VARCHAR(100),@bank VARCHAR(60),@pc VARCHAR(20),@hm VARCHAR(100),@zjhm VARCHAR(30),@frdb VARCHAR(60),@frdbzjh VARCHAR(30),@frdbsj VARCHAR(30),@salx VARCHAR(60),@zhlx VARCHAR(60))
WITH ENCRYPTION
AS
  BEGIN
    --���е�������
    --DECLARE @dm VARCHAR(100)
    --SET @dm=''
    --DECLARE @bank VARCHAR(60)
    --SET @bank=''
    --DECLARE @pc VARCHAR(12)
    --SET @pc='�Ͽ�'
    --DECLARE @hm VARCHAR(100)
    --SET @hm=''
    --DECLARE @zjhm VARCHAR(30)
    --SET @zjhm=''
    --DECLARE @frdb VARCHAR(60)
    --SET @frdb=''
    --DECLARE @frdbzjh VARCHAR(30)
    --SET @frdbzjh=''
    --DECLARE @frdbsj VARCHAR(30)
    --SET @frdbsj=''
    --DECLARE @salx VARCHAR(60)
    --SET @salx=''
    --DECLARE @zhlx VARCHAR(60)
    --SET @zhlx='����'
    --
    IF Object_id('tempdb..#tmp') IS NOT NULL
      DROP TABLE #tmp
    --
    DECLARE @sql VARCHAR(max)
    DECLARE @tmp VARCHAR(60)
    SELECT '              AȫϽ                  ' ����,
           [����],
           Count(DISTINCT �˺�) ����,
           Row_number() OVER(ORDER BY Count(DISTINCT �˺�) desc) ����
    INTO   #tmp
    FROM   [HNXLSYS].[dbo].[tb_sazh] a,
           dbo.Ufn_splitstringtotable(@dm, '|') b
    WHERE  ( Charindex(b.id, a.������������) > 0
              OR Charindex(b.id, a.ʡ�� + a.���� + a.����) > 0
              OR Len(b.id) = 0 )
           AND a.���� LIKE '%' + @bank + '%'
           AND a.���� LIKE '%' + @pc + '%'
           AND a.���� LIKE '%' + @hm + '%'
           AND a.֤������ LIKE '%' + @zjhm + '%'
           AND a.���˴��� LIKE '%' + @frdb + '%'
           AND a.���˴���֤���� LIKE '%' + @frdbzjh + '%'
           AND a.���˻��˴����ֻ� LIKE '%' + @frdbsj + '%'
           AND a.�˻����� LIKE '%' + @zhlx + '%'
           AND a.�永���� LIKE '%' + @salx + '%'
    GROUP  BY [����]
    ORDER  BY ���� DESC
    --�����α�Ϊ����
    DECLARE order_cursor CURSOR FOR
      (SELECT DISTINCT ����
       FROM   [HNXLSYS].[dbo].[tb_sazh] a,
              dbo.Ufn_splitstringtotable(@dm, '|') b
       WHERE  ( Charindex(b.id, a.������������) > 0
                 OR Charindex(b.id, a.ʡ�� + a.���� + a.����) > 0
                 OR Len(b.id) = 0 )
              AND ����  like '%' + @pc + '%')
    --���α�--
    OPEN order_cursor
    --��ʼѭ���α����--
    FETCH next FROM order_cursor INTO @tmp
    WHILE @@FETCH_STATUS = 0 --���ر� FETCH���ִ�е�����α��״̬--
      BEGIN
        SET @bank = @tmp
        INSERT INTO #tmp
        SELECT @tmp ����,
               [����],
               Count(DISTINCT �˺�) ����,
           Row_number() OVER(ORDER BY Count(DISTINCT �˺�) desc) ����
        FROM   [HNXLSYS].[dbo].[tb_sazh] a,
               dbo.Ufn_splitstringtotable(@dm, '|') b
        WHERE  ( Charindex(b.id, a.������������) > 0
                  OR Charindex(b.id, a.ʡ�� + a.���� + a.����) > 0
                  OR Len(b.id) = 0 )
               AND a.���� LIKE '%' + @bank + '%'
               AND a.���� LIKE '%' + @pc + '%'
               AND a.���� LIKE '%' + @hm + '%'
               AND a.֤������ LIKE '%' + @zjhm + '%'
               AND a.���˴��� LIKE '%' + @frdb + '%'
               AND a.���˴���֤���� LIKE '%' + @frdbzjh + '%'
               AND a.���˻��˴����ֻ� LIKE '%' + @frdbsj + '%'
               AND a.�˻����� LIKE '%' + @zhlx + '%'
               AND a.�永���� LIKE '%' + @salx + '%'
        GROUP  BY [����]
        ORDER  BY ���� DESC
        FETCH next FROM order_cursor INTO @tmp --ת����һ���α꣬û�л���ѭ��
      END
    CLOSE order_cursor --�ر��α�
    DEALLOCATE order_cursor --�ͷ��α�
    SELECT Trim(����) ����,
           ����,
           ����,
           ���� �永�˻�����
    FROM   #tmp
    ORDER  BY ����,
              ���� DESC
  END
GO 
��� ! �   �"  G   3      �永�˻�����������������     �永�˻������ڸ���������������� �   @����!S:@��������!S:@����!S:�Ͽ�02@����!S:@֤������!S:@���˴���!S:@���˴���֤����!S:@���˴����ֻ�!S:@�永����(�永����թ�����)!S:@�˻����ͣ���λ����)!S: �      060604	    0
    1    1 a  CREATE PROCEDURE P_sazh_bank_order(@dm VARCHAR(100),@bank VARCHAR(60),@pc VARCHAR(20),@hm VARCHAR(100),@zjhm VARCHAR(30),@frdb VARCHAR(60),@frdbzjh VARCHAR(30),@frdbsj VARCHAR(30),@salx VARCHAR(60),@zhlx VARCHAR(60))
WITH ENCRYPTION
AS
  BEGIN
    --������������
    --DECLARE @dm VARCHAR(100)
    --SET @dm=''
    --DECLARE @bank VARCHAR(60)
    --SET @bank=''
    --DECLARE @pc VARCHAR(12)
    --SET @pc='�Ͽ�'
    --DECLARE @hm VARCHAR(100)
    --SET @hm=''
    --DECLARE @zjhm VARCHAR(30)
    --SET @zjhm=''
    --DECLARE @frdb VARCHAR(60)
    --SET @frdb=''
    --DECLARE @frdbzjh VARCHAR(30)
    --SET @frdbzjh=''
    --DECLARE @frdbsj VARCHAR(30)
    --SET @frdbsj=''
    --DECLARE @salx VARCHAR(60)
    --SET @salx=''
    --DECLARE @zhlx VARCHAR(60)
    --SET @zhlx=''
    DECLARE @city VARCHAR(60)
    SET @city=''
    --
    IF Object_id('tempdb..#tmp') IS NOT NULL
      DROP TABLE #tmp
    --
    -- DECLARE @sql VARCHAR(max)
    DECLARE @tmp VARCHAR(60)
    SELECT '             0ȫʡ                  ' ����,
           ����,
           Count(DISTINCT �˺�) ����,
           Row_number() OVER(ORDER BY Count(DISTINCT �˺�) desc) ����
    INTO   #tmp
    FROM   [HNXLSYS].[dbo].[tb_sazh] a,
           dbo.Ufn_splitstringtotable(@dm, '|') b
    WHERE  ( Charindex(b.id, a.������������) > 0
              OR Charindex(b.id, a.ʡ�� + a.���� + a.����) > 0
              OR Len(b.id) = 0 )
           AND a.���� LIKE '%' + @bank + '%'
           AND a.���� LIKE '%' + @pc + '%'
           AND a.���� LIKE '%' + @hm + '%'
           AND a.֤������ LIKE '%' + @zjhm + '%'
           AND a.���˴��� LIKE '%' + @frdb + '%'
           AND a.���˴���֤���� LIKE '%' + @frdbzjh + '%'
           AND a.���˻��˴����ֻ� LIKE '%' + @frdbsj + '%'
           AND a.�˻����� LIKE '%' + @zhlx + '%'
           AND a.�永���� LIKE '%' + @salx + '%'
    GROUP  BY ����
    ORDER  BY ���� DESC
    --�����α�Ϊ����
    DECLARE order_cursor CURSOR FOR
      (SELECT DISTINCT ����
       FROM   [HNXLSYS].[dbo].[tb_sazh] a,
              dbo.Ufn_splitstringtotable(@dm, '|') b
       WHERE  ( Charindex(b.id, a.������������) > 0
                 OR Charindex(b.id, a.ʡ�� + a.���� + a.����) > 0
                 OR Len(b.id) = 0 )
              AND ���� LIKE '%' + @pc + '%')
    --���α�--
    OPEN order_cursor
    --��ʼѭ���α����--
    FETCH next FROM order_cursor INTO @tmp
    WHILE @@FETCH_STATUS = 0 --���ر� FETCH���ִ�е�����α��״̬--
      BEGIN
        --SET @city = @tmp
        INSERT INTO #tmp
        SELECT @tmp [����],
               ����,
               Count(DISTINCT �˺�) ����,
               Row_number() OVER(ORDER BY Count(DISTINCT �˺�) desc) ����
        FROM   [HNXLSYS].[dbo].[tb_sazh] a,
               dbo.Ufn_splitstringtotable(@dm, '|') b
        WHERE  ( Charindex(b.id, a.������������) > 0
                  OR Charindex(b.id, a.ʡ�� + a.���� + a.����) > 0
                  OR Len(b.id) = 0 )
               AND a.���� LIKE '%' + @bank + '%'
               AND a.���� LIKE '%' + @pc + '%'
               AND a.���� LIKE '%' + @hm + '%'
               AND a.֤������ LIKE '%' + @zjhm + '%'
               AND a.���˴��� LIKE '%' + @frdb + '%'
               AND a.���˴���֤���� LIKE '%' + @frdbzjh + '%'
               AND a.���˻��˴����ֻ� LIKE '%' + @frdbsj + '%'
               AND a.�˻����� LIKE '%' + @zhlx + '%'
               AND a.�永���� LIKE '%' + @salx + '%'
               AND a.���� LIKE '%' + @tmp + '%'
        GROUP  BY ����
        ORDER  BY ���� DESC
        FETCH next FROM order_cursor INTO @tmp --ת����һ���α꣬û�л���ѭ��
      END
    CLOSE order_cursor --�ر��α�
    DEALLOCATE order_cursor --�ͷ��α�
    SELECT Trim(����) ����,
           ����,
           ����,
           ���� �永�˻�����
    FROM   #tmp
    ORDER  BY ����,
              ���� DESC
  END
GO 
��� ! �   �"  B   3      ������ͳ���永�˻����� 0   ������Χ��ص㡢�永���Ρ���λ����˵ȿɲ������� �   @����!S:����|��̨|����@��������!S:@����!S:�Ͽ�@����!S:@֤������!S:@���˴���!S:@���˴���֤����!S:@���˴����ֻ�!S:@�永����(�永����թ�����)!S:@�˻����ͣ���λ����)!S:��λ �      060605	    0
    1    1 �  CREATE PROCEDURE P_sazh_count_bank(@dm VARCHAR(100),@bank VARCHAR(60),@pc VARCHAR(20),@hm VARCHAR(100),@zjhm VARCHAR(30),@frdb VARCHAR(60),@frdbzjh VARCHAR(30),@frdbsj VARCHAR(30),@salx VARCHAR(60),@zhlx VARCHAR(60))
WITH ENCRYPTION
AS
  BEGIN
    --����˹���ģ�ͣ�������ͬ��������ʾ��Ӧ�����˻�
    --DECLARE @dm VARCHAR(100)
    --SET @dm='����|��̨|����'
    --DECLARE @bank VARCHAR(60)
    --SET @bank=''
    --DECLARE @pc VARCHAR(12)
    --SET @pc=''
    --DECLARE @hm VARCHAR(100)
    --SET @hm=''
    --DECLARE @zjhm VARCHAR(30)
    --SET @zjhm=''
    --DECLARE @frdb VARCHAR(60)
    --SET @frdb=''
    --DECLARE @frdbzjh VARCHAR(30)
    --SET @frdbzjh=''
    --DECLARE @frdbsj VARCHAR(30)
    --SET @frdbsj=''
    --DECLARE @salx VARCHAR(60)
    --SET @salx=''
    --DECLARE @zhlx VARCHAR(60)
    --SET @zhlx='����'
    SELECT [����],
           Count(distinct �˺�) �永�˻�����,
           Row_number() OVER(ORDER BY Count(DISTINCT �˺�) desc) ����
    FROM   [HNXLSYS].[dbo].[tb_sazh] a,
           dbo.Ufn_splitstringtotable(@dm, '|') b
    WHERE  ( Charindex(b.id, a.������������) > 0
              OR Charindex(b.id, a.ʡ�� + a.���� + a.����) > 0
              OR Len(b.id) = 0 )
           AND a.���� LIKE '%' + @bank + '%'
           AND a.���� LIKE '%' + @pc + '%'
           AND a.���� LIKE '%' + @hm + '%'
           AND a.֤������ LIKE '%' + @zjhm + '%'
           AND a.���˴��� LIKE '%' + @frdb + '%'
           AND a.���˴���֤���� LIKE '%' + @frdbzjh + '%'
           AND a.���˻��˴����ֻ� LIKE '%' + @frdbsj + '%'
           AND a.�˻����� LIKE '%' + @zhlx + '%'
           AND a.�永���� LIKE '%' + @salx + '%'
    GROUP  BY [����]
    ORDER  BY �永�˻����� DESC
  END
GO 
��� ! �   �"  C   3      ������ͳ���永�˻����� 0   ������Χ��ص㡢�永���Ρ���λ����˵ȿɲ������� �   @����!S:����|��̨|����@��������!S:@����!S:�Ͽ�@����!S:@֤������!S:@���˴���!S:@���˴���֤����!S:@���˴����ֻ�!S:@�永����(�永����թ�����)!S:@�˻����ͣ���λ����)!S:��λ �      060606	    0
    1    1   CREATE PROCEDURE P_sazh_count_wd(@dm VARCHAR(100),@bank VARCHAR(60),@pc VARCHAR(20),@hm VARCHAR(100),@zjhm VARCHAR(30),@frdb VARCHAR(60),@frdbzjh VARCHAR(30),@frdbsj VARCHAR(30),@salx VARCHAR(60),@zhlx VARCHAR(60))
WITH ENCRYPTION
AS
  BEGIN
    --����˹���ģ�ͣ�������ͬ��������ʾ��Ӧ�����˻�
    --DECLARE @dm VARCHAR(100)
    --SET @dm='����|��̨|����'
    --DECLARE @bank VARCHAR(60)
    --SET @bank=''
    --DECLARE @pc VARCHAR(12)
    --SET @pc=''
    --DECLARE @hm VARCHAR(100)
    --SET @hm=''
    --DECLARE @zjhm VARCHAR(30)
    --SET @zjhm=''
    --DECLARE @frdb VARCHAR(60)
    --SET @frdb=''
    --DECLARE @frdbzjh VARCHAR(30)
    --SET @frdbzjh=''
    --DECLARE @frdbsj VARCHAR(30)
    --SET @frdbsj=''
    --DECLARE @salx VARCHAR(60)
    --SET @salx=''
    --DECLARE @zhlx VARCHAR(60)
    --SET @zhlx='����'
    SELECT [����],
           [������������],
           Count(distinct �˺�) �永�˻�����,
           Row_number() OVER(ORDER BY Count(DISTINCT �˺�) desc) ����
    FROM   [HNXLSYS].[dbo].[tb_sazh] a,
           dbo.Ufn_splitstringtotable(@dm, '|') b
    WHERE  ( Charindex(b.id, a.������������) > 0
              OR Charindex(b.id, a.ʡ�� + a.���� + a.����) > 0
              OR Len(b.id) = 0 )
           AND a.���� LIKE '%' + @bank + '%'
           AND a.���� LIKE '%' + @pc + '%'
           AND a.���� LIKE '%' + @hm + '%'
           AND a.֤������ LIKE '%' + @zjhm + '%'
           AND a.���˴��� LIKE '%' + @frdb + '%'
           AND a.���˴���֤���� LIKE '%' + @frdbzjh + '%'
           AND a.���˻��˴����ֻ� LIKE '%' + @frdbsj + '%'
           AND a.�˻����� LIKE '%' + @zhlx + '%'
           AND a.�永���� LIKE '%' + @salx + '%'
    GROUP  BY [����],
              [������������]
    ORDER  BY �永�˻����� DESC
  END
GO 
��� ! �   �"  D   3      ������ͳ���永�˻����� 0   ������Χ��ص㡢�永���Ρ���λ����˵ȿɲ������� �   @����!S:@��������!S:����@����!S:�Ͽ�@����!S:@֤������!S:@���˴���!S:@���˴���֤����!S:@���˴����ֻ�!S:@�永����(�永����թ�����)!S:@�˻����ͣ���λ����)!S:���� �      060607	    0
    1    1 �  CREATE PROCEDURE P_sazh_count_city(@dm VARCHAR(100),@bank VARCHAR(60),@pc VARCHAR(20),@hm VARCHAR(100),@zjhm VARCHAR(30),@frdb VARCHAR(60),@frdbzjh VARCHAR(30),@frdbsj VARCHAR(30),@salx VARCHAR(60),@zhlx VARCHAR(60))
WITH ENCRYPTION
AS
  BEGIN
    --����˹���ģ�ͣ�������ͬ��������ʾ��Ӧ�����˻�
    --DECLARE @dm VARCHAR(100)
    --SET @dm='����|��̨|����'
    --DECLARE @bank VARCHAR(60)
    --SET @bank=''
    --DECLARE @pc VARCHAR(12)
    --SET @pc=''
    --DECLARE @hm VARCHAR(100)
    --SET @hm=''
    --DECLARE @zjhm VARCHAR(30)
    --SET @zjhm=''
    --DECLARE @frdb VARCHAR(60)
    --SET @frdb=''
    --DECLARE @frdbzjh VARCHAR(30)
    --SET @frdbzjh=''
    --DECLARE @frdbsj VARCHAR(30)
    --SET @frdbsj=''
    --DECLARE @salx VARCHAR(60)
    --SET @salx=''
    --DECLARE @zhlx VARCHAR(60)
    --SET @zhlx='����'
    SELECT [����],
           Count(distinct �˺�) �永�˻�����,
           Row_number() OVER(ORDER BY Count(DISTINCT �˺�) desc) ����
    FROM   [HNXLSYS].[dbo].[tb_sazh] a,
           dbo.Ufn_splitstringtotable(@dm, '|') b
    WHERE  ( Charindex(b.id, a.������������) > 0
              OR Charindex(b.id, a.ʡ�� + a.���� + a.����) > 0
              OR Len(b.id) = 0 )
           AND a.���� LIKE '%' + @bank + '%'
           AND a.���� LIKE '%' + @pc + '%'
           AND a.���� LIKE '%' + @hm + '%'
           AND a.֤������ LIKE '%' + @zjhm + '%'
           AND a.���˴��� LIKE '%' + @frdb + '%'
           AND a.���˴���֤���� LIKE '%' + @frdbzjh + '%'
           AND a.���˻��˴����ֻ� LIKE '%' + @frdbsj + '%'
           AND a.�˻����� LIKE '%' + @zhlx + '%'
           AND a.�永���� LIKE '%' + @salx + '%'
    GROUP  BY [����]
    ORDER  BY �永�˻����� DESC
  END
GO 
��� ! �   �"  E   3      ������ͳ���永�˻����� 0   ������Χ��ص㡢�永���Ρ���λ����˵ȿɲ������� �   @����!S:����|��̨|����@��������!S:ũҵ@����!S:@����!S:@֤������!S:@���˴���!S:@���˴���֤����!S:@���˴����ֻ�!S:@�永����(�永����թ�����)!S:@�˻����ͣ���λ����)!S:���� �      060608	    0
    1    1 �  CREATE PROCEDURE P_sazh_count_distr(@dm VARCHAR(100),@bank VARCHAR(60),@pc VARCHAR(20),@hm VARCHAR(100),@zjhm VARCHAR(30),@frdb VARCHAR(60),@frdbzjh VARCHAR(30),@frdbsj VARCHAR(30),@salx VARCHAR(60),@zhlx VARCHAR(60))
WITH ENCRYPTION
AS
  BEGIN
    --����˹���ģ�ͣ�������ͬ��������ʾ��Ӧ�����˻�
    --DECLARE @dm VARCHAR(100)
    --SET @dm='����|��̨|����'
    --DECLARE @bank VARCHAR(60)
    --SET @bank=''
    --DECLARE @pc VARCHAR(12)
    --SET @pc=''
    --DECLARE @hm VARCHAR(100)
    --SET @hm=''
    --DECLARE @zjhm VARCHAR(30)
    --SET @zjhm=''
    --DECLARE @frdb VARCHAR(60)
    --SET @frdb=''
    --DECLARE @frdbzjh VARCHAR(30)
    --SET @frdbzjh=''
    --DECLARE @frdbsj VARCHAR(30)
    --SET @frdbsj=''
    --DECLARE @salx VARCHAR(60)
    --SET @salx=''
    --DECLARE @zhlx VARCHAR(60)
    --SET @zhlx='����'
    SELECT [����],
           Count(distinct �˺�) �永�˻�����,
           Row_number() OVER(ORDER BY Count(DISTINCT �˺�) desc) ����
    FROM   [HNXLSYS].[dbo].[tb_sazh] a,
           dbo.Ufn_splitstringtotable(@dm, '|') b
    WHERE  ( Charindex(b.id, a.������������) > 0
              OR Charindex(b.id, a.ʡ�� + a.���� + a.����) > 0
              OR Len(b.id) = 0 )
           AND a.���� LIKE '%' + @bank + '%'
           AND a.���� LIKE '%' + @pc + '%'
           AND a.���� LIKE '%' + @hm + '%'
           AND a.֤������ LIKE '%' + @zjhm + '%'
           AND a.���˴��� LIKE '%' + @frdb + '%'
           AND a.���˴���֤���� LIKE '%' + @frdbzjh + '%'
           AND a.���˻��˴����ֻ� LIKE '%' + @frdbsj + '%'
           AND a.�˻����� LIKE '%' + @zhlx + '%'
           AND a.�永���� LIKE '%' + @salx + '%'
    GROUP  BY [����]
    ORDER  BY �永�˻����� DESC
  END
GO 
��� ! �   �"  5   3      �永��λ�˻��������      _   @��������!S:3401@����(Ϊ�ջ�%Ϊȫ��)!S:�й�����@����(0Ϊȫ��)!S:0@�Ƿ񱸰�(0δ����,1�ѱ���)!S:0 �      060609	    0
    1    1 =
  CREATE PROCEDURE P_sazh_ba(@dqbm VARCHAR(6),@bank VARCHAR(60),@pc VARCHAR(12),@baok CHAR(1))
WITH ENCRYPTION
AS
  BEGIN
      --DECLARE @dqbm VARCHAR(6)
      --SET @dqbm='3404'
      --DECLARE @pc VARCHAR(6)
      --SET @pc='0'
      --DECLARE @baOK VARCHAR(6)
      --SET @baOK='0'
      IF Object_id(N'tb_rhzh_dw', N'U') IS NULL
        BEGIN
            SELECT '���˻�ϵͳ��λ�˻�����δ����' ע��
        END
      ELSE
        BEGIN
            IF @baOK <> '0'
               AND @baOK <> '1'
              BEGIN
                  SELECT '������״ֻ̬��Ϊ0��1' ��������
              END
            ELSE
              BEGIN
                  SELECT a.[�˺�],
                         [����],
                         [ͳһ������ô���],
                         [����],
                         [��������],
                         a.[��������],
                         [ע������],
                         [����״̬],
                         [ʡ��],
                         [����],
                         [����],
                         [Ӫҵִ�յ�ַ],
                         [���������ַ],
                         [���˴���],
                         [���˴���֤����],
                         [���˴����ֻ���],
                         [������ϵ��],
                         [��ϵ���ֻ�],
                         [¼�뵥λ],
                         [¼��ʱ��],
                         [����],
                         b.�˻����� �����˻�����,
                         b.�˻�״̬ �����˻�״̬,
                         b.�������� ������������,
                         b.�������� ������������,
                         b.��ַ   ������ַ
                  FROM   [HNXLSYS].[dbo].[tb_sazh] a
                         LEFT JOIN tb_rhzh_dw b
                                ON a.�˺� = b.�˺�
                  WHERE  ( a.[ͳһ������ô���] LIKE '__' + @dqbm + '%' )
                         AND ���� LIKE '%' + @bank + '%'
                         AND ( a.���� LIKE ( CASE
                                             WHEN @pc = '0' THEN '%'
                                             ELSE '%' + @pc + '%'
                                           END ) )
                         AND CASE
                               WHEN @baOK = '0'
                                    AND b.�˺� IS NULL THEN '0'
                               WHEN @baOK = '1'
                                    AND NOT b.�˺� IS NULL THEN '1'
                             END = @baOK
                  ORDER  BY [����]
              END
        END
  END
GO��� ! �   �"     3   $   ������(��λ�����ֻ����)������λ�˻� l   ���永�˻����˼��ֻ���������ϵ�˼��ֻ�����λ֤��������ͬ��������λ�˻������Լ���永�˻��������ֿ������˻��� @   @�˻�״̬(1���������,9����)!S:9@��������!D:20150101@�永����!S: �      060610	    0
    1    1 �  CREATE PROCEDURE P_sazh_other_dw(@zh_state CHAR(1),@kh_date CHAR(8),@pc VARCHAR(10))
WITH ENCRYPTION
AS
  BEGIN
    IF Object_id('tempdb..#tmp0') IS NOT NULL
      DROP TABLE #tmp0
    IF Object_id('tempdb..#tmp00') IS NOT NULL
      DROP TABLE #tmp00
    IF Object_id('tempdb..#tmp1') IS NOT NULL
      DROP TABLE #tmp1
    IF Object_id('tempdb..#tmp2') IS NOT NULL
      DROP TABLE #tmp2
    IF Object_id('tempdb..#tmp3') IS NOT NULL
      DROP TABLE #tmp3
    IF Object_id('tempdb..#tmp_end1') IS NOT NULL
      DROP TABLE #tmp_end1
    IF Object_id('tempdb..#tmp_end2') IS NOT NULL
      DROP TABLE #tmp_end2
    IF Object_id('tempdb..#tmp_end3') IS NOT NULL
      DROP TABLE #tmp_end3
    --DECLARE @pc VARCHAR(6)
    --SET @pc=''
    --DECLARE @zh_state CHAR(1)
    --SET @zh_state = '9'
    --DECLARE @kh_date CHAR(8)
    --SET @kh_date ='20160101'
    IF Object_id(N'tb_rhzh_dw', N'U') IS NULL
        OR Object_id(N'tb_red_dw', N'U') IS NULL
        OR Object_id(N'tb_red_gr', N'U') IS NULL
        OR Object_id(N'tb_red_phone', N'U') IS NULL
      BEGIN
        SELECT '���˻�ϵͳ��λ�˻�����δ������������δ���ɺ�������Ϣ' ע��
      END
    ELSE
      BEGIN
        IF @zh_state <> '1'
           AND @zh_state <> '9'
          BEGIN
            SELECT '���˺�״ֻ̬��Ϊ1��9' ��������
          END
        ELSE
          BEGIN
            --��ȡ��λ�˻�#tmp0
            SELECT [���л�������],
                   b.���л�������,
                   ���������˻���������,
                   ���������˻���������֤�����,
                   RIGHT(Trim([��ϵ�绰]), 11) ��ϵ�绰,
                   [������ô���],
                   ��֯��������,
                   [�˺�],
                   [�˻�����],
                   [ע���ʽ���],
                   [�˻�����],
                   [��������],
                   [��������],
                   [�˻�״̬],
                   [��ַ]
            INTO   #tmp0
            FROM   tb_rhzh_dw a
                   LEFT JOIN V_Bank b
                          ON a.���л������� = b.���б�������
            WHERE  ( �˻�״̬ LIKE( CASE
                                  WHEN @zh_state = '1' THEN '����'
                                  WHEN @zh_state = '9' THEN '%'
                                END )
                      OR �˻�״̬ LIKE( CASE
                                      WHEN @zh_state = '1' THEN '����'
                                      WHEN @zh_state = '9' THEN '%'
                                    END ) )
                   AND [��������] >= @kh_date
            --��ȡ�永�˻��˺������޳����Է��������永�˻�����λ��
            SELECT DISTINCT �˺�
            INTO   #tmp00
            FROM   [HNXLSYS].[dbo].[tb_sazh]
            WHERE  �˻����� = '��λ'
            --��ȡ������������һ�»���#tmp1
            SELECT [֤������],
                   [֤������] ֤�����봦��,
                   [����],
                   [ע������],
                   [���˴���],
                   [���˴���֤����],
                   [�永�˻�],
                   [�永����],
                   [�永����]
            INTO   #tmp1
            FROM   [tb_red_dw]
            WHERE  [�永����] LIKE '%' + @pc + '%'
            --select * from #tmp0 where [�˻�����]='��������ê��ó���޹�˾'
            --select * from #tmp1 where [����]='��������ê��ó���޹�˾'
            --ͬ��������֤���ű�Ϊһ��
            UPDATE a
            SET    a.֤�����봦�� = b.������ô���
            FROM   #tmp1 a
                   INNER JOIN #tmp0 b
                           ON a.���� = b.�˻�����
            WHERE  DBO.Fn_resemble_onebyone(b.������ô���, a.֤������) > 0.8
                   AND DBO.Fn_resemble_onebyone(b.������ô���, a.֤������) < 1
                    OR ( Charindex (a.֤������, b.������ô���) > 0 )
            --�ȶԵ�λ�������ҵ������永�˻���Χ�ڵĵ�λ�˻�
            SELECT a.*,
                   b.[�永�˻�],
                   b.[�永����],
                   b.[�永����]
            INTO   #tmp_end1
            FROM   #tmp0 a
                   INNER JOIN #tmp1 b
                           ON a.������ô��� = b.֤�����봦��
            WHERE  �˺� NOT IN (SELECT DISTINCT �˺�
                              FROM   #tmp00)
            --��ȡ���˺�����
            SELECT [֤������],
                   [֤������] ֤�����봦��,
                   [����],
                   [�ֻ�����],
                   [���˻�λ��ַ],
                   [�永�˻�],
                   [�永����],
                   [�永����]
            INTO   #tmp2
            FROM   [tb_red_gr]
            WHERE  [�永����] LIKE '%' + @pc + '%'
            --�����永֤�����
            UPDATE a
            SET    a.֤�����봦�� = b.���������˻���������֤�����
            FROM   #tmp2 a
                   INNER JOIN #tmp0 b
                           ON a.���� = b.���������˻���������
            WHERE  DBO.Fn_resemble_onebyone(b.���������˻���������֤�����, a.֤������) > 0.8
                   AND DBO.Fn_resemble_onebyone(b.���������˻���������֤�����, a.֤������) < 1
            -- OR ( Charindex (a.֤������, b.������ô���) > 0 )
            SELECT a.*,
                   b.[�永�˻�],
                   b.[�永����],
                   b.[�永����]
            INTO   #tmp_end2
            FROM   #tmp0 a
                   INNER JOIN #tmp2 b
                           ON a.���������˻���������֤����� = b.֤�����봦��
            WHERE  �˺� NOT IN (SELECT DISTINCT �˺�
                              FROM   #tmp00)
            --��ȡ�ֻ�������
            SELECT RIGHT(Trim([�ֻ�����]), 11) �ֻ�����,
                   [����],
                   [֤������],
                   [���˻�λ��ַ],
                   [�永�˻�],
                   [�永����],
                   [�永����]
            INTO   #tmp3
            FROM   [tb_red_phone]
            WHERE  [�永����] LIKE '%' + @pc + '%'
            SELECT a.*,
                   b.[�永�˻�],
                   b.[�永����],
                   b.[�永����]
            INTO   #tmp_end3
            FROM   #tmp0 a
                   INNER JOIN #tmp3 b
                           ON a.��ϵ�绰 = b.�ֻ�����
            WHERE  �˺� NOT IN (SELECT DISTINCT �˺�
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
            ORDER  BY ���л�������,
                      �˻�����
          END
      END
  END
GO 
��� ! �   �"  ?   3   $   ������(��λ�����ֻ����)���������˻� 
   ���������� @   @�˻�״̬(1���������,9����)!S:1@��������!D:20190101@�永����!S: �      060611	    0
    1    1 �  CREATE PROCEDURE P_sazh_other_gr(@zh_state CHAR(1),@kh_date CHAR(8),@pc VARCHAR(10))
WITH ENCRYPTION
AS
  BEGIN
    IF Object_id('tempdb..#tmp0') IS NOT NULL
      DROP TABLE #tmp0
    IF Object_id('tempdb..#tmp00') IS NOT NULL
      DROP TABLE #tmp00
    IF Object_id('tempdb..#tmp000') IS NOT NULL
      DROP TABLE #tmp1
    IF Object_id('tempdb..#tmp2') IS NOT NULL
      DROP TABLE #tmp2
    IF Object_id('tempdb..#tmp3') IS NOT NULL
      DROP TABLE #tmp3
    IF Object_id('tempdb..#tmp_end1') IS NOT NULL
      DROP TABLE #tmp_end1
    IF Object_id('tempdb..#tmp_end2') IS NOT NULL
      DROP TABLE #tmp_end2
    --DECLARE @pc VARCHAR(10)
    --SET @pc=''
    --DECLARE @zh_state CHAR(1)
    --SET @zh_state = '9'
    --DECLARE @kh_date CHAR(8)
    --SET @kh_date ='20200101'
    IF Object_id(N'tb_rhzh_gr', N'U') IS NULL
        OR Object_id(N'tb_red_dw', N'U') IS NULL
        OR Object_id(N'tb_red_gr', N'U') IS NULL
        OR Object_id(N'tb_red_phone', N'U') IS NULL
      BEGIN
        SELECT '���˻�ϵͳ��λ�˻�����δ������������δ���ɺ�������Ϣ' ע��
      END
    ELSE
      BEGIN
        IF @zh_state <> '1'
           AND @zh_state <> '9'
          BEGIN
            SELECT '���˺�״ֻ̬��Ϊ1��9' ��������
          END
        ELSE
          BEGIN
            --��ȡ�����˻�#tmp0
            SELECT [�˺�],
                   [���л�������],
                   b.���л�������,
                   [���������],
                   [��ַ],
                   RIGHT(Trim([�绰]), 11) �绰,
                   [����֤�����],
                   [�˻�����],
                   [��������],
                   [�˻���Ч����],
                   [��������]
            INTO   #tmp0
            FROM   tb_rhzh_gr a
                   LEFT JOIN V_Bank b
                          ON a.���л������� = b.���б�������
            WHERE  [��������] >= @kh_date
                   AND CASE
                         WHEN Len(Isnull([��������], '')) = 0
                              AND @zh_state = '1' THEN '1'
                         WHEN Len(Isnull([��������], '')) >= 0
                              AND @zh_state = '9' THEN '1'
                       END = '1'
            --��ȡ�永�˻��˺������޳����Է��������永�˻�����λ��
            SELECT DISTINCT �˺�
            INTO   #tmp00
            FROM   [HNXLSYS].[dbo].[tb_sazh]
            WHERE  �˻����� = '����'
            --��ȡ������������һ�»���#tmp1
            ---��ȡ���˺�����
            SELECT [֤������],
                   [֤������] ֤�����봦��,
                   [����],
                   [�ֻ�����],
                   [���˻�λ��ַ],
                   [�永�˻�],
                   [�永����],
                   [�永����]
            INTO   #tmp2
            FROM   [tb_red_gr]
            WHERE  �永���� LIKE '%' + @pc + '%'
            --�����永֤�����
            UPDATE a
            SET    a.֤�����봦�� = b.[����֤�����]
            FROM   #tmp2 a
                   INNER JOIN #tmp0 b
                           ON a.���� = b.[���������]
            WHERE  DBO.Fn_resemble_onebyone(b.[����֤�����], a.֤������) > 0.8
                   AND DBO.Fn_resemble_onebyone(b.[����֤�����], a.֤������) < 1
            -- OR ( Charindex (a.֤������, b.������ô���) > 0 )
            SELECT DISTINCT a.*,
                            b.[�永�˻�],
                            b.[�永����],
                            b.[�永����]
            INTO   #tmp_end2
            FROM   #tmp0 a
                   INNER JOIN #tmp2 b
                           ON a.[����֤�����] = b.֤�����봦��
            WHERE  �˺� NOT IN (SELECT DISTINCT �˺�
                              FROM   #tmp00)
            --��ȡ�ֻ�������
            SELECT RIGHT(Trim([�ֻ�����]), 11) �ֻ�����,
                   [����],
                   [֤������],
                   [���˻�λ��ַ],
                   [�永�˻�],
                   [�永����],
                   [�永����]
            INTO   #tmp3
            FROM   [tb_red_phone]
            WHERE  [�永����] LIKE '%' + @pc + '%'
            SELECT a.*,
                   b.[�永�˻�],
                   b.[�永����],
                   b.[�永����]
            INTO   #tmp_end3
            FROM   #tmp0 a
                   INNER JOIN #tmp3 b
                           ON a.�绰 = b.�ֻ�����
            WHERE  �˺� NOT IN (SELECT DISTINCT �˺�
                              FROM   #tmp00)
            -------
            SELECT *
            FROM   #tmp_end2
            UNION
            SELECT *
            FROM   #tmp_end3
            ORDER  BY ���л�������,
                      [���������]
          END
      END
  END
GO 
��� ! �   �"  6   0      .�����˻����           �      0607	    0
    1    1 *   CREATE PROCEDURE      AS
BEGIN

END
GO��� ! �   �"  	           ���е�λ�˻���ѯ      0   @��ʾ1!��������1:Ĭ��ֵ1@��ʾ2!��������2:Ĭ��ֵ2 �      07	    0
    1    1    1 *   CREATE PROCEDURE      AS
BEGIN

END
GO��� ! �   �"     	      ���ϵͳ�˻���Ϣ $   ���ָ���������˻���Ϣ���鿴����״��    @��������!N:10 �      0701	    0
    1    1   CREATE PROCEDURE P_brow_zhsys (@row_num int) WITH ENCRYPTION AS
BEGIN
if object_id(N'tb_rhzh_dw',N'U') is not null 
begin
set rowcount @row_num
select * from v_rhzh_dw
set rowcount 0
end
else
begin
select '���˻�����ϵͳ��λ�˻�����δ����' ע��
end
END
GO��� ! �   �"     	      ���е�λ�˻���ѯ_�˺�         @�˺�!S:1304212309300007331 �      0702	    0
    1    1 �
  CREATE PROCEDURE Pd_rhzh_acc_no(@s_acc_no VARCHAR(60))
WITH ENCRYPTION
AS
  BEGIN
    IF Object_id(N'tb_rhzh_dw', N'U') IS NOT NULL
      BEGIN
        SELECT a.���л�������,
               b.���л�������,
               [����˱��],
               [��������],
               [���������],
               [ע��ص�������],
               [���������֤������],
               [���������֤�����],
               [����Ӫҵִ����Ч��],
               [��֯��������],
               [ע���ʽ����],
               [ע���ʽ���],
               [�������˰��Ǽǵ�֤���ļ����],
               [�����״̬],
               [��˰�Ǽ�֤��],
               [��˰�Ǽ�֤��],
               [��Ӫ��Χ],
               [��ַ],
               [�ʱ�],
               [��ϵ�绰],
               [���������˻���������],
               [���������˻���������֤������],
               [���������˻���������֤�����],
               [�ϼ���λ����],
               [�ϼ����˻�������˻���������֤��׼��],
               [�ϼ����������˻�����֤������],
               [�ϼ����������˻���������],
               [�ϼ�������֯��������],
               [�ϼ����������˻�����֤�����],
               [�����֤���ļ�2����],
               [�����֤���ļ�2���],
               [�����֤���ļ�1����],
               [������ô���],
               --[���л�������],
               [�˻�����],
               [�˺�],
               [�˻�����],
               [�˻�֤���ļ�1����],
               [�˻�֤���ļ�1���],
               [�˻�֤���ļ�2����],
               [�˻�֤���ļ�2���],
               [��������],
               [����ԭ��],
               [��������],
               [��������],
               [�˻�״̬],
               [�˻������ص�������],
               [��������˻������ص�������],
               [�˻������������л�������],
               [��������˻���������֤��׼��],
               [��������֤��׼��],
               [�˻�����ǰ׺],
               [�˻����ƺ�׺],
               [�ʽ����ʴ���],
               [�ɷ�ȡ��],
               [���Ż��ʽ����������],
               [���Ż��ʽ�����˸���������],
               [���Ż��ʽ������֤������],
               [���Ż��ʽ������֤�����],
               [���Ż��ʽ�����˵绰],
               [���Ż��ʽ�������ʱ�],
               [���Ż��ʽ�����˵�ַ],
               [��ʱ����˻���Ч��],
               [��ʱ����˻�����ԭ��],
               [��ע]
        FROM   tb_rhzh_dw a
               LEFT JOIN v_bank b
                      ON a.���л������� = b.���б�������
        WHERE  Trim(�˺�) LIKE '%' + @s_acc_no + '%'
        ORDER  BY �˺�
      END
    ELSE
      BEGIN
        SELECT '���˻�����ϵͳ��λ�˻�����δ����' ע��
      END
  END
GO ��� ! �   �"  �    	      ���е�λ�˻���ѯ_��λ֤����      2   @ȫ��ͳһ������ô���(֤����)!S:91340100MA2TBHT75A �      0703	    0
    1    1 �
  CREATE PROCEDURE Pd_rhzh_zjh(@s_zjh VARCHAR(60))
WITH ENCRYPTION
AS
  BEGIN
    IF Object_id(N'tb_rhzh_dw', N'U') IS NOT NULL
      BEGIN
        SELECT a.���л�������,
               b.���л�������,
               [����˱��],
               [��������],
               [���������],
               [ע��ص�������],
               [���������֤������],
               [���������֤�����],
               [����Ӫҵִ����Ч��],
               [��֯��������],
               [ע���ʽ����],
               [ע���ʽ���],
               [�������˰��Ǽǵ�֤���ļ����],
               [�����״̬],
               [��˰�Ǽ�֤��],
               [��˰�Ǽ�֤��],
               [��Ӫ��Χ],
               [��ַ],
               [�ʱ�],
               [��ϵ�绰],
               [���������˻���������],
               [���������˻���������֤������],
               [���������˻���������֤�����],
               [�ϼ���λ����],
               [�ϼ����˻�������˻���������֤��׼��],
               [�ϼ����������˻�����֤������],
               [�ϼ����������˻���������],
               [�ϼ�������֯��������],
               [�ϼ����������˻�����֤�����],
               [�����֤���ļ�2����],
               [�����֤���ļ�2���],
               [�����֤���ļ�1����],
               [������ô���],
               --[���л�������],
               [�˻�����],
               [�˺�],
               [�˻�����],
               [�˻�֤���ļ�1����],
               [�˻�֤���ļ�1���],
               [�˻�֤���ļ�2����],
               [�˻�֤���ļ�2���],
               [��������],
               [����ԭ��],
               [��������],
               [��������],
               [�˻�״̬],
               [�˻������ص�������],
               [��������˻������ص�������],
               [�˻������������л�������],
               [��������˻���������֤��׼��],
               [��������֤��׼��],
               [�˻�����ǰ׺],
               [�˻����ƺ�׺],
               [�ʽ����ʴ���],
               [�ɷ�ȡ��],
               [���Ż��ʽ����������],
               [���Ż��ʽ�����˸���������],
               [���Ż��ʽ������֤������],
               [���Ż��ʽ������֤�����],
               [���Ż��ʽ�����˵绰],
               [���Ż��ʽ�������ʱ�],
               [���Ż��ʽ�����˵�ַ],
               [��ʱ����˻���Ч��],
               [��ʱ����˻�����ԭ��],
               [��ע]
        FROM   tb_rhzh_dw a
               LEFT JOIN v_bank b
                      ON a.���л������� = b.���б�������
        WHERE  Trim([������ô���]) LIKE '%' + @s_zjh + '%'
        ORDER  BY �˺�
      END
    ELSE
      BEGIN
        SELECT '���˻�����ϵͳ��λ�˻�����δ����' ע��
      END
  END
GO��� ! �   �"     	      ���е�λ�˻���ѯ_1�����ƹؼ��� .   �����˻�����ģ����ѯ�˻���Ϣ������һ���ؼ��֣� 5   @�˻�����!S:�Ϸ�������ҵ�������޹�˾@��������!N:10000 �      0704	    0
    1    1 J  CREATE PROCEDURE Pd_rhzh_acc_name1(@acc_name VARCHAR(60),@row_num INT)
WITH ENCRYPTION
AS
  BEGIN
    IF Object_id(N'tb_rhzh_dw', N'U') IS NOT NULL
      BEGIN
        SET ROWCOUNT @row_num
        SELECT a.���л�������,
               b.���л�������,
               [����˱��],
               [��������],
               [���������],
               [ע��ص�������],
               [���������֤������],
               [���������֤�����],
               [����Ӫҵִ����Ч��],
               [��֯��������],
               [ע���ʽ����],
               [ע���ʽ���],
               [�������˰��Ǽǵ�֤���ļ����],
               [�����״̬],
               [��˰�Ǽ�֤��],
               [��˰�Ǽ�֤��],
               [��Ӫ��Χ],
               [��ַ],
               [�ʱ�],
               [��ϵ�绰],
               [���������˻���������],
               [���������˻���������֤������],
               [���������˻���������֤�����],
               [�ϼ���λ����],
               [�ϼ����˻�������˻���������֤��׼��],
               [�ϼ����������˻�����֤������],
               [�ϼ����������˻���������],
               [�ϼ�������֯��������],
               [�ϼ����������˻�����֤�����],
               [�����֤���ļ�2����],
               [�����֤���ļ�2���],
               [�����֤���ļ�1����],
               [������ô���],
               --[���л�������],
               [�˻�����],
               [�˺�],
               [�˻�����],
               [�˻�֤���ļ�1����],
               [�˻�֤���ļ�1���],
               [�˻�֤���ļ�2����],
               [�˻�֤���ļ�2���],
               [��������],
               [����ԭ��],
               [��������],
               [��������],
               [�˻�״̬],
               [�˻������ص�������],
               [��������˻������ص�������],
               [�˻������������л�������],
               [��������˻���������֤��׼��],
               [��������֤��׼��],
               [�˻�����ǰ׺],
               [�˻����ƺ�׺],
               [�ʽ����ʴ���],
               [�ɷ�ȡ��],
               [���Ż��ʽ����������],
               [���Ż��ʽ�����˸���������],
               [���Ż��ʽ������֤������],
               [���Ż��ʽ������֤�����],
               [���Ż��ʽ�����˵绰],
               [���Ż��ʽ�������ʱ�],
               [���Ż��ʽ�����˵�ַ],
               [��ʱ����˻���Ч��],
               [��ʱ����˻�����ԭ��],
               [��ע]
        FROM   tb_rhzh_dw a
               LEFT JOIN v_bank b
                      ON a.���л������� = b.���б�������
        WHERE  Trim(�˻�����) LIKE '%' + @acc_name + '%'
        ORDER  BY ���л�������
        SET ROWCOUNT 0
      END
    ELSE
      BEGIN
        SELECT '���˻�����ϵͳ��λ�˻�����δ����' ע��
      END
  END
GO ��� ! �   �"     	      ���е�λ�˻���ѯ_2�����ƹؼ��� .   �����˻�����ģ����ѯ�˻���Ϣ�����������ؼ��֣� =   @�˻����ƹؼ���1!S:����@�˻����ƹؼ���2!S:��˾@��������!N:200 �      0705	    0
    1    1 �  CREATE PROCEDURE Pd_rhzh_acc_name2(@acc_name1 VARCHAR(60),@acc_name2 VARCHAR(60),@row_num INT)
WITH ENCRYPTION
AS
  BEGIN
    IF Object_id(N'tb_rhzh_dw', N'U') IS NOT NULL
      BEGIN
        SET ROWCOUNT @row_num
        SELECT a.���л�������,
               b.���л�������,
               [����˱��],
               [��������],
               [���������],
               [ע��ص�������],
               [���������֤������],
               [���������֤�����],
               [����Ӫҵִ����Ч��],
               [��֯��������],
               [ע���ʽ����],
               [ע���ʽ���],
               [�������˰��Ǽǵ�֤���ļ����],
               [�����״̬],
               [��˰�Ǽ�֤��],
               [��˰�Ǽ�֤��],
               [��Ӫ��Χ],
               [��ַ],
               [�ʱ�],
               [��ϵ�绰],
               [���������˻���������],
               [���������˻���������֤������],
               [���������˻���������֤�����],
               [�ϼ���λ����],
               [�ϼ����˻�������˻���������֤��׼��],
               [�ϼ����������˻�����֤������],
               [�ϼ����������˻���������],
               [�ϼ�������֯��������],
               [�ϼ����������˻�����֤�����],
               [�����֤���ļ�2����],
               [�����֤���ļ�2���],
               [�����֤���ļ�1����],
               [������ô���],
               --[���л�������],
               [�˻�����],
               [�˺�],
               [�˻�����],
               [�˻�֤���ļ�1����],
               [�˻�֤���ļ�1���],
               [�˻�֤���ļ�2����],
               [�˻�֤���ļ�2���],
               [��������],
               [����ԭ��],
               [��������],
               [��������],
               [�˻�״̬],
               [�˻������ص�������],
               [��������˻������ص�������],
               [�˻������������л�������],
               [��������˻���������֤��׼��],
               [��������֤��׼��],
               [�˻�����ǰ׺],
               [�˻����ƺ�׺],
               [�ʽ����ʴ���],
               [�ɷ�ȡ��],
               [���Ż��ʽ����������],
               [���Ż��ʽ�����˸���������],
               [���Ż��ʽ������֤������],
               [���Ż��ʽ������֤�����],
               [���Ż��ʽ�����˵绰],
               [���Ż��ʽ�������ʱ�],
               [���Ż��ʽ�����˵�ַ],
               [��ʱ����˻���Ч��],
               [��ʱ����˻�����ԭ��],
               [��ע]
        FROM   tb_rhzh_dw a
               LEFT JOIN v_bank b
                      ON a.���л������� = b.���б�������
        WHERE  Trim(�˻�����) LIKE '%' + @acc_name1 + '%'
               AND Trim(�˻�����) LIKE '%' + @acc_name2 + '%'
        ORDER  BY ���л�������
        SET ROWCOUNT 0
      END
    ELSE
      BEGIN
        SELECT '���˻�����ϵͳ��λ�˻�����δ����' ע��
      END
  END
GO ��� ! �   �"  0   	      ���е�λ�˻���ѯ_���˴�������         @��������!S:Τ�Ƕ�@��������!N:5 �      0706	    0
    1    1 U  CREATE PROCEDURE PD_rhzh_fr_name(@fr_name VARCHAR(60), @row_num  INT)
WITH ENCRYPTION
AS
  BEGIN
    IF Object_id(N'tb_rhzh_dw', N'U') IS NOT NULL
      BEGIN
        SET ROWCOUNT @row_num
        SELECT a.���л�������,
               b.���л�������,
               [����˱��],
               [��������],
               [���������],
               [ע��ص�������],
               [���������֤������],
               [���������֤�����],
               [����Ӫҵִ����Ч��],
               [��֯��������],
               [ע���ʽ����],
               [ע���ʽ���],
               [�������˰��Ǽǵ�֤���ļ����],
               [�����״̬],
               [��˰�Ǽ�֤��],
               [��˰�Ǽ�֤��],
               [��Ӫ��Χ],
               [��ַ],
               [�ʱ�],
               [��ϵ�绰],
               [���������˻���������],
               [���������˻���������֤������],
               [���������˻���������֤�����],
               [�ϼ���λ����],
               [�ϼ����˻�������˻���������֤��׼��],
               [�ϼ����������˻�����֤������],
               [�ϼ����������˻���������],
               [�ϼ�������֯��������],
               [�ϼ����������˻�����֤�����],
               [�����֤���ļ�2����],
               [�����֤���ļ�2���],
               [�����֤���ļ�1����],
               [������ô���],
               --[���л�������],
               [�˻�����],
               [�˺�],
               [�˻�����],
               [�˻�֤���ļ�1����],
               [�˻�֤���ļ�1���],
               [�˻�֤���ļ�2����],
               [�˻�֤���ļ�2���],
               [��������],
               [����ԭ��],
               [��������],
               [��������],
               [�˻�״̬],
               [�˻������ص�������],
               [��������˻������ص�������],
               [�˻������������л�������],
               [��������˻���������֤��׼��],
               [��������֤��׼��],
               [�˻�����ǰ׺],
               [�˻����ƺ�׺],
               [�ʽ����ʴ���],
               [�ɷ�ȡ��],
               [���Ż��ʽ����������],
               [���Ż��ʽ�����˸���������],
               [���Ż��ʽ������֤������],
               [���Ż��ʽ������֤�����],
               [���Ż��ʽ�����˵绰],
               [���Ż��ʽ�������ʱ�],
               [���Ż��ʽ�����˵�ַ],
               [��ʱ����˻���Ч��],
               [��ʱ����˻�����ԭ��],
               [��ע]
        FROM   tb_rhzh_dw a
               LEFT JOIN v_bank b
                      ON a.���л������� = b.���б�������
        WHERE  Trim(���������˻���������) LIKE '%' + @fr_name + '%'
        ORDER  BY ���л�������
        SET ROWCOUNT 0
      END
    ELSE
      BEGIN
        SELECT '���˻�����ϵͳ��λ�˻�����δ����' ע��
      END
  END
GO��� ! �   �"  �    	      ���е�λ�˻���ѯ_���˴���֤����      )   @���˴���֤����!S:A123427377@��������!N:5 �      0707	    0
    1    1 _  CREATE PROCEDURE PD_rhzh_fr_zjh(@fr_zjh VARCHAR(60), @row_num  INT)
WITH ENCRYPTION
AS
  BEGIN
    IF Object_id(N'tb_rhzh_dw', N'U') IS NOT NULL
      BEGIN
        SET ROWCOUNT @row_num
        SELECT a.���л�������,
               b.���л�������,
               [����˱��],
               [��������],
               [���������],
               [ע��ص�������],
               [���������֤������],
               [���������֤�����],
               [����Ӫҵִ����Ч��],
               [��֯��������],
               [ע���ʽ����],
               [ע���ʽ���],
               [�������˰��Ǽǵ�֤���ļ����],
               [�����״̬],
               [��˰�Ǽ�֤��],
               [��˰�Ǽ�֤��],
               [��Ӫ��Χ],
               [��ַ],
               [�ʱ�],
               [��ϵ�绰],
               [���������˻���������],
               [���������˻���������֤������],
               [���������˻���������֤�����],
               [�ϼ���λ����],
               [�ϼ����˻�������˻���������֤��׼��],
               [�ϼ����������˻�����֤������],
               [�ϼ����������˻���������],
               [�ϼ�������֯��������],
               [�ϼ����������˻�����֤�����],
               [�����֤���ļ�2����],
               [�����֤���ļ�2���],
               [�����֤���ļ�1����],
               [������ô���],
               --[���л�������],
               [�˻�����],
               [�˺�],
               [�˻�����],
               [�˻�֤���ļ�1����],
               [�˻�֤���ļ�1���],
               [�˻�֤���ļ�2����],
               [�˻�֤���ļ�2���],
               [��������],
               [����ԭ��],
               [��������],
               [��������],
               [�˻�״̬],
               [�˻������ص�������],
               [��������˻������ص�������],
               [�˻������������л�������],
               [��������˻���������֤��׼��],
               [��������֤��׼��],
               [�˻�����ǰ׺],
               [�˻����ƺ�׺],
               [�ʽ����ʴ���],
               [�ɷ�ȡ��],
               [���Ż��ʽ����������],
               [���Ż��ʽ�����˸���������],
               [���Ż��ʽ������֤������],
               [���Ż��ʽ������֤�����],
               [���Ż��ʽ�����˵绰],
               [���Ż��ʽ�������ʱ�],
               [���Ż��ʽ�����˵�ַ],
               [��ʱ����˻���Ч��],
               [��ʱ����˻�����ԭ��],
               [��ע]
        FROM   tb_rhzh_dw a
               LEFT JOIN v_bank b
                      ON a.���л������� = b.���б�������
        WHERE  Trim([���������˻���������֤�����]) LIKE '%' + @fr_zjh + '%'
        ORDER  BY ���л�������
        SET ROWCOUNT 0
      END
    ELSE
      BEGIN
        SELECT '���˻�����ϵͳ��λ�˻�����δ����' ע��
      END
  END
GO 
��� ! �   �"  t    	      ���е�λ�˻���ѯ_��ϵ�绰         @��ϵ�绰!S:0@��������!N:5 �      0708	    0
    1    1 A  CREATE PROCEDURE PD_rhzh_lxdh(@lxdh VARCHAR(60), @row_num  INT)
WITH ENCRYPTION
AS
  BEGIN
    IF Object_id(N'tb_rhzh_dw', N'U') IS NOT NULL
      BEGIN
        SET ROWCOUNT @row_num
        SELECT a.���л�������,
               b.���л�������,
               [����˱��],
               [��������],
               [���������],
               [ע��ص�������],
               [���������֤������],
               [���������֤�����],
               [����Ӫҵִ����Ч��],
               [��֯��������],
               [ע���ʽ����],
               [ע���ʽ���],
               [�������˰��Ǽǵ�֤���ļ����],
               [�����״̬],
               [��˰�Ǽ�֤��],
               [��˰�Ǽ�֤��],
               [��Ӫ��Χ],
               [��ַ],
               [�ʱ�],
               [��ϵ�绰],
               [���������˻���������],
               [���������˻���������֤������],
               [���������˻���������֤�����],
               [�ϼ���λ����],
               [�ϼ����˻�������˻���������֤��׼��],
               [�ϼ����������˻�����֤������],
               [�ϼ����������˻���������],
               [�ϼ�������֯��������],
               [�ϼ����������˻�����֤�����],
               [�����֤���ļ�2����],
               [�����֤���ļ�2���],
               [�����֤���ļ�1����],
               [������ô���],
               --[���л�������],
               [�˻�����],
               [�˺�],
               [�˻�����],
               [�˻�֤���ļ�1����],
               [�˻�֤���ļ�1���],
               [�˻�֤���ļ�2����],
               [�˻�֤���ļ�2���],
               [��������],
               [����ԭ��],
               [��������],
               [��������],
               [�˻�״̬],
               [�˻������ص�������],
               [��������˻������ص�������],
               [�˻������������л�������],
               [��������˻���������֤��׼��],
               [��������֤��׼��],
               [�˻�����ǰ׺],
               [�˻����ƺ�׺],
               [�ʽ����ʴ���],
               [�ɷ�ȡ��],
               [���Ż��ʽ����������],
               [���Ż��ʽ�����˸���������],
               [���Ż��ʽ������֤������],
               [���Ż��ʽ������֤�����],
               [���Ż��ʽ�����˵绰],
               [���Ż��ʽ�������ʱ�],
               [���Ż��ʽ�����˵�ַ],
               [��ʱ����˻���Ч��],
               [��ʱ����˻�����ԭ��],
               [��ע]
        FROM   tb_rhzh_dw a
               LEFT JOIN v_bank b
                      ON a.���л������� = b.���б�������
        WHERE  Trim(��ϵ�绰) LIKE '%' + @lxdh + '%'
        ORDER  BY ���л�������
        SET ROWCOUNT 0
      END
    ELSE
      BEGIN
        SELECT '���˻�����ϵͳ��λ�˻�����δ����' ע��
      END
  END
GO 
��� ! �   �"     	      ���е�λ�˻���ѯ_��Ӫ��Χ         @��Ӫ��Χ!S:ó��@��������!N:100 �      0709	    0
    1    1 C  CREATE PROCEDURE PD_rhzh_jyfw(@jyfw VARCHAR(60), @row_num  INT)
WITH ENCRYPTION
AS
  BEGIN
    IF Object_id(N'tb_rhzh_dw', N'U') IS NOT NULL
      BEGIN
        SET ROWCOUNT @row_num
        SELECT a.���л�������,
               b.���л�������,
               [����˱��],
               [��������],
               [���������],
               [ע��ص�������],
               [���������֤������],
               [���������֤�����],
               [����Ӫҵִ����Ч��],
               [��֯��������],
               [ע���ʽ����],
               [ע���ʽ���],
               [�������˰��Ǽǵ�֤���ļ����],
               [�����״̬],
               [��˰�Ǽ�֤��],
               [��˰�Ǽ�֤��],
               [��Ӫ��Χ],
               [��ַ],
               [�ʱ�],
               [��ϵ�绰],
               [���������˻���������],
               [���������˻���������֤������],
               [���������˻���������֤�����],
               [�ϼ���λ����],
               [�ϼ����˻�������˻���������֤��׼��],
               [�ϼ����������˻�����֤������],
               [�ϼ����������˻���������],
               [�ϼ�������֯��������],
               [�ϼ����������˻�����֤�����],
               [�����֤���ļ�2����],
               [�����֤���ļ�2���],
               [�����֤���ļ�1����],
               [������ô���],
               --[���л�������],
               [�˻�����],
               [�˺�],
               [�˻�����],
               [�˻�֤���ļ�1����],
               [�˻�֤���ļ�1���],
               [�˻�֤���ļ�2����],
               [�˻�֤���ļ�2���],
               [��������],
               [����ԭ��],
               [��������],
               [��������],
               [�˻�״̬],
               [�˻������ص�������],
               [��������˻������ص�������],
               [�˻������������л�������],
               [��������˻���������֤��׼��],
               [��������֤��׼��],
               [�˻�����ǰ׺],
               [�˻����ƺ�׺],
               [�ʽ����ʴ���],
               [�ɷ�ȡ��],
               [���Ż��ʽ����������],
               [���Ż��ʽ�����˸���������],
               [���Ż��ʽ������֤������],
               [���Ż��ʽ������֤�����],
               [���Ż��ʽ�����˵绰],
               [���Ż��ʽ�������ʱ�],
               [���Ż��ʽ�����˵�ַ],
               [��ʱ����˻���Ч��],
               [��ʱ����˻�����ԭ��],
               [��ע]
        FROM   tb_rhzh_dw a
               LEFT JOIN v_bank b
                      ON a.���л������� = b.���б�������
        WHERE  Trim([��Ӫ��Χ]) LIKE '%' + @jyfw + '%'
        ORDER  BY ���л�������
        SET ROWCOUNT 0
      END
    ELSE
      BEGIN
        SELECT '���˻�����ϵͳ��λ�˻�����δ����' ע��
      END
  END
GO 
��� ! �   �"     	      ���е�λ�˻���ѯ_��ַ     �����ֱ����룺������������������    @��ַ!S:����@��������!N:100 �      0710	    0
    1    1 7  CREATE PROCEDURE PD_rhzh_dz(@dz VARCHAR(60), @row_num  INT)
WITH ENCRYPTION
AS
  BEGIN
    IF Object_id(N'tb_rhzh_dw', N'U') IS NOT NULL
      BEGIN
        SET ROWCOUNT @row_num
        SELECT a.���л�������,
               b.���л�������,
               [����˱��],
               [��������],
               [���������],
               [ע��ص�������],
               [���������֤������],
               [���������֤�����],
               [����Ӫҵִ����Ч��],
               [��֯��������],
               [ע���ʽ����],
               [ע���ʽ���],
               [�������˰��Ǽǵ�֤���ļ����],
               [�����״̬],
               [��˰�Ǽ�֤��],
               [��˰�Ǽ�֤��],
               [��Ӫ��Χ],
               [��ַ],
               [�ʱ�],
               [��ϵ�绰],
               [���������˻���������],
               [���������˻���������֤������],
               [���������˻���������֤�����],
               [�ϼ���λ����],
               [�ϼ����˻�������˻���������֤��׼��],
               [�ϼ����������˻�����֤������],
               [�ϼ����������˻���������],
               [�ϼ�������֯��������],
               [�ϼ����������˻�����֤�����],
               [�����֤���ļ�2����],
               [�����֤���ļ�2���],
               [�����֤���ļ�1����],
               [������ô���],
               --[���л�������],
               [�˻�����],
               [�˺�],
               [�˻�����],
               [�˻�֤���ļ�1����],
               [�˻�֤���ļ�1���],
               [�˻�֤���ļ�2����],
               [�˻�֤���ļ�2���],
               [��������],
               [����ԭ��],
               [��������],
               [��������],
               [�˻�״̬],
               [�˻������ص�������],
               [��������˻������ص�������],
               [�˻������������л�������],
               [��������˻���������֤��׼��],
               [��������֤��׼��],
               [�˻�����ǰ׺],
               [�˻����ƺ�׺],
               [�ʽ����ʴ���],
               [�ɷ�ȡ��],
               [���Ż��ʽ����������],
               [���Ż��ʽ�����˸���������],
               [���Ż��ʽ������֤������],
               [���Ż��ʽ������֤�����],
               [���Ż��ʽ�����˵绰],
               [���Ż��ʽ�������ʱ�],
               [���Ż��ʽ�����˵�ַ],
               [��ʱ����˻���Ч��],
               [��ʱ����˻�����ԭ��],
               [��ע]
        FROM   tb_rhzh_dw a
               LEFT JOIN v_bank b
                      ON a.���л������� = b.���б�������
        WHERE  Trim(��ַ) LIKE '%' + @dz + '%'
        ORDER  BY ���л�������
        SET ROWCOUNT 0
      END
    ELSE
      BEGIN
        SELECT '���˻�����ϵͳ��λ�˻�����δ����' ע��
      END
  END
GO 
��� ! �   �"     	      ���е�λ�˻���ѯ_���л�������      V   @���л�������!S:104364000093@�˻�״̬��9���С�1������2������3������!S:9@��������!N:100 �      0711	    0
    1    1 �  CREATE PROCEDURE Pd_rhzh_bankcode(@s_Bank_Code VARCHAR(12),@close_type VARCHAR(1),@row_num INT)
WITH ENCRYPTION
AS
  BEGIN
    IF Object_id(N'tb_rhzh_dw', N'U') IS NOT NULL
      BEGIN
        SET ROWCOUNT @row_num
        SELECT a.���л�������,
               b.���л�������,
               [����˱��],
               [��������],
               [���������],
               [ע��ص�������],
               [���������֤������],
               [���������֤�����],
               [����Ӫҵִ����Ч��],
               [��֯��������],
               [ע���ʽ����],
               [ע���ʽ���],
               [�������˰��Ǽǵ�֤���ļ����],
               [�����״̬],
               [��˰�Ǽ�֤��],
               [��˰�Ǽ�֤��],
               [��Ӫ��Χ],
               [��ַ],
               [�ʱ�],
               [��ϵ�绰],
               [���������˻���������],
               [���������˻���������֤������],
               [���������˻���������֤�����],
               [�ϼ���λ����],
               [�ϼ����˻�������˻���������֤��׼��],
               [�ϼ����������˻�����֤������],
               [�ϼ����������˻���������],
               [�ϼ�������֯��������],
               [�ϼ����������˻�����֤�����],
               [�����֤���ļ�2����],
               [�����֤���ļ�2���],
               [�����֤���ļ�1����],
               [������ô���],
               --[���л�������],
               [�˻�����],
               [�˺�],
               [�˻�����],
               [�˻�֤���ļ�1����],
               [�˻�֤���ļ�1���],
               [�˻�֤���ļ�2����],
               [�˻�֤���ļ�2���],
               [��������],
               [����ԭ��],
               [��������],
               [��������],
               [�˻�״̬],
               [�˻������ص�������],
               [��������˻������ص�������],
               [�˻������������л�������],
               [��������˻���������֤��׼��],
               [��������֤��׼��],
               [�˻�����ǰ׺],
               [�˻����ƺ�׺],
               [�ʽ����ʴ���],
               [�ɷ�ȡ��],
               [���Ż��ʽ����������],
               [���Ż��ʽ�����˸���������],
               [���Ż��ʽ������֤������],
               [���Ż��ʽ������֤�����],
               [���Ż��ʽ�����˵绰],
               [���Ż��ʽ�������ʱ�],
               [���Ż��ʽ�����˵�ַ],
               [��ʱ����˻���Ч��],
               [��ʱ����˻�����ԭ��],
               [��ע]
        FROM   tb_rhzh_dw a
               LEFT JOIN v_bank b
                      ON a.���л������� = b.���б�������
        WHERE  Trim(���л�������) LIKE '%' + @s_Bank_Code + '%'
               AND ( �˻�״̬ LIKE( CASE
                                  WHEN @close_type = '1' THEN '����'
                                  WHEN @close_type = '2' THEN '����'
                                  WHEN @close_type = '3' THEN '����'
                                  WHEN @close_type = '9' THEN '%'
                                END ) )
        ORDER  BY �˻�����
        SET ROWCOUNT 0
      END
    ELSE
      BEGIN
        SELECT '���˻�����ϵͳ��λ�˻�����δ����' ע��
      END
  END
GO ��� ! �   �"     	      �˺�λ���ֲ���� D   ��ѯ�˻�ϵͳ�б����˻����˺���С���Ⱥ���󳤶ȣ���ȷ���ȶ�ʱ�˺�λ��      �      0712	    0
    1    1 �  CREATE PROCEDURE Pd_zh_len
WITH ENCRYPTION
AS
  BEGIN
    IF Object_id(N'tb_rhzh_dw', N'U') IS NOT NULL
      BEGIN
        SELECT Len(�˺�) �˺ų���,
               Count(�˺�) �˳��ȵ��˺�����
        FROM   v_rhzh_dw
        GROUP  BY Len(�˺�)
        ORDER  BY Len(�˺�)
      END
    ELSE
      BEGIN
        SELECT '���˻�����ϵͳ��λ�˻�����δ����' ע��
      END
  END
GO ��� ! �   �"     	      ������־��ѯ_�˺�    �����˺Ų�ѯ������־    @�˺�!S:1021701021000849487 �      0713	    0
    1    1 J  CREATE PROCEDURE P_log_from_acc_no(@s_acc_no VARCHAR(60))
WITH ENCRYPTION
AS
  BEGIN
    IF Object_id(N'tb_log', N'U') IS NOT NULL
      BEGIN
        SELECT *
        FROM   tb_log
        WHERE  �˺� = @s_acc_no
      END
    ELSE
      BEGIN
        SELECT '���˻�����ϵͳ��־����δ����' ע��
      END
  END
GO ��� ! �   �"      	      .�˻�ϵͳ������־��ѯx           �      0714	    0
    0    1��� ! �   �"             2207���н��ױ��йؽ���ͳ�� S   ͳ������ҽ��ױ��и������ݣ���ĳһ����Ϊ0�����ܲɼ����������⣨0��������ӦΪ0��      �      071401	    0
    0    1 �  CREATE PROCEDURE P_rmb_data_err WITH ENCRYPTION AS
BEGIN
if object_id('tempdb..#tmp') is not null drop table #tmp
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
set @rmb_jf_cnt=(select count(*)  from v_txn where ���='��')
set @rmb_df_cnt=(select count(*)  from v_txn where ���='��')
set @rmb_ent_cnt=(select count(*)  from v_txn a left join #tmp b on a.�˺�=b.acc_no where b.acc_type='1')
set @rmb_per_cnt=(select count(*)  from v_txn a left join #tmp b on a.�˺�=b.acc_no where b.acc_type='0')
set @rmb_tsf_cnt=(select count(*)  from v_txn where ��ת='ת��')
set @rmb_cash_cnt=(select count(*)  from v_txn where ��ת='�ֽ�')
set @rmb_amt_cnt=(select count(*)  from v_txn where ���<=0)
select  @rmb_cnt_all ������,
@rmb_jf_cnt  �跽�� ,
@rmb_df_cnt ������,
--@rmb_ent_cnt ��λ��,
--@rmb_per_cnt ������,
@rmb_tsf_cnt ת����,
@rmb_cash_cnt �ֽ���,
@rmb_amt_cnt ���׽��Ϊ0��
END
GO��� ! �   �"  �            2208�ȶ����к������˺�λ��һ���� <   �ȶԼ�����ݺ��˻�ϵͳ�����˺�λ����������������ṩ��׼ȷ��      �      071402	    0
    0    1 �  CREATE PROCEDURE P_acc_zhws WITH ENCRYPTION AS
BEGIN
if object_id('tempdb..#tmp1') is not null drop table #tmp1
if object_id('tempdb..#tmp2') is not null drop table #tmp2  
declare @len1 int
declare @len2 int
set rowcount 100
select len(acc_no) ���������˺ų���,count(acc_no) ���������˺����� into #tmp1
from tb_acc 
group by len(acc_no)
order by len(acc_no)
set @len1=@@rowcount
select len(�˺�) ���������˺ų���,count(�˺�) ���������˺����� into #tmp2
from zhsys 
group by len(�˺�)
order by len(�˺�)
set @len2=@@rowcount
if @len1>@len2
select * from #tmp1 left join #tmp2 on ���������˺ų���=���������˺ų���
else
select * from #tmp1 right join #tmp2 on ���������˺ų���=���������˺ų���
set rowcount 0
END
GO��� ! �   �"  �           ���и����˻���Ϣ��ѯ 
   ����������      �      08	    0
    1    1    1 *   CREATE PROCEDURE      AS
BEGIN

END
GO��� ! �   �"  �   �   %   ����������Ʋ����и����˻���2�ؼ��֣�      :   @�˻����ƹؼ���1!S:��ѩ÷@�˻����ƹؼ���2!S:@��������!N:10 �      0801	    0
    1    1 �  CREATE PROCEDURE  PG_zh_acc_name2(@acc_name1 varchar(60),@acc_name2 varchar(60),@row_num int) WITH ENCRYPTION AS
BEGIN
set rowcount @row_num
select b.���л�������,a.* from tb_rhzh_gr a
left join v_bank b 
on a.���л�������=b.���б������� 
where rtrim(ltrim(���������)) like '%'+@acc_name1+'%' and rtrim(ltrim(���������)) like '%'+@acc_name2+'%'
ORDER BY ���л�������,���������
set rowcount 0
END
GO��� ! �   �"  �   �      ���˺Ų����и����˻���Ϣ      !   @�˺Ż򿨺�!S:1034760111009122279 �      0802	    0
    1    1   CREATE PROCEDURE  PG_zh_acc_from_acc_no(@s_acc_no varchar(60)) WITH ENCRYPTION AS
BEGIN
select b.���л�������,a.* from tb_rhzh_gr a
left join v_bank b 
on a.���л�������=b.���б������� 
where  rtrim(ltrim(�˺�)) like '%'+@s_acc_no+'%'
ORDER BY ���л�������,�˺�
END
GO��� ! �   �"  �   �   %   ����������Ʋ����и����˻���1�ؼ��֣�      *   @��������ƣ�Ϊ�����У�!S:��@��������!N:50 �      0803	    0
    1    1 P  CREATE PROCEDURE  PG_zh_acc_name1(@acc_name varchar(60),@row_num int) WITH ENCRYPTION AS
BEGIN
set rowcount @row_num
select b.���л�������,a.* from tb_rhzh_gr a
left join v_bank b 
on a.���л�������=b.���б������� 
where  rtrim(ltrim(���������)) like '%'+@acc_name+'%'
ORDER BY ���л�������,���������
set rowcount 0
END
GO��� ! �   �"             ���л����������ڻ��������ѯ      0   @��ʾ1!��������1:Ĭ��ֵ1@��ʾ2!��������2:Ĭ��ֵ2 �      09	    0
    1    1    1 *   CREATE PROCEDURE      AS
BEGIN

END
GO��� ! �   �"           ���д����ѯ�����ƴ��룩      G   @���л������루ģ��,Ϊ�պ���!S:103364@���л������ƣ�ģ����Ϊ�պ��ԣ�!S: �      0901	    0
    1    1 g  CREATE PROCEDURE P_bank_name (@bank_code varchar(14),@bank_name varchar(60)) WITH ENCRYPTION AS
BEGIN
select [���б�������]
      ,[���л�������]
      ,[��������ʡ]
      ,[�������ڵ���]
      ,[�������ڳ���]
      ,[�б�]
from [HNXLSYS].[dbo].[tb_bank] where  ���б������� like '%'+@bank_code+'%'and ���л������� like '%'+@bank_name+'%'
END
GO��� ! �   �"           ���д����ѯ������ģ����         @���л������ƣ�ģ����!S:���� �      0902	    0
    0    1 $  CREATE PROCEDURE P_bank_name (@bank_name varchar(60)) WITH ENCRYPTION AS
BEGIN
select [���б�������]
      ,[���л�������]
      ,[��������ʡ]
      ,[�������ڵ���]
      ,[�������ڳ���]
      ,[�б�] from [HNXLSYS].[dbo].[tb_bank] where ���л������� like '%'+@bank_name+'%'
END
GO��� ! �   �"           ���д����ѯ������ģ���� 6   ���л����������ڻ��������ѯ���л�����Ϣ��ģ����ѯ��    @���л������루ģ����!S:3640 �      0903	    0
    0    1 f  CREATE PROCEDURE P_bank_code (@bank_code varchar(14),@bank_name varchar(60)) WITH ENCRYPTION AS
BEGIN
select [���б�������]
      ,[���л�������]
      ,[��������ʡ]
      ,[�������ڵ���]
      ,[�������ڳ���]
      ,[�б�] from [HNXLSYS].[dbo].[tb_bank] where ���б�������  like '%'+@bank_code+'%'and ���л������� like '%'+@bank_name+'%'
END
GO��� ! �   �"  �         ���ڻ��������ѯ���������ƣ�      K   @���ڻ������루ģ����Ϊ�պ��ԣ�!S:1043610@���ڻ������ƣ�ģ����Ϊ�պ��ԣ�!S: �      0904	    0
    1    1 R  CREATE PROCEDURE  PG_bank_name(@bank_code varchar(60)) WITH ENCRYPTION AS
BEGIN
select [���б�������]
      ,[���л�������]
      ,[��������ʡ]
      ,[�������ڵ���]
      ,[�������ڳ���]
      ,'' �б�
      ,[��ַ]
  FROM [HNXLSYS].[dbo].[tb_bank_bm]
  where [���б�������] like '%'+rtrim(ltrim(@bank_code))+'%'

END
GO��� ! �   �"  �         �����Ʋ�ѯ���б�������         @���л������ƣ�ģ����!S:���� �      0905	    0
    0    1 L  CREATE PROCEDURE  PG_bank_code(@bank_name varchar(60)) WITH ENCRYPTION AS
BEGIN
select [���б�������]
      ,[���л�������]
      ,[��������ʡ]
      ,[�������ڵ���]
      ,[�������ڳ���]
      ,'' �б�
      ,[��ַ]
  FROM [HNXLSYS].[dbo].[tb_bank_bm]
  where ���л������� like '%'+rtrim(ltrim(@bank_name))+'%'
END
GO��� ! �   �"             ����֤������ѯ           �      10	    0
    1    1    1 *   CREATE PROCEDURE      AS
BEGIN

END
GO��� ! �   �"        
   ���������    ���Ʋ�ѯ������������    @����!S:���� �      1001	    0
    1    1 �   CREATE PROCEDURE  P_AreaToCode(@name varchar(22))    WITH ENCRYPTION AS
BEGIN
select * from hnxlsys.dbo.AreaCodeOldNew
where ʡ�� like '%'+ @name+'%' or ���� like '%'+ @name+'%' or ���� like '%'+ @name+'%'
order by ����
END
GO��� ! �   �"        
   ��������    2λ��6λ�����ѯ������������    @6λ����!S:3404 �      1002	    0
    1    1 �   CREATE PROCEDURE  P_CodeToArea(@code varchar(22))    WITH ENCRYPTION AS
BEGIN
select * from hnxlsys.dbo.AreaCodeOldNew
where ���� like @code+'%'
order by ����
END
GO��� ! �   �"              ����ǰ�Զ����� ]   ���� ���๦�������ڳ����к�̨���ã������û�������֡�ÿ������ǰ���������ִ��룬�ڳ����е��á�      �      11	    0
    0    1    1��� ! �   �"  �           clr������������2019 6   �������صĺ�����������Ӧ���ڱ����ʹ������������         2019 �      1101	    1
    0    1 I  CREATE PROCEDURE  P_clr_run  WITH ENCRYPTION AS
BEGIN
exec ('sp_configure '+'''show advanced options'''+', 1') 
reconfigure
exec ('sp_configure '+'''clr strict security'''+', 0') 
reconfigure
exec ('sp_configure '+'''clr enabled'''+', 1')
reconfigure
--��ȡ��װ·����dll�����ݿ�Ŀ¼����·����
DECLARE @Path NVARCHAR(MAX)
DECLARE @ReversedPath NVARCHAR(MAX)
DECLARE @PathLength INT
declare @Pathname NVARCHAR(MAX)
set @path=(select top 1 physical_name from sys.database_files where physical_name like '%.mdf')
-- @path = 'D:\Inspection\Hnxlsys.mdf'
SET @ReversedPath = REVERSE(@Path)
-- @ReversedPath = 'fdm.syslxnh\noitcepsnI\:D'
SELECT @PathLength = CHARINDEX('\', @ReversedPath)
--  @PathLength = 12
set @Path= LEFT(@Path, LEN(@Path) - @PathLength)

-- SET @ReversedPath = REVERSE(@Path)
-- set @PathLength = CHARINDEX('\', @ReversedPath)
-- set @pathname = LEFT(@Path, LEN(@Path) - @PathLength)

set @Pathname = @Path+'\MSSQLRegexExtend.dll'
--ע�������ʹ���������ʽ 
--CREATE ASSEMBLY Regex from 'D:\Inspection\MSSQLRegexExtend.dll' WITH PERMISSION_SET = SAFE
if not exists(select * from sys.assemblies where name='Regex')
begin
  EXEC('CREATE ASSEMBLY Regex from '+''''+@Pathname+''''+' WITH PERMISSION_SET = SAFE')    
  RECONFIGURE         --���ÿ���clr������������������н���Ӧ��  
end 
select 'OK'
END
GO��� ! �   �"  J          clr������������2014 
   ����������         2014 �      1102	    0
    0    1    0 �  CREATE PROCEDURE  P_clr_run  WITH ENCRYPTION AS
BEGIN
exec ('sp_configure '+'''show advanced options'''+', 1') 
reconfigure
--exec ('sp_configure '+'''clr strict security'''+', 0') 
--reconfigure
exec ('sp_configure '+'''clr enabled'''+', 1')
reconfigure
--��ȡ��װ·�������ݿ�Ŀ¼����·����
DECLARE @Path NVARCHAR(MAX)
DECLARE @ReversedPath NVARCHAR(MAX)
DECLARE @PathLength INT
declare @Pathname NVARCHAR(MAX)
set @path=(select top 1 physical_name from sys.database_files where physical_name like '%.mdf')
SET @ReversedPath = REVERSE(@Path)
SELECT @PathLength = CHARINDEX('\', @ReversedPath)
set @Path= LEFT(@Path, LEN(@Path) - @PathLength)
SET @ReversedPath = REVERSE(@Path)
set @PathLength = CHARINDEX('\', @ReversedPath)
set @pathname = LEFT(@Path, LEN(@Path) - @PathLength)
set @Pathname = @Pathname+'\MSSQLRegexExtend.dll'
--ע��.net��� 
--CREATE ASSEMBLY Regex from 'D:\Inspection\MSSQLRegexExtend.dll' WITH PERMISSION_SET = SAFE
if not exists(select * from sys.assemblies where name='Regex')
begin
  EXEC('CREATE ASSEMBLY Regex from '+''''+@Pathname+''''+' WITH PERMISSION_SET = SAFE')    
  RECONFIGURE         --���ÿ���clr������������������н���Ӧ��  
end 
select 'OK'
END
GO��� ! �   �"  �           ѹ��ϵͳ���ݿ���������    ѹ��ϵͳ���ݿ���������      �      1103	    0
    0    1    0   CREATE PROCEDURE   P_Shirink_HNXLSYS  WITH ENCRYPTION AS
BEGIN
declare @dbname varchar(20)
set  @dbname='HNXLSYS'
begin try
  exec('DBCC SHRINKDATABASE(['+@dbname+'])')
  select @dbname
end try
begin catch
  SELECT 'ϵͳ���ݿ��Ѿ�ѹ�����ˣ�'AS ���ݿ�ѹ�����;
end catch
END��� ! �   �"  e          ѹ����ǰ���ݿ���������    ѹ����ǰ���ݿ���������      �      1104	    0
    0    1    0 �  CREATE PROCEDURE   P_Shirink_Cur_data  WITH ENCRYPTION AS
BEGIN
declare @dbname varchar(20)
set  @dbname=(Select Name From Master..SysDataBases Where DbId=(Select Dbid From Master..SysProcesses Where Spid = @@spid))
begin try
  exec('DBCC SHRINKDATABASE(['+@dbname+'])')
  select @dbname
end try
begin catch
  SELECT '��ǰ���ݿ��Ѿ�ѹ�����ˣ�'AS ���ݿ�ѹ�����;
end catch
END��� ! �   �"  g           ��������           �      12	    0
    0    1    1 *   CREATE PROCEDURE      AS
BEGIN

END
GO��� ! �   �"  �   g      �ַ��������ظ����� f   FN_DupChar('11000000',6)����1��������6���������ַ���FN_DupChar('1100',6)����0����������6���������ַ���      �      1201	    1
    0    1    0 �  CREATE  Function FN_DupChar(@String Varchar(100),@char_num int) Returns Bit WITH ENCRYPTION As
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

��� ! �   �"  �   g      ȥ��ǰ���ַ������� !   f_delete_head('00123','0')����123      �      1202	    1
    0    1 )  CREATE FUNCTION f_delete_head(@s varchar(8000),@flag varchar(10)) returns varchar(8000) WITH ENCRYPTION as
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
end��� ! �   �"  h   g      �ַ����ָ��ʱ�� Y   select id from ufn_SplitStringToTable('01,02,03,04',',')����һ����������1�������Ķ������         2014 �      1203	    1
    0    1    0 �  CREATE FUNCTION ufn_SplitStringToTable(@str VARCHAR(MAX),@split VARCHAR(10))
RETURNS TABLE WITH ENCRYPTION
    AS
RETURN
    ( SELECT B.id
      FROM ( SELECT [value] = CONVERT(XML , '<v>' + REPLACE(@str , @split , '</v><v>')+ '</v>')
                ) A
      OUTER APPLY ( SELECT  id = N.v.value('.' , 'varchar(100)')
                    FROM    A.[value].nodes('/v') N ( v )
                ) B
    )
-- 2019ʹ��string_split����������� ! �   �"     g      ��ǰ�����ַ���      0   @��ʾ1!��������1:Ĭ��ֵ1@��ʾ2!��������2:Ĭ��ֵ2 �      1204	    1
    0    1 �   Create function getCurDate()
Returns varchar(8)
WITH ENCRYPTION
As
Begin
declare @date varchar(8)
set @date=CONVERT(varchar(100), GETDATE(), 112) 
Return(@date)
End
GO��� ! �   �"     g      ����У��           �      1205	    1
    0    1 �  CREATE FUNCTION [Regex.IsMatch](@Regex [nvarchar](max),@Input [nvarchar](max)) 
 --���򼯶������ܳɹ�����������Ҫ��������
RETURNS [bit] WITH EXECUTE AS CALLER 
AS   
EXTERNAL NAME [Regex].[MSSQLRegexExtend.RegexExtend].[IsMatch] 
--����У��(����Ϊ1��������Ϊ0)
-- SELECT [dbo].[Regex.IsMatch]('^[a-zA-Z0-9_-]+@[a-zA-Z0-9_-]+(\.[a-zA-Z0-9_-]+)+$','dyuanrong2010@163.com') ������֤,
  --[dbo].[Regex.IsMatch]('^[a-zA-Z0-9_-]+@[a-zA-Z0-9_-]+(\.[a-zA-Z0-9_-]+)+$','dyuanrong2010@163com') ��������֤
GO��� ! �   �"     g      �����滻           �      1206	    1
    0    1 �  CREATE FUNCTION [Regex.Replace](@Regex [nvarchar](max),@Input [nvarchar](max),@Replace [nvarchar](max))  
RETURNS [nvarchar](max) WITH EXECUTE AS CALLER  
AS   
EXTERNAL NAME [Regex].[MSSQLRegexExtend.RegexExtend].[Replace]  
--�����滻(�������滻�ɿ�)
-- SELECT [dbo].[Regex.Replace]('[0-9]', 'a12b12c', '')  [�����ָɵ�],
-- [dbo].[Regex.Replace]('[a-z]', 'a12b12c', '*')  [����ĸ�滻*]
go��� ! �   �"     g      ����ƥ��           �      1207	    1
    0    1 `  CREATE FUNCTION [Regex.Match](@Regex [nvarchar](max),@Input [nvarchar](max))  
RETURNS [nvarchar](max) WITH EXECUTE AS CALLER
AS   
EXTERNAL NAME [Regex].[MSSQLRegexExtend.RegexExtend].[Match]  
 --����ƥ��(ƥ�䲻Ϊ�գ���ƥ��Ϊ��)
--SELECT [dbo].[Regex.Match]('\d+','abcdefghijkl') ����ƥ��, 
--[dbo].[Regex.Match]('\d+','0123456789') ��ƥ��
go ��� ! �   �"     g      ����֤����У��6λ    У��6λ�������ٶȽ�����      �      1208	    1
    0    1 U  CREATE function checkArea6
(
@area varchar(6)
)
returns varchar(8000)
WITH ENCRYPTION
as
BEGIN
declare @result varchar(8000)
if @area in (select distinct  ���� from HNXLSYS.dbo.AreaCodeOldNew )
   begin
      set @result=(select ���� from HNXLSYS.dbo.AreaCodeOldNew where ����=@area)
	  return @result
   end
return ''
END
GO��� ! �   �"  "   g      ����֤����У��4λ    ��У��ʡ�ݺͳ���      �      1209	    1
    0    1 c  CREATE function checkArea4
(
@area varchar(4)
)
returns varchar(8000)
WITH ENCRYPTION
as
BEGIN
declare @result varchar(8000)
if @area in (select distinct  left(����,4) from HNXLSYS.dbo.AreaCodeSFCS )
   begin
      set @result=(select ���� from HNXLSYS.dbo.AreaCodeSFCS where left(����,4) = @area)
	  return @result
   end
return ''
END
GO��� ! �   �"      g      ����֤����У��2λ 
   ��У��ʡ��      �      1210	    1
    0    1 _  CREATE function checkArea2
(
@area varchar(2)
)
returns varchar(8000)
WITH ENCRYPTION
as
BEGIN
declare @result varchar(8000)
if @area in (select distinct  left(����,2) from HNXLSYS.dbo.AreaCodeSF )
   begin
      set @result=(select ���� from HNXLSYS.dbo.AreaCodeSF where left(����,2) = @area)
	  return @result
   end
return ''
END
GO��� ! �   �"     g      ����֤������           �      1211	    1
    0    1 �  Create function getCheckCode(@SFZH char(18))
Returns char(1)
WITH ENCRYPTION
As
Begin
  declare @r char(1)
  declare @i int
  if len(@SFZH) <> 18
    set @r = '?'
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
  when 0 then '1' when 1 then '0' when 2 then 'X' when 3 then '9'
  when 4 then '8' when 5 then '7' when 6 then '6' when 7 then '5'
  when 8 then '4' when 9 then '3' when 10 then '2' else '/' end)
  Return(@r)
End��� ! �   �"     g   
   ����֤����           �      1212	    1
    0    1 �  Create function getYears(@SFZH char(18))
Returns char(1)
WITH ENCRYPTION
As
Begin
  declare @r char(1)
  declare @i int
  if len(@SFZH) <> 18
    set @r = '?'
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
  when 0 then '1' when 1 then '0' when 2 then 'X' when 3 then '9'
  when 4 then '8' when 5 then '7' when 6 then '6' when 7 then '5'
  when 8 then '4' when 9 then '3' when 10 then '2' else '/' end)
  Return(@r)
End
GO��� ! �   �"     g      ����֤�ż���    ����������֤��,����У��λ��      �      1213	    1
    0    1 O  CREATE FUNCTION VerifyPerID
(@idcard VARCHAR(60), --����֤���� 
 @sf     VARCHAR(1) --У�������6��ȫ������2��У��ʡ�ݣ��ٶȿ�Щ����4��У��ʡ�ݺͳ���
)
RETURNS VARCHAR(8000) --������Ϣ
WITH ENCRYPTION
AS
     BEGIN
         DECLARE @year_i INT;
         DECLARE @regex_s VARCHAR(240);
 --�����ж�����֤���Ƿ�Ϊ��
         IF @idcard IS NULL
            OR LEN(@idcard) = 0
             RETURN '����֤��Ϊ��';

--�����ж�����֤��λ��
         IF(LEN(@idcard) <> 15
            AND LEN(@idcard) <> 18)
             RETURN '����֤λ����';
--����У�����
         IF @sf = '6'
             BEGIN
                 IF LEN(dbo.checkArea6(@idcard)) = 0
                     RETURN '����֤������';
             END;
         IF @sf = '4'
             BEGIN
                 IF LEN(dbo.checkArea4(@idcard)) = 0
                     RETURN '����֤������';
             END;
         IF @sf = '2'
             BEGIN
                 IF LEN(dbo.checkArea2(@idcard)) = 0
                     RETURN '����֤ʡ�ݴ�';
             END;
--�������ʽУ�� 
--����15λ
         IF(LEN(@idcard) = 15)
             BEGIN
      --���꣺��4�������Ҳ��ܱ�100�������߿��Ա�400����
                 SET @year_i = CAST(SUBSTRING(@idcard, 7, 2) AS INT) + 1900;
                 IF @year_i % 4 = 0
                    AND @year_i % 100 <> 0
                    OR @year_i % 400 = 0 --�����꣬--�������ڵĺϷ����������ʽ
                     SET @regex_s = '[1-9][0-9]{5}[0-9]{2}((01|03|05|07|08|10|12)(0[1-9]|[1-2][0-9]|3[0-1])|(04|06|09|11)(0[1-9]|[1-2][0-9]|30)|02(0[1-9]|[1-2][0-9]))[0-9]{3}$';
                     ELSE
                 SET @regex_s = '[1-9][0-9]{5}[0-9]{2}((01|03|05|07|08|10|12)(0[1-9]|[1-2][0-9]|3[0-1])|(04|06|09|11)(0[1-9]|[1-2][0-9]|30)|02(0[1-9]|1[0-9]|2[0-8]))[0-9]{3}$';
                 IF dbo.[Regex.IsMatch](@regex_s, @idcard) = 0
                     RETURN '����֤�ַ������ڴ�';
             END;
         IF(LEN(@idcard) = 18)
             BEGIN
      --���꣺��4�������Ҳ��ܱ�100�������߿��Ա�400����
                 SET @year_i = CAST(SUBSTRING(@idcard, 7, 4) AS INT);
                 IF @year_i % 4 = 0
                    AND @year_i % 100 <> 0
                    OR @year_i % 400 = 0 --�����꣬--�������ڵĺϷ����������ʽ
                     SET @regex_s = '[1-9][0-9]{5}(19[0-9]{2}|20[0-9]{2})((01|03|05|07|08|10|12)(0[1-9]|[1-2][0-9]|3[0-1])|(04|06|09|11)(0[1-9]|[1-2][0-9]|30)|02(0[1-9]|[1-2][0-9]))[0-9]{3}[0-9Xx]$';
                     ELSE
                 SET @regex_s = '[1-9][0-9]{5}(19[0-9]{2}|20[0-9]{2})((01|03|05|07|08|10|12)(0[1-9]|[1-2][0-9]|3[0-1])|(04|06|09|11)(0[1-9]|[1-2][0-9]|30)|02(0[1-9]|1[0-9]|2[0-8]))[0-9]{3}[0-9Xx]$';
                 IF dbo.[Regex.IsMatch](@regex_s, @idcard) = 0
                     RETURN '����֤�ַ������ڴ�'; 
--����18λ��У���
                 DECLARE @sum CHAR;
                 SET @sum = '';
                 SELECT @sum = dbo.getCheckCode(@idcard);
                 IF(@sum <> SUBSTRING(@idcard, 18, 1))
                     RETURN '����֤У��λ��';
             END;
         RETURN '��ȷ';
     END;
GO
��� ! �   �"  ,   g      һ��һ���ƶ� 
   ����������      �      1214	    1
    0    1 �  CREATE FUNCTION [FN_Resemble_onebyone] (@Cloumna NVARCHAR(MAX), @Cloumnb NVARCHAR(MAX))
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
                
                SET @a=''
                SET @a=SUBSTRING(@Cloumna,@len,1)
                SET @b=''
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
                    SET @a=''
                    SET @a=SUBSTRING(@Cloumna,@len,1)
                    SET @b=''
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
GO��� ! �   �"  -   g   
   ����֤����           �      1215	    1
    0    1 L  CREATE FUNCTION [Fn_GetAge]
(@IdCard     NVARCHAR(18),
 @LimitdDate NVARCHAR(8)
)
RETURNS INT
WITH ENCRYPTION
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
    SET @BirthDateStr = '';
    SET @BirthDate = NULL;
    SET @Length = LEN(@IdCard);
    IF(@Length = 15)
      BEGIN
        SET @BirthYear = ('19'+SUBSTRING(@IdCard, 7, 2));
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
            --2�·ݵ�ʱ��
        IF((@BirthYear % 4 = 0
            OR @BirthYear % 100 != 0)
           OR (@BirthYear % 400 = 0)) --����
          BEGIN
            IF(@BirthMonth = 2)
              BEGIN
                IF(@BirthDay > 0
                   AND @BirthDay <= 29)
                  BEGIN
                    SET @BirthDateStr = @BirthYear+'-'+@BirthMonth+'-'+@BirthDay;
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
                    SET @BirthDateStr = @BirthYear+'-'+@BirthMonth+'-'+@BirthDay;
                  END;
              END;
          END;
            --1 3 5 7 8 10 12�·ݵĴ���
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
                SET @BirthDateStr = @BirthYear+'-'+@BirthMonth+'-'+@BirthDay;
              END;
          END;
          ELSE
        IF(@BirthMonth = 4
           OR @BirthMonth = 6
           OR @BirthMonth = 9
           OR @BirthMonth = 11) --4 6 9 11�·ݵĴ���
          BEGIN
            IF(@BirthDay > 0
               AND @BirthDay <= 30)
              BEGIN
                SET @BirthDateStr = @BirthYear+'-'+@BirthMonth+'-'+@BirthDay;
              END;
          END;
        IF(@BirthDateStr != '')
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
GO��� ! �   �"  1   g      �����ֶ�˳������           �      1216	    1
    0    1 �  CREATE FUNCTION FN_Resemble_order  (@Cloumna NVARCHAR(MAX),  @Cloumnb NVARCHAR(MAX) )
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
                
                SET @a=''
                SET @a=SUBSTRING(@Cloumna,@len,1)
                SET @b=''
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
                    SET @a=''
                    SET @a=SUBSTRING(@Cloumna,@len,1)
                    SET @b=''
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

----���Դ���
--SELECT DBO.FN_Resemble_order('ABDC456G','ABDC123G')��� ! �   �"  >   g      �ַ����б�ȥ��              2019 �      1217	    1
    0    1 �  CREATE FUNCTION Stringlistdistinct(@str VARCHAR(1000))
returns VARCHAR(1000)
WITH ENCRYPTION
AS
  BEGIN
    DECLARE @temp VARCHAR(1000)
    SET @temp= (SELECT String_agg (value, ',')
                FROM   (SELECT DISTINCT value
                        FROM   String_split(@str, ',')) AS T(value))
    --SELECT STRING_AGG (value,',') FROM (VALUES('AAAA'),('BBBBB'),('CCCCCC') )AS T(MyName)
    RETURN @temp
  END
go��� ! �   �"             �������Զ�����      0   @��ʾ1!��������1:Ĭ��ֵ1@��ʾ2!��������2:Ĭ��ֵ2 �      13	    0
    0    1    1 *   CREATE PROCEDURE      AS
BEGIN

END
GO������#��$�%��� M a n a g e r  U p d a t e s R e g i s t r y  T a b l e L i s t 
 T a b l e  N a m e  S o u r c e N a m e  S o u r c e I D 
 T a b I D $ E n f o r c e C o n s t r a i n t s  M i n i m u m C a p a c i t y  C o l u m n L i s t  C o l u m n  d t I n t 3 2  D a t a T y p e  P r e c i s i o n  S e a r c h a b l e  A l l o w N u l l  B a s e  O A l l o w N u l l  O I n U p d a t e  O I n W h e r e  O r i g i n C o l N a m e  S o u r c e P r e c i s i o n  d t A n s i S t r i n g  S i z e  S o u r c e S i z e  d t M e m o  B l o b D a t a  F i x e d L e n  C o n s t r a i n t L i s t  V i e w L i s t  R o w L i s t  R o w 
 R o w I D  O r i g i n a l  R e l a t i o n L i s t  U p d a t e s J o u r n a l  C h a n g e s 