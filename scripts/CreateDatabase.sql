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
        ON DELETE RESTRICT
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
    codigo_lenguaje_variante INT, # código del lenguaje del que es una variante.
    codigo_lenguaje_especificacion, # código del lenguaje que es su especificación.

    PRIMARY KEY (codigo),

    FOREIGN KEY (codigo_lenguaje_variante)
        REFERENCES Lenguaje (codigo)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,

    FOREIGN KEY (codigo_lenguaje_especificacion)
        REFERENCES Lenguaje (codigo)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
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

CREATE TABLE Simbolo
(
    codigo INT AUTO_INCREMENT,
    significado VARCHAR(30),
    figura VARCHAR(1000),

    PRIMARY KEY (codigo)
) ENGINE = InnoDB;

CREATE TABLE Personal
(
    codigo INT AUTO_INCREMENT,
    nombre VARCHAR(30),
    apellido_paterno VARCHAR(30),
    apellido_materno VARCHAR(30),

    PRIMARY KEY (codigo)
) ENGINE = InnoDB;

CREATE TABLE Personal_Investigador
(
    codigo_personal INT,

    PRIMARY KEY (codigo_personal),

    FOREIGN KEY (codigo_personal)
        REFERENCES Personal (codigo)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
) ENGINE = InnoDB;

CREATE TABLE Personal_Investigador_Zoologo
(
    codigo_personal_investigador INT,

    PRIMARY KEY (codigo_personal_investigador),

    FOREIGN KEY (codigo_personal_investigador)
        REFERENCES Personal_Investigador (codigo_personal)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
) ENGINE = InnoDB;

CREATE TABLE Personal_Investigador_Botanico
(
    codigo_personal_investigador INT,

    PRIMARY KEY (codigo_personal_investigador),

    FOREIGN KEY (codigo_personal_investigador)
        REFERENCES Personal_Investigador (codigo_personal)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
) ENGINE = InnoDB;

CREATE TABLE Personal_Investigador_Geologo
(
    codigo_personal_investigador INT,

    PRIMARY KEY (codigo_personal_investigador),

    FOREIGN KEY (codigo_personal_investigador)
        REFERENCES Personal_Investigador (codigo_personal)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
) ENGINE = InnoDB;

CREATE TABLE Personal_Mantenimiento
(
    codigo_personal INT,

    PRIMARY KEY (codigo_personal),

    FOREIGN KEY (codigo_personal)
        REFERENCES Personal (codigo)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
) ENGINE = InnoDB;

CREATE TABLE Personal_Militar
(
    codigo_personal INT,

    PRIMARY KEY (codigo_personal),

    FOREIGN KEY (codigo_personal)
        REFERENCES Personal (codigo)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
) ENGINE = InnoDB;

CREATE TABLE Tipo_Proyecto
(
    codigo INT AUTO_INCREMENT,
    nombre VARCHAR(30),

    PRIMARY KEY (codigo)
) ENGINE = InnoDB;

CREATE TABLE Equipo_Multidisciplinario
(
    codigo INT AUTO_INCREMENT,
    nombre VARCHAR(30),

    PRIMARY KEY (codigo)
) ENGINE = InnoDB;

CREATE TABLE Proyecto
(
    codigo INT AUTO_INCREMENT,
    nombre VARCHAR(30),
    proposito VARCHAR (30),
    fecha_inicio DATE,
    fecha_fin DATE,
    codigo_proyecto_padre INT, # código del proyecto que es subproyecto.
    codigo_proyecto_continuado INT, # código del proyecto que continua.
    codigo_tipo_proyecto INT,

    PRIMARY KEY (codigo),

    FOREIGN KEY (codigo_proyecto_padre)
        REFERENCES Proyecto (codigo)
        ON DELETE CASCADE
        ON DELETE RESTRICT,

    FOREIGN KEY (codigo_proyecto_continuado)
        REFERENCES Proyecto (codigo)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,

    FOREIGN KEY (codigo_tipo_proyecto)
        REFERENCES Tipo_Proyecto (codigo)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
) ENGINE = InnoDB;

