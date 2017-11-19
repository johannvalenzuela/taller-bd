CREATE OR REPLACE SEQUENCE sec_viajes;

CREATE OR REPLACE TABLE Viajes (
    id_viaje INTEGER NOT NULL DEFAULT nextval('sec_viajes'),
    usuario_viaje INTEGER,
    nombre_viaje VARCHAR(100),
    creacion_viaje DATE,
    ultima_modificacion_viaje DATE,
    CONSTRAINT pk_viajes PRIMARY KEY (id_viaje),
    CONSTRAINT fk_viajes_usuarios FOREIGN KEY (usuario_viaje) REFERENCES Usuarios(id_usuario)
)