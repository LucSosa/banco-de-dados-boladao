
    USE AdventureWorks2019
    GO

    SELECT SSP.BusinessEntityID,
           PP.BusinessEntityID,
           FirstName,
           MiddleName,
           LastName,
           TerritoryID,
           Bonus,
           SalesLastYear
         FROM Sales.SalesPerson AS SSP
        FULL OUTER JOIN Person.Person AS PP
           ON SSP.BusinessEntityID = PP.BusinessEntityID
    GO

    SELECT PP.BusinessEntityID AS [PP.BusinessEntityID],
           SSP.BusinessEntityID AS [SSP.BusinessEntityID],
           Title,
           FirstName,
           MiddleName,
           LastName,
           TerritoryID
          FROM Person.Person AS PP
          FULL OUTER JOIN Sales.SalesPerson AS SSP
            ON PP.BusinessEntityID = SSP.BusinessEntityID