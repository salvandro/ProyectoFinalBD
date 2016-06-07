DROP DATABASE IF EXISTS EXPLORACION_ESPACIAL;
CREATE DATABASE EXPLORACION_ESPACIAL;
USE EXPLORACION_ESPACIAL;

CREATE TABLE Federacion
(
    codigo INT AUTO_INCREMENT,
    nombre VARCHAR(30),
    lider VARCHAR(30),

    PRIMARY KEY (codigo)
) ENGINE = InnoDB;

CREATE TABLE Galaxia
(
    codigo INT AUTO_INCREMENT,
    nombre VARCHAR(30),

    PRIMARY KEY (codigo)
) ENGINE = InnoDB;

CREATE TABLE Sistema_Solar
(
    codigo INT AUTO_INCREMENT,
    nombre VARCHAR(30),
    codigo_galaxia INT,

    PRIMARY KEY (codigo),

    FOREIGN KEY (codigo_galaxia)
        REFERENCES Galaxia (codigo)
        ON UPDATE CASCADE
        ON DELETE CASCADE
) ENGINE = InnoDB;

CREATE TABLE Tipo_Sol
(
    codigo INT AUTO_INCREMENT,
    nombre VARCHAR(30),

    PRIMARY KEY (codigo)
) ENGINE = InnoDB;

CREATE TABLE Sol
(
    codigo INT AUTO_INCREMENT,
    nombre VARCHAR(30),
    tiempo_vida DATE,
    tiempo_restante_vida DATE,
    codigo_tipo_sol INT,
    codigo_sistema_solar INT,

    PRIMARY KEY (codigo),

    FOREIGN KEY (codigo_tipo_sol)
        REFERENCES Tipo_Sol (codigo)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,

    FOREIGN KEY (codigo_sistema_solar)
        REFERENCES Sistema_Solar (codigo)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
) ENGINE = InnoDB;

CREATE TABLE Planeta
(
    codigo INT AUTO_INCREMENT,
    nombre VARCHAR(30),
    distancia_sol FLOAT,
    codigo_sol INT,
    codigo_federacion INT,

    PRIMARY KEY (codigo),

    FOREIGN KEY (codigo_sol)
        REFERENCES Sol (codigo)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,

    FOREIGN KEY (codigo_federacion)
        REFERENCES Federacion (codigo)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
) ENGINE = InnoDB;

CREATE TABLE Area
(
    codigo INT AUTO_INCREMENT,
    nombre VARCHAR(30),
    codigo_planeta INT,

    PRIMARY KEY (codigo),

    FOREIGN KEY (codigo_planeta)
        REFERENCES Planeta (codigo)
        ON UPDATE CASCADE
        ON DELETE CASCADE
) ENGINE = InnoDB;

CREATE TABLE Luna
(
    codigo INT AUTO_INCREMENT,
    nombre VARCHAR(30),
    codigo_planeta INT,

    PRIMARY KEY (codigo),

    FOREIGN KEY (codigo_planeta)
        REFERENCES Planeta (codigo)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
) ENGINE = InnoDB;

CREATE TABLE Sustancia
(
    codigo INT AUTO_INCREMENT,
    nombre_cientifico VARCHAR(30),

    PRIMARY KEY (codigo)
) ENGINE = InnoDB;

CREATE TABLE Estado_Sustancia
(
    codigo INT AUTO_INCREMENT,
    nombre VARCHAR(30),

    PRIMARY KEY (codigo)
) ENGINE = InnoDB;

CREATE TABLE Planta
(
    codigo INT AUTO_INCREMENT,
    nombre_cientifico VARCHAR(30),

    PRIMARY KEY (codigo)
) ENGINE = InnoDB;

CREATE TABLE Especie_Animal
(
    codigo INT AUTO_INCREMENT,
    nombre_cientifico VARCHAR(30),
    numero_extremidades INT,
    numero_ojos INT,

    PRIMARY KEY (codigo)
) ENGINE = InnoDB;

CREATE TABLE Parte_Cuerpo
(
    codigo INT AUTO_INCREMENT,
    nombre VARCHAR(30),

    PRIMARY KEY (codigo)
) ENGINE = InnoDB;

CREATE TABLE Lenguaje
(
    codigo INT AUTO_INCREMENT,
    nombre VARCHAR(30),

    PRIMARY KEY (codigo)
) ENGINE = InnoDB;

CREATE TABLE Lenguaje_Gestos
(
    codigo_lenguaje INT,

    PRIMARY KEY (codigo_lenguaje),

    FOREIGN KEY (codigo_lenguaje)
        REFERENCES Lenguaje (codigo)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
) ENGINE = InnoDB;

