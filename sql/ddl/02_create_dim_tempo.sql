CREATE TABLE dw.dim_tempo (

    sk_tempo SERIAL PRIMARY KEY,

    data_completa DATE NOT NULL UNIQUE,

    dia INTEGER NOT NULL,

    mes INTEGER NOT NULL,

    nome_mes VARCHAR(20),

    trimestre INTEGER,

    semestre INTEGER,

    ano INTEGER,

    dia_semana VARCHAR(20),

    final_semana BOOLEAN
);