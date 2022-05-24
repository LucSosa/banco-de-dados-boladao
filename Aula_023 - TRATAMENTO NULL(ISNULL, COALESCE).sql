    
    USE AdventureWorks2019
    GO

    /*
        ISNULL(Nome_da_Coluna/Valor, Valor_Para_Substituir/Dado)
            -   EXIGE 2 ARGUMENTOS
        COALESCE(Argumento[Nome_da_Coluna]) : quantos argumentos desejar
    */
    --SELECT ISNULL(NULL, 'ESSE VALOR É NULO')

    SELECT  BusinessEntityID,
            PersonType,
            NameStyle,
            Title,
            ISNULL(Title, '') AS Title,
            FirstName,
            ISNULL(MiddleName, '') AS MiddleName,
            COALESCE(Title, MiddleName, Suffix, FirstName) AS [COALESCE()],
            COALESCE(Title, MiddleName, Suffix) AS [COALESCE()_NULO],
            ISNULL(COALESCE(Title, MiddleName, Suffix), 'COALESCE_NULO') AS [COALESCE()_NULO_2],
            LastName,
            ISNULL(Suffix, '') AS Suffix,
            ISNULL(AdditionalContactInfo, '') AS AdditionalContactInfo,
            TRY_CONVERT(VARCHAR(10), ModifiedDate, 103) AS ModifiedDate
         FROM Person.Person
        --WHERE Suffix IS NOT NULL
    GO