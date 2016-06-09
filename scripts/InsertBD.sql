INSERT INTO Federacion (   nombre,   lider)
values
(   'Federacion de Comercio',
   'Cenador Organa'),
(   'Federacion de Galaxias Libres',
   'Princess Amidala'),
(   'Federacion Independiente',
   'Anakin Skywalker'),
(   'Federacion Droide',
   'Lord Palpatin'),
(   'Federacion Republicana',
   'Lord Cantoyan');
INSERT INTO Galaxia(   nombre)
values
(   'Via Lactea'),
(   'Andromeda'),
(   'Sentauri'),
(   'Tunsken'),
(   'Dontorplas');
INSERT INTO Sistema_Solar (  nombre,   codigo_galaxia)
values
(   'Dorante',   2),
(   'Swatch',   5),
(   'Casio',   1),
(   'Contotor',   2),
(   'Trinquest',   3),
(   'Huann',   5),
(   'Lenvv',   4),
(   'Turky',   1),
(   'Sants',  5),
(   'Pyre',   3);
INSERT INTO Tipo_Sol (   nombre)
values
(   'Noba'),
(   'SuperNoba'),
(   'MagmaNoba'),
(   'PseudoNoba'),
(   'LessSun'),
(   'NonGas'),
(   'Darkhole');
INSERT INTO Sol (   nombre,   tiempo_vida,   tempo_restante_vida,   codigo_tipo_sol,   codigo_sistema_solar)
values
(   'Alfa',   '0000/01/01',   '8000/12/31',   7,   10),
(   'Beta',   '0000/01/01',   '9000/04/12',   3,   2),
(   'Gama',   '0000/01/01',   '3500/03/20',   4,   1),
(   'Epsilon',   '0000/01/01',   '9900/01/05',   6,   6),
(   'Sigma',   '0000/01/01',   '3400/07/10',   2,   8),
(   'Roo',   '0000/01/01',   '7580/09/04',   3,  5),
(   'Delta',   '0000/01/01',   '7493/11/30',   2,   9),
(   'Yota',   '0000/01/01',   '4355/12/05',   5,   8),
(   'Pico',   '0000/01/01',   '9485/06/13',   7,   3);
INSERT INTO Planeta (  nombre,   distancia_sol,   codigo_sol,   codigo_federacion)
values
(   'Tierra',   1235000.232,   9,   5),
(   'Marte',   9477384.2344,   2,   2),
(   'Jupiter',   1002983866.190002,   6,   1),
(   'Aargonar',   1027738479885.32224,   7,   3),
(   'Axion',   133398274.0008374,   5,   4),
(   'Cadinth',   29937654.00276,   8,   4),
(   'Bespin',   299387.00498,   9,   2),
(   'Enarc',   29937400.08364,   4,   4),
(   'Felucia',   388476201.00384,   5,   1),
(   'Muunilinst',   399276544.0044938,   7,   4);
INSERT INTO Area (   nombre,   codigo_planeta)
value
(   'Tundra',   10),
(   'Sabana',   4),
(   'Magmatico',   5),
(   'Subacuatico',   7),
(   'Desertico',  1),
(   'Arido',   9),
(   'Rocoso',   8),
(   'Pantanoso',   3),
(   'Arenoso',   5),
(   'Toxico',   6),
(   'Radiactivo',   1),
(   'Boscoso',   3),
(   'Urbanizado',   4),
(   'Rural',   9),
(   'Liliputense',   10),
(   'Megavivos',   2);
INSERT INTO Luna (   nombre,   codigo_planeta)
values
(   'Zaadja',   10),
(   'Virujansi',   3),
(   'Troxar',   5),
(   'Raxus Prime',   9),
(   'Tarhassan',   3),
(   'Nivek',   6),
(   'Lethe',   2),
(   'Pammant',   10),
(   'Hypori',   1);
INSERT INTO Sustancia (   nombre_cientifico)
values
(   'Acetona'),
(   'Acido Acetico'),
(   'Acido Acetilsalcilico'),
(   'Acido Sulfurico'),
(   'Cloruro de Sodio'),
(   'Sacarosa'),
(   'Octano'),
(   'Etanol'),
(   'Ahnidrido Silicico'),
(   'Acido Nitrico'),
(   'Oxido Nitroso');
INSERT INTO Estado_Sustancia(   nombre)
values
(   'Solido'),
(   'Liquido'),
(   'Gaseoso'),
(   'Plasma'),
(   'Bose-Einstein');
INSERT INTO Planta(   nombre)
values
(   'Orquidea'),
(   'Margarita'),
(   'Groot'),
(   'Violeta'),
(   'Arbusto'),
(   'Rosa'),
(   'Limon'),
(   'Campana'),
(   'Flor Carnivora'),
(   'Abies alba Mill'),
(   'Acanthus spp'),
(   'Acer palmatum'),
(   'Agave Americana'),
(   'Allium Cepa'),
(   'Aloe saponaria'),
(   'Arcotis x hybrida'),
(   'Bellis perennis'),
(   'Calathea spp'),
(   'Canna indica'),
(   'Cyclamen persicum'),
(   'Cydonia oblonga');
INSERT INTO Especie_Animal(   nombre_cientifico,   numero_extremidades,   numero_ojos)
values
(   'Canis',   4,   2),
(   'Felis',   4,   2),
(   'Oryctolagus',   8,   3),
(   'Cricetus',   6,   1),
(   'Iguana',   4,   4),
(   'Bostaurus',   8,   1),
(   'Equusferus',   10,   6),
(   'Susscrofa',   6,   4),
(   'Ovisorientalis',   8,   4),
(   'Capraaegagrus',   2,   3),
(   'Panthera',   4,   2),
(   'Loxodonta',   6,   1);
INSERT INTO Parte_Cuerpo(   nombre)
values
(   'Mano'),
(   'Pierna'),
(   'Tentaculo'),
(   'Trompa'),
(   'Pata'),
(   'Colmillo'),
(   'Cola'),
(   'Dedo'),
(   'Cuello');
INSERT INTO Lenguaje
(nombre, codigo_lenguaje_variante, codigo_lenguaje_especificado)
values
(   'Espanol Mexicano',6,4),
(   'Ingles Britanico',3,NULL),
(   'Ingles EEUU',5,2),
(   'Espanol Espana',1,NULL),
(   'Ingles Niga',NULL,3),
(   'Espanol Argentino',NULL,1),
(   'Chino Mandarin',8,NULL),
(   'Chino Cantones',NULL,7),
(   'Ruso Oriental',10,NULL),
(   'Ruso Central',NULL,9);
INSERT INTO Lenguaje_Gestos(   codigo_lenguaje)
values
(   10),
(   4),
(   3),
(   2),
(   6);
INSERT INTO Lenguaje_Sonidos(   codigo_lenguaje)
values
(   1),
(   8),
(   3),
(   5),
(   7);
INSERT INTO Lenguaje_Escrito(   codigo_lenguaje)
values
(   3),
(   5),
(   8),
(   10);
INSERT INTO Lenguaje_Escrito_Pictografico(   codigo_lenguaje_escrito)
values
(   5),
(   10);
INSERT INTO Simbolo(   significado,   figura)
values
(   'Peligro',   NULL),
(   'Ayuda',   NULL),
(   'Comida',   NULL),
(   'Agua',   NULL),
(   'Comunicacion Remota',   NULL),
(   'Toxico',   NULL),
(   'Caceria',   NULL);
INSERT INTO Personal(   nombre,   apellido_paterno,   apellido_materno)
values
(   'Carlos',   'Contreras',   'Torres'),
(   'Oscar',   'Tostado',   'de la Torre'),
(   'Maribel',   'Martinez',   'Correa'),
(   'Andrea',   'Esquivel',   'Nunez'),
(   'Andrea',   'Gonzales',   'Briseno'),
(   'Eduardo',  'Moreno',   'Garcia'),
(   'Sebastian',   'Ocana',   'Mondragon'),
(   'Miguel',   'Maldonado',   'Duarte'),
(   'Pedro',   'Perez',   'Talabera'),
(   'Salvador',   'Perez Castro',   'Guillen');
INSERT INTO Personal_Investigador(   codigo_personal)
values
(   10),
(   3),
(   8),
(   7),
(   9),
(   1);
INSERT INTO Personal_Investigador_Zoologo(   codigo_personal_investigador)
values
(   8),
(   9),
INSERT INTO Botanico(   codigo_personal_investigador)
values
(   10),
(   1);
INSERT INTO Geologo(   codigo_personal_investigador)
values
(   3),
(   7);
INSERT INTO Personal_Mantenimiento
(codigo_personal)
values
(   10),
(   9),
(   8),
(   7);
INSERT INTO Militar(   codigo_personal)
values
(   2),
(   4),
(   5),
(   6);
INSERT INTO Equipo_Multidisciplinario
(nombre)
values
('Emergencia'),
('Botanico'),
('Novatos');
INSERT INTO Proyecto
(nombre,proposito,fecha_inicio,fecha_fin,codigo_proyecto_padre,codigo_proyecto_continuado)
values
(   'Recoleccion Tierra',   'Recolectar Gasolina',   '2016/03/15',   '2016/05/20',NULL,NULL),
(   'Investigar Criatura',   'Criatura Mitica Encontrada',   '2020/01/01',   '2020/10/30',NULL,4),
(   'Residuos Planta',   'Planta Toxica Cuidado',   '2016/04/10',   '2016/04/30',4,NULL),
(   'Investigar Planta',   'Planta Parlante Agrsiva',   '2016/05/30',   '2016/06/8',2,3);
INSERT INTO Proyecto_Flora
(codigo_proyecto)
values
(3);
INSERT INTO Proyecto_Fauna
(codigo_proyecto)
values
(4);
INSERT INTO Proyecto_Sustancias
(codigo_proyecto)
values
(1);
#INSERT INTO Tipo_Ptoyecto(nombre)
#value
#(   'Flora'),
#(   'Fauna'),
#(   'Sustancias');
INSERT INTO Sustancia_en_Sol(   explotable,   cantidad,   nombre_local,   es_principal,   codigo_sol,   codigo_sutancia)
values
(   true,   250000,   'Oxido Deportivo',   false,   9,   11),
(   true,   300534.231,   'Gasolina',   true,   4,   7),
(   false,   300000.123,   'Aspirina',   false,   2,   3);
INSERT INTO Sustancia_en_Sol_se_encuentra_Estado_Sustancia(   codigo_sustancia_en_sol,   codigo_estado_sustancia)
values
(   2,   3),
(   3,   3),
(   1,   3);
INSERT INTO Sustancia_en_Area(   explotable,   cantidad,   nombre_local,   es_principal,   codigo_area,   codigo_sustancia)
values
(   true,   200000000000.321,   'Pomo',   true,   16,   8),
(   true,   1000000.456,   'Aspirina',   5,   3),
(   false,   30000,   'Sacarosa',   3,   6);
INSERT INTO Sustancia_en_Area_se_encuentra_Estado_sustancia(   codigo_sustancia_en_area,   codigo_estado_suatncia)
values
(   2,   1),
(   1,   2),
(   3,   5);
INSERT INTO Sustancia_en_Luna(   explotable,   cantidad,   nombre_local,   es_principal,   codigo_luna,   codigo_sustancia)
values
(   false,   23000.564,   'Agua Fuerte',   false,   9,   10),
(   true,   20000000.987,   'Gasolina',   true,   4,   7),
(   true,   300000000,   'Gasofa',   true,   6,   7);
INSERT INTO Sustancia_en_Luna_se_encuentra_Estado_Sustancia(   codigo_sustancia_en_luna,   codigo_estado_sustancia)
values
(   1,   3),
(   2,   2),
(   3,   2);
INSERT INTO Planta_en_Area(   codigo_area,   codigo_planta)
values
(   16,   21),
(   12,   20),
(   16,   2),
(   10,   10),
(   3,   1),
(   5,   1),
(   7,   16),
(   4,   20),
(   8,   11);
INSERT INTO Planta_en_Area_come_Sustancia_en_Area(   codigo_planta_en_area,   codigo_sustancia_en_area)
values
(   9,   2),
(   9,   1),
(   2,   2),
(   2,   3),
(   3,   3);
INSERT INTO Planta_en_Area_come_Planta_en_Area(   codigo_planta_en_area_depredador,   codigo_planta_en_area_presa)
values
(   9,   2),
(   3,   2),
(   7,   8),
(   6,   3);
INSERT INTO Especie_Animal_en_Area(nombre_local,codigo_especie_animal,codigo_area)
values
('Perro',30000,1,8),
('Gato',289136,2,16),
('Elefante',100923,12,15),
('Cabra',2993700,14,9),
('Jabali',123456,8,6),
('Camaleon',20000,5,11),
('Lobo',75000,1,14),
('Conejo',5000,3,4),
('Vaca',183210,7,3),
('Hamster',980000,4,7);
INSERT INTO Especie_Animal_en_Area_come_Planta_en_Area (codigo_especie_animal_en_area, codigo_planta_en_area)
values
(10,21),
(6,12),
(9,20),
(3,10),
(6,3),
(10,20),
(3,12);
INSERT INTO Especie_Animal_en_Area_come_Especie_Animal_en_Area(codigo_especie_animal_en_area_depredador,codigo_especie_animal_en_area_presa)
values
(7,8),
(9,10),
(1,4),
(1,2),
(4,7),
(5,6);
INSERT INTO Especie_Animal_en_Area_habla_Lenguaje(es_principal,codigo_especie_animal_en_area,codigo_lenguaje)
values
(true,6,10),
(false,7,2),
(true,2,3),
(true,3,9),
(flase,2,10),
(tru,4,6),
(false,6,8),
(tru,8,3),
(false,4,5);
INSERT INTO Planta_en_Luna(codigo_luna,codigo_planta)
values
(9,21),
(2,3),
(4,10),
(7,13),
(9,20),
(6,18),
(1,15),
(8,12),
(4,10),
(4,17);
INSERT INTO Planta_en_Luna_come_Sustancia_en_Luna(codigo_planta_en_Luna,codigo_sustancia_en_luna)
values
(10,3),
(10,2),
(10,1),
(6,1),
(5,1),
(3,2),
(3,1),
(6,3),
(7,3),
(8,1);
INSERT INTO Planta_en_Luna_come_Planta_en_luna(codigo_planta_en_luna_depredador,codigo_planta_en_luna_presa)
values
(10,3),
(3,2),
(1,4),
(9,2),
(2,8);
INSERT INTO Planta_en_Luna_habla_Lenguaje(es_principal,codigo_planta_en_luna,codigo_lenguaje)
values
(true,10,10),
(false,10,3),
(true,2,8),
(true,7,2),
(false,8,4),
(true,8,3),
(true,5,7),
(true,2,9);
INSERT INTO Especie_Animal_en_Luna
(nombre_local,numero_ejemplares,codigo_especie_animal,codigo_luna)
values
('Canino',20000,1,8),
('Tigre',93774,2,7),
('Mamut',100048,12,2),
('Borrego',3345323,14,9),
('Cerdo',9347755,8,6),
('Diablo Espinudo',400530,5,2),
('Perrazo',89550,1,6),
('Conejillo',40005,3,4),
('Toro',90000,7,3),
('Cuyo',9800,4,7);
INSERT INTO Especie_Animal_en_Luna_come_Planta_en_Luna
(codigo_especie_animal_en_luna,codigo_planta_en_luna)
values
(10,10),
(6,10),
(9,8),
(3,3),
(6,2),
(10,6),
(3,4);
INSERT INTO Especie_Animal_en_Luna_come_Especie_Animal_en_Luna
(codigo_especie_animal_en_luna_depredador,codigo_especie_animal_en_luna_presa)
values
(7,8),
(9,10),
(1,4),
(1,2),
(4,7),
(5,6);
INSERT INTO Especie_Animal_en_Luna_habla_Lenguaje
(es_principal,codigo_especie_animal_en_luna,codigo_lenguaje)
values
(true,6,10),
(false,7,2),
(true,2,3),
(true,3,9),
(flase,2,10),
(tru,4,6),
(false,6,8),
(tru,8,3),
(false,4,5);
INSERT INTO Personal_participa_Equipo_Multidisciplinario
(codigo_personal,codigo_equipo_disciplinario,codigo_presonal_superior)
values
(10,1,7),
(9,1,7),
(8,1,7),
(7,1,NULL),
(1,2,4),
(4,1,10),
(2,2,4),
(3,2,4),
(4,2,NULL),
(10,3,NULL),
(3,3,10),
(6,3,10),
(5,3,10);
INSERT INTO 
