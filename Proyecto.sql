DROP DATABASE IF EXISTS EXPLORACION_ESPACIAL;
CREATE DATABASE IF NOT EXISTS EXPLORACION_ESPACIAL;
USE EXPLORACION_ESPACIAL;

# Esta tabla representa un planeta en particular.
# Cada uno de los planetas que se encuentren dentro
# del problema, serán insertados en esta tabla.
CREATE TABLE IF NOT EXISTS Planeta
(
    nombre        VARCHAR(30), # es el nombre del planeta.
    distancia_sol FLOAT      , # es la distancia entre el planeta y su sol.
);

# Esta tabla representa cada una de las lunas
# que poseen cada uno de los planetas dentro
# del problema.
CREATE TABLE IF NOT EXISTS Luna
(
    nombre VARCHAR(30) # es el nombre de la luna.
);

# Esta tabla representa cada uno de los soles que poseen
# cada uno de los planetas dentro del problema.
CREATE TABLE IF NOT EXISTS Sol
(
    nombre               VARCHAR(30), # es el nombre del sol.
    tipo                 VARCHAR(30), # el tipo de sol.
    tiempo_vida          DATE       , # es el tiempo de vida que tiene el sol.
    tiempo_restante_vida DATE         # es el tiempo de vida restante que tiene el sol.
);

# Esta tabla representa cada una de las federaciones
# dentro del problema, las cuales se encuentran formadas
# por planetas.
CREATE TABLE IF NOT EXISTS Federacion
(
    codigo INT        , # es el código de la federación.
    nombre VARCHAR(30)  # es el nombre de la federación.
);

# Esta tabla representa cada uno de los sistemas
# solares dentro del problema, los cuales se encuentran
# formados por planetas, lunas y soles.
CREATE TABLE IF NOT EXISTS Sistema_Solar
(
    nombre VARCHAR(30) # es el nombre del sistema solar.
);

# Esta tabla representa cada una de las galaxias dentro
# del problema, las cuales se encuentran formadas por
# sistemas solares.
CREATE TABLE IF NOT EXISTS Galaxia
(
    nombre VARCHAR(30) # es el nombre de la galaxia.
);

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
    nombre_cientifico VARCHAR(30) # es el nombre científico de la sustancia.
);

# Ya que cada planeta, luna o sol, puede presentar
# distinta composición en cada una de sus áreas, esta tabla
# representa cada una de las áreas que poseen cada uno de
# los planetas, lunas y soles dentro del problema.
CREATE TABLE IF NOT EXISTS Area
(
    nombre VARCHAR(30) # es el nombre del área.
);

# Esta tabla representa cada una de las plantas que pueden
# existir en cada uno de los planetas y lunas dentro del 
# problema.
#
# Se supone que una misma planta puede existir en diferentes
# planetas o lunas, por lo que esta tabla representa un listado
# de todas esas plantas.
CREATE TABLE IF NOT EXISTS Planta
(
    nombre_cientifico VARCHAR(30) # es el nombre científico de la planta.
);

# Esta tabla representa cada una de las especies animales
# que pueden existir en cada uno de los planetas y lunas
# dentro del problema.
#
# Se supone que una misma especie animal puede existir en
# diferentes planetas o lunas, por lo que esta tabla representa
# un listado de todas esas especies animales.
CREATE TABLE IF NOT EXISTS Especie_Animal
(
    nombre_cientifico   VARCHAR(30), # es el nombre científico de la especie animal.
    numero_extremidades INT        , # es el número de extremidades que posee la especie animal.
    numero_ojos         INT          # es el número de ojos que posee la especie animal.
);

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
    nombre VARCHAR(30), # es el nombre del lenguaje.
    tipo   VARCHAR(30)  # es el tipo de lenguaje.
);
