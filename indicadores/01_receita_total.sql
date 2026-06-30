SELECT
    COUNT(*) AS total_registros,
    SUM(f.receita) AS receita_total,
    AVG(f.receita) AS media_por_venda
FROM dw.fato_vendas f;
