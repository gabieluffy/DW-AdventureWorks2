# 📊 Data Warehouse AdventureWorks

## 📌 Sobre o Projeto

Este projeto implementa um **Data Warehouse completo** baseado no banco operacional **AdventureWorks (SQL Server)**, utilizando um modelo dimensional em **Star Schema** e pipeline ETL automatizado em Python com orquestração via Apache Airflow.

O objetivo é transformar dados transacionais em informações analíticas para suporte à tomada de decisão.

---

## 🏗️ Arquitetura

- Fonte: SQL Server (AdventureWorks 2022)
- ETL: Python (pandas, pyodbc, psycopg2)
- DW: PostgreSQL
- Orquestração: Apache Airflow
- Infraestrutura: Docker

---

## ⚙️ Pipeline

1. Extração dos dados (SQL Server)
2. Transformação (Python + Pandas)
3. Validação dos dados
4. Carga das dimensões
5. Lookup de Surrogate Keys
6. Carga da tabela fato
7. Disponibilização de KPIs

---

## 📐 Modelo Dimensional

- DimCliente
- DimProduto
- DimTempo
- DimVendedor
- DimTerritorio
- FatoVendas

---

## 📊 KPIs Implementados

- Receita total
- Lucro total
- Ticket médio
- Vendas por cliente
- Vendas por produto
- Vendas por território
- Quantidade vendida
- Margem de lucro
- Top clientes
- Evolução mensal de vendas

---

## 🧪 Execução

```bash
docker-compose up
