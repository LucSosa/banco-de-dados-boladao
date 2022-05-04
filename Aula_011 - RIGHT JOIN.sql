
    USE AdventureWorks2019
    GO

    SELECT SSP.BusinessEntityID AS [SSP.BusinessEntityID],
           PP.BusinessEntityID AS [PP.BusinessEntityID],
           TerritoryID,
           SalesQuota,
           Bonus,
           SalesLastYear,
           FirstName,
           MiddleName,
           LastName
         FROM Sales.SalesPerson AS SSP
        RIGHT JOIN Person.Person AS PP
            ON SSP.BusinessEntityID = PP.BusinessEntityID
          JOIN Person.EmailAddress AS PEA
            ON PEA.BusinessEntityID = PP.BusinessEntityID
        ORDER BY SSP.BusinessEntityID,
                 PP.BusinessEntityID

    GO