CREATE TABLE Lenguaje_Escrito_tiene_Simbolo
(
    codigo_lenguaje_escrito INT,
    codigo_simbolo INT,

    PRIMARY KEY (codigo_lenguaje_escrito, codigo_simbolo),

    FOREIGN KEY (codigo_lenguaje_escrito)
        REFERENCES Lenguaje_Escrito (codigo_lenguaje)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,

    FOREIGN KEY (codigo_simbolo)
        REFERENCES Simbolo (codigo)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
) ENGINE = InnoDB;

CREATE TABLE Sustancia_en_Sol
(
    codigo INT AUTO_INCREMENT,
    explotable BOOLEAN,
    cantidad FLOAT,
    nombre_local VARCHAR(30),
    es_principal BOOLEAN,
    codigo_sol INT,
    codigo_sustancia INT,

    PRIMARY KEY (codigo),

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
    codigo_sustancia_en_sol INT,
    codigo_estado_sustancia INT,

    PRIMARY KEY (codigo_sustancia_en_sol, codigo_estado_sustancia),

    FOREIGN KEY (codigo_sustancia_en_sol)
        REFERENCES Sustancia_en_Sol (codigo)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,

    FOREIGN KEY (codigo_estado_sustancia)
        REFERENCES Estado_Sustancia (codigo)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
) ENGINE = InnoDB;

CREATE TABLE Sustancia_en_Area
(
    codigo INT AUTO_INCREMENT,
    explotable BOOLEAN,
    cantidad FLOAT,
    nombre_local VARCHAR(30),
    es_principal BOOLEAN,
    codigo_area INT,
    codigo_sustancia INT,

    PRIMARY KEY (codigo),

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
    codigo_sustancia_en_area INT,
    codigo_estado_sustancia INT,

    PRIMARY KEY (codigo_sustancia_en_area, codigo_estado_sustancia),

    FOREIGN KEY (codigo_sustancia_en_area)
        REFERENCES Sustancia_en_Area (codigo)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,

    FOREIGN KEY (codigo_estado_sustancia)
        REFERENCES Estado_Sustancia (codigo)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
) ENGINE = InnoDB;

CREATE TABLE Sustancia_en_Luna
(
    codigo INT AUTO_INCREMENT,
    explotable BOOLEAN,
    cantidad FLOAT,
    nombre_local VARCHAR(30),
    es_principal BOOLEAN,
    codigo_luna INT,
    codigo_sustancia INT,

    PRIMARY KEY (codigo),

    FOREIGN KEY (codigo_luna)
        REFERENCES Luna (codigo)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,

    FOREIGN KEY (codigo_sustancia)
        REFERENCES Sustancia (codigo)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
) ENGINE = InnoDB;

CREATE TABLE Sustancia_en_Luna_se_encuantra_Estado_Sustancia
(
    codigo_sustancia_en_luna INT,
    codigo_estado_sustancia INT,

    PRIMARY KEY (codigo_sustancia_en_luna, codigo_estado_sustancia),

    FOREIGN KEY (codigo_sustancia_en_luna)
        REFERENCES Sustancia_en_Luna (codigo)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,

    FOREIGN KEY (codigo_estado_sustancia)
        REFERENCES Estado_Sustancia (codigo)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
) ENGINE = InnoDB;

CREATE TABLE Planta_en_Area
(
    codigo INT AUTO_INCREMENT,
    codigo_area INT,
    codigo_planta INT,

    PRIMARY KEY (codigo),

    FOREIGN KEY (codigo_area)
        REFERENCES Area (codigo)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,

    FOREIGN KEY (codigo_planta)
        REFERENCES Planta (codigo)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
) ENGINE = InnoDB;

CREATE TABLE Planta_en_Area_come_Sustancia_en_Area
(
    codigo_planta_en_area INT,
    codigo_sustancia_en_area INT,

    PRIMARY KEY (codigo_planta_en_area, codigo_sustancia_en_area),

    FOREIGN KEY (codigo_planta_en_area)
        REFERENCES Planta_en_Area (codigo)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,

    FOREIGN KEY (codigo_sustancia_en_area)
        REFERENCES Sustancia_en_Area (codigo)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
) ENGINE = InnoDB;

