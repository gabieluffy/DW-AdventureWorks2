CREATE TABLE dw.fato_vendas (

    sk_venda BIGSERIAL PRIMARY KEY,

    sk_tempo INTEGER NOT NULL,

    sk_cliente INTEGER NOT NULL,

    sk_produto INTEGER NOT NULL,

    sk_vendedor INTEGER,

    sk_territorio INTEGER,

    quantidade INTEGER,

    preco_unitario NUMERIC(18,2),

    desconto NUMERIC(18,2),

    valor_total NUMERIC(18,2),

    custo_total NUMERIC(18,2),

    lucro NUMERIC(18,2),

    CONSTRAINT fk_tempo
        FOREIGN KEY(sk_tempo)
        REFERENCES dw.dim_tempo(sk_tempo),

    CONSTRAINT fk_cliente
        FOREIGN KEY(sk_cliente)
        REFERENCES dw.dim_cliente(sk_cliente),

    CONSTRAINT fk_produto
        FOREIGN KEY(sk_produto)
        REFERENCES dw.dim_produto(sk_produto),

    CONSTRAINT fk_vendedor
        FOREIGN KEY(sk_vendedor)
        REFERENCES dw.dim_vendedor(sk_vendedor),

    CONSTRAINT fk_territorio
        FOREIGN KEY(sk_territorio)
        REFERENCES dw.dim_territorio(sk_territorio)
);