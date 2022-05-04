/*
    OFFSET 5 ROW = IR� IGNORAR AS 5 PRIMEIRAS LINHAS OU QUANTAS LINHAS ESTIVER DESCRITO ALI
                   ELE N�O PODE SER UTILIZADO JUNTO AO TOP OU IR� APRESENTAR ERRO DE SINTAXE

    FETCH NEXT 10 ROWS ONLY
                 = IR� TRAZER APENAS AS PR�XIMAS 10 LINHAS, NESTE CASO COMO EST� SENDO UTILIZADO
                   JUNTO AO OFFSET ELE IR� TRAZER AS PR�XIMAS 10 LINHAS EXECUTADAS AP�S O SALTO
*/
    SELECT -- TOP 1000
                BusinessEntityID,
                PersonType,
                Title,
                FirstName,
                MiddleName,
                LastName,
                ModifiedDate
            FROM Person.Person
        ORDER BY BusinessEntityID
    OFFSET 50 ROWS                  -- IGNORE (PULAR) Quantidade_de_linhas ROWS = LINHAS
        FETCH NEXT 10 ROWS ONLY     -- EXECUTE AS PROXIMAS Quantidade_de_linhas LINHAS SOMENTE

                        -- ORDER BY 1,2,3 DEVE SER EVITADO A MICROSOFT N�O RECOMENTDA REALIZAR A ORDENA��O COM N�MEROS
                        /*   FirstName,     -- DEFAULT ASC
                             MiddleName DESC,
                             LastName */

-- SEGUNDO EXEMPLO
    SELECT DISTINCT
                FirstName,
                LastName
            FROM Person.Person
    --    ORDER BY BusinessEntityID N�O PODEMOS ORNENAR POR UM ELEMENTO QUE N�O EST� SENDO SELECIONADO(SELECT)
    ORDER BY LastName
    OFFSET 50 ROWS               
        FETCH NEXT 10 ROWS ONLY