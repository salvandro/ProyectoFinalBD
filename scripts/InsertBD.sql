INSERT INTO Federacion
(
   nombre,
   lider
)
values
(
   'Federacion de Comercio',
   'Cenador Organa'
),
(
   'Federacion de Galaxias Libres',
   'Princess Amidala'
),
(
   'Federacion Independiente',
   'Anakin Skywalker'
),
(
   'Federacion Droide',
   'Lord Palpatin'
),
(
   'Federacion Republicana',
   'Lord Cantoyan'
);

INSERT INTO Galaxia
(
   nombre
)
values
(
   'Via Lactea'
),
(
   'Andromeda'
),
(
   'Sentauri'
),
(
   'Tunsken'
),
(
   'Dontorplas'
);

INSERT INTO Sistema_Solar
(
   nombre,
   codigo_galaxia
)
values
(
   'Dorante',
   2
),
(
   'Swatch',
   5
),
(
   'Casio',
   1
),
(
   'Contotor',
   2
),
(
   'Trinquest',
   3
),
(
   'Huann',
   5
),
(
   'Lenvv',
   4
),
(
   'Turky',
   1
),
(
   'Sants',
   5
),
(
   'Pyre',
   3
);

INSERT INTO Tipo_Sol
(
   nombre
)
values
(
   'Noba'
),
(
   'SuperNoba'
),
(
   'MagmaNoba'
),
(
   'PseudoNoba'
),
(
   'LessSun'
),
(
   'NonGas'
),
(
   'Darkhole'
);

INSERT INTO Sol
(
   nombre,
   tiempo_vida,
   tempo_restante_vida,
   codigo_tipo_sol,
   codigo_sistema_solar
)
values
(
   'Alfa',
   '0000/01/01',
   '8000/12/31',
   7,
   10
),
(
   'Beta',
   '0000/01/01',
   '9000/04/12',
   3,
   2
),
(
   'Gama',
   '0000/01/01',
   '3500/03/20',
   4,
   1
),
(
   'Epsilon',
   '0000/01/01',
   '9900/01/05',
   6,
   6
),
(
   'Sigma',
   '0000/01/01',
   '3400/07/10',
   2,
   8
),
(
   'Roo',
   '0000/01/01',
   '7580/09/04',
   3,
   5
),
(
   'Delta',
   '0000/01/01',
   '7493/11/30',
   2,
   9
),
(
   'Yota',
   '0000/01/01',
   '4355/12/05',
   5,
   8
),
(
   'Pico',
   '0000/01/01',
   '9485/06/13',
   7,
   3
);

