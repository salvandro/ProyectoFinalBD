SELECT Proyecto.nombre as 'Proyecto',
       CONCAT(Personal.nombre, ' ', Personal.apellido_paterno, ' ', Personal.apellido_materno) as 'Personal',
       Sustancia_en_Sol.nombre_local as 'Sustancia (nombre local)',
       Sustancia.nombre_cientifico as 'Sustancia (nombre científico)',
       '' as 'Planta (nombre local)',
       '' as 'Planta (nombre científico)',
       '' as 'Especie Animal (nombre_local)',
       '' as 'Especie Animal (nombre científico)',
       '' as 'Luna',
       '' as 'Area',
       '' as 'Planeta',
       Sol.nombre as 'Sol',
       Sistema_Solar.nombre as 'Sistema Solar',
       Galaxia.nombre as 'Galaxia'
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
SELECT Proyecto.nombre as 'Proyecto',
       CONCAT(Personal.nombre, ' ', Personal.apellido_paterno, ' ', Personal.apellido_materno) as 'Personal',
       Sustancia_en_Area.nombre_local as 'Sustancia (nombre local)',
       Sustancia.nombre_cientifico as 'Sustancia (nombre científico)',
       '' as 'Planta (nombre local)',
       '' as 'Planta (nombre científico)',
       '' as 'Especie Animal (nombre_local)',
       '' as 'Especie Animal (nombre científico)',
       '' as 'Luna',
       Area.nombre as 'Area',
       Planeta.nombre as 'Planeta',
       '' as 'Sol',
       Sistema_Solar.nombre as 'Sistema Solar',
       Galaxia.nombre as 'Galaxia'
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
SELECT Proyecto.nombre as 'Proyecto',
       CONCAT(Personal.nombre, ' ', Personal.apellido_paterno, ' ', Personal.apellido_materno) as 'Personal',
       Sustancia_en_Luna.nombre_local as 'Sustancia (nombre local)',
       Sustancia.nombre_cientifico as 'Sustancia (nombre científico)',
       '' as 'Planta (nombre local)',
       '' as 'Planta (nombre científico)',
       '' as 'Especie Animal (nombre_local)',
       '' as 'Especie Animal (nombre científico)',
       Luna.nombre as 'Luna',
       '' as 'Area',
       '' as 'Planeta',
       '' as 'Sol',
       Sistema_Solar.nombre as 'Sistema Solar',
       Galaxia.nombre as 'Galaxia'
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
SELECT Proyecto.nombre as 'Proyecto',
       CONCAT(Personal.nombre, ' ', Personal.apellido_paterno, ' ', Personal.apellido_materno) as 'Personal',
       '' as 'Sustancia (nombre local)',
       '' as 'Sustancia (nombre científico)',
       Planta_en_Area.nombre_local as 'Planta (nombre local)',
       Planta.nombre_cientifico as 'Planta (nombre científico)',
       '' as 'Especie Animal (nombre_local)',
       '' as 'Especie Animal (nombre científico)',
       '' as 'Luna',
       Area.nombre as 'Area',
       Planeta.nombre as 'Planeta',
       '' as 'Sol',
       Sistema_Solar.nombre as 'Sistema Solar',
       Galaxia.nombre as 'Galaxia'
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
SELECT Proyecto.nombre as 'Proyecto',
       CONCAT(Personal.nombre, ' ', Personal.apellido_paterno, ' ', Personal.apellido_materno) as 'Personal',
       '' as 'Sustancia (nombre local)',
       '' as 'Sustancia (nombre científico)',
       Planta_en_Luna.nombre_local as 'Planta (nombre local)',
       Planta.nombre_cientifico as 'Planta (nombre científico)',
       '' as 'Especie Animal (nombre_local)',
       '' as 'Especie Animal (nombre científico)',
       Luna.nombre as 'Luna',
       '' as 'Area',
       '' as 'Planeta',
       '' as 'Sol',
       Sistema_Solar.nombre as 'Sistema Solar',
       Galaxia.nombre as 'Galaxia'
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
SELECT Proyecto.nombre as 'Proyecto',
       CONCAT(Personal.nombre, ' ', Personal.apellido_paterno, ' ', Personal.apellido_materno) as 'Personal',
       '' as 'Sustancia (nombre local)',
       '' as 'Sustancia (nombre científico)',
       '' as 'Planta (nombre local)',
       '' as 'Planta (nombre científico)',
       Especie_Animal_en_Area.nombre_local as 'Especie Animal (nombre_local)',
       Especie_Animal.nombre_cientifico as 'Especie Animal (nombre científico)',
       '' as 'Luna',
       Area.nombre as 'Area',
       Planeta.nombre as 'Planeta',
       '' as 'Sol',
       Sistema_Solar.nombre as 'Sistema Solar',
       Galaxia.nombre as 'Galaxia'
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
SELECT Proyecto.nombre as 'Proyecto',
       CONCAT(Personal.nombre, ' ', Personal.apellido_paterno, ' ', Personal.apellido_materno) as 'Personal',
       '' as 'Sustancia (nombre local)',
       '' as 'Sustancia (nombre científico)',
       '' as 'Planta (nombre local)',
       '' as 'Planta (nombre científico)',
       Especie_Animal_en_Luna.nombre_local as 'Especie Animal (nombre_local)',
       Especie_Animal.nombre_cientifico as 'Especie Animal (nombre científico)',
       Luna.nombre as 'Luna',
       '' as 'Area',
       '' as 'Planeta',
       '' as 'Sol',
       Sistema_Solar.nombre as 'Sistema Solar',
       Galaxia.nombre as 'Galaxia'
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

SELECT codigo as 'Código', nombre_cientifico as 'Nombre Científico', 'Planta' as 'Tipo'
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
SELECT codigo as 'Código', nombre_cientifico as 'Nombre Científico', 'Especie Animal' as 'Tipo'
FROM Especie_Animal
WHERE codigo NOT IN (
    SELECT codigo_especie_animal_en_area_presa
    FROM Especie_Animal_en_Area_come_Especie_Animal_en_Area
    UNION
    SELECT codigo_especie_animal_en_luna_presa
    FROM Especie_Animal_en_Luna_come_Especie_Animal_en_Luna
);
