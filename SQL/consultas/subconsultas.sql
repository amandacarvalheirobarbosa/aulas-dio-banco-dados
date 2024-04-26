/*

Permite realizar consultas mais complexas, permitindo usar
os resoltados de uma consulta como entrada para outra consulta.

PODE SER UTILIZADA:
- SELECT
- FROM
- WHERE
- HAVING
- JOIN

*/

SELECT * FROM destinos
WHERE id NOT IN (SELECT id_destino FROM reservas);

SELECT * FROM usuarios
WHERE id NOT IN (SELECT id_usuario FROM reservas);

SELECT nome, (SELECT COUNT(*) FROM reservas WHERE id_usuario = usuarios.id) AS total_reservas
FROM usuarios;
