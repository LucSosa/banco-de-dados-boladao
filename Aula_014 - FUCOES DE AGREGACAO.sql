/*
    COUNT: CONTAGEM
    MIN: MINIMO
    MAX: MAXIMO
    SUM: SOMATORIO
    AVG: MEDIA
*/

    USE AdventureWorks2019
    GO

--  SELECT COUNT(*) FROM Person.Person -- RETORNA A QUANTIDADE DE LINHAS
--  SELECT TOP 10 * FROM Person.Person -- RETORNA AS 10 PRIMEIRAS COLUNAS

    SELECT COUNT(*) FROM Sales.SalesPerson
    SELECT COUNT(*) AS CONTADOR,
            FirstName
        FROM Person.Person
      GROUP BY FirstName
    GO

    SELECT COUNT(DISTINCT FirstName) AS CONTADOR           
        FROM Person.Person
    GO

    SELECT COUNT(*) AS CONTADOR,
            FirstName,
            MiddleName
        FROM Person.Person
      WHERE MiddleName IS NOT NULL
      GROUP BY FirstName,
               MiddleName
    GO

    SELECT MIN(BusinessEntityID) AS Minimo,
           MIN(ModifiedDate) AS [Data Modificada]    
     FROM Person.Person

    SELECT MAX(BusinessEntityID) AS Maximo,
           MAX(ModifiedDate) AS [Data Modificada]    
     FROM Person.Person

    SELECT SUM(BusinessEntityID) AS SOMA    -- ACEITA APENAS NUMEROS
        FROM Person.Person

    SELECT AVG(BusinessEntityID) AS MEDIA   -- ACEITA APENAS NUMEROS
        FROM Person.Person

    SELECT --SSP.BusinessEntityID,
        --   FirstName,
           MiddleName,
        --   LastName,
        --   TerritoryID,
           SUM(SalesQuota) AS SalesQuota
        --   Bonus,
        --   CommissionPct,
        --   SalesYTD,
        --   SalesLastYear,
        --   PP.ModifiedDate
      FROM Sales.SalesPerson AS SSP
      JOIN Person.Person AS PP
        ON SSP.BusinessEntityID = PP.BusinessEntityID
      GROUP BY --SSP.BusinessEntityID,
            --   FirstName,
               MiddleName
            --   LastName,
            --   TerritoryID,
            --   Bonus,
            --   CommissionPct,
            --   SalesYTD,
            --   SalesLastYear,
            --   PP.ModifiedDate

    SELECT * FROM HumanResources.Department

    SELECT * FROM HumanResources.EmployeeDepartmentHistory
        WHERE StartDate BETWEEN '2009-01-01' AND '2009-01-14'
            ORDER BY StartDate

    SELECT RateChangeDate,
           SUM(Rate) AS Rate,
           MAX(Rate) AS [MAX]
       FROM HumanResources.EmployeePayHistory
      GROUP BY RateChangeDate

    SELECT COUNT(*) AS CONTADOR,
           FirstName
       FROM Person.Person
      GROUP BY FirstName
    HAVING COUNT(*) > 20

    SELECT AVG(Rate) AS rate,
           RateChangeDate
       FROM HumanResources.EmployeePayHistory
      GROUP BY RateChangeDate
    HAVING SUM(Rate) < 7000

    SELECT COUNT(*)
        FROM Person.Person
      WHERE MiddleName IS NOT NULL

    SELECT COUNT(MiddleName)
        FROM Person.Person
      --WHERE MiddleName IS NOT NULL

    SELECT  SUM(Rate) AS [SUM],
            MIN(Rate) AS [MIN],
            MAX(Rate) AS [MAX],
            COUNT(Rate) AS [COUNT],
            AVG(Rate) AS [AVG] 
       FROM HumanResources.EmployeePayHistory