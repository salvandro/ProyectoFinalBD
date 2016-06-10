SELECT Proyecto.nombre AS 'Proyecto',
       CONCAT(Personal.nombre, ' ', Personal.apellido_paterno, ' ', Personal.apellido_materno) AS 'Personal',
       Sustancia_en_Sol.nombre_local AS 'Sustancia (nombre local)',
       Sustancia.nombre_cientifico AS 'Sustancia (nombre científico)',
       '' AS 'Planta (nombre local)',
       '' AS 'Planta (nombre científico)',
       '' AS 'Especie Animal (nombre_local)',
       '' AS 'Especie Animal (nombre científico)',
       '' AS 'Luna',
       '' AS 'Área',
       '' AS 'Planeta',
       Sol.nombre AS 'Sol',
       Sistema_Solar.nombre AS 'Sistema Solar',
       Galaxia.nombre AS 'Galaxia'
FROM (((((((((((Proyecto JOIN Equipo_Multidisciplinario_realiza_Proyecto
ON Proyecto.codigo = Equipo_Multidisciplinario_realiza_Proyecto.codigo_proyecto)
JOIN Equipo_Multidisciplinario
ON Equipo_Multidisciplinario_realiza_Proyecto.codigo_equipo_multidisciplinario = Equipo_Multidisciplinario.codigo)
JOIN Personal_participa_Equipo_Multidisciplinario
ON Equipo_Multidisciplinario.codigo = Personal_participa_Equipo_Multidisciplinario.codigo_equipo_multidisciplinario)
JOIN Personal
ON Personal_participa_Equipo_Multidisciplinario.codigo_personal = Personal.codigo)
JOIN Proyecto_Sustancias
ON Proyecto.codigo = Proyecto_Sustancias.codigo_proyecto)
JOIN Proyecto_Sustancias_estudia_Sustancia_en_Sol
ON Proyecto_Sustancias.codigo_proyecto = Proyecto_Sustancias_estudia_Sustancia_en_Sol.codigo_proyecto_sustancias)
JOIN Sustancia_en_Sol
ON Proyecto_Sustancias_estudia_Sustancia_en_Sol.codigo_sustancia_en_sol = Sustancia_en_Sol.codigo)
JOIN Sustancia
ON Sustancia_en_Sol.codigo_sustancia = Sustancia.codigo)
JOIN Sol
ON Sustancia_en_Sol.codigo_sol = Sol.codigo)
JOIN Sistema_Solar
ON Sol.codigo_sistema_solar = Sistema_Solar.codigo)
JOIN Galaxia
ON Sistema_Solar.codigo_galaxia = Galaxia.codigo)
UNION
SELECT Proyecto.nombre AS 'Proyecto',
       CONCAT(Personal.nombre, ' ', Personal.apellido_paterno, ' ', Personal.apellido_materno) AS 'Personal',
       Sustancia_en_Area.nombre_local AS 'Sustancia (nombre local)',
       Sustancia.nombre_cientifico AS 'Sustancia (nombre científico)',
       '' AS 'Planta (nombre local)',
       '' AS 'Planta (nombre científico)',
       '' AS 'Especie Animal (nombre_local)',
       '' AS 'Especie Animal (nombre científico)',
       '' AS 'Luna',
       Area.nombre AS 'Área',
       Planeta.nombre AS 'Planeta',
       '' AS 'Sol',
       Sistema_Solar.nombre AS 'Sistema Solar',
       Galaxia.nombre AS 'Galaxia'
