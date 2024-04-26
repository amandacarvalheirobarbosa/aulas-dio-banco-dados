SELECT {{lista_colunas ou * pra pegar tudo}} FROM {{tabela}};

SELECT nome, email, data_nascimento FROM usuarios; /* Traz apenas nome, email e data_nascimento */
SELECT nome, descricao FROM destinos; /* Traz apenas nome e descricao */
SELECT * FROM reservas; /* Traz todas as colunas */

/*

OPERADORES ESPECIFICOS:

= : igualdade
<> ou != : desigualdade
> : maior que
< : menor que
>= : maior ou igual
<= : menor ou igual
LIKE : comparação de padrões
IN : pertence a uma lista de valores
BETWEEN: dentro de um intervalo
AND : e lógico
OR : ou lógico

*/

SELECT * FROM usuarios WHERE id=1 AND nome LIKE '%Amanda%';
SELECT * FROM usuarios WHERE id=1 OR nome LIKE '%Amanda%';
