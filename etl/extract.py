import pandas as pd
from etl.conexao import conectar_sqlserver


def extract_vendas():

    conn = conectar_sqlserver()

    query = """
    SELECT
        soh.SalesOrderID,
        soh.OrderDate,
        soh.CustomerID,
        soh.TerritoryID,
        soh.SalesPersonID,
        sod.ProductID,
        sod.OrderQty,
        sod.UnitPrice,
        sod.UnitPriceDiscount,
        sod.LineTotal
    FROM Sales.SalesOrderHeader soh
    INNER JOIN Sales.SalesOrderDetail sod
        ON soh.SalesOrderID = sod.SalesOrderID
    """

    df = pd.read_sql(query, conn)

    conn.close()

    return df