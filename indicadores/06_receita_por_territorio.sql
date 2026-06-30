SELECT
    te.nome_territorio,
    COUNT(*) AS total_vendas,
    SUM(f.receita) AS receita_total,
    SUM(f.lucro) AS lucro_total,
    ROUND(AVG(f.receita),2) AS ticket_medio
FROM dw.fato_vendas f
INNER JOIN dw.dim_territorio te
    ON te.sk_territorio = f.sk_territorio
GROUP BY
    te.nome_territorio
ORDER BY
    receita_total DESC;
