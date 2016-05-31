DROP DATABASE IF EXISTS EXPLORACION_ESPACIAL;
CREATE DATABASE IF NOT EXISTS EXPLORACION_ESPACIAL;
USE EXPLORACION_ESPACIAL;

CREATE TABLE IF NOT EXISTS Federacion
(
    codigo INT         AUTO_INCREMENT,
    nombre VARCHAR(30) NOT NULL      ,

    PRIMARY KEY (codigo)
) ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS Galaxia
(
    codigo INT         AUTO_INCREMENT,
    nombre VARCHAR(30) NOT NULL      ,

    PRIMARY KEY (codigo)
) ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS Sistema_Solar
(
    codigo         INT         AUTO_INCREMENT,
    nombre         VARCHAR(30) NOT NULL      ,
    codigo_galaxia INT         NOT NULL      ,

    PRIMARY KEY (codigo),

    FOREIGN KEY (codigo_galaxia)
        REFERENCES Galaxia (codigo)
        ON UPDATE CASCADE
        ON DELETE CASCADE
) ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS Tipo_Sol
(
    codigo INT         AUTO_INCREMENT,
    nombre VARCHAR(30) NOT NULL      ,

    PRIMARY KEY (codigo)
) ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS Sol
(
    codigo               INT         AUTO_INCREMENT,
    nombre               VARCHAR(30) NOT NULL      ,
    tiempo_vida          DATE NULL                 ,
    tiempo_restante_vida DATE NULL                 ,
    codigo_tipo_sol      INT         NOT NULL      ,

    PRIMARY KEY (codigo),

    FOREIGN KEY (codigo_tipo_sol)
        REFERENCES Tipo_Sol (codigo)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
) ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS Planeta
(
    codigo               INT                  AUTO_INCREMENT,
    nombre               VARCHAR(30)          NOT NULL      ,
    distancia_sol        FLOAT       UNSIGNED NULL          ,
    codigo_sol           INT                  NOT NULL      ,
    codigo_federacion    INT                  NOT NULL      ,
    codigo_sistema_solar INT                  NOT NULL      ,

    PRIMARY KEY (codigo),

    FOREIGN KEY (codigo_sol)
        REFERENCES Sol (codigo)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,

    FOREIGN KEY (codigo_federacion)
        REFERENCES Federacion (codigo)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,

    FOREIGN KEY (codigo_sistema_solar)
        REFERENCES Sistema_Solar (codigo)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
) ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS Area
(
    codigo         INT         AUTO_INCREMENT,
    nombre         VARCHAR(30) NOT NULL      ,
    codigo_planeta INT         NOT NULL      ,

    PRIMARY KEY (codigo),

    FOREIGN KEY (codigo_planeta)
        REFERENCES Planeta (codigo)
        ON UPDATE CASCADE
        ON DELETE CASCADE
) ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS Luna
(
    codigo         INT         AUTO_INCREMENT,
    nombre         VARCHAR(30) NOT NULL      ,
    codigo_planeta INT         NOT NULL      ,

    PRIMARY KEY (codigo),

    FOREIGN KEY (codigo_planeta)
        REFERENCES Planeta (codigo)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
) ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS Sustancia
(
    codigo            INT         AUTO_INCREMENT,
    nombre_cientifico VARCHAR(30) NOT NULL      ,

    PRIMARY KEY (codigo)
) ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS Estado_Sustancia
(
    codigo INT         AUTO_INCREMENT,
    nombre VARCHAR(30) NOT NULL      ,

    PRIMARY KEY (codigo)
) ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS Planta
(
    codigo            INT         AUTO_INCREMENT,
    nombre_cientifico VARCHAR(30) NOT NULL      ,

    PRIMARY KEY (codigo)
) ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS Especie_Animal
(
    codigo              INT                  AUTO_INCREMENT,
    nombre_cientifico   VARCHAR(30)          NOT NULL      ,
    numero_extremidades INT         UNSIGNED               ,
    numero_ojos         INT         UNSIGNED               ,

    PRIMARY KEY (codigo)
) ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS Parte_Cuerpo
(
    codigo INT         AUTO_INCREMENT,
    nombre VARCHAR(30) NOT NULL      ,

    PRIMARY KEY (codigo)
) ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS Lenguaje
(
    codigo INT         AUTO_INCREMENT,
    nombre VARCHAR(30) NOT NULL      ,

    PRIMARY KEY (codigo)
) ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS Lenguaje_Gestos
(
    codigo_lenguaje INT         NOT NULL,

    PRIMARY KEY (codigo_lenguaje),

    FOREIGN KEY (codigo_lenguaje)
        REFERENCES Lenguaje (codigo)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
) ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS Lenguaje_Sonidos
(
    codigo_lenguaje INT         NOT NULL,

    PRIMARY KEY (codigo_lenguaje),

    FOREIGN KEY (codigo_lenguaje)
        REFERENCES Lenguaje (codigo)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
) ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS Lenguaje_Escrito
(
    codigo_lenguaje INT NOT NULL,

    PRIMARY KEY (codigo_lenguaje),

    FOREIGN KEY (codigo_lenguaje)
        REFERENCES Lenguaje (codigo)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
) ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS Lenguaje_Escrito_Fonetico
(
    codigo_lenguaje_escrito INT         NOT NULL,

    PRIMARY KEY (codigo_lenguaje_escrito),

    FOREIGN KEY (codigo_lenguaje_escrito)
        REFERENCES Lenguaje_Escrito (codigo_lenguaje)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
) ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS Lenguaje_Escrito_Pictografico
(
    codigo_lenguaje_escrito INT         NOT NULL,

    PRIMARY KEY (codigo_lenguaje_escrito),

    FOREIGN KEY (codigo_lenguaje_escrito)
        REFERENCES Lenguaje_Escrito (codigo_lenguaje)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
) ENGINE = InnoDB;
