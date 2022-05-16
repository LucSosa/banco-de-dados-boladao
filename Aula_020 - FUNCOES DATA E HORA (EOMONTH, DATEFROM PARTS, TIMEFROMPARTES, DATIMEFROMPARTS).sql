
    USE AdventureWorks2019
    GO

    -- EOMONTH(DATA/Nome_da_coluna, [precisaoOpcional]) : retorno tipo 'date'
    SELECT  GETDATE() AS [GETDATE()],
            EOMONTH(GETDATE()) AS [EOMONTH],            -- Retorna o ultimo dia do valor que passar
            EOMONTH(GETDATE(), -4) AS [NEG],            -- Retorna a diminuição de 4 meses

            EOMONTH('2010-02-10') AS FEV,               -- Retorna o ultimo dia de de feveiro, NESTE CASO
            EOMONTH('2010-02-10', 3) AS MES             -- Retorna o ultimo dia do mes no numero adicionado, neste caso Maio
    GO

    SELECT  BusinessEntityID,
            FirstName,
            ModifiedDate,
            EOMONTH(ModifiedDate, -3) AS [-3 MESES],
            EOMONTH(ModifiedDate) AS ULTIMO_DIA_MES,
            EOMONTH(ModifiedDate, 6) AS [+6 MESES]
        FROM Person.Person

    -- DATAFROMPARTS(ANO, MES, DIA) [TODOS DO TIPO INTEIRO] : RETORNO SERÁ UM DATE
    -- IRÁ RETORNAR UMA DATA
    SELECT DATEFROMPARTS(2015, 10, 7)

    -- TIMEFROMPARTS(HORA, MINUTO, SEGUNDO, FRACAO, PRECISAO) [TODOS DO TIPO INTEIRO] : RETORNO SEÁ UM TIME
    -- RETORNO SERÁ UM HORÁRIO
    -- SIMILAR AO DATEFROMPARTS
    SELECT TIMEFROMPARTS(12, 30, 40, 0, 0)

    -- DATETIMEFROMPARTS(ANO, MES, DIA, HORA, MINUTO, SEGUNDO, FRACAO)
    SELECT DATETIMEFROMPARTS(1991, 4, 12, 1, 58, 30, 30)