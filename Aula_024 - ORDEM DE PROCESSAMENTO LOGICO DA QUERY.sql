
    USE AdventureWorks2019
    GO

    /*
        Ordem de Processamento Lógico da Query
        1. FROM
        2. WHERE
        3. GROUP BY
        4. HAVING
        5. SELECT
        6. ORDER BY
        7. OFFSET FETCH | TOP
    */

    SELECT  SalesOrderID AS [PrimeiraColuna],
            --SalesOrderDetailID,
            CarrierTrackingNumber,
            --OrderQty,
            ProductID,
            MAX(UnitPrice) AS TOTAL,
            --LineTotal,
            TRY_CAST(ModifiedDate AS DATE) AS [DataModificada]
          FROM Sales.SalesOrderDetail
            -- ModifiedData ainda é DATETIME, pela ordem de processamento lógico o ModifiedDate ainda não foi modificado
         WHERE CarrierTrackingNumber IS NOT NULL
         GROUP BY    SalesOrderID,
                    CarrierTrackingNumber,
                    ProductID,
                    ModifiedDate
        HAVING MAX(UnitPrice) > 750.0000
         ORDER BY [PrimeiraColuna]
         OFFSET 20 ROWS 
            FETCH NEXT 10 ROWS ONLY
    GO