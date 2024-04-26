/* GROUP BY */

SELECT COUNT(*) AS qtd_reservas, id_destino FROM reservas
GROUP BY id_destino;
