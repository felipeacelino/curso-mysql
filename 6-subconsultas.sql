CREATE TABLE vendedores(
    idvendedor INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(30) NOT NULL,
    sexo CHAR(1) NOT NULL,
    janeiro FLOAT(10,2),
    fevereiro FLOAT(10,2),
    marco FLOAT(10,2)
);

INSERT INTO vendedores VALUES(NULL, 'Felipe', 'M', 1000.00, 800.00, 850.00);
INSERT INTO vendedores VALUES(NULL, 'Beatriz', 'F', 1500.00, 500.00, 700.00);
INSERT INTO vendedores VALUES(NULL, 'Bruno', 'M', 900.00, 900.00, 800.00);
INSERT INTO vendedores VALUES(NULL, 'Camila', 'F', 1800.00, 1000.00, 950.00);
INSERT INTO vendedores VALUES(NULL, 'João', 'M', 950.00, 1100.00, 750.00);

SELECT * FROM vendedores;

+------------+---------+------+---------+-----------+--------+
| idvendedor | nome    | sexo | janeiro | fevereiro | marco  |
+------------+---------+------+---------+-----------+--------+
|          1 | Felipe  | M    | 1000.00 |    800.00 | 850.00 |
|          2 | Beatriz | F    | 1500.00 |    500.00 | 700.00 |
|          3 | Bruno   | M    |  900.00 |    900.00 | 800.00 |
|          4 | Camila  | F    | 1800.00 |   1000.00 | 950.00 |
|          5 | João    | M    |  950.00 |   1100.00 | 750.00 |
+------------+---------+------+---------+-----------+--------+

// Vendedor que vendeu menos em março
SELECT nome, marco FROM vendedores WHERE marco = (SELECT MIN(marco) FROM vendedores);

// Vendedor que vendeu mais em março
SELECT nome, marco FROM vendedores WHERE marco = (SELECT MAX(marco) FROM vendedores);

// Vendedor que vendeu mais do que a média de fevereiro, em março
SELECT nome, marco FROM vendedores WHERE marco > (SELECT AVG(fevereiro) FROM vendedores);

// CÁLCULOS COM LINHAS
SELECT 
    nome, 
    janeiro,
    fevereiro, 
    marco,
    (janeiro + fevereiro + marco) AS 'total',
    (janeiro + fevereiro + marco) * .25 AS 'desconto',
    TRUNCATE((janeiro + fevereiro + marco) / 3, 2) AS 'media'
FROM vendedores;