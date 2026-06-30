SELECT
    p.nome_produto,
    SUM(f.quantidade) AS quantidade_vendida,
    SUM(f.receita) AS receita_total,
    ROUND(
        SUM(f.receita) / NULLIF(SUM(f.quantidade),0),
        2
    ) AS preco_medio
FROM dw.fato_vendas f
INNER JOIN dw.dim_produto p
    ON p.sk_produto = f.sk_produto
GROUP BY
    p.nome_produto
ORDER BY
    quantidade_vendida DESC;
