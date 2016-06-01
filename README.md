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
20. Personal
   * codigo
   * nombre
   * apellido_paterno
   * apellido_materno
21. Personal_Investigador
22. Personal_Investigador_Zoologo
23. Personal_Investigador_Botanico
24. Personal_Investigador_Geologo
25. Personal_Mantenimiento
26. Personal_Militar
27. Proyecto
   * codigo
   * nombre
   * proposito
   * fecha_inicio
   * fecha_final
28. Tipo_Proyecto
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
4. Luna_Estudiada
5. Planeta_Estudiado
6. Area_Estudiada
7. Especie_Animal_en_Area_Estudiada
   * nombre_local
8. Planta_en_Area_Estudiada
   * nombre_local
9. Equipo_Multidisciplinario
   * codigo

## Relaciones

<pre>
1.  [     Galaxia     ]0|---------------&lt;      tiene      &gt;---------------&lt;0[ Sistema_Solar  ]
2.  [  Sistema_Solar  ]0|---------------&lt;      tiene      &gt;---------------&lt;0[    Planeta     ]
3.  [   Federacion    ]0|---------------&lt;      tiene      &gt;---------------&lt;0[    Planeta     ]
4.  [       Sol       ]0&gt;---------------&lt;       es        &gt;---------------|0[    Tipo_Sol    ]
5.  [     Planeta     ]0&gt;---------------&lt;      tiene      &gt;---------------|0[      Sol       ]
6.  [     Planeta     ]0|---------------&lt;      tiene      &gt;---------------&lt;0[      Luna      ]
7.  [     Planeta     ]0|---------------&lt;      tiene      &gt;---------------&lt;0[      Area      ]
8.  [    Lenguaje     ]0&gt;---------------&lt;   es variante   &gt;---------------|0[    Lenguaje    ]
9.  [    Lenguaje     ]0|---------------&lt;es especificacion&gt;---------------&lt;0[    Lenguaje    ]
10. [    Proyecto     ]0&gt;---------------&lt; es subproyecto  &gt;---------------|0[    Proyecto    ]
11. [Sustancia_en_Sol ]0&gt;---------------&lt;     esta en     &gt;---------------&lt;0[      Sol       ]
12. [Sustancia_en_Sol ]0&gt;---------------&lt;       es        &gt;---------------&lt;0[   Sustancia    ]
13. [Sustancia_en_Sol ]0&gt;---------------&lt; se encuentra en &gt;---------------&lt;0[Estado_Sustancia]
14. [Sustancia_en_Luna]0&gt;---------------&lt;     esta en     &gt;---------------&lt;0[      Luna      ]
15. [Sustancia_en_Luna]0&gt;---------------&lt;       es        &gt;---------------&lt;0[   Sustancia    ]
16. [Sustancia_en_Luna]0&gt;---------------&lt; se encuentra en &gt;---------------&lt;0[Estado_Sustancia]
17. [Sustancia_en_Area]0&gt;---------------&lt;     esta en     &gt;---------------&lt;0[      Area      ]
18. [Sustancia_en_Area]0&gt;---------------&lt;       es        &gt;---------------&lt;0[   Sustancia    ]
19. [Sustancia_en_Area]0&gt;---------------&lt; se encuentra en &gt;---------------&lt;0[Estado_Sustancia]
</pre>
