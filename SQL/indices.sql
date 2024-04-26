/* Permite examinar as operações realizadas, as tabelas acessadas,
os indices utilizados e outras informações importantes para identificar
possiveis melhorias de desempenho. */

/*

TIPOS:
- select_type: "SIMPLE", "SUBQUERY", "JOIN"
- table
- type: "ALL", "INDEX", etc.
- possible_keys: os indices possiveis que podem ser utilizados na operação
- key: o indice utilizado na operação, se aplicavel.
- key_len: o comprimento do indice utilizado.
- ref: as colunas ou constantes usadas para acessar o indice.
- rows

*/

EXPLAIN SELECT * FROM {{tabela}}

EXPLAIN
    SELECT * FROM usuarios WHERE email = 'joao.silva@example.com';

EXPLAIN
    SELECT * FROM usuarios WHERE nome = 'João Silva';


CREATE INDEX {{nome_index}} ON {{nome_tabela}} ({{coluna1, coluna2...}})

CREATE INDEX idx_nome ON usuarios (nome);

/* agora mais performatico */
EXPLAIN
    SELECT * FROM usuarios WHERE nome = 'João Silva';
