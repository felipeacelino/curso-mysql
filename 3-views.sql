// Criando a view
CREATE VIEW v_relatorio AS
SELECT c.nome, c.sexo, c.email, t.tipo, t.numero, e.bairro, e.cidade, e.estado
FROM cliente AS c
INNER JOIN endereco AS e ON c.idcliente = e.id_cliente
INNER JOIN telefone AS t ON c.idcliente = t.id_cliente;

// Alterando a view
ALTER VIEW v_relatorio AS
SELECT c.nome, c.sexo, c.email, t.tipo, t.numero, e.bairro, e.cidade, e.estado
FROM cliente AS c
INNER JOIN endereco AS e ON c.idcliente = e.id_cliente
INNER JOIN telefone AS t ON c.idcliente = t.id_cliente;

// Utilizando a view
SELECT * FROM v_relatorio;

// Apagando a view
DROP VIEW v_relatorio;