ADBS  V=  ?  ??    f d Q r y E x p o r t     " X _ m e n u s "            	 2   ?
?    t _ i d     t _ i d        
             t _ i d  
   ??    t _ p a r e n t _ i d     t _ p a r e n t _ i d        
             t _ p a r e n t _ i d  
   ??    t _ n a m e     t _ n a m e        2             t _ n a m e  2    2   ??    t _ m e m o     t _ m e m o        ?             t _ m e m o  ?    ?   ??    t _ p a r a     t _ p a r a        ,            t _ p a r a  ,   ,  ??    t _ p r o c     t _ p r o c                 t _ p r o c  ?????    t _ r i g h t     t _ r i g h t                     t _ r i g h t         ??    t _ o r d e r     t _ o r d e r        
             t _ o r d e r  
   ??    t _ s o r t     t _ s o r t  	                   t _ s o r t         ??    t _ a u t o     t _ a u t o  
                    t _ a u t o         ??    t _ h i d e     t _ h i d e                      t _ h i d e         ??    t _ t y p e     t _ t y p e                      t _ t y p e         ??    i s C l a s s     i s C l a s s                      i s C l a s s         ???????? !     ?"  S	           ?????˻?ʵ???? $   ??ҵ???и????˻?ʵ???ƴ??ڵ????????? `   @??????ʾ!S??N??D?????????ͣ?:?ַ????????ֻ?????@??????ʾ!S??N??D?????????ͣ?:?ַ????????ֻ?????    19	    0
    0    1    1 g  -- ?޲???????ģ??ģ????
-- 1.??ģ?????Ʋ????ظ?
-- 2.????????Ӧ?롰??????Ϣ?????ĵĸ???????????һ??
-- 3.?ɸ???ճ???? SSMS(SQL Server Management Studio)?е???????
CREATE PROCEDURE ģ??Ӣ?????? WITH ENCRYPTION AS
BEGIN

END
GO

-- ?в???????ģ??ģ????
-- 1.??ģ?????Ʋ????ظ?
-- 2.????????Ӧ?롰??????Ϣ?????ĵĸ???????????һ??(????????ǰ??@??ͷ)
-- 3.?ɸ???ճ???? SSMS(SQL Server Management Studio)?е???????
CREATE PROCEDURE ģ??Ӣ??????(@str Varchar(40),@begin_date Char(8),@num Int ) WITH ENCRYPTION AS
BEGIN

END
GO

-- ?????ַ???????ģ??????????????Ϣ????????Ϊ?գ?
CREATE FUNCTION ????Ӣ??????(@str VARCHAR(MAX),@split VARCHAR(10))
RETURNS Varchar(8) WITH ENCRYPTION
    AS
BEGIN


  RETURN
END
GO

-- ????????????ģ??????????????Ϣ????????Ϊ?գ?
CREATE FUNCTION ????Ӣ??????(@str VARCHAR(MAX),@split VARCHAR(10))
RETURNS Varchar(8) WITH ENCRYPTION
    AS
BEGIN


  RETURN
END
GO

-- ???ر?????ģ?壨????????Ϣ????????Ϊ?գ?
CREATE FUNCTION ????Ӣ??????(@str VARCHAR(MAX),@split VARCHAR(10))
RETURNS TABLE WITH ENCRYPTION
    AS
BEGIN

  RETURN (Select * ????)
END
GO

??? !    ?"  T	   S	      ?????˻?????֤???????Ʋ??Ϲ?    ?????˻?????֤???????Ʋ??Ϲ? X   @????У??λ??(2λУ??ʡ??,4λУ??ʡ?ݳ???,6λУ???ؼ?)!S:2@?˻?״̬(1????????,9????)!S:9    1901	    0
    1    1    0 ?  -- ?޲???????ģ??ģ????
