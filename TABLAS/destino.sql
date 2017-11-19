CREATE OR REPLACE SEQUENCE sec_destinos;

CREATE OR REPLACE TABLE Destinos(
    id_destino INTEGER NOT NULL DEFAULT nextval('sec_destinos'),
    nombre_destino VARCHAR(100),
    ciudad_destino INTEGER,
    CONSTRAINT pk_destinos PRIMARY KEY (id_destino),
    CONSTRAINT fk_destinos_ciudades FOREIGN KEY (ciudad_destino) REFERENCES Ciudades(id_ciudad)
)