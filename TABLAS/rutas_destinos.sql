CREATE OR REPLACE SEQUENCE sec_rutas_destinos;

CREATE OR REPLACE TABLE Rutas_Destinos (
    id_ruta_destino INTEGER NOT NULL DEFAULT nextval('sec_rutas_destinos'),
    ruta INTEGER,
    destino INTEGER,
    CONSTRAINT pk_rutas_destinos PRIMARY KEY (id_ruta_destino),
    CONSTRAINT fk_ruta FOREIGN KEY (ruta) REFERENCES Rutas(id_ruta),
    CONSTRAINT fk_destino FOREIGN KEY (destino) REFERENCES Destinos(id_destino)
)