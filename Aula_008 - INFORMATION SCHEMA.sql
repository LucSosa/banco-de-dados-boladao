/*
    SCHEMA
*/

    SELECT * FROM INFORMATION_SCHEMA.TABLES
--    SELECT * FROM Person.Person

    SELECT * FROM INFORMATION_SCHEMA.COLUMNS
        WHERE TABLE_SCHEMA = 'Person'
            AND TABLE_NAME = 'Person'

--  EXEMPLO 2

    USE AdventureWorks2019
    GO

    SELECT * FROM Person.Person
     WHERE BusinessEntityID > 500
    GO

    SELECT* FROM AdventureWorks2019.Sales.Store
--    SELECT* FROM [AdventureWorks2019].[Sales].[Store]  É ISSO QUE O AZURE FAZ

    --dbo: schema padrão
    --SELECT * FROM [Nome_da_base].[Nome_do_Schema].[Nome_da_tabela]

