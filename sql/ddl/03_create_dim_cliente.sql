CREATE TABLE dw.dim_cliente (

    sk_cliente SERIAL PRIMARY KEY,

    id_cliente INTEGER NOT NULL,

    nome_cliente VARCHAR(200),

    cidade VARCHAR(100),

    estado VARCHAR(100),

    pais VARCHAR(100)
);