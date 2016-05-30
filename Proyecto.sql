DROP DATABASE IF EXISTS EXPLORACION_ESPACIAL;
CREATE DATABASE IF NOT EXISTS EXPLORACION_ESPACIAL;
USE EXPLORACION_ESPACIAL;

# Esta tabla representa cada uno de los soles que poseen
# cada uno de los planetas dentro del problema.
CREATE TABLE IF NOT EXISTS Sol
(
    codigo               INT         AUTO_INCREMENT, # es el código del sol.
    nombre               VARCHAR(30) NOT NULL      , # es el nombre del sol.
    tipo                 VARCHAR(30) NOT NULL      , # el tipo de sol.
    tiempo_vida          DATE NULL                 , # es el tiempo de vida que tiene el sol.
    tiempo_restante_vida DATE NULL                 , # es el tiempo de vida restante que tiene el sol.

    PRIMARY KEY (codigo)
) ENGINE = InnoDB;

# Esta tabla representa cada uno de los planetas 
# que se encuentren dentro del problema.
CREATE TABLE IF NOT EXISTS Planeta
(
    codigo        INT         AUTO_INCREMENT, # es el código del planeta.
    codigo_sol    INT         NOT NULL      , # es el código del sol que posee el planeta.
    nombre        VARCHAR(30) NOT NULL      , # es el nombre del planeta.
    distancia_sol FLOAT       NULL          , # es la distancia entre el planeta y su sol.

    PRIMARY KEY (codigo),

    FOREIGN KEY (codigo_sol)
        REFERENCES Sol (codigo)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
) ENGINE = InnoDB;

# Esta tabla representa cada una de las lunas
# que poseen cada uno de los planetas dentro
# del problema.
CREATE TABLE IF NOT EXISTS Luna
(
    codigo INT        , # es el código de la luna.
    nombre VARCHAR(30), # es el nombre de la luna.

    PRIMARY KEY (codigo)
) ENGINE = InnoDB;

# Esta tabla representa la relación que hay entre las
# entidades Planeta y Luna.
#
# En esta tabla se insertan los códigos del planeta
# y las lunas que posee.
CREATE TABLE IF NOT EXISTS Planeta_tiene_Luna
(
    codigo_planeta INT, # es el código del planeta.
    codigo_luna    INT, # es el código de la luna que posee el planeta.

    PRIMARY KEY (codigo_planeta, codigo_luna),

    FOREIGN KEY (codigo_planeta)
        REFERENCES Planeta (codigo)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,

    FOREIGN KEY (codigo_luna)
        REFERENCES Luna (codigo)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
) ENGINE = InnoDB;

# Esta tabla representa cada una de las federaciones
# dentro del problema, las cuales se encuentran formadas
# por planetas.
CREATE TABLE IF NOT EXISTS Federacion
(
    codigo INT        , # es el código de la federación.
    nombre VARCHAR(30), # es el nombre de la federación.

    PRIMARY KEY (codigo)
) ENGINE = InnoDB;


# Esta tabla representa la relación que hay entre las entidades
# Federación y Planeta.
#
# En esta tabla se insertan los códigos de la federación y
# de los planetas que la conforman.
CREATE TABLE  IF NOT EXISTS Federacion_tiene_Planeta
(
    codigo_federacion INT, # es el código de la federación.
    codigo_planeta    INT, # es el código de los planetas que conforman la federación.

    PRIMARY KEY (codigo_federacion, codigo_planeta),

    FOREIGN KEY (codigo_federacion)
        REFERENCES Federacion (codigo)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,

    FOREIGN KEY (codigo_planeta)
        REFERENCES Planeta (codigo)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
) ENGINE = InnoDB;

# Esta tabla representa cada uno de los sistemas
# solares dentro del problema, los cuales se encuentran
# formados por planetas, lunas y soles.
CREATE TABLE IF NOT EXISTS Sistema_Solar
(
    codigo INT        , # es el código del sistema solar.
    nombre VARCHAR(30), # es el nombre del sistema solar.

    PRIMARY KEY (codigo)
) ENGINE = InnoDB;

# Esta tabla representa la relación que hay entre las entidades
# Sistema_Solar y Planeta.
#
# En esta tabla se insertan loc códigos del sistema solar
# y los planetas que lo conforman.
CREATE TABLE IF NOT EXISTS Sistema_Solar_tiene_Planeta
(
    codigo_sistema_solar INT, # es el código del sistema solar.
    codigo_planeta       INT, # es el código del planeta que pertenece al sistema solar.

    PRIMARY KEY (codigo_sistema_solar, codigo_planeta),

    FOREIGN KEY (codigo_sistema_solar)
        REFERENCES Sistema_solar (codigo)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,

    FOREIGN KEY (codigo_planeta)
        REFERENCES Planeta (codigo)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
) ENGINE = InnoDB;

