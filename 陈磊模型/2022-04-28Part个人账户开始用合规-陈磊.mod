ADBS  �7  �  ��    f d Q r y E x p o r t     " X _ m e n u s "            	 2   �
�    t _ i d     t _ i d        
             t _ i d  
   ��    t _ p a r e n t _ i d     t _ p a r e n t _ i d        
             t _ p a r e n t _ i d  
   ��    t _ n a m e     t _ n a m e        2             t _ n a m e  2    2   ��    t _ m e m o     t _ m e m o        �             t _ m e m o  �    �   ��    t _ p a r a     t _ p a r a        ,            t _ p a r a  ,   ,  ��    t _ p r o c     t _ p r o c                 t _ p r o c  �����    t _ r i g h t     t _ r i g h t                     t _ r i g h t         ��    t _ o r d e r     t _ o r d e r        
             t _ o r d e r  
   ��    t _ s o r t     t _ s o r t  	                   t _ s o r t         ��    t _ a u t o     t _ a u t o  
                    t _ a u t o         ��    t _ h i d e     t _ h i d e                      t _ h i d e         ��    t _ t y p e     t _ t y p e                      t _ t y p e         ��    i s C l a s s     i s C l a s s                      i s C l a s s         �������� !     �"  Z	           �����˻�����ʹ�úϹ����    �����˻�����ʹ�úϹ���� `   @������ʾ!S��N��D���������ͣ�:�ַ��������ֻ�����@������ʾ!S��N��D���������ͣ�:�ַ��������ֻ�����    20	    0
    0    1    1 g  -- �޲�������ģ��ģ����
-- 1.��ģ�����Ʋ����ظ�
-- 2.��������Ӧ�롰������Ϣ�����ĵĸ�����������һ��
-- 3.�ɸ���ճ���� SSMS(SQL Server Management Studio)�е�������
CREATE PROCEDURE ģ��Ӣ������ WITH ENCRYPTION AS
BEGIN

END
GO

-- �в�������ģ��ģ����
-- 1.��ģ�����Ʋ����ظ�
-- 2.��������Ӧ�롰������Ϣ�����ĵĸ�����������һ��(�������ǰ��@��ͷ)
-- 3.�ɸ���ճ���� SSMS(SQL Server Management Studio)�е�������
CREATE PROCEDURE ģ��Ӣ������(@str Varchar(40),@begin_date Char(8),@num Int ) WITH ENCRYPTION AS
BEGIN

END
GO

-- �����ַ�������ģ��������������Ϣ��������Ϊ�գ�
CREATE FUNCTION ����Ӣ������(@str VARCHAR(MAX),@split VARCHAR(10))
RETURNS Varchar(8) WITH ENCRYPTION
    AS
BEGIN


  RETURN
END
GO

-- ������������ģ��������������Ϣ��������Ϊ�գ�
CREATE FUNCTION ����Ӣ������(@str VARCHAR(MAX),@split VARCHAR(10))
RETURNS Varchar(8) WITH ENCRYPTION
    AS
BEGIN


  RETURN
END
GO

-- ���ر�����ģ�壨��������Ϣ��������Ϊ�գ�
CREATE FUNCTION ����Ӣ������(@str VARCHAR(MAX),@split VARCHAR(10))
RETURNS TABLE WITH ENCRYPTION
    AS
BEGIN

  RETURN (Select * ����)
END
GO

��� !    �"  [	   Z	      I������˻����������������    I������˻����������������    @I�໧�����޶�!N:1    2001	    0
    1    1    0 N  CREATE PROCEDURE Pg_acc_count1(@n1 INT)
WITH ENCRYPTION
AS
  BEGIN
    --DECLARE @n_I INT
 
     IF Object_id(N'tb_BkAccPers', N'U') IS NULL
        OR Object_id(N'tb_PbcPers', N'U') IS NULL
        OR Object_id(N'tb_BkTxnPers', N'U') IS NULL
        BEGIN
            SELECT '�����˻����ݻ�������δ����'   ע��
            RETURN     -- ����ִ�к�������
        END
    IF Object_id('tempdb..#tmp1') IS NOT NULL
      DROP TABLE #tmp1

 
    SELECT ����֤������,
           Sum(CASE �˻�����
                 WHEN '10' THEN 1
                 ELSE 0
               END) I�໧����
    INTO   #tmp1
    FROM   tb_BkAccPers 
    WHERE  NOT �˻����� IS NULL
           AND �˻�״̬ = '����'
    GROUP  BY ����֤������
    HAVING Sum(CASE �˻�����
                   WHEN '10' THEN 1
                   ELSE 0
                 END) > @n1
            
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
           LEFT JOIN tb_BkAccPers b
                  ON a.����֤������ = b.����֤������
           LEFT JOIN SysDtAcc.dbo.tb_FnCode c
                  ON b.�����н��ڻ������� = c.���б�������
    WHERE  b.�˻�״̬ = '����'
    ORDER  BY a.����֤������,
              b.�˻�����,
              b.�����н��ڻ�������
  END
