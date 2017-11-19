CREATE OR REPLACE SEQUENCE sec_agencias_guias;

CREATE OR REPLACE TABLE Agencias_Guias (
    id_agencia_guia INTEGER NOT NULL DEFAULT nextval('sec__agencias_guias'),
    agencia INTEGER,
    guia INTEGER,
    CONSTRAINT pk_agencias_guias PRIMARY KEY (id_agencia_guia),
    CONSTRAINT fk_guia FOREIGN KEY (guia) REFERENCES Guias(id_guia),
    CONSTRAINT fk_agencia FOREIGN KEY (agencia) REFERENCES Agencias(id_agencia)
)