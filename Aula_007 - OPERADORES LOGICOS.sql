/*
    ALL (SUBQUERY)
    AND
    OR
    SOME | ANY (SUBQUERY)
    BETWEEN
    EXISTS
    IN | NOT IN
    LIKE | NOT LIKE
*/

    SELECT * FROM Person.Person
        WHERE BusinessEntityID IN (1, 2, 3, 4, 659, 580, 900, 4500)

    SELECT * FROM Person.Person
        WHERE BusinessEntityID NOT IN ('Ken','Gigi','Aaron','A.')

    SELECT * FROM Person.Person
        -- WHERE BusinessEntityID > 600 AND BusinessEntityID < 800
        WHERE BusinessEntityID BETWEEN 600 AND 800
        -- AND FirstName = 'Fabricio'
        --    AND ( MiddleName = 'DevDojo' OR MiddleName = 'G' AND LastName = 'Boladao')
        --( FirstName = 'Aaron' OR MiddleName <> 'G')
        ORDER BY FirstName

    SELECT * FROM Person.Person
        -- WHERE FirstName LIKE '%G' ('G%')
        WHERE FirstName LIKE '[ABCDEFG]____a'
        ORDER BY FirstName

    SELECT * FROM Person.Person
        -- WHERE FirstName LIKE '%G' ('G%')
        WHERE FirstName NOT LIKE '[^ABCDEFG]____a'
        ORDER BY FirstName

    SELECT * FROM Person.Person
        -- WHERE FirstName LIKE '%G' ('G%')
        WHERE FirstName LIKE '[^ABCDEFG]____a' -- ^ tudo que não estiver neste intervalo
        ORDER BY FirstName