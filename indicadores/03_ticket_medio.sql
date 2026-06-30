SELECT
    COUNT(*) AS total_vendas,
    SUM(f.receita) AS receita_total,
    ROUND(AVG(f.receita),2) AS ticket_medio
FROM dw.fato_vendas f;
