/*
    JOIN
*/

    SELECT PP.BusinessEntityID,
           Title,
           FirstName,
           MiddleName,
           LastName,
           PEA.BusinessEntityID
        FROM Person.Person AS PP
      INNER JOIN Person.EmailAddress AS PEA
            ON PP.BusinessEntityID = PEA.BusinessEntityID
--    SELECT TOP 5 * FROM Person.EmailAddress

    SELECT PP.BusinessEntityID,
           Title,
           FirstName,
           MiddleName,
           LastName,
           PEA.BusinessEntityID,
           PhoneNumber
        FROM Person.Person AS PP
      INNER JOIN Person.EmailAddress AS PEA
            ON PP.BusinessEntityID = PEA.BusinessEntityID
            JOIN Person.PersonPhone AS PPP
            ON PEA.BusinessEntityID = PPP.BusinessEntityID