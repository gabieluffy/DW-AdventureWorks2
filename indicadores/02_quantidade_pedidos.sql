SELECT
    COUNT(*) AS total_vendas,
    SUM(f.quantidade) AS quantidade_itens
FROM dw.fato_vendas f;
