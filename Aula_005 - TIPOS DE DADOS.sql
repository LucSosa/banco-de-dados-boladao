/*
                                Tipos de Dados: Numéricos exatos (inteiros ou decimais)
    +------------+--------------------------------------------------------------------------+---------------+
    |   Tipo     |                            Intervalo                                     | Armazenamento |
    |------------| -------------------------------------------------------------------------|---------------|
    |bigint      |-2^63 (-9.233.372.036.854.775.808) a -2^63-1 (-9.233.372.036.854.775.807) |   8 bytes     |
    |int         |-2^31 (-2.17.483.648) a -2^31-1 (-2.17.483.647)                           |   4 bytes     |
    |smallint    |-2^15 (32.768) a 2^15-1 (32.767)                                          |   2 bytes     |
    |tinyint     | 0 a 255                                                                  |   1 bytes     |
    |money       | -922.337.203.685.477,58 a 922.337.203.685.477,58                         |   8 bytes     |
    |smallmoney  | -214.748,3648 a 214.748,3648                                             |   4 bytes     |
    |------------| -------------------------------------------------------------------------|---------------|
    |bit         |  1 (TRUE), 0 (FALSE) OU null                                                             |
    |            |    "Se houver 8 ou menos colunas bit em uma tabela, as colunas serão armazenados         |
    |            |    como 1 byte. Sehouver de 9 a 16 colunas bit, as colunas serão armazenadas             |
    |            |    como 2 bytes, e assim por diante"                                                     |
    |------------|------------------------------------------------------------------------------------------|
    |decimal     | - 10^38 + 1 a 10^38 - 1 ambos são equivalentes                                           |
    |numeric     | - 10^38 + 1 a 10^38 - 1 ambos são equivalentes                                           |
    |-------------------------------------------------------------------------------------------------------|
    |https://docs.microsoft.com/pt-br/sql/t-sql/functions/isnumeric-transact-sql?view=sql-server-ver15      |
    +------------+--------------------------------------------------------------------------+---------------+
    
                                    Tipos de Dados: Numéricos aproximados
    +------------+--------------------------------------------------------------------------+---------------------+
    |   Tipo     |                            Intervalo                                     |   Armazenamento     |
    |------------| -------------------------------------------------------------------------|---------------------|
    |float       |- 1,79E+308 a -2,23E-308, 0 e 2,23E-308 a 1,79E+308                       |Depende do valor de n|
    |real        |- 3,40E + 38 a -1,18E - 38, 0 e 1,18E - 38 a 3,40E + 38                   |       4 bytes       |
    |-------------------------------------------------------------------------------------------------------------|
    |https://docs.microsoft.com/pt-br/sql/t-sql/data-types/float-and-real-transact-sql?view=sql-server-ver15      |
    +------------+--------------------------------------------------------------------------+---------------------+

                                        Tipos de Dados: Cadeia de caracteres
    +------------+--------------------------------------------------------------------------+---------------------+
    |   Tipo     |                                 Descrição                                                      |
    |------------| -----------------------------------------------------------------------------------------------|
    |char(n)     | Caracteres de tamanho fixo. Máximo 8000 caracteres                                             |
    |varchar(n)  | Caracteres de tamanho variável. Máximo 8000 caracteres                                         |
    |varchar(max)| Caracteres de tamanho variável. Máximo 1.073.741.824 caracteres                                |
    |-------------------------------------------------------------------------------------------------------------|
    |https://docs.microsoft.com/pt-br/sql/t-sql/data-types/char-and-varchar-transact-sql?view=sql-server-ver15    |
    +------------+--------------------------------------------------------------------------+---------------------+
    
                                            Tipos de Dados: Cadeia de caracteres Unicode
    +-------------+--------------------------------------------------------------------------+---------------------+
    |   Tipo      |                                 Descrição                                                      |
    |-------------| -----------------------------------------------------------------------------------------------|
    |nchar(n)     | Caracteres de tamanho fixo. Máximo 4000 caracteres                                             |
    |nvarchar(n)  | Caracteres de tamanho variável. Máximo 4000 caracteres                                         |
    |nvarchar(max)| Caracteres de tamanho variável. Máximo 536.870.912 caracteres                                  |
    |--------------------------------------------------------------------------------------------------------------|
    |https://docs.microsoft.com/pt-br/sql/t-sql/data-types/nchar-and-nvarchar-transact-sql?view=sql-server-ver15   |
    +------------+--------------------------------------------------------------------------+----------------------+

                                            Tipos de Dados: Cadeia de caracteres Binários
    +-------------+--------------------------------------------------------------------------+---------------------+
    |   Tipo      |                                 Descrição                                | Use quando ...      |
    |-------------| -------------------------------------------------------------------------|---------------------|
    |             | Dados binários de comprimento fixo com um tamanho de bytes, em que n é   |  os tamanhos das    |
    |binary(n)    | um valor de 1 a 8000. O tamanho do armazenamento é n bytes               | entradas de dados de|
    |             | Caracteres de tamanho variável. Máximo 536.870.912 caracteres            | de coluna forem     |
    |             |                                                                          | consistentes.       |
    |-------------|--------------------------------------------------------------------------|---------------------|
    |             | Dados binários de tamanho variável.                                      |  os tamanhos das    |
    |varbinary(n) | n pode ser um valor de 1 a 8000.                                         | entradas de dados de|
    |             |                                                                          | de coluna forem     |
    |             |                                                                          | consideravelmente.  |
    |-------------|--------------------------------------------------------------------------|---------------------|
    |varbinary    | Tamanho de armazenamento máximo é de 2^31-1 bytes                        |                     |
    |(máx)        |                                                                          |                     |
    |--------------------------------------------------------------------------------------------------------------|
    |https://docs.microsoft.com/pt-br/sql/t-sql/data-types/binary-and-varbinary-transact-sql?view=sql-server-ver15 |
    +------------+--------------------------------------------------------------------------+----------------------+

                            Tipos de Dados: Cadeia de caracteres Binários/Unicode/Não unicode
    +-------------+--------------------------------------------------------------------------+---------------------+
    |   Tipo      |                                 Descrição                                                      |
    |-------------| -------------------------------------------------------------------------|---------------------|
    | text        | Dados não Unicode de comprimento variável. Máximo de caracteres de 2^31-1 (2.147.483.647)      |
    | ntext       | Dados Unicode de comprimento variável. Máximo de caracteres de 2^30 - 1(1.073.741.823) bytes   |
    | image       | Dados binários do comprimento variável de 0 2^31-1 (2.147.483.647) bytes                       |
    |             |                                                                                                |
    |-------------|--------------------------------------------------------------------------|---------------------|
    | IMPORTANTE: Os tipos de dados ntext, text e image serão removidos em uma versão futura do SQL Server.        | 
    | Evite usar esses tipos de dados em novos trabalhos de desenvolvimento e planeje modificar os aplicativos     | 
    | que os utilizam atualmente. Em vez disso, use nvarchar(max), varchar(max) e varbinary(max).                  |
    |--------------------------------------------------------------------------------------------------------------|
    |https://docs.microsoft.com/pt-br/sql/t-sql/data-types/ntext-text-and-image-transact-sql?view=sql-server-ver15 |
    +------------+--------------------------------------------------------------------------+----------------------+ 

                                        Tipos de Dados: Data e Hora
    +--------------------+----------------------------------+-------------------------+--------------------------------------------+
    |      Tipo          |        Valores                   |       Formato           | Valores Padrão                             |
    |--------------------|----------------------------------|-------------------------|--------------------------------------------|
    |        date        |    0001-01-01 a 9999-12-31       |      AAAA-MM-DD         |          1900-01-01                        |
    |--------------------|----------------------------------|-------------------------|--------------------------------------------|
    |    datetime        |    1753-01-01 a 9999-12-31       |     AAAA-MM-DD hh:mm:ss |          19-01-01 00:00:00                 |
    |                    |    Hora 00:00:00 a 23:59:59.997  |                         |                                            |
    |--------------------|----------------------------------|-------------------------|--------------------------------------------|
    |   datetime2        |    0001-01-01 a 9999-12-31       |     AAAA-MM-DD hh:mm:ss |          19-01-01 00:00:00                 |
    |                    | Hora 00:00:00 a 23:59:59.9999999 | [segundos fracionários] |                                            |
    |--------------------|----------------------------------|-------------------------|--------------------------------------------|
    | datetimeoffset     |    0001-01-01 a 9999-12-31       |     AAAA-MM-DD hh:mm:ss |          19-01-01 00:00:00                 |
    |                    | Hora 00:00:00 a 23:59:59.9999999 | [.nnnnnnn] [{+|-}hh:mm] |                                            |
    |--------------------|----------------------------------|-------------------------|--------------------------------------------|
    |    smalldatetime   |    1900-01-01 a 2079-06-06       |AAAA-MM-DD hh:mm:ss      |     1900-01-01 00:00:00                    |
    |                    |     Hora 00:00:00 a 23:59:59     |[segundos fracionários]  |                                            |
    |--------------------|----------------------------------|-------------------------|--------------------------------------------|
    |       Time         |          00:00:00.0000000 a      |hh:mm:ss[.nnnnnnn]       |         00:00:00                           |
    |                              23:59:59.9999999         |                         |                                            |
    |------------------------------------------------------------------------------------------------------------------------------|
    |https://docs.microsoft.com/pt-br/sql/t-sql/functions/date-and-time-data-types-and-functions-transact-sql?view=sql-server-ver15|
    |------------------------------------------------------------------------------------------------------------------------------|



*/