CREATE TABLE Planta_en_Area_come_Planta_en_Area
(
    codigo_planta_en_area_depredador INT,
    codigo_planta_en_area_presa INT,

    PRIMARY KEY (codigo_planta_en_area_depredador, codigo_planta_en_area_presa),

    FOREIGN KEY (codigo_planta_en_area_depredador)
        REFERENCES Planta_en_Area (codigo)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,

    FOREIGN KEY (codigo_planta_en_area_presa)
        REFERENCES Planta_en_Area (codigo)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
) ENGINE = InnoDB;

CREATE TABLE Planta_en_Area_habla_Lenguaje
(
    es_principal BOOLEAN,
    codigo_planta_en_area INT,
    codigo_lenguaje INT,

    PRIMARY KEY (codigo_planta_en_area, codigo_lenguaje),

    FOREIGN KEY (codigo_planta_en_area)
        REFERENCES Planta_en_Area (codigo)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,

    FOREIGN KEY (codigo_lenguaje)
        REFERENCES Lenguaje (codigo)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
) ENGINE = InnoDB;

CREATE TABLE Especie_Animal_en_Area
(
    codigo INT AUTO_INCREMENT,
    nombre_local VARCHAR(30),
    numero_ejemplares INT,
    codigo_especie_animal INT,
    codigo_area INT,

    PRIMARY KEY (codigo),

    FOREIGN KEY (codigo_especie_animal)
        REFERENCES Especie_Animal (codigo)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,

    FOREIGN KEY (codigo_area)
        REFERENCES Area (codigo)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
) ENGINE = InnoDB;

CREATE TABLE Especie_Animal_en_Area_come_Planta_en_Area
(
    codigo_especie_animal_en_area INT,
    codigo_planta_en_area INT,

    PRIMARY KEY (codigo_especie_animal_en_area,
                 codigo_planta_en_area),


    FOREIGN KEY (codigo_especie_animal_en_area)
        REFERENCES Especie_Animal_en_Area (codigo)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,

    FOREIGN KEY (codigo_planta_en_area)
        REFERENCES Planta_en_Area (codigo)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
) ENGINE = InnoDB;

CREATE TABLE Especie_Animal_en_Area_come_Especie_Animal_en_Area
(
    codigo_especie_animal_en_area_depredador INT,
    codigo_especie_animal_en_area_presa INT,

    PRIMARY KEY (codigo_especie_animal_en_area_depredador,
                 codigo_especie_animal_en_area_presa),

    FOREIGN KEY (codigo_especie_animal_en_area_depredador)
        REFERENCES Especie_Animal_en_Area (codigo)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,

    FOREIGN KEY (codigo_especie_animal_en_area_presa)
        REFERENCES Especie_Animal_en_Area (codigo)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
) ENGINE = InnoDB;

CREATE TABLE Especie_Animal_en_Area_habla_Lenguaje
(
    es_principal BOOLEAN,
    codigo_especie_animal_en_area INT,
    codigo_lenguaje INT,

    PRIMARY KEY (codigo_especie_animal_en_area, codigo_lenguaje),

    FOREIGN KEY (codigo_especie_animal_en_area)
        REFERENCES Especie_Animal_en_Area (codigo)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,

    FOREIGN KEY (codigo_lenguaje)
        REFERENCES Lenguaje (codigo)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
) ENGINE = InnoDB;

CREATE TABLE Planta_en_Luna
(
    codigo INT AUTO_INCREMENT,
    codigo_luna INT,
    codigo_planta INT,

    PRIMARY KEY (codigo),

    FOREIGN KEY (codigo_luna)
        REFERENCES Luna (codigo)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,

    FOREIGN KEY (codigo_planta)
        REFERENCES Planta (codigo)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
) ENGINE = InnoDB;

CREATE TABLE Planta_en_Luna_come_Sustancia_en_Luna
(
    codigo_planta_en_luna INT,
    codigo_sustancia_en_luna INT,

    PRIMARY KEY (codigo_planta_en_luna, codigo_sustancia_en_luna),

    FOREIGN KEY (codigo_planta_en_luna)
        REFERENCES Planta_en_Luna (codigo)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,

    FOREIGN KEY (codigo_sustancia_en_luna)
        REFERENCES Sustancia_en_Luna (codigo)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
) ENGINE = InnoDB;

