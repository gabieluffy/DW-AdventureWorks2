CREATE TABLE dw.dim_produto (

    sk_produto SERIAL PRIMARY KEY,

    id_produto INTEGER NOT NULL,

    nome_produto VARCHAR(200),

    categoria VARCHAR(100),

    subcategoria VARCHAR(100),

    cor VARCHAR(50),

    preco_lista NUMERIC(18,2),

    custo_padrao NUMERIC(18,2)
);