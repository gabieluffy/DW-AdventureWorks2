CREATE TABLE etl.controle_carga (

    id SERIAL PRIMARY KEY,

    tabela VARCHAR(100),

    data_inicio TIMESTAMP,

    data_fim TIMESTAMP,

    registros_lidos INTEGER,

    registros_gravados INTEGER,

    status VARCHAR(30),

    mensagem TEXT
);