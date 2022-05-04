/*
    OFFSET 5 ROW = IRÁ IGNORAR AS 5 PRIMEIRAS LINHAS OU QUANTAS LINHAS ESTIVER DESCRITO ALI
                   ELE NÃO PODE SER UTILIZADO JUNTO AO TOP OU IRÁ APRESENTAR ERRO DE SINTAXE

    FETCH NEXT 10 ROWS ONLY
                 = IRÁ TRAZER APENAS AS PRÓXIMAS 10 LINHAS, NESTE CASO COMO ESTÁ SENDO UTILIZADO
                   JUNTO AO OFFSET ELE IRÁ TRAZER AS PRÓXIMAS 10 LINHAS EXECUTADAS APÓS O SALTO
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

                        -- ORDER BY 1,2,3 DEVE SER EVITADO A MICROSOFT NÃO RECOMENTDA REALIZAR A ORDENAÇÃO COM NÚMEROS
                        /*   FirstName,     -- DEFAULT ASC
                             MiddleName DESC,
                             LastName */

-- SEGUNDO EXEMPLO
    SELECT DISTINCT
                FirstName,
                LastName
            FROM Person.Person
    --    ORDER BY BusinessEntityID NÃO PODEMOS ORNENAR POR UM ELEMENTO QUE NÃO ESTÁ SENDO SELECIONADO(SELECT)
    ORDER BY LastName
    OFFSET 50 ROWS               
        FETCH NEXT 10 ROWS ONLY