CREATE TABLE Lenguaje_Sonidos
(
    codigo_lenguaje INT,

    PRIMARY KEY (codigo_lenguaje),

    FOREIGN KEY (codigo_lenguaje)
        REFERENCES Lenguaje (codigo)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
) ENGINE = InnoDB;

CREATE TABLE Lenguaje_Escrito
(
    codigo_lenguaje INT,

    PRIMARY KEY (codigo_lenguaje),

    FOREIGN KEY (codigo_lenguaje)
        REFERENCES Lenguaje (codigo)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
) ENGINE = InnoDB;

CREATE TABLE Lenguaje_Escrito_Fonetico
(
    codigo_lenguaje_escrito INT,

    PRIMARY KEY (codigo_lenguaje_escrito),

    FOREIGN KEY (codigo_lenguaje_escrito)
        REFERENCES Lenguaje_Escrito (codigo_lenguaje)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
) ENGINE = InnoDB;

CREATE TABLE Lenguaje_Escrito_Pictografico
(
    codigo_lenguaje_escrito INT,

    PRIMARY KEY (codigo_lenguaje_escrito),

    FOREIGN KEY (codigo_lenguaje_escrito)
        REFERENCES Lenguaje_Escrito (codigo_lenguaje)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
) ENGINE = InnoDB;

CREATE TABLE Sustancia_en_Sol
(
    explotable BOOLEAN,
    cantidad FLOAT,
    nombre_local VARCHAR(30),
    es_principal BOOLEAN,
    codigo_sol INT,
    codigo_sustancia INT,

    PRIMARY KEY (codigo_sol, codigo_sustancia),

    FOREIGN KEY (codigo_sol)
        REFERENCES Sol (codigo)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,

    FOREIGN KEY (codigo_sustancia)
        REFERENCES Sustancia (codigo)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
) ENGINE = InnoDB;

CREATE TABLE Sustancia_en_Sol_se_encuentra_Estado_Sustancia
(
    codigo_sol INT,
    codigo_sustancia INT,
    codigo_estado_sustancia INT,

    PRIMARY KEY (codigo_sol, codigo_sustancia, codigo_estado_sustancia),

    FOREIGN KEY (codigo_sol, codigo_sustancia)
        REFERENCES Sustancia_en_Sol (codigo_sol, codigo_sustancia)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,

    FOREIGN KEY (codigo_estado_sustancia)
        REFERENCES Estado_Sustancia (codigo)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
) ENGINE = InnoDB;

CREATE TABLE Sustancia_en_Luna
(
    explotable BOOLEAN,
    cantidad FLOAT,
    nombre_local VARCHAR(30),
    es_principal BOOLEAN,
    codigo_luna INT,
    codigo_sustancia INT,
    PRIMARY KEY (codigo_luna, codigo_sustancia),

    FOREIGN KEY (codigo_luna)
        REFERENCES Luna (codigo)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,

    FOREIGN KEY (codigo_sustancia)
        REFERENCES Sustancia (codigo)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
) ENGINE = InnoDB;

CREATE TABLE Sustancie_en_Luna_se_encuantra_Estado_Sustancia
(
    codigo_luna INT,
    codigo_sustancia INT,
    codigo_estado_sustancia INT,

    PRIMARY KEY (codigo_luna, codigo_sustancia, codigo_estado_sustancia),

    FOREIGN KEY (codigo_luna, codigo_sustancia)
        REFERENCES Sustancia_en_Luna (codigo_luna, codigo_sustancia)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,

    FOREIGN KEY (codigo_estado_sustancia)
        REFERENCES Estado_Sustancia (codigo)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
) ENGINE = InnoDB;

CREATE TABLE Sustancia_en_Area
(
    explotable BOOLEAN,
    cantidad FLOAT,
    nombre_local VARCHAR(30),
    es_principal BOOLEAN,
    codigo_area INT,
    codigo_sustancia INT,

    PRIMARY KEY (codigo_area, codigo_sustancia),

    FOREIGN KEY (codigo_area)
        REFERENCES Area (codigo)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,

    FOREIGN KEY (codigo_sustancia)
        REFERENCES Sustancia (codigo)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
) ENGINE = InnoDB;

CREATE TABLE Sustancia_en_Area_se_encuentra_Estado_Sustancia
(
    codigo_area INT,
    codigo_sustancia INT,
    codigo_estado_sustancia INT,

    PRIMARY KEY (codigo_area, codigo_sustancia, codigo_estado_sustancia),

    FOREIGN KEY (codigo_area, codigo_sustancia)
        REFERENCES Sustancia_en_Area (codigo_area, codigo_sustancia)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,

    FOREIGN KEY (codigo_estado_sustancia)
        REFERENCES Estado_Sustancia (codigo)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
) ENGINE = InnoDB;
