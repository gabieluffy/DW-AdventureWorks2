from lookup import *

def carregar_fato(df):

    conn = conectar_postgres()

    cur = conn.cursor()

    for _, row in df.iterrows():

        sk_cliente = buscar_sk_cliente(row.CustomerID)

        sk_produto = buscar_sk_produto(row.ProductID)

        sk_vendedor = buscar_sk_vendedor(row.SalesPersonID)

        sk_tempo = buscar_sk_tempo(row.OrderDate)

        sk_territorio = buscar_sk_territorio(row.TerritoryID)

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

            sk_tempo,

            sk_cliente,

            sk_produto,

            sk_vendedor,

            sk_territorio,

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