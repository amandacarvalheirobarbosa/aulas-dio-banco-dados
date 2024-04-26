/* MODIFICAR A TABELA */

ALTER TABLE {{nome_tabela}} RENAME {{novo_nome}};
ALTER TABLE usuarios_nova RENAME usuarios;

ALTER TABLE {{nome_tabela}} MODIFY COLUMN {{nome_coluna}} {{o que deseja fazer}};
ALTER TABLE usuarios MODIFY COLUMN endereco VARCHAR(150);
