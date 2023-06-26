-- Gerado por Oracle SQL Developer Data Modeler 23.1.0.087.0806
--   em:        2023-06-26 11:15:31 BOT
--   site:      Oracle Database 12cR2
--   tipo:      Oracle Database 12cR2



-- predefined type, no DDL - MDSYS.SDO_GEOMETRY

-- predefined type, no DDL - XMLTYPE

CREATE TABLE agenda_curso (
    agenda_curso_id        NUMBER(18) NOT NULL,
    dt_inicio              DATE NOT NULL,
    empresa_empresa_id     NUMBER(18) NOT NULL,
    instrutor_instrutor_id NUMBER(18) NOT NULL,
    curso_curso_id         NUMBER(18) NOT NULL
);

CREATE INDEX agenda_curso__idx ON
    agenda_curso (
        empresa_empresa_id
    ASC );

CREATE INDEX agenda_curso__idxv1 ON
    agenda_curso (
        instrutor_instrutor_id
    ASC );

CREATE INDEX agenda_curso__idxv2 ON
    agenda_curso (
        curso_curso_id
    ASC );

ALTER TABLE agenda_curso ADD CONSTRAINT agenda_curso_pk PRIMARY KEY ( agenda_curso_id );

CREATE TABLE agenda_curso_aluno (
    agenda_curso_agenda_curso_id NUMBER(18) NOT NULL,
    aluno_aluno_id               NUMBER NOT NULL
);

ALTER TABLE agenda_curso_aluno ADD CONSTRAINT agenda_curso_aluno_pk PRIMARY KEY ( agenda_curso_agenda_curso_id,
                                                                                  aluno_aluno_id );

CREATE TABLE aluno (
    aluno_id NUMBER NOT NULL,
    nome     VARCHAR2(100) NOT NULL
);

ALTER TABLE aluno ADD CONSTRAINT aluno_pk PRIMARY KEY ( aluno_id );

CREATE TABLE curso (
    curso_id NUMBER(18) NOT NULL,
    codigo   VARCHAR2(10) NOT NULL,
    nome     VARCHAR2(100) NOT NULL,
    preco    NUMBER(18, 2) NOT NULL,
    duracao  NUMBER(6, 2) NOT NULL
);

ALTER TABLE curso ADD CONSTRAINT curso_pk PRIMARY KEY ( curso_id );

ALTER TABLE curso ADD CONSTRAINT curso_codigo_un UNIQUE ( codigo );

CREATE TABLE empresa (
    empresa_id NUMBER(18) NOT NULL,
    nome       VARCHAR2(40) NOT NULL
);

ALTER TABLE empresa ADD CONSTRAINT empresa_pk PRIMARY KEY ( empresa_id );

CREATE TABLE instrutor (
    instrutor_id NUMBER(18) NOT NULL,
    nome         VARCHAR2(100) NOT NULL
);

ALTER TABLE instrutor ADD CONSTRAINT instrutor_pk PRIMARY KEY ( instrutor_id );

CREATE TABLE instrutor_curso (
    instrutor_curso_id     NUMBER(18) NOT NULL,
    taxa_hora              NUMBER(11, 2) NOT NULL,
    instrutor_instrutor_id NUMBER(18) NOT NULL,
    curso_curso_id         NUMBER(18) NOT NULL
);

ALTER TABLE instrutor_curso ADD CONSTRAINT instrutor_curso_pk PRIMARY KEY ( instrutor_curso_id );


--  ERROR: UK name length exceeds maximum allowed length(30) 
ALTER TABLE instrutor_curso ADD CONSTRAINT instrutor_curso_instrutor_id_curso_id_un UNIQUE ( instrutor_instrutor_id,
                                                                                             curso_curso_id );

CREATE TABLE telefone (
    telefone_id                    NUMBER(18) NOT NULL,
    numero                         VARCHAR2(40) NOT NULL,
    instrutor_instrutor_id         NUMBER(18),
    aluno_aluno_id                 NUMBER,
    tipo_telefone_tipo_telefone_id NUMBER(3) NOT NULL
);

ALTER TABLE telefone ADD CONSTRAINT telefone_pk PRIMARY KEY ( telefone_id );

CREATE TABLE tipo_telefone (
    tipo_telefone_id NUMBER(3) NOT NULL,
    tipo             VARCHAR2(20) NOT NULL
);

ALTER TABLE tipo_telefone ADD CONSTRAINT tipo_telefone_pk PRIMARY KEY ( tipo_telefone_id );

--  ERROR: FK name length exceeds maximum allowed length(30) 
ALTER TABLE agenda_curso_aluno
    ADD CONSTRAINT agenda_curso_aluno_agenda_curso_fk FOREIGN KEY ( agenda_curso_agenda_curso_id )
        REFERENCES agenda_curso ( agenda_curso_id );

ALTER TABLE agenda_curso_aluno
    ADD CONSTRAINT agenda_curso_aluno_aluno_fk FOREIGN KEY ( aluno_aluno_id )
        REFERENCES aluno ( aluno_id );

ALTER TABLE agenda_curso
    ADD CONSTRAINT agenda_curso_curso_fk FOREIGN KEY ( curso_curso_id )
        REFERENCES curso ( curso_id );

ALTER TABLE agenda_curso
    ADD CONSTRAINT agenda_curso_empresa_fk FOREIGN KEY ( empresa_empresa_id )
        REFERENCES empresa ( empresa_id );

ALTER TABLE agenda_curso
    ADD CONSTRAINT agenda_curso_instrutor_fk FOREIGN KEY ( instrutor_instrutor_id )
        REFERENCES instrutor ( instrutor_id );

ALTER TABLE instrutor_curso
    ADD CONSTRAINT instrutor_curso_curso_fk FOREIGN KEY ( curso_curso_id )
        REFERENCES curso ( curso_id );

ALTER TABLE instrutor_curso
    ADD CONSTRAINT instrutor_curso_instrutor_fk FOREIGN KEY ( instrutor_instrutor_id )
        REFERENCES instrutor ( instrutor_id );

ALTER TABLE telefone
    ADD CONSTRAINT telefone_aluno_fk FOREIGN KEY ( aluno_aluno_id )
        REFERENCES aluno ( aluno_id );

ALTER TABLE telefone
    ADD CONSTRAINT telefone_instrutor_fk FOREIGN KEY ( instrutor_instrutor_id )
        REFERENCES instrutor ( instrutor_id );

ALTER TABLE telefone
    ADD CONSTRAINT telefone_tipo_telefone_fk FOREIGN KEY ( tipo_telefone_tipo_telefone_id )
        REFERENCES tipo_telefone ( tipo_telefone_id );



-- Relatório do Resumo do Oracle SQL Developer Data Modeler: 
-- 
-- CREATE TABLE                             9
-- CREATE INDEX                             3
-- ALTER TABLE                             21
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE MATERIALIZED VIEW LOG             0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   2
-- WARNINGS                                 0
