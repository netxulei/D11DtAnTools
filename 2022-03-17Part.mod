ADBS  �m �  ��    f d Q r y E x p o r t     " X _ m e n u s "            	 2   �
�    t _ i d     t _ i d        
             t _ i d  
   ��    t _ p a r e n t _ i d     t _ p a r e n t _ i d        
             t _ p a r e n t _ i d  
   ��    t _ n a m e     t _ n a m e        2             t _ n a m e  2    2   ��    t _ m e m o     t _ m e m o        �             t _ m e m o  �    �   ��    t _ p a r a     t _ p a r a        ,            t _ p a r a  ,   ,  ��    t _ p r o c     t _ p r o c                 t _ p r o c  �����    t _ r i g h t     t _ r i g h t                     t _ r i g h t         ��    t _ o r d e r     t _ o r d e r        
             t _ o r d e r  
   ��    t _ s o r t     t _ s o r t  	                   t _ s o r t         ��    t _ t a b l e 1     t _ t a b l e 1  
                    t _ t a b l e 1         ��    t _ t a b l e 2     t _ t a b l e 2                      t _ t a b l e 2         ��    t _ a u t o     t _ a u t o                      t _ a u t o         ��    t _ h i d e     t _ h i d e                      t _ h i d e         ��    t _ t y p e     t _ t y p e                      t _ t y p e         ��    i s C l a s s     i s C l a s s                      i s C l a s s         �������� !     �"  =           ������ݷ���           2       02	    0
    0    0    1    1    1 *   CREATE PROCEDURE      AS
BEGIN