FROM (((((((((((((Proyecto JOIN Equipo_Multidisciplinario_realiza_Proyecto
ON Proyecto.codigo = Equipo_Multidisciplinario_realiza_Proyecto.codigo_proyecto)
JOIN Equipo_Multidisciplinario
ON Equipo_Multidisciplinario_realiza_Proyecto.codigo_equipo_multidisciplinario = Equipo_Multidisciplinario.codigo)
JOIN Personal_participa_Equipo_Multidisciplinario
ON Equipo_Multidisciplinario.codigo = Personal_participa_Equipo_Multidisciplinario.codigo_equipo_multidisciplinario)
JOIN Personal
ON Personal_participa_Equipo_Multidisciplinario.codigo_personal = Personal.codigo)
JOIN Proyecto_Sustancias
ON Proyecto.codigo = Proyecto_Sustancias.codigo_proyecto)
JOIN Proyecto_Sustancias_estudia_Sustancia_en_Area
ON Proyecto_Sustancias.codigo_proyecto = Proyecto_Sustancias_estudia_Sustancia_en_Area.codigo_proyecto_sustancias)
JOIN Sustancia_en_Area
ON Proyecto_Sustancias_estudia_Sustancia_en_Area.codigo_sustancia_en_area = Sustancia_en_Area.codigo)
JOIN Sustancia
ON Sustancia_en_Area.codigo_sustancia = Sustancia.codigo)
JOIN Area
ON Sustancia_en_Area.codigo_area = Area.codigo)
JOIN Planeta
ON Area.codigo_planeta = Planeta.codigo)
JOIN Sol
ON Planeta.codigo_sol = Sol.codigo)
JOIN Sistema_Solar
ON Sol.codigo_sistema_solar = Sistema_Solar.codigo)
JOIN Galaxia
ON Sistema_Solar.codigo_galaxia = Galaxia.codigo)
UNION
SELECT Proyecto.nombre AS 'Proyecto',
       CONCAT(Personal.nombre, ' ', Personal.apellido_paterno, ' ', Personal.apellido_materno) AS 'Personal',
       Sustancia_en_Luna.nombre_local AS 'Sustancia (nombre local)',
       Sustancia.nombre_cientifico AS 'Sustancia (nombre científico)',
       '' AS 'Planta (nombre local)',
       '' AS 'Planta (nombre científico)',
       '' AS 'Especie Animal (nombre_local)',
       '' AS 'Especie Animal (nombre científico)',
       Luna.nombre AS 'Luna',
       '' AS 'Área',
       '' AS 'Planeta',
       '' AS 'Sol',
       Sistema_Solar.nombre AS 'Sistema Solar',
       Galaxia.nombre AS 'Galaxia'
FROM (((((((((((((Proyecto JOIN Equipo_Multidisciplinario_realiza_Proyecto
ON Proyecto.codigo = Equipo_Multidisciplinario_realiza_Proyecto.codigo_proyecto)
JOIN Equipo_Multidisciplinario
ON Equipo_Multidisciplinario_realiza_Proyecto.codigo_equipo_multidisciplinario = Equipo_Multidisciplinario.codigo)
JOIN Personal_participa_Equipo_Multidisciplinario
ON Equipo_Multidisciplinario.codigo = Personal_participa_Equipo_Multidisciplinario.codigo_equipo_multidisciplinario)
JOIN Personal
ON Personal_participa_Equipo_Multidisciplinario.codigo_personal = Personal.codigo)
JOIN Proyecto_Sustancias
ON Proyecto.codigo = Proyecto_Sustancias.codigo_proyecto)
JOIN Proyecto_Sustancias_estudia_Sustancia_en_Luna
ON Proyecto_Sustancias.codigo_proyecto = Proyecto_Sustancias_estudia_Sustancia_en_Luna.codigo_proyecto_sustancias)
JOIN Sustancia_en_Luna
ON Proyecto_Sustancias_estudia_Sustancia_en_Luna.codigo_sustancia_en_luna = Sustancia_en_Luna.codigo)
JOIN Sustancia
ON Sustancia_en_Luna.codigo_sustancia = Sustancia.codigo)
JOIN Luna
ON Sustancia_en_Luna.codigo_luna = Luna.codigo)
JOIN Planeta
ON Luna.codigo_planeta = Planeta.codigo)
JOIN Sol
ON Planeta.codigo_sol = Sol.codigo)
JOIN Sistema_Solar
ON Sol.codigo_sistema_solar = Sistema_Solar.codigo)
JOIN Galaxia
ON Sistema_Solar.codigo_galaxia = Galaxia.codigo)
UNION
SELECT Proyecto.nombre AS 'Proyecto',
       CONCAT(Personal.nombre, ' ', Personal.apellido_paterno, ' ', Personal.apellido_materno) AS 'Personal',
       '' AS 'Sustancia (nombre local)',
       '' AS 'Sustancia (nombre científico)',
       Planta_en_Area.nombre_local AS 'Planta (nombre local)',
       Planta.nombre_cientifico AS 'Planta (nombre científico)',
       '' AS 'Especie Animal (nombre_local)',
       '' AS 'Especie Animal (nombre científico)',
       '' AS 'Luna',
       Area.nombre AS 'Área',
       Planeta.nombre AS 'Planeta',
       '' AS 'Sol',
       Sistema_Solar.nombre AS 'Sistema Solar',
       Galaxia.nombre AS 'Galaxia'
