// Adicionando chave primária
ALTER TABLE cliente ADD CONSTRAINT pk_cliente PRIMARY KEY (idcliente);

// Adicionando chave estrangeira
ALTER TABLE telefone ADD CONSTRAINT fk_cliente_telefone FOREIGN KEY(id_cliente) REFERENCES cliente(idcliente);

// Apagando uma constraint
ALTER TABLE telefone DROP FOREIGN KEY fk_cliente_telefone;