GO ��� !    �"  \	   Z	      ��������˻����������������    ��������˻����������������    @II�໧�����޶�!N:5    2002	    0
    1    1    0 Z  CREATE PROCEDURE Pg_acc_count2(@n2 INT)
WITH ENCRYPTION
AS
  BEGIN
 
     IF Object_id(N'tb_BkAccPers', N'U') IS NULL
        OR Object_id(N'tb_PbcPers', N'U') IS NULL
        OR Object_id(N'tb_BkTxnPers', N'U') IS NULL
        BEGIN
            SELECT '�����˻����ݻ�������δ����'   ע��
            RETURN     -- ����ִ�к�������
        END
    IF Object_id('tempdb..#tmp1') IS NOT NULL
      DROP TABLE #tmp1

  
    SELECT ����֤������,
          
           Sum(CASE �˻�����
                 WHEN '11' THEN 1
                 ELSE 0
               END) II�໧����
         
    INTO   #tmp1
    FROM   tb_BkAccPers 
    WHERE  NOT �˻����� IS NULL
           AND �˻�״̬ = '����'
    GROUP  BY ����֤������
    HAVING Sum(CASE �˻�����
                       WHEN '11' THEN 1
                       ELSE 0
                     END) > @n2
             
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
           a.II�໧����,
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
           LEFT JOIN tb_BkAccPers b
                  ON a.����֤������ = b.����֤������
           LEFT JOIN SysDtAcc.dbo.tb_FnCode c
                  ON b.�����н��ڻ������� = c.���б�������
    WHERE  b.�˻�״̬ = '����'
    ORDER  BY a.����֤������,
              b.�˻�����,
              b.�����н��ڻ�������
  END
GO ��� !    �"  ]	   Z	      ��������˻����������������    ��������˻����������������    @���໧�����޶�!N:5    2003	    0
    1    1    0 E  CREATE PROCEDURE Pg_acc_count3(@n3 INT)
WITH ENCRYPTION
AS
  BEGIN
  
     IF Object_id(N'tb_BkAccPers', N'U') IS NULL
        OR Object_id(N'tb_PbcPers', N'U') IS NULL
        OR Object_id(N'tb_BkTxnPers', N'U') IS NULL
        BEGIN
            SELECT '�����˻����ݻ�������δ����'   ע��
            RETURN     -- ����ִ�к�������
        END
    IF Object_id('tempdb..#tmp1') IS NOT NULL
      DROP TABLE #tmp1

    SELECT ����֤������,
           Sum(CASE �˻�����
                 WHEN '12' THEN 1
                 ELSE 0
               END) III�໧����
    INTO   #tmp1
    FROM   tb_BkAccPers 
    WHERE  NOT �˻����� IS NULL
           AND �˻�״̬ = '����'
    GROUP  BY ����֤������
    HAVING 
               Sum(CASE �˻�����
                       WHEN '12' THEN 1
                       ELSE 0
                     END) > @n3 
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
           LEFT JOIN tb_BkAccPers b
                  ON a.����֤������ = b.����֤������
           LEFT JOIN SysDtAcc.dbo.tb_FnCode c
                  ON b.�����н��ڻ������� = c.���б�������
    WHERE  b.�˻�״̬ = '����'
    ORDER  BY a.����֤������,
              b.�˻�����,
              b.�����н��ڻ�������
  END
GO ��� !    �"  ^	   Z	   $   II�໧�ǰ��˻����ۼ��������޶� �   II�໧�ǰ��˻���𡢳����ֽ��ת�ˣ����ۼƳ��޶ע�⣺�����׶�Ӧ���˻���Ϣ���˺š����˺š��˻����͡��������������׶Է��˺ŵ���Ϣδ�ṩ����ɸѡ��ȫ�棡 $   @���ۼ��޶�!N:10000@��������!N:10000    2004	    0
    1    1    0 u  CREATE PROCEDURE PG_II_RJ_CJ_day_out(@n_rlj int,@row_num int)  WITH ENCRYPTION AS
BEGIN
 IF Object_id(N'tb_BkAccPers', N'U') IS NULL
        OR Object_id(N'tb_PbcPers', N'U') IS NULL
        OR Object_id(N'tb_BkTxnPers', N'U') IS NULL
        BEGIN
            SELECT '�����˻����ݻ�������δ����'   ע��
            RETURN     -- ����ִ�к�������
        END
  --II�໧�ǰ��˻���𡢳����ֽ��ת�ˣ����ۼƺ����ۼƳ��޶�
  if object_id('tempdb..#tmp1') is not null drop table #tmp1
  if object_id('tempdb..#tmp2') is not null drop table #tmp2
  if object_id('tempdb..#tmp3') is not null drop table #tmp3
  SELECT a.�˺�,a.��������,sum(���׽��) ���ۼ���� 
  into #tmp1
  FROM tb_BkTxnPers a
  inner join tb_BkAccPers b
  on a.�˺�=b.�˺�
  where a.�����ʶ='��' and  b.�˻�����='11' and (b.�������˻��˺� is null or a.���׶Է��˺�<>b.�������˻��˺�)  and (a.���׶Է��˻����� not like '%������' or a.���׶Է��˻����� not like '%������%')
  group by  a.�˺�,a.��������
  having sum(���׽��)>@n_rlj
  order by �˺�,a.��������

  SELECT a.�˺�,a.��������,sum(���׽��) ���ۼƳ���
  into #tmp2
  FROM tb_BkTxnPers a
  inner join tb_BkAccPers b
  on a.�˺�=b.�˺�
  where a.�����ʶ='��'  and  b.�˻�����='11' and (b.�������˻��˺� is null or a.���׶Է��˺�<>b.�������˻��˺�) 
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
   select b.�����н��ڻ�������,c.���л�������,a.�˺�,b.�˻�����,b.����֤������,a.��������,a.���ۼ����,a.���ۼƳ���,b.�˻�����,b.�������˻��˺�,b.��������,b.��������,b.���ݺ��鷽ʽ,b.�˻�״̬
   from #tmp3 a
   left join tb_BkAccPers b on a.�˺�=b.�˺�
   left join SysDtAcc.dbo.tb_FnCode c on b.�����н��ڻ�������=c.���б�������
   order by b.�����н��ڻ�������,a.�˺�,a.��������
