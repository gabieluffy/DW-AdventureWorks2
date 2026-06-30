import pandas as pd


def transformar(df):

    df["valor_total"] = df["LineTotal"]

    df["custo_total"] = (
        df["UnitPrice"] *
        df["OrderQty"]
    )

    df["lucro"] = (
        df["valor_total"] -
        df["custo_total"]
    )

    return df