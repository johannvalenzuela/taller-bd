CREATE OR REPLACE SEQUENCE sec_transaccion_estados;

CREATE OR REPLACE TABLE Transaccion_Estados(
    id_transaccion_estado INTEGER NOT NULL DEFAULT nextval('sec_transaccion_usuarios'),
    nombre_transaccion_estado VARCHAR(100),
    CONSTRAINT pk_transaccion_estado PRIMARY KEY (id_transaccion_estado)
);