set rowcount 0
END
GO��� !    �"  _	   Z	   0   II�໧���˹���˿��������ֽ��ǰ��˻�ת����� �   II�໧�ǹ��������˹���˿����������ֽ��ǰ��˻�ת�����ҵ��ע�⣺�����׶�Ӧ���˻���Ϣ���˺š����˺š��˻����͡��������������׶Է��˺ŵ���Ϣδ�ṩ����ɸѡ��ȫ�棡         2005	    0
    1    1    0   CREATE PROCEDURE PG_II_XJ_RJ  WITH ENCRYPTION AS
BEGIN
     IF Object_id(N'tb_BkAccPers', N'U') IS NULL
        OR Object_id(N'tb_PbcPers', N'U') IS NULL
        OR Object_id(N'tb_BkTxnPers', N'U') IS NULL
        BEGIN
            SELECT '�����˻����ݻ�������δ����'   ע��
            RETURN     -- ����ִ�к�������
        END
  --�ǹ��������˹���ˣ��ֽ��ǰ��˻�ת�����
  if object_id('tempdb..#tmp1') is not null drop table #tmp1
  if object_id('tempdb..#tmp2') is not null drop table #tmp2
  if object_id('tempdb..#tmp3') is not null drop table #tmp3
  SELECT a.�˺�,count(���׽��) �ֽ���� 
  into #tmp1
  FROM tb_BkTxnPers a
  inner join tb_BkAccPers b
  on a.�˺�=b.�˺�
  where a.��ת��ʶ='�ֽ�'  and  b.�˻�����='11' and b.���ݺ��鷽ʽ='�������' 
  group by  a.�˺�
  having count(���׽��)>0
  order by �˺�

  SELECT a.�˺�,count(���׽��) ת�������� 
  into #tmp2
  FROM tb_BkTxnPers a
  inner join tb_BkAccPers b
  on a.�˺�=b.�˺�
  where ( a.��ת��ʶ='ת��' and a.�����ʶ='��')  and  b.�˻�����='11' and b.���ݺ��鷽ʽ='�������' 
        and (b.�������˻��˺� is null or a.���׶Է��˺�<>b.�������˻��˺�)
  group by  a.�˺�
  having count(���׽��)>0
  order by �˺�

  select (case when a.�˺� is null then b.�˺� else a.�˺� end) �˺�,a.�ֽ����,b.ת�������� 
   into #tmp3
   from #tmp1 a
   full join #tmp2 b
   on a.�˺�=b.�˺�
   order by �˺�

   select b.�����н��ڻ�������,c.���л�������,a.�˺�,b.�˻�����,b.����֤������,a.�ֽ����,a.ת��������,b.�������˻��˺�,b.��������,b.��������,b.���ݺ��鷽ʽ,b.�˻�״̬
   from #tmp3 a
   left join tb_BkAccPers b on a.�˺�=b.�˺�
   left join SysDtAcc.dbo.tb_FnCode c on b.�����н��ڻ�������=c.���б�������
   order by b.�����н��ڻ�������,a.�˺�

END
GO������#��$�%��� M a n a g e r  U p d a t e s R e g i s t r y  T a b l e L i s t 
 T a b l e  N a m e  S o u r c e N a m e  S o u r c e I D 
 T a b I D $ E n f o r c e C o n s t r a i n t s  M i n i m u m C a p a c i t y  C o l u m n L i s t  C o l u m n  d t I n t 3 2  D a t a T y p e  P r e c i s i o n  S e a r c h a b l e  A l l o w N u l l  B a s e  O A l l o w N u l l  O I n U p d a t e  O I n W h e r e  O r i g i n C o l N a m e  S o u r c e P r e c i s i o n  d t A n s i S t r i n g  S i z e  S o u r c e S i z e  d t M e m o  B l o b D a t a  F i x e d L e n  C o n s t r a i n t L i s t  V i e w L i s t  R o w L i s t  R o w 
 R o w I D  O r i g i n a l  R e l a t i o n L i s t  U p d a t e s J o u r n a l  C h a n g e s 