FROM (((((((((((((Proyecto JOIN Equipo_Multidisciplinario_realiza_Proyecto
ON Proyecto.codigo = Equipo_Multidisciplinario_realiza_Proyecto.codigo_proyecto)
JOIN Equipo_Multidisciplinario
ON Equipo_Multidisciplinario_realiza_Proyecto.codigo_equipo_multidisciplinario = Equipo_Multidisciplinario.codigo)
JOIN Personal_participa_Equipo_Multidisciplinario
ON Equipo_Multidisciplinario.codigo = Personal_participa_Equipo_Multidisciplinario.codigo_equipo_multidisciplinario)
JOIN Personal
ON Personal_participa_Equipo_Multidisciplinario.codigo_personal = Personal.codigo)
JOIN Proyecto_Flora
ON Proyecto.codigo = Proyecto_Flora.codigo_proyecto)
JOIN Proyecto_Flora_estudia_Planta_en_Area
ON Proyecto_Flora.codigo_proyecto = Proyecto_Flora_estudia_Planta_en_Area.codigo_proyecto_flora)
JOIN Planta_en_Area
ON Proyecto_Flora_estudia_Planta_en_Area.codigo_planta_en_area = Planta_en_Area.codigo)
JOIN Planta
ON Planta_en_Area.codigo_planta = Planta.codigo)
JOIN Area
ON Planta_en_Area.codigo_area = Area.codigo)
JOIN Planeta
ON Area.codigo_planeta = Planeta.codigo)
JOIN Sol
ON Planeta.codigo_sol = Sol.codigo)
JOIN Sistema_Solar
ON Sol.codigo_sistema_solar = Sistema_Solar.codigo)
JOIN Galaxia
ON Sistema_Solar.codigo_galaxia = Galaxia.codigo)
UNION
SELECT Proyecto.nombre AS 'Proyecto',
       CONCAT(Personal.nombre, ' ', Personal.apellido_paterno, ' ', Personal.apellido_materno) AS 'Personal',
       '' AS 'Sustancia (nombre local)',
       '' AS 'Sustancia (nombre científico)',
       Planta_en_Luna.nombre_local AS 'Planta (nombre local)',
       Planta.nombre_cientifico AS 'Planta (nombre científico)',
       '' AS 'Especie Animal (nombre_local)',
       '' AS 'Especie Animal (nombre científico)',
       Luna.nombre AS 'Luna',
       '' AS 'Área',
       '' AS 'Planeta',
       '' AS 'Sol',
       Sistema_Solar.nombre AS 'Sistema Solar',
       Galaxia.nombre AS 'Galaxia'
