// Alterando o delimitador
DELIMITER $

// Criando uma procedure
CREATE PROCEDURE hello()
BEGIN
    SELECT 'Hello World' AS 'mensagem';
END
$
DELIMITER ;

// Procedure com parâmetros
DELIMITER $
CREATE PROCEDURE soma(n1 INT, n2 INT)
BEGIN
    SELECT n1 + n2 AS 'resultado da soma';
END
$
DELIMITER ;

// Chamando uma procedure
CALL hello();

// Apagando uma procedure
DROP PROCEDURE hello;

// Criando a tabela cursos
CREATE TABLE cursos(
    idcurso INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(30) NOT NULL,
    horas INT(3) NOT NULL,
    valor FLOAT(10,2) NOT NULL
);

INSERT INTO cursos VALUES(NULL, 'Banco de Dados', 25, 200.00);

SELECT * FROM cursos;

DELIMITER $
CREATE PROCEDURE cad_curso(p_nome VARCHAR(30), p_horas INT(3), p_valor FLOAT(10,2))
BEGIN
    INSERT INTO cursos VALUES(NULL, p_nome, p_horas, p_valor);
END
$
DELIMITER ;

