SELECT
    t.ano,
    COUNT(*) AS total_vendas,
    SUM(f.receita) AS receita_total,
    SUM(f.lucro) AS lucro_total
FROM dw.fato_vendas f
INNER JOIN dw.dim_tempo t
    ON t.sk_tempo = f.sk_tempo
GROUP BY t.ano
ORDER BY t.ano;
