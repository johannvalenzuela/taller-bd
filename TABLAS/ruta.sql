CREATE OR REPLACE SEQUENCE sec_rutas;

CREATE OR REPLACE TABLE Rutas (
    id_ruta INTEGER NOT NULL DEFAULT nextval('sec_rutas'),
    nombre_ruta VARCHAR(100),
    CONSTRAINT pk_rutas PRIMARY KEY (id_ruta)
)