FROM (((((((((((((Proyecto JOIN Equipo_Multidisciplinario_realiza_Proyecto
ON Proyecto.codigo = Equipo_Multidisciplinario_realiza_Proyecto.codigo_proyecto)
JOIN Equipo_Multidisciplinario
ON Equipo_Multidisciplinario_realiza_Proyecto.codigo_equipo_multidisciplinario = Equipo_Multidisciplinario.codigo)
JOIN Personal_participa_Equipo_Multidisciplinario
ON Equipo_Multidisciplinario.codigo = Personal_participa_Equipo_Multidisciplinario.codigo_equipo_multidisciplinario)
JOIN Personal
ON Personal_participa_Equipo_Multidisciplinario.codigo_personal = Personal.codigo)
JOIN Proyecto_Flora
ON Proyecto.codigo = Proyecto_Flora.codigo_proyecto)
JOIN Proyecto_Flora_estudia_Planta_en_Luna
ON Proyecto_Flora.codigo_proyecto = Proyecto_Flora_estudia_Planta_en_Luna.codigo_proyecto_flora)
JOIN Planta_en_Luna
ON Proyecto_Flora_estudia_Planta_en_Luna.codigo_planta_en_luna = Planta_en_Luna.codigo)
JOIN Planta
ON Planta_en_Luna.codigo_planta = Planta.codigo)
JOIN Luna
ON Planta_en_Luna.codigo_luna = Luna.codigo)
JOIN Planeta
ON Luna.codigo_planeta = Planeta.codigo)
JOIN Sol
ON Planeta.codigo_sol = Sol.codigo)
JOIN Sistema_Solar
ON Sol.codigo_sistema_solar = Sistema_Solar.codigo)
JOIN Galaxia
ON Sistema_Solar.codigo_galaxia = Galaxia.codigo)
UNION
SELECT Proyecto.nombre AS 'Proyecto',
       CONCAT(Personal.nombre, ' ', Personal.apellido_paterno, ' ', Personal.apellido_materno) AS 'Personal',
       '' AS 'Sustancia (nombre local)',
       '' AS 'Sustancia (nombre científico)',
       '' AS 'Planta (nombre local)',
       '' AS 'Planta (nombre científico)',
       Especie_Animal_en_Area.nombre_local AS 'Especie Animal (nombre_local)',
       Especie_Animal.nombre_cientifico AS 'Especie Animal (nombre científico)',
       '' AS 'Luna',
       Area.nombre AS 'Área',
       Planeta.nombre AS 'Planeta',
       '' AS 'Sol',
       Sistema_Solar.nombre AS 'Sistema Solar',
       Galaxia.nombre AS 'Galaxia'
FROM (((((((((((((Proyecto JOIN Equipo_Multidisciplinario_realiza_Proyecto
ON Proyecto.codigo = Equipo_Multidisciplinario_realiza_Proyecto.codigo_proyecto)
JOIN Equipo_Multidisciplinario
ON Equipo_Multidisciplinario_realiza_Proyecto.codigo_equipo_multidisciplinario = Equipo_Multidisciplinario.codigo)
JOIN Personal_participa_Equipo_Multidisciplinario
ON Equipo_Multidisciplinario.codigo = Personal_participa_Equipo_Multidisciplinario.codigo_equipo_multidisciplinario)
JOIN Personal
ON Personal_participa_Equipo_Multidisciplinario.codigo_personal = Personal.codigo)
JOIN Proyecto_Fauna
ON Proyecto.codigo = Proyecto_Fauna.codigo_proyecto)
JOIN Proyecto_Fauna_estudia_Especie_Animal_en_Area
ON Proyecto_Fauna.codigo_proyecto = Proyecto_Fauna_estudia_Especie_Animal_en_Area.codigo_proyecto_fauna)
JOIN Especie_Animal_en_Area
ON Proyecto_Fauna_estudia_Especie_Animal_en_Area.codigo_especie_animal_en_area = Especie_Animal_en_Area.codigo)
JOIN Especie_Animal
ON Especie_Animal_en_Area.codigo_especie_animal = Especie_Animal.codigo)
JOIN Area
ON Especie_Animal_en_Area.codigo_area = Area.codigo)
JOIN Planeta
ON Area.codigo_planeta = Planeta.codigo)
JOIN Sol
ON Planeta.codigo_sol = Sol.codigo)
JOIN Sistema_Solar
ON Sol.codigo_sistema_solar = Sistema_Solar.codigo)
JOIN Galaxia
ON Sistema_Solar.codigo_galaxia = Galaxia.codigo)
UNION
SELECT Proyecto.nombre AS 'Proyecto',
       CONCAT(Personal.nombre, ' ', Personal.apellido_paterno, ' ', Personal.apellido_materno) AS 'Personal',
       '' AS 'Sustancia (nombre local)',
       '' AS 'Sustancia (nombre científico)',
       '' AS 'Planta (nombre local)',
       '' AS 'Planta (nombre científico)',
       Especie_Animal_en_Luna.nombre_local AS 'Especie Animal (nombre_local)',
       Especie_Animal.nombre_cientifico AS 'Especie Animal (nombre científico)',
       Luna.nombre AS 'Luna',
       '' AS 'Área',
       '' AS 'Planeta',
       '' AS 'Sol',
       Sistema_Solar.nombre AS 'Sistema Solar',
       Galaxia.nombre AS 'Galaxia'
