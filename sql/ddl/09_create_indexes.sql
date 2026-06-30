CREATE INDEX idx_fato_tempo
ON dw.fato_vendas(sk_tempo);

CREATE INDEX idx_fato_cliente
ON dw.fato_vendas(sk_cliente);

CREATE INDEX idx_fato_produto
ON dw.fato_vendas(sk_produto);

CREATE INDEX idx_fato_vendedor
ON dw.fato_vendas(sk_vendedor);

CREATE INDEX idx_fato_territorio
ON dw.fato_vendas(sk_territorio);