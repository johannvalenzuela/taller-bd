CREATE OR REPLACE SEQUENCE sec_reservas;

CREATE OR REPLACE TABLE Reservas (
    id_reserva INTEGER NOT NULL DEFAULT nextval('sec_reservas'),
    fecha_inicio_reserva DATE NOT NULL,
    fecha_final_reserva DATE NOT NULL,
    usuario_reserva INTEGER,
    servicio_reserva INTEGER,
    CONSTRAINT pk_paises PRIMARY KEY (id_servicio),
    constraint fk_reservas_usuarios FOREIGN KEY (usuario_reserva) REFERENCES Usuarios(id_usuario),
    constraint fk_reservas_servicios foreign key (servicio_reserva) REFERENCES Servicios(id_servicio)
)