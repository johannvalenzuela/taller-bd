CREATE SEQUENCE sec_ciudades;

CREATE TABLE Ciudades (
    id_ciudad INTEGER NOT NULL DEFAULT nextval('sec_ciudades'),
    nombre_ciudad VARCHAR(100),
    id_pais INTEGER,
    CONSTRAINT pk_ciudades PRIMARY KEY (id_ciudad),
    CONSTRAINT fk_ciudades_paises FOREIGN KEY (id_pais) REFERENCES paises(id_pais)
)