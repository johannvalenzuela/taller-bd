CREATE OR REPLACE SEQUENCE sec_guias;

CREATE OR REPLACE TABLE Guias(
    id_guia INTEGER NOT NULL DEFAULT nextval('sec_guias'),
    rut_guia VARCHAR(12),
    nombre_guia VARCHAR(100),
    password_guia VARCHAR(32),
    nacionalidad_guia INTEGER,
    registro_guia DATE,
    ultima_modificacion_guia DATE,
    CONSTRAINT pk_guias PRIMARY KEY (id_guia),
    CONSTRAINT fk_guias_paises FOREIGN KEY (nacionalidad_guia) REFERENCES Paises(id_pais),
    CONSTRAINT uq_guias_rut UNIQUE (rut_guia)
);