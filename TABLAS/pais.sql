CREATE OR REPLACE SEQUENCE sec_paises;

CREATE OR REPLACE TABLE Paises(
    id_pais INTEGER NOT NULL DEFAULT nextval('sec_paises'),
    nombre_pais varchar(100),
    constraint pk_paises primary key (id_pais)
);