CREATE OR REPLACE SEQUENCE sec_reservas;

CREATE OR REPLACE TABLE Reservas (
    id_reserva INTEGER NOT NULL DEFAULT nextval('sec_reservas'),
    fecha_inicio_reserva DATE NOT NULL,
    fecha_final_reserva DATE NOT NULL,
    usuario_reserva INTEGER,
    servicio_reserva INTEGER,
    CONSTRAINT pk_reservas PRIMARY KEY (id_reserva),
    CONSTRAINT fk_reservas_usuarios FOREIGN KEY (usuario_reserva) REFERENCES Usuarios(id_usuario),
    CONSTRAINT fk_reservas_servicios FOREIGN KEY (servicio_reserva) REFERENCES Servicios(id_servicio)
)