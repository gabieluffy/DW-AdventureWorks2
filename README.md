# DW-AdventureWorks2

## Sobre o Projeto

Este projeto implementa um processo completo de Data Warehouse utilizando o banco AdventureWorks como fonte de dados (OLTP em SQL Server) e PostgreSQL como banco analítico (DW).

O processo ETL foi desenvolvido em Python e automatizado utilizando Apache Airflow.

## Objetivos

- Implementar um Data Warehouse utilizando Star Schema.
- Desenvolver um processo ETL.
- Automatizar as cargas utilizando Apache Airflow.
- Disponibilizar indicadores (KPIs) para apoio à tomada de decisão.

## Tecnologias

- SQL Server (AdventureWorks)
- PostgreSQL
- Python 3
- Apache Airflow
- Docker
- Pandas
- SQLAlchemy
- psycopg2
- pyodbc

## Estrutura

- config → configurações
- dags → pipeline Airflow
- etl → código ETL
- SQL → scripts SQL
- documentos → documentação
- imagens → diagramas
- logs → logs do sistema

## Autor

Gabrielly de Souza Gervasio
Curso de Sistemas de Informação
