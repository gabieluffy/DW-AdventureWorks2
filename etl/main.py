from extract import extract_vendas

from transform import transformar

from validation import validar

from load import carregar_fato


def executar():

 df = extract_vendas()

df = validar(df)

df = transformar(df)

carregar_dim_cliente(df)

carregar_dim_produto(df)

carregar_dim_vendedor(df)

carregar_dim_tempo(df)

carregar_dim_territorio(df)

carregar_fato(df)


if __name__ == "__main__":

    executar()