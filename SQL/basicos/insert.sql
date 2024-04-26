INSERT INTO {{nome_tabela}} ([coluna1, coluna2, ...]) VALUES ([valor-coluna1, valor-coluna2,...]);

INSERT INTO usuarios (id, nome, email, data_nascimento, endereco) VALUES (1, 'Amanda Carvalheiro Barbosa', 'teste@teste.com.br', '1997-10-08', 'Av das Rosas, 1500 - Bairro Alto Araraquara/SP');
INSERT INTO destinos (id, nome, descricao) VALUES (1, 'Praia da Rosa', 'Linda Praia');
INSERT INTO reservas (id, id_usuario, id_destino, data, status) VALUES (1, 1, 1, '2024-05-30', 'pendente');