-- 1.??ģ?????Ʋ????ظ?
-- 2.????????Ӧ?롰??????Ϣ?????ĵĸ???????????һ??
-- 3.?ɸ???ճ???? SSMS(SQL Server Management Studio)?е???????
CREATE PROCEDURE [dbo].[P_gr_id_chk](@area_mode CHAR(1),@zh_state CHAR(1))
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

    IF Object_id(N'tb_BkAccPers', N'U') IS NULL
      BEGIN
        SELECT '???˻?ϵͳ?????˻????ݻ???ҵ???и????˻?????δ????' ע??
      END
    ELSE
      BEGIN
        IF @area_mode <> '2'
           AND @area_mode <> '4'
           AND @area_mode <> '6'
            OR @zh_state <> '1'
               AND @zh_state <> '9'
          BEGIN
            SELECT '??????У??λ??ֻ??Ϊ2??4??6???˻?״ֻ̬??Ϊ1??9???永ֻ??Ϊ0??1??9' ????????
          END
        ELSE
          BEGIN
            SELECT [?????н??ڻ???????],
                   [?ͻ?????],
                   [?˻?????],
                   [?˺?],
                   [?˻?????],
                   [????????],
                   [????ʱ??],
                   [????????],
                   [????ʱ??],
                   [?˻?״̬],
                   [֤??????],
                   [????֤??????],
                   CASE
                     WHEN ( [֤??????] = '????֤' or  [֤??????] = '????????֤'
                             OR [֤??????] = '???ڲ?' )
                          AND NOT [????֤??????] IS NULL THEN dbo.VerifyPerID([????֤??????], @area_mode)
                     ELSE ''
                   END ????֤??????????,
                   [????֤????Ч?ڿ?ʼ??],
                   [????֤????Ч?ڽ?ֹ??],
                   [???ݺ??鷽ʽ],
                   [?????ֻ?????],
                   [?????????˻??˺?],
                   [?󶨿????з??˴???],
                   [??????????],
                   [??????֤??????],
                   [??????֤??????],
                   CASE
                     WHEN ([??????֤??????] = '????֤' or  [??????֤??????] = '????????֤')
                          AND NOT [??????֤??????] IS NULL THEN dbo.Verifyperid([??????֤??????], @area_mode)
                     ELSE ''
                   END ??????????֤??????????,
                   [??????֤????Ч?ڿ?ʼ??],
                   [??????֤????Ч?ڽ?ֹ??],
                   [????????ϵ?绰],
                   [?????ص???????],
                   [???ʺ?],
                   [????????],
                   [????״̬]
            INTO   #tmp1
            FROM   tb_BkAccPers
            WHERE  ?˻?״̬ <> ( CASE
                               WHEN @zh_state = '1' THEN 'ע??'
                               WHEN @zh_state = '9' THEN '????'
                             END )

            SELECT b.???л???????,
                   a.*
            FROM   #tmp1 a
                   LEFT JOIN SysDtAcc.dbo.tb_FnCode b
                          ON a.[?????н??ڻ???????] = b.???б?????????
            WHERE  ????֤?????????? <> '??ȷ'
                   AND ????֤?????????? <> ''
                    OR ??????????֤?????????? <> '??ȷ'
                       AND ??????????֤?????????? <> ''
            ORDER  BY [?????н??ڻ???????],
                      ?˻?????
          END
      END
  END
GO

??? !    ?"  U	   S	      ?????˻?֤??????Ϊ?? $   ???и????˻?????ʱ??????֤??????Ϊ??    @??????????ʼ????!D:20210101    1902	    0
    1    1    0   CREATE PROCEDURE Pg_ID_empty(@bgn_date CHAR(8))
WITH ENCRYPTION
AS
  BEGIN
  IF Object_id(N'tb_BkAccPers', N'U') IS NULL
        OR Object_id(N'tb_PbcPers', N'U') IS NULL
        OR Object_id(N'tb_BkTxnPers', N'U') IS NULL
        BEGIN
            SELECT '?????˻????ݻ?????????δ????'   ע??
            RETURN     -- ????ִ?к???????
        END
    --DECLARE @bgn_date CHAR(8)
    --SET @bgn_date ='20190101'
    SELECT b.[???л???????],
           [?????н??ڻ???????],
           [?ͻ?????],
           [?˻?????],
           [?˺?],
           [?˻?????],
           [????????],
           [????ʱ??],
           [????????],
           [????ʱ??],
           [?˻?״̬],
           [֤??????],
           [????֤??????],
           [????֤????Ч?ڿ?ʼ??],
           [????֤????Ч?ڽ?ֹ??],
           [???ݺ??鷽ʽ],
           [?????ֻ?????],
           [?????????˻??˺?],
           [?󶨿????з??˴???],
           [??????????],
           [??????֤??????],
           [??????֤??????],  
           [??????֤????Ч?ڿ?ʼ??],
           [??????֤????Ч?ڽ?ֹ??],
           [????????ϵ?绰],
           [?????ص???????],
           [???ʺ?],
           [????????],
           [????״̬]
    FROM   tb_BkAccPers a
           LEFT JOIN SysDtAcc.dbo.tb_FnCode b
                  ON [?????н??ڻ???????] = b.???б?????????
    WHERE  [????֤??????] is null or len([????֤??????])<6
           and ????????>=@bgn_date
    ORDER  BY [?????н??ڻ???????],
              ?˻?????
  END
GO ??? !    ?"  V	   S	       ?????˻?16????????δ??????֤????    16?????û??ڲ?????         1903	    0
    1    1    0 ?  CREATE PROCEDURE Pg_16up
