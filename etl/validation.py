import pandas as pd


def validar(df):

    df = df.dropna()

    df = df.drop_duplicates()

    return df