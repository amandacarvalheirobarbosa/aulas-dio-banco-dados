/*

FUNÇÕES AGREGADAS:
- COUNT: conta os numeros de registros.
- SUM: soma os valores de uma coluna numerica.
- AVG: calcula a media dos valores de uma coluna numerica.
- MIN: retorna o valor minimo de uma coluna.
- MAX: retorna o valor maximo de uma coluna.

*/

SELECT COUNT(*) AS total_usuarios FROM usuarios;

SELECT COUNT(*) AS total_usuarios FROM usuarios us
INNER JOIN reservas rs ON us.id = rs.id_usuario;

SELECT MAX(TIMESTAMPDIFF(YEAR, data_nascimento, CURRENT_DATE())) AS maior_idade
FROM usuarios;