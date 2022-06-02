
    USE AdventureWorks2019
    GO

    /*
        CHARINDEX(expressão_a_procurar, nome_da_coluna)
            - DEVE SER UTILIZADO APENAS PARA TEXTO
        PATINDEX('%padrao%', nome_da_coluna)
    */

    SELECT  CHARINDEX('Y','O melhor canal do Youtube é o DevDojo, brabo demais') AS [CHARINDEX],
            PATINDEX('%é_o__e%', 'O melhor canal do Youtube é o DevDojo, brabo demais') AS [PATINDEX]

    SELECT  BusinessEntityID,
            EmailAddress,
            CHARINDEX('@', EmailAddress) AS [CHARINDEX()],
            SUBSTRING(EmailAddress, 1, CHARINDEX('@', EmailAddress)-1) AS NomeUsuario,
            ModifiedDate,
            CHARINDEX('08', ModifiedDate) AS pos
        FROM Person.EmailAddress