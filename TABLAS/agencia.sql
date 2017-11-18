CREATE OR REPLACE SEQUENCE sec_agencias;

CREATE OR REPLACE TABLE Agencias(
    id_agencia INTEGER NOT NULL DEFAULT nextval('sec_agencias'),
    nombre_agencia VARCHAR(100),
    ciudad_guia INTEGER,
    registro_agencia DATE,
    ultima_modificacion_agencia DATE,
    CONSTRAINT pk_agencia PRIMARY KEY (id_agencia),
    CONSTRAINT fk_agencia_ubicacion FOREIGN KEY (ubicacion_guia) REFERENCES Ciudades(id_ciudad)
);