FROM (((((((((((((Proyecto JOIN Equipo_Multidisciplinario_realiza_Proyecto
ON Proyecto.codigo = Equipo_Multidisciplinario_realiza_Proyecto.codigo_proyecto)
JOIN Equipo_Multidisciplinario
ON Equipo_Multidisciplinario_realiza_Proyecto.codigo_equipo_multidisciplinario = Equipo_Multidisciplinario.codigo)
JOIN Personal_participa_Equipo_Multidisciplinario
ON Equipo_Multidisciplinario.codigo = Personal_participa_Equipo_Multidisciplinario.codigo_equipo_multidisciplinario)
JOIN Personal
ON Personal_participa_Equipo_Multidisciplinario.codigo_personal = Personal.codigo)
JOIN Proyecto_Fauna
ON Proyecto.codigo = Proyecto_Fauna.codigo_proyecto)
JOIN Proyecto_Fauna_estudia_Especie_Animal_en_Luna
ON Proyecto_Fauna.codigo_proyecto = Proyecto_Fauna_estudia_Especie_Animal_en_Luna.codigo_proyecto_fauna)
JOIN Especie_Animal_en_Luna
ON Proyecto_Fauna_estudia_Especie_Animal_en_Luna.codigo_especie_animal_en_luna = Especie_Animal_en_Luna.codigo)
JOIN Especie_Animal
ON Especie_Animal_en_Luna.codigo_especie_animal = Especie_Animal.codigo)
JOIN Luna
ON Especie_Animal_en_Luna.codigo_luna = Luna.codigo)
JOIN Planeta
ON Luna.codigo_planeta = Planeta.codigo)
JOIN Sol
ON Planeta.codigo_sol = Sol.codigo)
JOIN Sistema_Solar
ON Sol.codigo_sistema_solar = Sistema_Solar.codigo)
JOIN Galaxia
ON Sistema_Solar.codigo_galaxia = Galaxia.codigo);

SELECT codigo AS 'Código', nombre_cientifico AS 'Nombre Científico', 'Planta' AS 'Tipo'
FROM Planta
WHERE codigo NOT IN (
    SELECT codigo_planta_en_area_presa
    FROM Planta_en_Area_come_Planta_en_Area
    UNION
    SELECT codigo_planta_en_area
    FROM Especie_Animal_en_Area_come_Planta_en_Area
    UNION
    SELECT codigo_planta_en_luna_presa
    FROM Planta_en_Luna_come_Planta_en_Luna
    UNION
    SELECT codigo_planta_en_luna
    FROM Especie_Animal_en_Luna_come_Planta_en_Luna
)
UNION
SELECT codigo AS 'Código', nombre_cientifico AS 'Nombre Científico', 'Especie Animal' AS 'Tipo'
FROM Especie_Animal
WHERE codigo NOT IN (
    SELECT codigo_especie_animal_en_area_presa
    FROM Especie_Animal_en_Area_come_Especie_Animal_en_Area
    UNION
    SELECT codigo_especie_animal_en_luna_presa
    FROM Especie_Animal_en_Luna_come_Especie_Animal_en_Luna
);

