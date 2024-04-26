/*

CHAVE PRIMÁRIAS:
- Identifica exclusivamente
- Não pode conter valores nulos (NULL)
- Uma tabela pode ter apenas uma chave primária

*/

CREATE TABLE {{nome_tabela}} (
    id PRIMARY KEY AUTO_INCREMENT,
);

ALTER TABLE {{nome_tabela}} MODIFY COLUMN id PRIMARY KEY AUTO_INCREMENT;

ALTER TABLE usuarios MODIFY COLUMN id INT AUTO_INCREMENT, ADD PRIMARY KEY (id);
ALTER TABLE destinos MODIFY COLUMN id INT AUTO_INCREMENT, ADD PRIMARY KEY (id);
ALTER TABLE reservas MODIFY COLUMN id INT AUTO_INCREMENT, ADD PRIMARY KEY (id);


/*

CHAVE ESTRANGEIRA:
- Pode ser nula (NOT NULL); **registro órfão
- É possivel ter mais de uma (ou nenhuma) em uma tabela.

*/

CREATE TABLE {{nome_tabela}} (
    id INT PRIMARY KEY AUTOINCREMENT,
    chave_estrangeira INT,
    FOREIGN KEY (chave_estrangeira) REFERENCES {{outra_tabela}} (id)
);

CREATE TABLE reservas (
    id INT PRIMARY KEY AUTOINCREMENT,
    id_usuario INT,
    id_destino INT,
    data DATE,
    status VARCHAR(20),
    FOREIGN KEY (id_usuario) REFERENCES usuarios(id),
    FOREIGN KEY (id_destino) REFERENCES destinos(id)
);

ALTER TABLE {{tabela}} ADD CONSTRAINT {{nome_constraint}} FOREIGN KEY (id_) REFERENCES {{outra_tabela}} (id);

ALTER TABLE reservas ADD CONSTRAINT fk_reservas_usuarios FOREIGN KEY (id_usuario) REFERENCES usuarios(id);
ALTER TABLE reservas ADD CONSTRAINT fk_reservas_destinos FOREIGN KEY (id_destino) REFERENCES destinos(id);

/*

RESTRIÇÕES CHAVE ESTRANGEIRA

- ON DELETE: especifica o que acontece com os registros dependentes quando um registro pai é excluido.
- ON UPDATE: define o comportamento dos registros dependentes quando um registro pai é atualizado.
- CASCADE, SET NULL, SET DEFAULT e RESTRICT.

*/

ALTER TABLE reservas
ADD CONSTRAINT fk_reservas_usuarios
FOREIGN KEY (id_usuario) REFERENCES usuarios(id)
ON DELETE CASCADE;
