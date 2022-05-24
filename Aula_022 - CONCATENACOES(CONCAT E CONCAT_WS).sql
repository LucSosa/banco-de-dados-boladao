
    /*
        CONCAT()    : Quantos argumentos quiser
        CONCAT_WS(Separador, Nome_da_Coluna) :
    */

    USE AdventureWorks2019
        GO

     /*
        CONCAT IRÁ SOMAR OS ARGUMENTOS E CRIARÁ UMA COLUNA QUE TERÁ O TIPO DO PRIMEIRO ITEM
        PODE SOMAR QUANTOS ITENS NECESSITAR
    */

    SELECT CONCAT('LUCAS', 'SOSA', TRY_CAST(165151 AS INT))

    SELECT GETDATE() + 652 + 'LSM'

    SELECT  BusinessEntityID,
            PersonType,
            NameStyle,
            Title,
            FirstName,
            MiddleName,
            LastName,
            --NESTE FORMATO QUANDO UM DOS ITENS FOR NULL ELE IRÁ MOSTRAR NULL NA TABELA
            Title+' '+FirstName+' '+MiddleName+' '+LastName+' ' AS NomeCompleto,
            --NESTE FORMATO IRÁ IGNORAR O NULL E SOMARÁ O RESTO, MOSTRANDO NA TABELA
            CONCAT(Title, ' ', FirstName, ' ', MiddleName, ' ', LastName) AS [CONCAT()],
            --FUNCIONA IGUAL O CONCAT, PORÉM ELE INSERE O ESPAÇO SEMPRE, ALÉM DE QUANDO TIVER 
            --UM ITEM NULL ELE NÃO IRÁ COLOCAR O ESPAÇO
            CONCAT_WS(' ', Title, FirstName, MiddleName, LastName) AS [CONCAT_WS()],
            Suffix,
            EmailPromotion,
            ModifiedDate
        FROM Person.Person