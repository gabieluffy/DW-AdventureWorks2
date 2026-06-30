SELECT
    t.ano,
    t.mes,
    COUNT(*) AS total_vendas,
    SUM(f.receita) AS receita_total,
    ROUND(AVG(f.receita),2) AS ticket_medio
FROM dw.fato_vendas f
INNER JOIN dw.dim_tempo t
    ON t.sk_tempo = f.sk_tempo
GROUP BY
    t.ano,
    t.mes
ORDER BY
    t.ano,
    t.mes;
