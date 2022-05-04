/*SQL - STRUCTERED QUERY LANGUAGE - LINGUAGEM DE CONSULTA ESTRUTURADA
  T- SQL - TRANSACT SQL

  PARA EXECUTAR A LINHA OU APENAS UMA QUANTIDADE DE LINHA DEVEMOS SELECIONAR
  O QUE QUEREMOS EXECUTAR OU SERÁ EXECUTADO O CÓDIGO INTEIRO

	SELECT = SELECIONE (INSTRUÇÃO SELECT)
	* TUDO(TODAS_AS_COLUNAS)
	FROM = A PARTIR DE/VINDO DE 
	Nome_da_tabela
	WHERE = ONDE
		AND = E
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