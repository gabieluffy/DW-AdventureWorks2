SELECT
    c.nome_cliente,
    COUNT(*) AS total_vendas,
    SUM(f.receita) AS receita_total,
    SUM(f.lucro) AS lucro_total
FROM dw.fato_vendas f
INNER JOIN dw.dim_cliente c
    ON c.sk_cliente = f.sk_cliente
GROUP BY
    c.nome_cliente
ORDER BY
    receita_total DESC;