SELECT Area.nombre AS 'Área', Planeta.nombre AS 'Planeta'
FROM (((((Sustancia_en_Area JOIN Sustancia
ON Sustancia_en_Area.codigo_sustancia = Sustancia.codigo AND (Sustancia.nombre_cientifico = 'Metano' OR Sustancia.nombre_cientifico = 'Oxigeno'))
JOIN Area
ON Sustancia_en_Area.codigo_area = Area.codigo)
JOIN Planeta
ON Area.codigo_planeta = Planeta.codigo)
JOIN Sustancia_en_Area_se_encuentra_Estado_Sustancia
ON Sustancia_en_Area.codigo = Sustancia_en_Area_se_encuentra_Estado_Sustancia.codigo_sustancia_en_area)
JOIN Estado_Sustancia
ON Sustancia_en_Area_se_encuentra_Estado_Sustancia.codigo_estado_sustancia = Estado_Sustancia.codigo AND Estado_Sustancia.nombre = 'Líquido');

SELECT Lenguaje.codigo AS 'Código', Lenguaje.nombre AS 'Lenguaje'
FROM Lenguaje
WHERE codigo IN (
    SELECT Planta_en_Area_habla_Lenguaje.codigo_lenguaje
    FROM ((Planta_en_Area_habla_Lenguaje JOIN Planta_en_Area
    ON Planta_en_Area_habla_Lenguaje.codigo_planta_en_area = Planta_en_Area.codigo)
    JOIN Area
    ON Planta_en_Area.codigo_area = Area.codigo AND Area.nombre = 'Norte América')
    JOIN Planeta
    ON Area.codigo_planeta = Planeta.codigo AND Planeta.nombre = 'Tierra'
    UNION
    SELECT Especie_Animal_en_Area_habla_Lenguaje.codigo_lenguaje
    FROM ((Especie_Animal_en_Area_habla_Lenguaje JOIN Especie_Animal_en_Area
    ON Especie_Animal_en_Area_habla_Lenguaje.codigo_especie_animal_en_area = Especie_Animal_en_Area.codigo)
    JOIN Area
    ON Especie_Animal_en_Area.codigo_area = Area.codigo AND Area.nombre = 'Norte América')
    JOIN Planeta
    ON Area.codigo_planeta = Planeta.codigo AND Planeta.nombre = 'Tierra'
);

