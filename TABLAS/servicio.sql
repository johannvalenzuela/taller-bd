CREATE SEQUENCE sec_servicios;

CREATE OR REPLACE TABLE Servicios (
    id_servicio INTEGER NOT NULL DEFAULT nextval('sec_servicios'),
    nombre_servicio VARCHAR(100) NOT NULL,
    CONSTRAINT pk_servicios PRIMARY KEY (id_servicio)
)