
    USE AdventureWorks2019
    GO

    /*
        GETDATE()
        TRY_CAST - QUANDO OCORRER O ERRO N�O IR� INTERROMPER O FLUXO
        CAST(Valor[Nome_da_coluna] AS [Tipo_do_dado])
        CONVERT([Tipo_do_dado], Nome_da_coluna, [style])
        TRY_CONVERT - QUANDO OCORRER O ERRO N�O IR� INTERROMPER O FLUXO
        https://docs.microsoft.com/pt-br/sql/t-sql/functions/cast-and-convert-transact-sql?view=sql-server-ver15
    */
    SELECT (SELECT CAST ('33' AS INT)) + (SELECT CAST ('37' AS INT)) AS RESULT

    --EXEMPLO CONVERS�O DATA PROTEUS
    SELECT CAST('20010101' AS DATE)

    SELECT CONVERT(VARCHAR(10), GETDATE(), 103)

    SELECT (SELECT CONVERT(INT, '6526164')) + 6

    -- OS PADR�ES SEGUEM CONFORME O LINK
    SELECT CONVERT(VARCHAR(10), GETDATE(), 103)

    SELECT CONVERT(DATE, '14/02/2012', 101) AS COLUNA1,
           CONVERT(DATE, '14/02/2012', 101) AS COLUNA2

    SELECT TRY_CONVERT(DATE, '14/02/2012', 101) AS COLUNA1,
           TRY_CONVERT(DATE, '14/02/2012', 101) AS COLUNA2

    SELECT TRY_CAST('45F' AS SMALLMONEY) AS CONV

    SELECT (SELECT CAST(GETDATE() AS VARCHAR(25))) + 6

    SELECT TRY_CAST('6528.56' AS FLOAT)

    SELECT CAST('256' AS TINYINT) -- VAI ESTOURAR PQ VAI AT� 255