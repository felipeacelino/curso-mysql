// Estrutura de uma trigger
CREATE TRIGGER nome
BEFORE/AFTER INSERT/UPDATE/DELETE ON tabela
FOR EACH ROW
BEGIN
    // AÇÃO...
    OLD -> Dados antigos
    NEW -> Dados novos
END

CREATE TABLE usuario(
    idusuario INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(30),
    login VARCHAR(30),
    senha VARCHAR(100)
);

INSERT INTO usuario VALUES(NULL, 'Felipe', 'felipe', 'sfd78fd6f8s7dfsd');
INSERT INTO usuario VALUES(NULL, 'Beatriz', 'bea', 'guy534j534j534534');
INSERT INTO usuario VALUES(NULL, 'Bruno', 'bruno', '53j4b5j34hbj5k34');

SELECT * FROM usuario;

CREATE TABLE bkp_usuario(
    idbackup INT PRIMARY KEY AUTO_INCREMENT,
    idusuario INT,
    nome VARCHAR(30),
    login VARCHAR(30)
);

// Criando uma trigger (Copia o registro para a outra tabelas ANTES do mesmo ser deletado)
DELIMITER $
CREATE TRIGGER backup_user
BEFORE DELETE ON usuario
FOR EACH ROW
BEGIN
    INSERT INTO bkp_usuario VALUES(NULL, old.idusuario, old.nome, old.login);
END$
DELIMITER ;

// Testando a trigger
DELETE FROM usuario WHERE idusuario = 3;
SELECT * FROM bkp_usuario;

// Apagando uma trigger
DROP TRIGGER backup_user;