END
GO��� !    �"  �   =      ���е�λ�˻����� 
   ����������      X       0201	    0
    0    0    1    1    1��� !    �"     �      ����ҵ���˻�δ��׼�����ƣ� $   ͨ�������жϲ���ȡ�����ɵ��˻�δ��׼ Z   @���Ʒ���ҵ�˻����ƹؼ���!S:����|���չ���|��������|�칫��|ίԱ��|�ֵ����´�|ҽԺ|ѧУ|ѧԺ Z       020101	    0
    0    0    1    1 B  CREATE PROCEDURE  P_yszh_acc_name(@acc_name_key varchar(200))  WITH ENCRYPTION AS
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
GO��� !    �"  �   �      �˻��ٱ�����ٺ�׼ F   �˻�ϵͳ��־�͵�λ�˻���Ϣ��������ҵ����������ʱ��һ�㡢ר���˻��ٱ��� >   @ȡ����������!D:20190520@�������涨����!N:1@һ�㻧�涨����!N:1 \       020102	    1
    0    0    1    1 �   CREATE PROCEDURE P_dwzh_late_bak(@bgn_date CHAR(8),@inter_day1 INT,@inter_day2 INT)
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
��� !    �"      =      ���е�λ�˻�ʵ���Ʒ��� j   �Ӽ������Դ�в��ҿͻ������п��ܴ��ڵ����⣨��Ҫ��ʾ��������ݣ����ص������б����Ϊ���ݹ淶�ж����Ӣ�ģ�      ^       0202	    0
    0    0    1    1    1��� !    �"            ��λ�˻������������� .   ͨ�����Ҳ��淶�˻����ƣ����ֿ��ܵ��˻���������    @��������!N:10000 f       020201	    1
    1    0    1    1 �  CREATE PROCEDURE  P_acc_name_not_real_ent(@row_num int) WITH ENCRYPTION AS
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
GO��� !    �"  3           ��λ�˻�֤�������������� 8   ������������֤��������Ϣ�����ֿ��ܴ��ڵĵ�λ�˻���������    @��������!N:100000 h       020202	    1
    1    0    1    1 �  CREATE PROCEDURE P_acc_ent_id_wt (@row_num INT)
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
GO ��� !    �"  �           ��λ֤������ͬ���Ʋ�ͬ      -   @�ȽϺ��ֵ�����������!N:6@��������!N:100000 j       020203	    1
    1    0    1    1 W  CREATE PROCEDURE P_acc_same_id_no_name_ent(@bj_num int,@row_num int) WITH ENCRYPTION AS
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
GO��� !    �"  �           3104����ʱ����ϴ��˻�     �����е�֤��������ȫ�ſ����н�� %   @����ʱ��С����!N:90@��������!N:10000 `       020203	    1
    1    0    0    1   CREATE PROCEDURE P_acc_per_age_60 (@min_age int,@row_num int) WITH ENCRYPTION AS
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
GO��� ! 	   �"  �           3105����֤ͬ�������Ʋ�ͬ ,   ����֤������ͬ����������ͬ�����ɸѡ�쳣�˻�    @��������!N:10000 b       020204	    1
    1    0    0    1 4  CREATE PROCEDURE P_acc_same_id_no_name_per(@row_num int) WITH ENCRYPTION AS
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
GO��� ! 
   �"  .          3106�����˻����ɶԹ��˻�    ����    @��������!N:1000 d       020205	    1
    1    0    0    1 �  CREATE PROCEDURE  P_acc_per_no_per (@row_num int) WITH ENCRYPTION AS
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
GO��� !    �"  Z    =      ���е�λ�˻��ȶԷ��� 4   ��Ҫ���ܣ�ɸѡ��ҵ�����˻�������������ʹ�÷�������� ?   @ҵ��ʼʱ��!D:20110101@ҵ�����ʱ��!D:20120530@��������!N:100 l       0203	    0
    0    0    1    1    1 P  CREATE PROCEDURE P_acc_ent_rmb_sum (@bgn_date char(8), @end_date char(8), @row_num int) AS
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
GO��� !    �"  [    Z       .�˻���������      >   @ҵ��ʼʱ��!D:20120101@ҵ�����ʱ��!D:20130228@��������!N:20 n       020301	    0
    0    0    1    1 �  CREATE PROCEDURE P_acc_ent_rmb_single (@bgn_date char(8), @end_date char(8), @row_num int) AS
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
GO��� !    �"  M   [    %   ��λ�˻�δ��׼��δ����_�ȶ��������� @   �����в���δ�����˻�ϵͳ���������˻�����ϵͳ�ѳ������Ѿ����˻� \   @�Ƿ��޳����Ϊ0���˻�����1�ǡ�0��!S:1@�Ƿ���ʾ���ױ�������1�ǡ�0��!S:1@��С���ױ���!N:2 o       02030101	    1
    1    0    1    1 l  CREATE PROCEDURE P_yeb_not_bak (@is_ok CHAR(1),@txn_ok CHAR(1),@jybs INT)
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
GO��� !    �"  ]    [    '   ��λ�˻�δ��׼��δ����_�ȶ������˻����� �   ����1�����з�ע��״̬�˻�������ϵͳ�����ڻ��ѳ���;����2�����м��������ע���˻����˻�ϵͳ������;����3:������ע���˻����˻�ϵͳ����ʱ��ʱ���;����9�����С� �   @��鿪ʼ����!D:20190101@δ�������ͣ�1����1��2����2��3����3��9�ϲ���!S:9@�Ƿ�ȶ��˻����ʣ�0��1�ǣ�!S:0@�Ƿ���ʾ���ױ�������1�ǡ�0��!S:1@��С���ױ���!N:2 p       02030102	    1
    1    0    1    1 <1  CREATE PROCEDURE P_zh_not_bak(@bgn_date CHAR(8),@mode CHAR(1),@zhxz CHAR(1),@txn_ok CHAR(1),@jybs INT)
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
GO ��� !    �"  (   [    '   ��λ�˻�δ��׼��δ����_�ȶ����н������� [   ����1���н��׵�δ�ṩ�˻���Ϣ���˻�δ������--����2�������������ں��Է������ף�����9���ϲ��� M   @��С���ױ���!N:5@����׽��!N:1000@δ�������ͣ�1����1��2����2��9�ϲ���!N:9 r       02030103	    1
    1    0    1    1 [  CREATE PROCEDURE P_jy_not_bak(@jybs INT,@jyje INT,@mode CHAR(1))
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
GO ��� !    �"     [    '   ��λ�˻��ٺ�׼��ٱ���_�ȶ������˻����� (   �ȶ������˻���Ϣ��ɸѡδ��׼��δ�����˻� D   @��鿪ʼ����!D:20190101@������ʱ��������!N:1@һ���Ԥ�㱸������!N:5 s       02030104	    1
    1    0    1    1   CREATE PROCEDURE P_zh_late_khrq(@bgn_date CHAR(8),@inter_day1 INT,@inter_day2 INT)
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
GO ��� !    �"  �   [       ר��δ��׼��δ����_�ȶ��˻����� B   ���������У����������Ч��ר�����˻�����ϵͳ�в����ڻ�������г���      t       02030105	    1
    1    0    0    1 >  CREATE PROCEDURE P_zyzh_not_bak WITH ENCRYPTION AS
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
GO��� !    �"  �   [       һ���˻�δ����_�ȶ��˻����� F   ���������У����������Ч��һ���˻����˻�����ϵͳ�в����ڻ�������г���      v       02030106	    1
    1    0    0    1 �  CREATE PROCEDURE P_yszh_not_bak WITH ENCRYPTION AS
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
GO��� !    �"     [       4105��׼��δ��׼_�����Խ��� @   ��������ʱ��Ԥ�����˻��ѳ���������Է������ף��ɹ���Ϊδ��׼�˻�    @��С�������׽��!N:60 x       02030107	    1
    1    0    0    1 )  CREATE PROCEDURE P_jblsys_cx_jy(@jyje int)  WITH ENCRYPTION  AS
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
GO��� !    �"  2   [       4106������δ����_������������ V   ���������У����������Ч�ı������˻����˻�����ϵͳ�в����ڻ�������г�������Ԥ��ר���� A   @ҵ��ʼ����!D:20120101@ҵ���������!D:20130430@��С���ױ���!N:1 z       02030108	    1
    1    0    0    1 �  CREATE PROCEDURE P_ybzyzh_not_bak(@bgn_date char(8),@end_date char(8),@jybs int)  WITH ENCRYPTION AS
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
GO��� !    �"  '   [       4107������δ����_�����Խ��� 2   һ���Ԥ���˻��ѳ����Է������ף��ɹ���Ϊδ�����˻�    @��С�������׽��!N:60 |       02030109	    1
    1    0    0    1 4  CREATE PROCEDURE P_ybfys_cx_jy(@jyje int)  WITH ENCRYPTION AS
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
GO��� !    �"  F   [       4109��׼��ٺ�׼_�����縶�� N   ��������ʱ��Ԥ��ר��δ�ڹ涨��ʱ���ں�׼���Դ���һ������������縶�������ж�    @��С������!N:600@����!N:2 �       02030110	    1
    1    0    0    1 6  CREATE PROCEDURE P_jblsys_late_fkrq(@jyje int,@inter_day int)  WITH ENCRYPTION  AS
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
GO��� !    �"     [       4110������ٱ���_�����翪�� F   �Ǻ�׼��δ�ڹ涨��ʱ���ں�׼�������п��������жϣ��ֲ��˻�ϵͳ����� 9   @��鿪ʼ����!D:20120101@����������!D:20130430@����!N:5 �       02030111	    1
    1    0    0    1 o  CREATE PROCEDURE P_ybfys_late_khrq(@bgn_date char(8),@end_date char(8),@inter_day int) WITH ENCRYPTION  AS
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
GO��� !    �"  G   [       4111������ٱ���_�����縶�� F   �Ǻ�׼��δ�ڹ涨��ʱ���ں�׼�������и��������жϣ��ֲ��˻�ϵͳ�����    @��С������!N:600@����!N:5 �       02030112	    1
    1    0    0    1 %  CREATE PROCEDURE P_ybfys_late_fkrq(@jyje int,@inter_day int)  WITH ENCRYPTION AS
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
GO��� !    �"      [       4112δ��׼��δ����_���˻��н��� *   ����δ�ṩ�˻����ݣ������ױ��д��ڽ��׼�¼    @��С���ױ���!N:3 �       02030113	    1
    1    0    0    1 �
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
GO��� !    �"  `   [       4113δ��׼��δ����_���˻���ȡ�� *   ����δ�ṩ�˻����ݣ������ױ��д���ȡ�ּ�¼    @ɸѡȡ�ֵ���С����!N:1 �       02030114	    1
    1    0    0    1 }
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
GO��� !    �"  @   Z       .�˻���������           �       020302	    0
    0    0    0    1��� !    �"     @      4201�˻�����δ���� .   ��������ṩ�ĳ����˻��������˻�ϵͳ����ʾ����      �       02030201	    1
    1    0    0    1 
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
GO��� !    �"  #   @      4202�˻������ٱ��� (   ������������������������˻�ϵͳ�гٱ��� 9   @��鿪ʼ����!D:20120101@����������!D:20130430@����!N:7 �       02030202	    1
    1    0    0    1 �  CREATE PROCEDURE P_zhcx_late_bak(@bgn_date char(8),@end_date char(8),@inter_day int)  WITH ENCRYPTION AS
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
GO��� !    �"  9   Z       .�˻�ʹ�÷���           �       020303	    0
    0    0    1    1��� !    �"     9      �������˻�ȡ�� (   һ��ͷ�Ԥ���˻�����ȡ��ҵ���ṩ������ X   @ҵ��ʼ����!D:20190101@ҵ���������!D:20200630@ÿ����Сȡ�ֽ��!N:100@����ȡ�ֱ���!N:1 �       02030301	    1
    1    0    1    1 x  CREATE PROCEDURE P_ybzh_qx(@bgn_date char(8),@end_date char(8),@jfxjje int,@jfxjbs int)   WITH ENCRYPTION AS
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
GO��� !     �"     9      Ԥ��ר���˻�ȡ��    Ԥ��ר���˻�����ȡ��ҵ�� X   @ҵ��ʼ����!D:20190101@ҵ���������!D:20200630@ÿ����Сȡ�ֽ��!N:100@����ȡ�ֱ���!N:1 �       02030302	    1
    1    0    1    1 `  CREATE PROCEDURE P_zyzh_qx(@bgn_date char(8),@end_date char(8),@jfxjje int,@jfxjbs int)  WITH ENCRYPTION AS
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
GO��� ! !   �"  -   9      4304��������Ч���ڷ�������ҵ�� 6   ��������Ч���ڷ�������ҵ��(�ֳ��ֹ��޳����ʻ�ת������) R   @��鿪ʼ����!D:20120101@����������!D:20130430@��Ч������!N:3@��С������!N:200 �       02030303	    1
    1    0    0    1 �
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
GO��� ! "   �"  &   9       4303�ǻ�������Ч���ڷ�������ҵ�� 4   ����Ϊ�ǻ�������Ч���ڷ�������ҵ��(ע���ֹ��޳���ĩ) R   @��鿪ʼ����!D:20120101@����������!D:20130430@��Ч������!N:3@��С������!N:200 �       02030304	    1
    1    0    0    1 �
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
GO��� ! #   �"  ?   Z       4.�˻���������      0   @��ʾ1!��������1:Ĭ��ֵ1@��ʾ2!��������2:Ĭ��ֵ2 �       020304	    0
    0    0    0    1 *   CREATE PROCEDURE      AS
BEGIN

END
GO��� ! $   �"  J   ?       4401ͬһ�˺ź�׼�򱸰�������һ�� .   ��ͬ�˺����л����Ļ������˻�ϵͳ�еĻ�����һ��      �       02030401	    1
    1    0    0    1 �  CREATE PROCEDURE  P_SameAcc_NotName  WITH ENCRYPTION   AS
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
GO��� ! %   �"  5   ?      ͬһ����ͬʱ��������һ��    ���������� ���� 0   @��ʾ1!��������1:Ĭ��ֵ1@��ʾ2!��������2:Ĭ��ֵ2 �       02030402	    1
    1    0    0    1 *   CREATE PROCEDURE      AS
BEGIN

END
GO��� ! &   �"  6   ?      ͬһ����ͬʱ����������ʱ    ���������� ���� 0   @��ʾ1!��������1:Ĭ��ֵ1@��ʾ2!��������2:Ĭ��ֵ2 �       02030403	    1
    1    0    0    1 *   CREATE PROCEDURE      AS
BEGIN

END
GO��� ! '   �"  ;   Z       5.��ͷ�˻����    �������������� 0   @��ʾ1!��������1:Ĭ��ֵ1@��ʾ2!��������2:Ĭ��ֵ2 �       020305	    0
    0    0    0    1 *   CREATE PROCEDURE      AS
BEGIN

END
GO��� ! (   �"  I   ;       6704�����˻���Ϊ�����˻�ʹ�á��� S   δ��׼���׼����Ϊ�ǻ����˻��������ʽ���Ƚ��ף���ɸѡ������˹��������ֳ��鿴 ���� 0   @��ʾ1!��������1:Ĭ��ֵ1@��ʾ2!��������2:Ĭ��ֵ2 �       02030501	    1
    1    0    0    1 *   CREATE PROCEDURE      AS
BEGIN

END
GO��� ! )   �"  E   ;   $   6703�����˻���׼�򱸰�Ϊ�����˻����� #   ��ɸѡ������˹��������ֳ��鿴 ���� 0   @��ʾ1!��������1:Ĭ��ֵ1@��ʾ2!��������2:Ĭ��ֵ2 �       02030502	    1
    1    0    0    1 *   CREATE PROCEDURE      AS
BEGIN

END
GO��� ! *   �"  ,   ;      6702ͬһ֤�����������Ϸǻ����� #   ��ɸѡ������˹��������ֳ��鿴 ����    @��������!N:10000 �       02030503	    1
    1    0    0    1 �  CREATE PROCEDURE  P_ysdtzh_zjh(@row_num int) AS
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
GO��� ! +   �"  +   ;      6702���ƶ�ͷ�˻�(�ͻ��ţ� k   ���ͻ���ͬһ�ͻ����δ�����˻���ȡ�֣���������ʹ�ã������ݲ��������Է��֣���ʹ��������鹦��ʱ�˹�ע�� ����    @��������!N:10000 �       02030504	    1
    1    0    0    1 �  CREATE PROCEDURE  P_ysdtzh_khh(@row_num int) AS
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
GO��� ! ,   �"  *   ;      6701���ƶ�ͷ�˻�(������ "   ��ɸѡ������˹��������ֳ��鿴���� A   @��鿪ʼ����!D:20120101@����������!D:23130228@��������!N:10000 �       02030505	    1
    1    0    0    1 �  CREATE PROCEDURE  P_ysdtzh_hm(@bgn_date char(8),@end_date char(8),@row_num int) AS
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
GO��� ! -   �"  A   Z       6.��׼�򱸰���Ϣһ�������    �������������� 0   @��ʾ1!��������1:Ĭ��ֵ1@��ʾ2!��������2:Ĭ��ֵ2 �       020306	    0
    0    0    0    1 *   CREATE PROCEDURE      AS
BEGIN

END
GO��� ! .   �"  B   A      �Ѻ�׼�򱸰���δ��ҵ��ϵͳ����    �������������� 0   @��ʾ1!��������1:Ĭ��ֵ1@��ʾ2!��������2:Ĭ��ֵ2 �       02030601	    1
    1    0    0    1 *   CREATE PROCEDURE      AS
BEGIN

END
GO��� ! /   �"  �   =      ���и����˻�������ϵͳ�ȶ� 
   ���������� 0   @��ʾ1!��������1:Ĭ��ֵ1@��ʾ2!��������2:Ĭ��ֵ2       0204	    0
    0    0    1    1    1 *   CREATE PROCEDURE      AS
BEGIN

END
GO��� ! 0   �"  �   �   "   �����˻�����δ�������˺Ž��ʺţ���    �ȶ��˺źͽ��ʺ� 9   @��ʼ����!D:20190101@��������!D:20200831@��������!N:10000       020401	    1
    1    0    1    1 .  CREATE PROCEDURE Pg_grzh_not_bak_zh(@bgn_date CHAR(8),@end_date CHAR(8),@row_num INT)
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

GO ��� ! 1   �"  �   �   "   �����˻������ٱ������˺Ž��ʺţ���      #   @�ٱ�������!N:14@��������!N:1000000 "      020402	    1
    1    0    1    1 �  CREATE PROCEDURE Pg_grzh_late_bak_zh(@day_num INT,@row_num INT)
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
GO ��� ! 2   �"  �   =      ���и����˻�ʵ����������      0   @��ʾ1!��������1:Ĭ��ֵ1@��ʾ2!��������2:Ĭ��ֵ2 &      0205	    0
    0    0    1    1    1 *   CREATE PROCEDURE      AS
BEGIN

END
GO��� ! 3   �"  �   �      �����˻�����֤�������������    ����֤����ͨ���߼�У�� X   @����У��λ��(2λУ��ʡ��,4λУ��ʡ�ݳ���,6λУ���ؼ�)!S:2@�˻�״̬(1��������,9����)!S:9 '      020501	    0
    1    0    1    1 �  CREATE PROCEDURE P_gr_id_chk(@area_mode CHAR(1),@zh_state CHAR(1))
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
GO ��� ! 4   �"  �   �      �����˻�֤������Ϊ�ա�         @���������ʼ����!D:20190101 (      020502	    1
    1    0    1    1 �  CREATE PROCEDURE Pg_ID_empty(@bgn_date CHAR(8))
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
GO ��� ! 5   �"  �   �   "   �����˻�16��������δ������֤������    16�����û��ڲ�����      )      020503	    0
    1    0    1    1 �  CREATE PROCEDURE Pg_16up
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
GO ��� ! 6   �"  �   �   "   �����˻�����ʱ����ʱ����֤���ڡ�    �ȶ�����֤������������    @������޽�ֹ��!D:20200630 *      020504	    1
    1    0    1    1 �  CREATE PROCEDURE Pg_16up_date(@bgn_date CHAR(8))
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
GO ��� ! 7   �"  �   �       �����˻�֤��������ͬ�����Ʋ�ͬ��         @���������ʼ����!D:20190101 +      020505	    1
    1    0    1    1 �  CREATE PROCEDURE Pg_acc_same_id_no_name(@bgn_date CHAR(8))
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
go ��� ! 8   �"  �   �      �����˻����ڲ�����û�д�����         @���������ʼ����!D:20190101 ,      020506	    1
    1    0    1    1 �  CREATE PROCEDURE Pg_hkb_no_dl(@bgn_date CHAR(8))
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
go ��� ! 9   �"  �   �      ����˵绰��������      -   @���л������루Ϊ��ȫ����!S:@��������!N:10000 7      020507	    1
    1    0    0    1 �  CREATE PROCEDURE PG_acc_dh_wt(@bank_code varchar(14),@row_num int) WITH ENCRYPTION AS
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
GO��� ! :   �"  �   =      ���и����˻�����ʹ�úϹ���� 
   ���������� 0   @��ʾ1!��������1:Ĭ��ֵ1@��ʾ2!��������2:Ĭ��ֵ2 0      0206	    1
    1    0    1    1    1 *   CREATE PROCEDURE      AS
BEGIN

END
GO��� ! ;   �"  �   �      �����˻������������������    ����I��II��III�˻��������� 9   @I�໧�����޶�!N:1@II�໧�����޶�!N:4@III�໧�����޶�!N:5 0      020601	    1
    1    0    1    1 2  CREATE PROCEDURE Pg_acc_count(@n_I INT,@n_II INT,@n_III INT)
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
GO ��� ! <   �"  �   �   0   II�໧���˹���˿��������ֽ��ǰ��˻�ת����� �   II�໧�ǹ��������˹���˿����������ֽ��ǰ��˻�ת�����ҵ��ע�⣺�����׶�Ӧ���˻���Ϣ���˺š����˺š��˻����͡��������������׶Է��˺ŵ���Ϣδ�ṩ����ɸѡ��ȫ�棡      1      020602	    1
    1    0    1    1 !  CREATE PROCEDURE PG_II_XJ_RJ  WITH ENCRYPTION AS
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
GO��� ! =   �"  �   �   $   II�໧�ǰ��˻����ۼ��������޶� �   II�໧�ǰ��˻���𡢳����ֽ��ת�ˣ����ۼƳ��޶ע�⣺�����׶�Ӧ���˻���Ϣ���˺š����˺š��˻����͡��������������׶Է��˺ŵ���Ϣδ�ṩ����ɸѡ��ȫ�棡 $   @���ۼ��޶�!N:10000@��������!N:20000 2      020603	    1
    1    0    1    1 �  CREATE PROCEDURE PG_II_RJ_CJ_day_out(@n_rlj int,@row_num int)  WITH ENCRYPTION AS
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
GO��� ! >   �"  �   �   $   II�໧�ǰ��˻����ۼ��������޶� �   II�໧�ǰ��˻���𡢳����ֽ��ת�ˣ����ۼƳ��޶ע�⣺�����׶�Ӧ���˻���Ϣ���˺š����˺š��˻����͡��������������׶Է��˺ŵ���Ϣδ�ṩ����ɸѡ��ȫ�棡 $   @���ۼ��޶�!N:200000@��������!N:1000 3      020604	    1
    1    0    1    1 0  CREATE PROCEDURE PG_II_RJ_CJ_year_out(@n_nlj int,@row_num int)  WITH ENCRYPTION AS
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
GO��� ! ?   �"  �   �      �ǽ����˻�����ת�˽��� L   �������˵���ǽ����˻�ʹ���˽��㹦�ܻ��������ṩ�����������⣬����Ϊ�������    @��������!N:1000 4      020605	    1
    1    0    0    1 �  CREATE PROCEDURE PG_NoJS_YesJY(@row_num int)  WITH ENCRYPTION AS
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
GO��� ! @   �"  7   �      I���˻�������濪�� 
   ���������� 0   @��ʾ1!��������1:Ĭ��ֵ1@��ʾ2!��������2:Ĭ��ֵ2 7      020606	    1
    1    0    1    1 *   CREATE PROCEDURE      AS
BEGIN

END
GO��� ! A   �"  8   �      ������濪��δ�������˻� 
   ���������� 0   @��ʾ1!��������1:Ĭ��ֵ1@��ʾ2!��������2:Ĭ��ֵ2 8      020607	    1
    1    0    1    1 *   CREATE PROCEDURE      AS
BEGIN

END
GO������#��$�%��� M a n a g e r  U p d a t e s R e g i s t r y  T a b l e L i s t 
 T a b l e  N a m e  S o u r c e N a m e  S o u r c e I D 
 T a b I D $ E n f o r c e C o n s t r a i n t s  M i n i m u m C a p a c i t y  C o l u m n L i s t  C o l u m n  d t I n t 3 2  D a t a T y p e  P r e c i s i o n  S e a r c h a b l e  A l l o w N u l l  B a s e  O A l l o w N u l l  O I n U p d a t e  O I n W h e r e  O r i g i n C o l N a m e  S o u r c e P r e c i s i o n  d t A n s i S t r i n g  S i z e  S o u r c e S i z e  d t M e m o  B l o b D a t a  F i x e d L e n  C o n s t r a i n t L i s t  V i e w L i s t  R o w L i s t  R o w 
 R o w I D  O r i g i n a l  R e l a t i o n L i s t  U p d a t e s J o u r n a l  C h a n g e s 