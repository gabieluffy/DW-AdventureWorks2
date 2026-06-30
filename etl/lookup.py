from etl.conexao import conectar_postgres

def buscar_sk_cliente(id_cliente):

    conn = conectar_postgres()

    cur = conn.cursor()

    cur.execute("""

        SELECT sk_cliente

        FROM dw.dim_cliente

        WHERE id_cliente=%s

    """,(int(id_cliente),))

    resultado = cur.fetchone()

    cur.close()

    conn.close()

    return resultado[0]