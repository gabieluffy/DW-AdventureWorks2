SELECT
    SUM(f.desconto) AS total_descontos,
    SUM(f.receita) AS receita_liquida,
    SUM(f.receita + f.desconto) AS receita_bruta,
    ROUND(
        (
            SUM(f.desconto) /
            NULLIF(SUM(f.receita + f.desconto),0)
        ) * 100,
        2
    ) AS percentual_desconto
FROM dw.fato_vendas f;
