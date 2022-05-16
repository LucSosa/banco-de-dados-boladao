
    USE AdventureWorks2019
    GO

    SET LANGUAGE Brazilian
    GO

    /*
        DATEDIFF(PARTE_DA_DATA, PRIMEIRA_DATA, SEGUNDA_DATA) : RETORNO SERÁ DO TIPO INT
        DATEDIFF_BIG(PARTE_DA_DATA, PRIMEIRA_DATA, SEGUNDA_DATA) : RETORNO SERÁ DO TIPO BIGINT
        DATEADD(PARTE_DA_DATA, VALOR, DATA/Nome_da_Coluna)
    */

    SELECT  GETDATE() AS HOJE,
            DATEDIFF(DAY, '1996-01-03', GETDATE()) AS DIFF_DIAS,
            DATEDIFF(HOUR, '1991-01-03 16:36:00', GETDATE()) AS DIFF_HORAS,
            DATEDIFF_BIG(NANOSECOND, '1991-01-03 16:36:00', SYSDATETIME()) AS PRECISAO
    GO
    
    SELECT  BusinessEntityID,
            Title,
            FirstName,
            DATEDIFF(MONTH, ModifiedDate, GETDATE()) AS DIF_MESES,
            DATEDIFF(YEAR, ModifiedDate, GETDATE()) AS DIF_ANO,
            DATEDIFF(DAY, ModifiedDate, GETDATE()) AS DIF_DIA,
            ModifiedDate,
            DATENAME(MONTH, ModifiedDate) AS NOME_DO_MES,
            DATENAME(MONTH, (DATEADD(MONTH, 3, ModifiedDate))) AS MESES_ACRESCIDOS,
            DATEADD(MONTH, -3, ModifiedDate) AS MESES_SUB
        FROM Person.Person
      WHERE ModifiedDate >= DATEADD(YEAR, -7, GETDATE())
    GO

    SELECT  BusinessEntityID,
            Title,
            FirstName,
            DATEDIFF(MONTH, ModifiedDate, GETDATE()) AS DIF_MESES,
            DATEDIFF(YEAR, ModifiedDate, GETDATE()) AS DIF_ANO,
            DATEDIFF(DAY, ModifiedDate, GETDATE()) AS DIF_DIA,
            ModifiedDate,
            DATENAME(MONTH, ModifiedDate) AS NOME_DO_MES,
            DATENAME(MONTH, (DATEADD(MONTH, 3, ModifiedDate))) AS MESES_ACRESCIDOS,
            DATEADD(MONTH, -3, ModifiedDate) AS MESES_SUB
        FROM Person.Person
      WHERE ModifiedDate >= DATEADD(MONTH, -12, ( 
        -- SUBSELECT
        SELECT MAX(ModifiedDate) FROM Person.Person ))
    GO

    SELECT MAX(ModifiedDate) FROM Person.Person

    SELECT DATEDIFF(MONTH, (SELECT MIN(ModifiedDate) FROM Person.Person),
                           (SELECT MIN(ModifiedDate) FROM Person.Person))