CREATE TABLE Planta_en_Luna_come_Planta_en_Luna
(
    codigo_planta_en_luna_depredador INT,
    codigo_planta_en_luna_presa INT,

    PRIMARY KEY (codigo_planta_en_luna_depredador, codigo_planta_en_luna_presa),

    FOREIGN KEY (codigo_planta_en_luna_depredador)
        REFERENCES Planta_en_Luna (codigo)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,

    FOREIGN KEY (codigo_planta_en_luna_presa)
        REFERENCES Planta_en_Luna (codigo)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
) ENGINE = InnoDB;

CREATE TABLE Planta_en_Luna_habla_Lenguaje
(
    es_principal BOOLEAN,
    codigo_planta_en_luna INT,
    codigo_lenguaje INT,

    PRIMARY KEY (codigo_planta_en_luna, codigo_lenguaje),

    FOREIGN KEY (codigo_planta_en_luna)
        REFERENCES Planta_en_Luna (codigo)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,

    FOREIGN KEY (codigo_lenguaje)
        REFERENCES Lenguaje (codigo)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
) ENGINE = InnoDB;

CREATE TABLE Especie_Animal_en_Luna
(
    codigo INT AUTO_INCREMENT,
    nombre_local VARCHAR(30),
    numero_ejemplares INT,
    codigo_especie_animal INT,
    codigo_luna INT,

    PRIMARY KEY (codigo),

    FOREIGN KEY (codigo_especie_animal)
        REFERENCES Especie_Animal (codigo)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,

    FOREIGN KEY (codigo_luna)
        REFERENCES Luna (codigo)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
) ENGINE = InnoDB;

CREATE TABLE Especie_Animal_en_Luna_come_Planta_en_Luna
(
    codigo_especie_animal_en_luna INT,
    codigo_planta_en_luna INT,

    PRIMARY KEY (codigo_especie_animal_en_luna,
                 codigo_planta_en_luna),


    FOREIGN KEY (codigo_especie_animal_en_luna)
        REFERENCES Especie_Animal_en_Luna (codigo)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,

    FOREIGN KEY (codigo_planta_en_luna)
        REFERENCES Planta_en_Luna (codigo)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
) ENGINE = InnoDB;

CREATE TABLE Especie_Animal_en_Luna_come_Especie_Animal_en_Luna
(
    codigo_especie_animal_en_luna_depredador INT,
    codigo_especie_animal_en_luna_presa INT,

    PRIMARY KEY (codigo_especie_animal_en_luna_depredador,
                 codigo_especie_animal_en_luna_presa),

    FOREIGN KEY (codigo_especie_animal_en_luna_depredador)
        REFERENCES Especie_Animal_en_Luna (codigo)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,

    FOREIGN KEY (codigo_especie_animal_en_luna_presa)
        REFERENCES Especie_Animal_en_Luna (codigo)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
) ENGINE = InnoDB;

CREATE TABLE Especie_Animal_en_Luna_habla_Lenguaje
(
    es_principal BOOLEAN,
    codigo_especie_animal_en_luna INT,
    codigo_lenguaje INT,

    PRIMARY KEY (codigo_especie_animal_en_luna, codigo_lenguaje),

    FOREIGN KEY (codigo_especie_animal_en_luna)
        REFERENCES Especie_Animal_en_Luna (codigo)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,

    FOREIGN KEY (codigo_lenguaje)
        REFERENCES Lenguaje (codigo)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
) ENGINE = InnoDB;

CREATE TABLE Personal_participa_Equipo_Multidisciplinario
(
    codigo_personal INT,
    codigo_equipo_disciplinario INT,
    codigo_personal_superior INT,

    PRIMARY KEY (codigo_personal, codigo_equipo_multidisciplinario),

    FOREIGN KEY (codigo_personal)
        REFERENCES Personal (codigo)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,

    FOREIGN KEY (codigo_equipo_multidisciplinario)
        REFERENCES Equipo_Multidisciplinario (codigo)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,

    FOREIGN KEY (codigo_personal_supeior)
        REFERENCES Personal (codigo)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
) ENGINE = InnoDB;
