
    USE AdventureWorks2019
    GO

    /*
        DATEPART(Parte_da_data/hora, Data/Nome_da_Coluna) : retorno ser� do tipo inteiro
        DATEPART(Parte_da_data/hora, Data/Nome_da_Coluna) : retorno ser� do tipotexto (nvarchar)
        ISDATE(Nome_da_Coluna) : retorno = 1 para TRUE / retorno = 0 para FALSE
    */

    SELECT  ISDATE(GETDATE()) AS [ISDATE()],                        -- AVALIA SE O TIPO � DATA, SE FOR RETORNA 1 E SE N�O FOR RETORNA 0
            ISDATE('20101131') AS [ISDATE()],
            GETDATE() AS [GETDATE()],
            SYSDATETIME() AS [SYSDATETIME()],
            DATEPART(HOUR, GETDATE()) AS HORA,                      -- RETORNA A HORA
            DATEPART(MINUTE, GETDATE()) AS MINUTE,                  -- RETORNA O MINUTO
            DATEPART(YEAR, GETDATE()) AS ANO,                       -- RETORNA O ANO

            YEAR(GETDATE()) AS ANOSOZINHO,                          -- RETORNA O ANO
            MONTH(GETDATE()) AS MESSOZINHO,                         -- RETORNA O MES
            DAY(GETDATE()) AS DIASOZINHO,                           -- RETORNA O DIA

            DATEPART(MICROSECOND, SYSDATETIME()) AS [MICROSECOND],  -- RETORNA O MICROSEGUNDO
            DATEPART(NANOSECOND, SYSDATETIME()) AS [NANOSECOND],    -- RETORNA O NANOSEGUNDO 

            DATENAME(MONTH, GETDATE()) AS [NOME_DO_MES],            -- RETORNA O NOME DO MES
            DATENAME(DAY, GETDATE()) AS [DIA_DO_MES]                -- N�O RETORNA O N�MERO POR EXTENSO DO M�S
    GO                                                              -- GO DELIMITA O T�RMINO DE CADA BLOCO
    
    SELECT  BusinessEntityID,
            Title,
            FirstName,
            MiddleName,
            LastName,
            TRY_CAST(ModifiedDate AS DATE) AS ModifiedDate,
            DATEPART(YEAR, ModifiedDate) AS ANO,
            ISDATE(ModifiedDate) AS VerficaData,
            ISDATE(TRY_CONVERT(VARCHAR(10), ModifiedDate, 103)) AS Verifica
        FROM Person.Person
      WHERE DATEPART(YEAR, ModifiedDate) = 2008
        AND DATENAME(MONTH, ModifiedDate) = 'Dezembro'
    GO