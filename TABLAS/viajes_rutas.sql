CREATE OR REPLACE SEQUENCE sec_viajes_rutas;

CREATE OR REPLACE TABLE Viajes_Rutas (
    id_viaje_ruta INTEGER NOT NULL DEFAULT nextval('sec_viajes_rutas'),
    viaje INTEGER,
    ruta INTEGER,
    CONSTRAINT pk_viajes_rutas PRIMARY KEY (id_viaje_ruta),
    CONSTRAINT fk_viaje FOREIGN KEY (viaje) REFERENCES Viajes(id_viaje),
    CONSTRAINT fk_ruta FOREIGN KEY (ruta) REFERENCES Rutas(id_ruta)
)