WITH ENCRYPTION
AS
  BEGIN
  IF Object_id(N'tb_BkAccPers', N'U') IS NULL
        OR Object_id(N'tb_PbcPers', N'U') IS NULL
        OR Object_id(N'tb_BkTxnPers', N'U') IS NULL
        BEGIN
            SELECT '?????˻????ݻ?????????δ????'   ע??
            RETURN     -- ????ִ?к???????
        END
    SELECT 
           [?????н??ڻ???????],
           b.[???л???????],
           [?ͻ?????],
           [?˻?????],
           [?˺?],
           [?˻?????],
           [????????],
           [????ʱ??],
           [????????],
           [????ʱ??],
           [?˻?״̬],
           [֤??????],
           [????֤??????],
           dbo.Fn_getage([????֤??????], [????????]) ????,
           [????֤????Ч?ڿ?ʼ??],
           [????֤????Ч?ڽ?ֹ??],
           [???ݺ??鷽ʽ],
           [?????ֻ?????],
           [?????????˻??˺?],
           [?󶨿????з??˴???],
           [??????????],
           [??????֤??????],
           [??????֤??????],
           [??????֤????Ч?ڿ?ʼ??],
           [??????֤????Ч?ڽ?ֹ??],
           [????????ϵ?绰],
           [?????ص???????],
           [???ʺ?],
           [????????],
           [????״̬]
    FROM   tb_BkAccPers a
           LEFT JOIN SysDtAcc.dbo.tb_FnCode b
                  ON [?????н??ڻ???????] = b.???б?????????
    WHERE  dbo.Fn_getage([????֤??????], [????????]) > 16
           AND ֤?????? = '???ڲ?'
    ORDER  BY [?????н??ڻ???????],
              ?˻?????
  END
GO ??? !    ?"  W	   S	       ?????˻?????ʱ??????ʱ????֤????    ?ȶ?????֤??????????????    @???????޽?ֹ??!D:20220101    1904	    0
    1    1    0 ?  CREATE PROCEDURE Pg_16up_date(@bgn_date CHAR(8))
WITH ENCRYPTION
AS
  BEGIN
   IF Object_id(N'tb_BkAccPers', N'U') IS NULL
        OR Object_id(N'tb_PbcPers', N'U') IS NULL
        OR Object_id(N'tb_BkTxnPers', N'U') IS NULL
        BEGIN
            SELECT '?????˻????ݻ?????????δ????'   ע??
            RETURN     -- ????ִ?к???????
        END
    SELECT 
           [?????н??ڻ???????],
           b.[???л???????],
           [?ͻ?????],
           [?˻?????],
           [?˺?],
           [?˻?????],
           [????????],
           [????ʱ??],
           [????????],
           [????ʱ??],
           [?˻?״̬],
           [֤??????],
           [????֤??????],
           [????֤????Ч?ڿ?ʼ??],
           [????֤????Ч?ڽ?ֹ??],
           Datediff(day, CONVERT(DATE, [????֤????Ч?ڽ?ֹ??]), CONVERT(DATE, ????????)) ????????????,
           Datediff(day, CONVERT(DATE, [????֤????Ч?ڽ?ֹ??]), CONVERT(DATE, @bgn_date)) ?????չ???????,
           [???ݺ??鷽ʽ],
           [?????ֻ?????],
           [?????????˻??˺?],
           [?󶨿????з??˴???],
           [??????????],
           [??????֤??????],
           [??????֤??????],
           [??????֤????Ч?ڿ?ʼ??],
           [??????֤????Ч?ڽ?ֹ??],
           [????????ϵ?绰],
           [?????ص???????],
           [???ʺ?],
           [????????],
           [????״̬]
  FROM   tb_BkAccPers a
           LEFT JOIN SysDtAcc.dbo.tb_FnCode b
                  ON [?????н??ڻ???????] = b.???б?????????
    WHERE  ???????? > [????֤????Ч?ڽ?ֹ??]
            OR @bgn_date > [????֤????Ч?ڽ?ֹ??]
    ORDER  BY [?????н??ڻ???????],
              ?˻?????
  END
GO ??? !    ?"  X	   S	      ?????˻?֤????????ͬ?????Ʋ?ͬ    ?????˻?֤????????ͬ?????Ʋ?ͬ    @??????????ʼ????!D:20210101    1905	    0
    1    1    0 !  CREATE PROCEDURE Pg_acc_same_id_no_name(@bgn_date CHAR(8))
