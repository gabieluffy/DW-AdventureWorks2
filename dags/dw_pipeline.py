from datetime import datetime, timedelta

from airflow import DAG
from airflow.operators.python import PythonOperator

from etl.extract import extract_vendas
from etl.validation import validar
from etl.transform import transformar
from etl.load_dimensoes import (
    carregar_dim_cliente,
    carregar_dim_produto,
    carregar_dim_vendedor,
    carregar_dim_tempo,
    carregar_dim_territorio
)
from etl.load_fato import carregar_fato


default_args = {
    "owner": "Gabrielly",
    "depends_on_past": False,
    "email_on_failure": False,
    "email_on_retry": False,
    "retries": 2,
    "retry_delay": timedelta(minutes=5),
}


def executar_pipeline():

    df = extract_vendas()

    df = validar(df)

    df = transformar(df)

    carregar_dim_cliente(df)
    carregar_dim_produto(df)
    carregar_dim_vendedor(df)
    carregar_dim_tempo(df)
    carregar_dim_territorio(df)

    carregar_fato(df)


with DAG(

    dag_id="dw_adventureworks_pipeline",

    description="ETL AdventureWorks SQL Server para PostgreSQL",

    default_args=default_args,

    schedule="@daily",

    start_date=datetime(2025, 1, 1),

    catchup=False,

    tags=["DW", "AdventureWorks", "ETL"],

) as dag:

    executar_etl = PythonOperator(

        task_id="executar_etl",

        python_callable=executar_pipeline

    )

    executar_etl