SELECT
    p.categoria,
    COUNT(*) AS total_vendas,
    SUM(f.quantidade) AS quantidade_vendida,
    SUM(f.receita) AS receita_total,
    SUM(f.lucro) AS lucro_total
FROM dw.fato_vendas f
INNER JOIN dw.dim_produto p
    ON p.sk_produto = f.sk_produto
GROUP BY
    p.categoria
ORDER BY
    receita_total DESC;
