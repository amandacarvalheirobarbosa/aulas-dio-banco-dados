/*

JOINS:
- INNER JOIN
- LEFT JOIN ou LEFT OUTER JOIN
- RIGHT JOIN ou RIGHT OUTER JOIN
- FULL JOIN ou FULL OUTER JOIN

*/

/* Retorna apenas linhas que tem correspondencia em ambas as tabelas
envolvidas na junção. Ou seja, apenas o que tem tanto na tabela1 quanto na tabela2 */
SELECT * FROM tabela1
INNER JOIN tabela2 ON tabela1.coluna = tabela2.coluna;

SELECT * FROM usuarios us
INNER JOIN reservas rs ON us.id = rs.id_usuario;

SELECT * FROM usuarios us
INNER JOIN reservas rs ON us.id = rs.id_usuario
INNER JOIN destinos ds ON rs.id_destino = ds.id;

/* Retorna todas as linhas da tabela à esquerda da junção e as linhas
correspondentes da tabela à direta. O que nao tiver valor, retorna null. */
SELECT * FROM tabela1
LEFT JOIN tabela2 ON tabela1.coluna = tabela2.coluna;

SELECT * FROM usuarios us
LEFT JOIN reservas rs ON us.id = rs.id_usuario;

SELECT * FROM usuarios us
LEFT JOIN reservas rs ON us.id = rs.id_usuario
LEFT JOIN destinos ds ON rs.id_destino = ds.id;

/* Retorna todas as linhas da tabela à direita da junção e as linhas
correspondentes da tabela à esquerda. O que não tiver valor, retorna null. */
SELECT * FROM tabela1
RIGHT JOIN tabela2 ON tabela1.coluna = tabela2.coluna;

SELECT * FROM usuarios us
RIGHT JOIN reservas rs ON us.id = rs.id_usuario;

SELECT * FROM usuarios us
RIGHT JOIN reservas rs ON us.id = rs.id_usuario
RIGHT JOIN destinos ds ON rs.id_destino = s.id;d

/* Retorna todas as linhas de ambas as tabelas envolvidas na junção,
combinando-se com base em uma condição de igualdade.
(Não é todo SGBD que traz esse tipo de informação) */
SELECT * FROM tabela1
FULL JOIN tabela2 ON tabela1.coluna = tabela2.coluna;

SELECT * FROM usuarios us
FULL JOIN reservas rs ON us.id = rs.id_usuario;

SELECT * FROM usuarios us
FULL JOIN reservas rs ON us.id = rs.id_usuario
FULL JOIN destinos ds ON rs.id_destino = s.id;
