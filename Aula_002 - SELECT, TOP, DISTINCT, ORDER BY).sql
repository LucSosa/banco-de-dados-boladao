/*SQL - STRUCTERED QUERY LANGUAGE - LINGUAGEM DE CONSULTA ESTRUTURADA
  T- SQL - TRANSACT SQL

	SELECT = SELECIONE (INSTRUÇÃO SELECT)
	* TUDO(TODAS_AS_COLUNAS)
	FROM = A PARTIR DE/VINDO DE 
	Nome_da_tabela
	WHERE = ONDE
		AND = E

	ORDER BY  = IRÁ ORDENAR CONFORME O QUE ESTIVER APÓS O BY NA ORDEM CRESCENTE
	ORDER BY ... DESC = IRÁ ORDENAR NA ORDEM DECRESCENTE
	ASC - ASCENDENTE

	AS - ALIASES = APELIDO DA COLUNA/TABELA

	DISTINCT = REMOVE OS DUPLICADOS
*/ 
    
	SELECT BusinessEntityID, 
		   PersonType,
		   Title,
		   FirstName,
		   MiddleName,
		   LastName,
		   ModifiedDate --Ultima Coluna sem >virgula<
	  FROM Person.Person 
	 WHERE FirstName = 'Ken'
	   AND MiddleName = 'L'

	SELECT TOP (1000) 
					BusinessEntityID 	AS [ID PESSOA],
					[PersonType] 		   AS [TIPO PESSOA],
					Title					      AS [TITULO],
					FirstName 				 AS [PRIMEIRO NOME],
					MiddleName 			  AS [NOME DO MEIO],
					LastName 				 AS [ULTIMO NOME]
			FROM Person.Person
	  	WHERE Title = 'Mr.'							--WHERE NAO ACEITA APELIDO
	    ORDER BY [PRIMEIRO NOME],
							[ULTIMO NOME] DESC

-- SEGUNDO EXEMPLO
		SELECT 	
						DISTINCT 
						TOP 1000 
						FirstName,
						MiddleName,
						LastName
				FROM Person.Person
			WHERE Title = 'Mr.'
				AND MiddleName = 'M.'
			ORDER BY FirstName,
		 					  MiddleName