WITH ENCRYPTION
AS
  BEGIN
   IF Object_id(N'tb_BkAccPers', N'U') IS NULL
        OR Object_id(N'tb_PbcPers', N'U') IS NULL
        OR Object_id(N'tb_BkTxnPers', N'U') IS NULL
        BEGIN
            SELECT '?????˻????ݻ?????????δ????'   ע??
            RETURN     -- ????ִ?к???????
        END
    IF Object_id('tempdb..#tmp') IS NOT NULL
      DROP TABLE #tmp

    SELECT DISTINCT [????֤??????],
                    Count(?˻?????) ????
    INTO   #tmp
    FROM   tb_BkAccPers
    WHERE  Len([????֤??????]) > 0
    GROUP  BY [????֤??????]
    HAVING Count(DISTINCT ?˻?????) >= 2

    SELECT 
           [?????н??ڻ???????],
           c.[???л???????],
           [?ͻ?????],
           [?˻?????],
           [?˺?],
           [?˻?????],
           [????????],
           [????ʱ??],
           [????????],
           [????ʱ??],
           [?˻?״̬],
           [֤??????],
           a.[????֤??????],
           [????֤????Ч?ڿ?ʼ??],
           [????֤????Ч?ڽ?ֹ??],
           [???ݺ??鷽ʽ],
           [?????ֻ?????],
           [?????????˻??˺?],
           [?󶨿????з??˴???],
           [??????????],
           [??????֤??????],
           [??????֤??????],
           [??????֤????Ч?ڿ?ʼ??],
           [??????֤????Ч?ڽ?ֹ??],
           [????????ϵ?绰],
           [?????ص???????],
           [???ʺ?],
           [????????],
           [????״̬]
    FROM   #tmp a
           LEFT JOIN tb_BkAccPers b
                  ON a.[????֤??????] = b.[????֤??????]
           LEFT JOIN SysDtAcc.dbo.tb_FnCode c
                  ON b.?????н??ڻ??????? = c.???б?????????
    WHERE  ???????? > @bgn_date
    ORDER  BY a.[????֤??????],
              ?˻?????
  END
go ??? !    ?"  Y	   S	      ?????˻????ڲ?????û?д???    ?????˻????ڲ?????û?д???    @??????????ʼ????!D:20210101    1906	    0
    1    1    0 ?  CREATE PROCEDURE Pg_hkb_no_dl(@bgn_date CHAR(8))
WITH ENCRYPTION
AS
  BEGIN
   IF Object_id(N'tb_BkAccPers', N'U') IS NULL
        OR Object_id(N'tb_PbcPers', N'U') IS NULL
        OR Object_id(N'tb_BkTxnPers', N'U') IS NULL
        BEGIN
            SELECT '?????˻????ݻ?????????δ????'   ע??
            RETURN     -- ????ִ?к???????
        END

    SELECT b.[???л???????],
           [?????н??ڻ???????],
           [?ͻ?????],
           [?˻?????],
           [?˺?],
           [?˻?????],
           [????????],
           [????ʱ??],
           [????????],
           [????ʱ??],
           [?˻?״̬],
           [֤??????],
           [????֤??????],
           dbo.Fn_getage([????֤??????], [????????]) ????ʱ????,
           [????֤????Ч?ڿ?ʼ??],
           [????֤????Ч?ڽ?ֹ??],
           [???ݺ??鷽ʽ],
           [?????ֻ?????],
           [?????????˻??˺?],
           [?󶨿????з??˴???],
           [??????????],
           [??????֤??????],
           [??????֤??????],
           [??????֤????Ч?ڿ?ʼ??],
           [??????֤????Ч?ڽ?ֹ??],
           [????????ϵ?绰],
           [?????ص???????],
           [???ʺ?],
           [????????],
           [????״̬]
    FROM   tb_BkAccPers a
           LEFT JOIN SysDtAcc.dbo.tb_FnCode b
                  ON a.?????н??ڻ??????? = b.???б?????????
    WHERE  ???????? > @bgn_date
           AND ( Len([??????????]) = 0
                  OR [??????????] IS NULL )
           AND [֤??????] = '???ڲ?'
           AND dbo.Fn_getage([????֤??????], [????????]) <= 16
    ORDER  BY ?????н??ڻ???????,
              ?˻?????
  END
go ??????#??$?%??? M a n a g e r  U p d a t e s R e g i s t r y  T a b l e L i s t 
 T a b l e  N a m e  S o u r c e N a m e  S o u r c e I D 
 T a b I D $ E n f o r c e C o n s t r a i n t s  M i n i m u m C a p a c i t y  C o l u m n L i s t  C o l u m n  d t I n t 3 2  D a t a T y p e  P r e c i s i o n  S e a r c h a b l e  A l l o w N u l l  B a s e  O A l l o w N u l l  O I n U p d a t e  O I n W h e r e  O r i g i n C o l N a m e  S o u r c e P r e c i s i o n  d t A n s i S t r i n g  S i z e  S o u r c e S i z e  d t M e m o  B l o b D a t a  F i x e d L e n  C o n s t r a i n t L i s t  V i e w L i s t  R o w L i s t  R o w 
 R o w I D  O r i g i n a l  R e l a t i o n L i s t  U p d a t e s J o u r n a l  C h a n g e s 