CREATE TABLE vend_total(
    nome VARCHAR(30) NOT NULL,
    sexo CHAR(1) NOT NULL,
    janeiro FLOAT(10,2),
    fevereiro FLOAT(10,2),
    marco FLOAT(10,2),
    media FLOAT(10,2),
    total FLOAT(10,2)
);

DELIMITER $

// Cria procedure para utilizar o cursor
CREATE PROCEDURE inseredados()
BEGIN
    DECLARE fim INT DEFAULT 0;
    DECLARE var1, var2, var3, media, total FLOAT(10,2);
    DECLARE vnome VARCHAR(30);
    DECLARE vsexo CHAR(1);

    DECLARE reg CURSOR FOR(
        SELECT nome, sexo, janeiro, fevereiro, marco FROM vendedores
    );

    DECLARE CONTINUE HANDLER FOR NOT FOUND SET fim = 1;

    OPEN reg;

    REPEAT

        FETCH reg INTO vnome, vsexo, var1, var2, var3;
        IF NOT fim THEN

            SET total = var1 + var2 + var3;
            SET media = total / 3;

            INSERT INTO vend_total VALUES(vnome, vsexo, var1, var2, var3, media, total);

        END IF;
    
    UNTIL fim END REPEAT;

    CLOSE reg;
END$

DELIMITER ;

// Chamando o cursor
CALL inseredados();
