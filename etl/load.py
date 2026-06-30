from etl.conexao import conectar_postgres


def carregar_fato(df):

    conn = conectar_postgres()

    cur = conn.cursor()

    for _, row in df.iterrows():

        cur.execute("""

        INSERT INTO dw.fato_vendas(

            sk_tempo,

            sk_cliente,

            sk_produto,

            sk_vendedor,

            sk_territorio,

            quantidade,

            preco_unitario,

            desconto,

            valor_total,

            custo_total,

            lucro

        )

        VALUES(

            %s,%s,%s,%s,%s,

            %s,%s,%s,%s,%s,%s

        )

        """,

        (

            1,

            row.CustomerID,

            row.ProductID,

            row.SalesPersonID,

            row.TerritoryID,

            row.OrderQty,

            row.UnitPrice,

            row.UnitPriceDiscount,

            row.valor_total,

            row.custo_total,

            row.lucro

        ))

    conn.commit()

    cur.close()

    conn.close()