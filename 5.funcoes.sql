// Retorna a quantidade de registros de uma tabela
SELECT COUNT(*) AS 'QUANTIDADE' FROM produtos;

// Retorna o valor máximo de uma coluna
SELECT MAX(valor) AS 'MAIOR PREÇO' FROM produtos;

// Retorna o valor mínimo de uma coluna
SELECT MIN(valor) AS 'MENOR PREÇO' FROM produtos;

// Retorna o valor médio de uma coluna
SELECT AVG(valor) AS 'MÉDIA DE PREÇO' FROM produtos;

// Retorna a soma dos valores de uma coluna
SELECT SUM(valor) AS 'TOTAL' FROM produtos;

// Formatando casas decimais
SELECT TRUNCATE(valor) AS 'PREÇO' FROM produtos;