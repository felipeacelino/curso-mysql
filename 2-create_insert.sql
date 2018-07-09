CREATE TABLE cliente(
    idcliente INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(30) NOT NULL,
    sexo ENUM('M','F') NOT NULL,
    email VARCHAR(50) UNIQUE,
    cpf VARCHAR(15) UNIQUE
);

INSERT INTO cliente(nome, sexo, email, cpf) VALUES('Felipe', 'M', 'felipe@email.com', 12345678901);
INSERT INTO cliente(nome, sexo, email, cpf) VALUES('Beatriz', 'F', 'beatriz@email.com', 12345678902);
INSERT INTO cliente(nome, sexo, email, cpf) VALUES('Bruno', 'M', 'bruno@email.com', 12345678903);
INSERT INTO cliente(nome, sexo, email, cpf) VALUES('Camiba', 'F', 'camila@email.com', 12345678904);
INSERT INTO cliente(nome, sexo, email, cpf) VALUES('João', 'M', 'joao@email.com', 12345678905);

CREATE TABLE telefone(
    idtelefone INT PRIMARY KEY AUTO_INCREMENT,
    tipo ENUM('COM','RES','CEL'),
    numero VARCHAR(15),
    id_cliente INT,
    FOREIGN KEY(id_cliente) REFERENCES cliente(idcliente)
);

INSERT INTO telefone(tipo, numero, id_cliente) VALUES('COM', '(11) 4002-8922', 1);
INSERT INTO telefone(tipo, numero, id_cliente) VALUES('CEL', '(11) 97657-8979', 1);
INSERT INTO telefone(tipo, numero, id_cliente) VALUES('COM', '(11) 6456-9789', 2);
INSERT INTO telefone(tipo, numero, id_cliente) VALUES('CEL', '(11) 42342-5893', 2);
INSERT INTO telefone(tipo, numero, id_cliente) VALUES('RES', '(11) 86437-8979', 2);
INSERT INTO telefone(tipo, numero, id_cliente) VALUES('COM', '(11) 9823-9084', 3);
INSERT INTO telefone(tipo, numero, id_cliente) VALUES('RES', '(11) 98647-8900', 3);
INSERT INTO telefone(tipo, numero, id_cliente) VALUES('CEL', '(11) 94824-0921', 3);
INSERT INTO telefone(tipo, numero, id_cliente) VALUES('CEL', '(11) 91292-0398', 4);

CREATE TABLE endereco(
    idendereco INT PRIMARY KEY AUTO_INCREMENT,
    rua VARCHAR(30) NOT NULL,
    bairro VARCHAR(30) NOT NULL,
    cidade VARCHAR(30) NOT NULL,
    estado CHAR(2) NOT NULL,
    id_cliente INT UNIQUE,
    FOREIGN KEY(id_cliente) REFERENCES cliente(idcliente)
);

INSERT INTO endereco(rua, bairro, cidade, estado, id_cliente) VALUES('Av. Três Corações', 'Jd. Paraíso', 'Guarulhos', 'SP', 1);
INSERT INTO endereco(rua, bairro, cidade, estado, id_cliente) VALUES('Av. Paulista', 'Bela Vista', 'São Paulo', 'SP', 2);
INSERT INTO endereco(rua, bairro, cidade, estado, id_cliente) VALUES('Av. Beira Mar', 'Centro', 'Fortaleza', 'CE', 3);
INSERT INTO endereco(rua, bairro, cidade, estado, id_cliente) VALUES('Av. Brasil', 'Centro', 'Rio de Janeiro', 'RJ', 4);
INSERT INTO endereco(rua, bairro, cidade, estado, id_cliente) VALUES('R. Capoeira', 'Pelourinho', 'Salvador', 'BA', 6);