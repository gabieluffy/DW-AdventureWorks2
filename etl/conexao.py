import pyodbc
import psycopg2
from config.database import SQLSERVER, POSTGRES


def conectar_sqlserver():
    conn = pyodbc.connect(
        f"DRIVER={{ODBC Driver 17 for SQL Server}};"
        f"SERVER={SQLSERVER['host']},{SQLSERVER['port']};"
        f"DATABASE={SQLSERVER['database']};"
        f"UID={SQLSERVER['user']};"
        f"PWD={SQLSERVER['password']}"
    )
    return conn


def conectar_postgres():
    conn = psycopg2.connect(
        host=POSTGRES["host"],
        port=POSTGRES["port"],
        database=POSTGRES["database"],
        user=POSTGRES["user"],
        password=POSTGRES["password"]
    )
    return conn