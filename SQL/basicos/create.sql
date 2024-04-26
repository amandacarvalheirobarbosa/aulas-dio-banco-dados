CREATE TABLE {{nome}} (
  {{nome_coluna}} {{tipo_de_dados}} {{opcoes}}
);

/*
Tipos de dados:
- Inteiros: Integer
- Decimal/Numerico: Decimal/Numeric
- Caractere/Varchar: Character/Varchar
- Data/Hora: Date/Time
- Booleano: Boolean
- Texto longo: Text

Opções:
- Restrições:
  - NOT NULL
  - UNIQUE
  - DEFAULT
- Chaves primárias e estrangeiras
- Auto Incremento
*/

CREATE TABLE usuarios (
  id INT,
  nome VARCHAR(255) NOT NULL COMMENT 'Nome usuário',
  email VARCHAR(100) NOT NULL UNIQUE COMMENT 'E-mail usuário',
  endereco VARCHAR(50) NOT NULL COMMENT 'Endereço usuário',
  data_nascimento DATE NOT NULL COMMENT 'Data de nascimento do usuário'
);

CREATE TABLE /* viagens. */destinos (
  id INT,
  nome VARCHAR(255) NOT NULL UNIQUE COMMENT 'Nome do destino',
  descricao VARCHAR(255) NOT NULL COMMENT 'Descrição do destino'
);

CREATE TABLE reservas (
  id INT,
  id_usuario INT COMMENT 'Referencia ao ID do usuario que fez a reserva',
  id_destino INT COMMENT 'Referencia ao ID do destino da reserva',
  data DATE COMMENT 'Data da reserva'
  status VARCHAR(255) DEFAULT 'pendente' COMMENT 'Status da reserva (confirmada, pendente, cancelada, etc)'
);

-- Se der erro que nenhum banco de dados foi selecionado, basta colocar o nome antes da tabela. 
-- Ex.: CREATE TABLE viagens.destinos();