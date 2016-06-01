# Diagrama Entidad-Relacion

## Entidades

1. Federacion
   * codigo
   * nombre
   * lider
2. Galaxia
   * codigo
   * nombre
3. Sistema_Solar
   * codigo
   * nombre
4. Tipo_Sol
   * codigo
   * nombre
5. Sol
   * codigo
   * nombre
   * tiempo_vida
   * tiempo_vida_restante
6. Planeta
   * codigo
   * nombre
   * distancia_sol
7. Area
   * codigo
   * nombre
8. Luna
   * codigo
   * nombre
9. Sustancia
   * codigo
   * nombre_cientifico
10. Estado_Sustancia
   * codigo
   * nombre
11. Planta
   * codigo
   * nombre_cientifico
12. Especie_Animal
   * codigo
   * nombre_cientifico
   * numero_extremidades
   * numero_ojos
13. Parte_Cuerpo
   * codigo
   * nombre
14. Lenguaje
   * codigo
   * nombre
15. Lenguaje_Gestos
16. Lenguaje_Sonidos
17. Lenguaje_Escrito
18. Lenguaje_Escrito_Fonetico
19. Lenguaje_Escrito_Pictografico
20. Simbolo
   * nombre
   * significado
   * figura
21. Personal
   * codigo
   * nombre
   * apellido_paterno
   * apellido_materno
22. Personal_Investigador
23. Personal_Investigador_Zoologo
24. Personal_Investigador_Botanico
25. Personal_Investigador_Geologo
26. Personal_Mantenimiento
27. Personal_Militar
28. Proyecto
   * codigo
   * nombre
   * proposito
   * fecha_inicio
   * fecha_final
29. Tipo_Proyecto
   * codigo
   * nombre

## Entidades Asociativas

1. Sustancia_en_Sol
   * explotable
   * cantidad
   * nombre_local
   * es_principal
2. Sustancia_en_Luna
   * explotable
   * cantidad
   * nombre_local
   * es_principal
3. Sustancia_en_Area
   * explotable
   * cantidad
   * nombre_local
   * es_principal
4. Planta_en_Luna
   * nombre_local
5. Planta_en_Area
   * nombre_local
6. Parte_Cuerpo_de_Especie_Animal
7. Especie_Animal_en_Luna
   * nombre_local
   * numero_ejemplares
8. Especie_Animal_en_Area
   * nombre_local
   * numero_ejemplares

## Relaciones

1. [Especie_Animal_en_Area]--&lt;habla&gt;--[Lenguaje]
   * video
   * descripcion
   * es_principal
2. [Especie_Animal_en_Luna]--&lt;habla&gt;--[Lenguaje]
   * video
   * descripcion
   * es_principal

<pre>
1.  [           Galaxia            ]0|---------------&lt;      tiene      &gt;---------------&lt;0[        Sistema_Solar         ]
2.  [        Sistema_Solar         ]0|---------------&lt;      tiene      &gt;---------------&lt;0[           Planeta            ]
3.  [          Federacion          ]0|---------------&lt;      tiene      &gt;---------------&lt;0[           Planeta            ]
4.  [             Sol              ]0&gt;---------------&lt;       es        &gt;---------------|0[           Tipo_Sol           ]
5.  [           Planeta            ]0&gt;---------------&lt;      tiene      &gt;---------------|0[             Sol              ]
6.  [           Planeta            ]0|---------------&lt;      tiene      &gt;---------------&lt;0[             Luna             ]
7.  [           Planeta            ]0|---------------&lt;      tiene      &gt;---------------&lt;0[             Area             ]
8.  [           Lenguaje           ]0&gt;---------------&lt;   es variante   &gt;---------------|0[           Lenguaje           ]
9.  [           Lenguaje           ]0|---------------&lt;es especificacion&gt;---------------&lt;0[           Lenguaje           ]
10. [           Proyecto           ]0&gt;---------------&lt; es subproyecto  &gt;---------------|0[           Proyecto           ]
11. [       Sustancia_en_Sol       ]0&gt;---------------&lt;     esta en     &gt;---------------&lt;0[             Sol              ]
12. [       Sustancia_en_Sol       ]0&gt;---------------&lt;       es        &gt;---------------0|[          Sustancia           ]
13. [       Sustancia_en_Sol       ]0&gt;---------------&lt; se encuentra en &gt;---------------&lt;0[       Estado_Sustancia       ]
14. [      Sustancia_en_Luna       ]0&gt;---------------&lt;     esta en     &gt;---------------&lt;0[             Luna             ]
15. [      Sustancia_en_Luna       ]0&gt;---------------&lt;       es        &gt;---------------|0[          Sustancia           ]
16. [      Sustancia_en_Luna       ]0&gt;---------------&lt; se encuentra en &gt;---------------&lt;0[       Estado_Sustancia       ]
17. [      Sustancia_en_Area       ]0&gt;---------------&lt;     esta en     &gt;---------------&lt;0[             Area             ]
18. [      Sustancia_en_Area       ]0&gt;---------------&lt;       es        &gt;---------------|0[          Sustancia           ]
19. [      Sustancia_en_Area       ]0&gt;---------------&lt; se encuentra en &gt;---------------&lt;0[       Estado_Sustancia       ]
20. [        Planta_en_Luna        ]0&gt;---------------&lt;     esta en     &gt;---------------&lt;0[             Luna             ]
21. [        Planta_en_Luna        ]0&gt;---------------&lt;       es        &gt;---------------|0[            Planta            ]
22. [        Planta_en_Luna        ]0&gt;---------------&lt;      habla      &gt;---------------&lt;0[           Lenguaje           ]
23. [        Planta_en_Area        ]0&gt;---------------&lt;     esta en     &gt;---------------&lt;0[             Area             ]
24. [        Planta_en_Area        ]0&gt;---------------&lt;       es        &gt;---------------|0[            Planta            ]
25. [        Planta_en_Area        ]0&gt;---------------&lt;      habla      &gt;---------------&lt;0[           Lenguaje           ]
26. [Parte_Cuerpo_de_Especie_Animal]0&gt;---------------&lt;      es de      &gt;---------------|0[        Especie_Animal        ]
27. [Parte_Cuerpo_de_Especie_Animal]0&gt;---------------&lt;       es        &gt;---------------|0[         Parte_Cuerpo         ]
28. [    Especie_Animal_en_Luna    ]0&gt;---------------&lt;     esta en     &gt;---------------|0[             Luna             ]
29. [    Especie_Animal_en_Luna    ]0&gt;---------------&lt;       es        &gt;---------------|0[        Especie_Animal        ]
30. [    Especie_Animal_en_Luna    ]0&gt;---------------&lt;      habla      &gt;---------------&lt;0[           Lenguaje           ]
31. [    Especie_Animal_en_Luna    ]0&gt;---------------&lt;       usa       &gt;---------------&lt;0[Parte_Cuerpo_de_Especie_Animal]
32. [    Especie_Animal_en_Area    ]0&gt;---------------&lt;       es        &gt;---------------|0[        Especie_Animal        ]
33. [    Especie_Animal_en_Area    ]0&gt;---------------&lt;     esta en     &gt;---------------|0[             Area             ]
34. [    Especie_Animal_en_Area    ]0&gt;---------------&lt;      habla      &gt;---------------&lt;0[           Lenguaje           ]
35. [    Especie_Animal_en_Area    ]0&gt;---------------&lt;       usa       &gt;---------------&lt;0[Parte_Cuerpo_de_Especie_Animal]
</pre>
