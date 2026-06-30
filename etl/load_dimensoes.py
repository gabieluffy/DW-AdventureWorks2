from etl.conexao import conectar_postgres

def carregar_dim_cliente(df):
    conn = conectar_postgres()
    cur = conn.cursor()

    clientes = df[["CustomerID"]].drop_duplicates()

    for _, row in clientes.iterrows():
        cur.execute("""
            INSERT INTO dw.dim_cliente(id_cliente)
            VALUES (%s)
            ON CONFLICT DO NOTHING
        """, (int(row.CustomerID),))

    conn.commit()
    cur.close()
    conn.close()