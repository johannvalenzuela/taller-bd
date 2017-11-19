CREATE OR REPLACE SEQUENCE sec_guias_rutas;

CREATE OR REPLACE TABLE Guias_Rutas (
    id_guia_ruta INTEGER NOT NULL DEFAULT nextval('sec_guias_rutas'),
    guia INTEGER,
    ruta INTEGER,
    CONSTRAINT pk_guias_rutas PRIMARY KEY (id_guia_ruta),
    CONSTRAINT fk_guia FOREIGN KEY (guia) REFERENCES Guias(id_guia),
    CONSTRAINT fk_ruta FOREIGN KEY (ruta) REFERENCES Rutas(id_ruta)
)