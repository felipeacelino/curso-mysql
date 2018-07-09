CREATE TABLE tabela(
    coluna1 VARCHAR(30),
    coluna2 VARCHAR(30),
    coluna3 VARCHAR(30)
);

DESC tabela;

// Adicionando chave primária
ALTER TABLE tabela ADD PRIMARY KEY (coluna1);

// Adicionando coluna SEM posição (Vai para a última posição)
ALTER TABLE tabela ADD coluna VARCHAR(30);

// Adicionando coluna COM posição
ALTER TABLE tabela ADD coluna4 VARCHAR(30) AFTER coluna3;

// Modificando o tipo de uma coluna
ALTER TABLE tabela MODIFY coluna2 DATE;

// Renomeando uma tabela
ALTER TABLE tabela RENAME pessoa;

// Adicionando chave estrangeira
ALTER TABLE pessoa ADD FOREIGN KEY (id_classe) REFERENCES classe(idclasse);

// Exibe a estrutura da tabela com mais detalhes
SHOW CREATE TABLE pessoa;