CREATE TABLE dw.dim_vendedor (

    sk_vendedor SERIAL PRIMARY KEY,

    id_vendedor INTEGER,

    nome_vendedor VARCHAR(200),

    bonus NUMERIC(18,2),

    comissao NUMERIC(18,2),

    vendas_ano NUMERIC(18,2)
);