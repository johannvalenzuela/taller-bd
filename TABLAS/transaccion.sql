CREATE OR REPLACE SEQUENCE sec_transacciones;

CREATE OR REPLACE TABLE Transacciones(
    id_transaccion INTEGER NOT NULL DEFAULT nextval('sec_transacciones'),
    reserva_transaccion INTEGER,
    monto_transaccion INTEGER,
    CONSTRAINT pk_transaccion PRIMARY KEY (id_transaccion),
    CONSTRAINT fk_reserva_transaccion FOREIGN KEY (reserva_transaccion) REFERENCES Reserva(id_reserva),
    CONSTRAINT chk_monto_transaccion CHECK (monto_transaccion >= 0)
);