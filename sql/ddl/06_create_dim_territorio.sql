CREATE TABLE dw.dim_territorio (

    sk_territorio SERIAL PRIMARY KEY,

    id_territorio INTEGER,

    territorio VARCHAR(100),

    grupo VARCHAR(100),

    pais VARCHAR(100)
);