Select Personal.codigo AS 'Código', CONCAT(Personal.nombre, ' ', Personal.apellido_paterno, ' ', Personal.apellido_materno) AS 'Personal', 'Militar' AS 'Tipo'
FROM (((((Personal LEFT JOIN Personal_participa_Equipo_Multidisciplinario
ON Personal.codigo = Personal_Participa_Equipo_Multidisciplinario.codigo_personal)
JOIN Equipo_Multidisciplinario
ON Personal_participa_Equipo_Multidisciplinario.codigo_equipo_multidisciplinario = Equipo_Multidisciplinario.codigo)
JOIN Equipo_Multidisciplinario_realiza_Proyecto
ON Equipo_Multidisciplinario.codigo = Equipo_Multidisciplinario_realiza_Proyecto.codigo_equipo_multidisciplinario)
JOIN Proyecto
ON Equipo_Multidisciplinario_realiza_Proyecto.codigo_proyecto = Proyecto.codigo AND Proyecto.fecha_fin < '2013-05-04')
JOIN Personal_Militar
ON Personal.codigo = Personal_Militar.codigo_personal)
UNION
Select Personal.codigo AS 'Código', CONCAT(Personal.nombre, ' ', Personal.apellido_paterno, ' ', Personal.apellido_materno) AS 'Personal', 'Mantenimiento' AS 'Tipo'
FROM (((((Personal LEFT JOIN Personal_participa_Equipo_Multidisciplinario
ON Personal.codigo = Personal_Participa_Equipo_Multidisciplinario.codigo_personal)
JOIN Equipo_Multidisciplinario
ON Personal_participa_Equipo_Multidisciplinario.codigo_equipo_multidisciplinario = Equipo_Multidisciplinario.codigo)
JOIN Equipo_Multidisciplinario_realiza_Proyecto
ON Equipo_Multidisciplinario.codigo = Equipo_Multidisciplinario_realiza_Proyecto.codigo_equipo_multidisciplinario)
JOIN Proyecto
ON Equipo_Multidisciplinario_realiza_Proyecto.codigo_proyecto = Proyecto.codigo AND Proyecto.fecha_fin < '2013-05-04')
JOIN Personal_Mantenimiento
ON Personal.codigo = Personal_Mantenimiento.codigo_personal)
UNION
Select Personal.codigo AS 'Código', CONCAT(Personal.nombre, ' ', Personal.apellido_paterno, ' ', Personal.apellido_materno) AS 'Personal', 'Investigador Zoólogo' AS 'Tipo'
FROM ((((((Personal LEFT JOIN Personal_participa_Equipo_Multidisciplinario
ON Personal.codigo = Personal_Participa_Equipo_Multidisciplinario.codigo_personal)
JOIN Equipo_Multidisciplinario
ON Personal_participa_Equipo_Multidisciplinario.codigo_equipo_multidisciplinario = Equipo_Multidisciplinario.codigo)
JOIN Equipo_Multidisciplinario_realiza_Proyecto
ON Equipo_Multidisciplinario.codigo = Equipo_Multidisciplinario_realiza_Proyecto.codigo_equipo_multidisciplinario)
JOIN Proyecto
ON Equipo_Multidisciplinario_realiza_Proyecto.codigo_proyecto = Proyecto.codigo AND Proyecto.fecha_fin < '2013-05-04')
JOIN Personal_Investigador
ON Personal.codigo = Personal_Investigador.codigo_personal)
JOIN Personal_Investigador_Zoologo
ON Personal_Investigador.codigo_personal = Personal_Investigador_Zoologo.codigo_personal_investigador)
UNION
Select Personal.codigo AS 'Código', CONCAT(Personal.nombre, ' ', Personal.apellido_paterno, ' ', Personal.apellido_materno) AS 'Personal', 'Investigador Botánico' AS 'Tipo'
FROM ((((((Personal LEFT JOIN Personal_participa_Equipo_Multidisciplinario
ON Personal.codigo = Personal_Participa_Equipo_Multidisciplinario.codigo_personal)
JOIN Equipo_Multidisciplinario
ON Personal_participa_Equipo_Multidisciplinario.codigo_equipo_multidisciplinario = Equipo_Multidisciplinario.codigo)
JOIN Equipo_Multidisciplinario_realiza_Proyecto
ON Equipo_Multidisciplinario.codigo = Equipo_Multidisciplinario_realiza_Proyecto.codigo_equipo_multidisciplinario)
JOIN Proyecto
ON Equipo_Multidisciplinario_realiza_Proyecto.codigo_proyecto = Proyecto.codigo AND Proyecto.fecha_fin < '2013-05-04')
JOIN Personal_Investigador
ON Personal.codigo = Personal_Investigador.codigo_personal)
JOIN Personal_Investigador_Botanico
ON Personal_Investigador.codigo_personal = Personal_Investigador_Botanico.codigo_personal_investigador)
UNION
Select Personal.codigo AS 'Código', CONCAT(Personal.nombre, ' ', Personal.apellido_paterno, ' ', Personal.apellido_materno) AS 'Personal', 'Investigador Geólogo' AS 'Tipo'
FROM ((((((Personal LEFT JOIN Personal_participa_Equipo_Multidisciplinario
ON Personal.codigo = Personal_Participa_Equipo_Multidisciplinario.codigo_personal)
JOIN Equipo_Multidisciplinario
ON Personal_participa_Equipo_Multidisciplinario.codigo_equipo_multidisciplinario = Equipo_Multidisciplinario.codigo)
JOIN Equipo_Multidisciplinario_realiza_Proyecto
ON Equipo_Multidisciplinario.codigo = Equipo_Multidisciplinario_realiza_Proyecto.codigo_equipo_multidisciplinario)
JOIN Proyecto
ON Equipo_Multidisciplinario_realiza_Proyecto.codigo_proyecto = Proyecto.codigo AND Proyecto.fecha_fin < '2013-05-04')
JOIN Personal_Investigador
ON Personal.codigo = Personal_Investigador.codigo_personal)
JOIN Personal_Investigador_Geologo
ON Personal_Investigador.codigo_personal = Personal_Investigador_Geologo.codigo_personal_investigador);