# Esta tabla representa cada una de las galaxias dentro
# del problema, las cuales se encuentran formadas por
# sistemas solares.
CREATE TABLE IF NOT EXISTS Galaxia
(
    codigo INT        , # es el código de la galaxia.
    nombre VARCHAR(30), # es el nombre de la galaxia.

    PRIMARY KEY (codigo)
) ENGINE = InnoDB;

# Esta tabla representa la relación que hay entre las entidades
# Galaxi y Sistema_Solar.
#
# En esta tabla se insertan los códigos de la galaxia y los
# sistemas solares que la conforman.
CREATE TABLE IF NOT EXISTS Galaxia_tiene_Sistema_Solar
(
    codigo_galaxia       INT, # es el código de la galaxia.
    codigo_sistema_solar INT, # es el codigo de los sistemas solares que conforman la galaxia.

    PRIMARY KEY (codigo_galaxia, codigo_sistema_solar),

    FOREIGN KEY (codigo_galaxia)
        REFERENCES Galaxia (codigo)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,

    FOREIGN KEY (codigo_sistema_solar)
        REFERENCES Sistema_Solar (codigo)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
) ENGINE = InnoDB;

# Esta tabla representa cada una de las sustancias de las
# cuales están compuestos los distintos planetas, lunas y
# soles del problema.
#
# Se supone que las sustancias usadas
# para la composición de los diferentes planetas, lunas y
# soles, son conocidas, por lo que esta tabla representa
# un lista de todas esas sustancias.
CREATE TABLE IF NOT EXISTS Sustancia
(
    codigo            INT        , # es el código de la sustancia.
    nombre_cientifico VARCHAR(30)  # es el nombre científico de la sustancia.
) ENGINE = InnoDB;

# Esta tabla representa los estados en los que se pueden
# encontrar cda una de las sustancias que componen los
# planetas, lunas y soles dentro del problema.
#
# Ya que una de las restricciones para la realización del modelo
# relacional es que está prohibido hacer uso de disparadores que
# que validen condiciones que pueden especificarse en el diseño
# del diagrama entidad-relación, se hace uso de esta tabla.
CREATE TABLE IF NOT EXISTS Estado_Sustancia
(
    codigo INT        , # es el código del estado en el que se puede encontrar una sustancia.
    nombre VARCHAR(30)  # es el nombre del estado en el que se puede encontrar una sustancia.
) ENGINE = InnoDB;

# Ya que cada planeta, luna o sol, puede presentar
# distinta composición en cada una de sus áreas, esta tabla
# representa cada una de las áreas que poseen cada uno de
# los planetas, lunas y soles dentro del problema.
CREATE TABLE IF NOT EXISTS Area
(
    codigo INT        , # es el código del área que posee un planeta.
    nombre VARCHAR(30)  # es el nombre del área que posee un planeta..
) ENGINE = InnoDB;

# Esta tabla representa cada una de las plantas que pueden
# existir en cada uno de los planetas y lunas dentro del 
# problema.
#
# Se supone que una misma planta puede existir en diferentes
# planetas o lunas, por lo que esta tabla representa un listado
# de todas esas plantas.
CREATE TABLE IF NOT EXISTS Planta
(
    codigo            INT        , # es el código de una planta.
    nombre_cientifico VARCHAR(30)  # es el nombre científico de la planta.
) ENGINE = InnoDB;

# Esta tabla representa cada una de las especies animales
# que pueden existir en cada uno de los planetas y lunas
# dentro del problema.
#
# Se supone que una misma especie animal puede existir en
# diferentes planetas o lunas, por lo que esta tabla representa
# un listado de todas esas especies animales.
CREATE TABLE IF NOT EXISTS Especie_Animal
(
    codigo              INT        , # es el código de una especia animal.
    nombre_cientifico   VARCHAR(30), # es el nombre científico de la especie animal.
    numero_extremidades INT        , # es el número de extremidades que posee la especie animal.
    numero_ojos         INT          # es el número de ojos que posee la especie animal.
) ENGINE = InnoDB;

# Esta tabla representa cada uno de los lenguajes
# que se pueden hablar en cada uno de los planetas
# y lunas.
#
# Se supone que un lenguaje puede ser usado en
# diferenes planetas o lunas, por lo que esta
# tabla representa un listado de cada uno de esos
# lenguajes.
CREATE TABLE IF NOT EXISTS Lenguaje
(
    codigo INT        , # es el código de un lenguaje.
    nombre VARCHAR(30), # es el nombre del lenguaje.
    tipo   VARCHAR(30)  # es el tipo de lenguaje.
) ENGINE = InnoDB;
