CREATE OR REPLACE SEQUENCE sec_usuarios;

CREATE OR REPLACE TABLE Usuarios(
    id_usuario INTEGER NOT NULL DEFAULT nextval('sec_usuarios'),
    rut_usuario VARCHAR(12),
    nombre_usuario VARCHAR(100),
    password_usuario VARCHAR(32),
    nacionalidad_usuario INTEGER,
    registro_usuario DATE,
    ultima_modificacion_usuario DATE,
    CONSTRAINT pk_usuarios PRIMARY KEY (id_usuario),
    CONSTRAINT fk_usuarios_paises FOREIGN KEY (nacionalidad_usuario) REFERENCES Paises(id_pais),
    CONSTRAINT uq_usuarios_rut UNIQUE (rut_usuario)
);