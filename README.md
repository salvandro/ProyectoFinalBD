# Diagrama Entidad-Relacion

## Entidades

1. Federacion<br />
   * codigo
   * nombre
   * lider
2. Galaxia<br />
   * codigo
   * nombre
3. Sistema_Solar<br />
   * codigo
   * nombre
4. Tipo_Sol<br />
   * codigo
   * nombre
5. Sol<br />
   * codigo
   * nombre
   * tiempo_vida
   * tiempo_vida_restante
6. Planeta<br />
   * codigo
   * nombre
   * distancia_sol
7. Area<br />
   * codigo
   * nombre
8. Luna<br />
   * codigo
   * nombre
9. Sustancia<br />
   * codigo
   * nombre_cientifico
10. Estado_Sustancia<br />
   * codigo
   * nombre
11. Planta<br />
   * codigo
   * nombre_cientifico
12. Especie_Animal<br />
   * codigo
   * nombre_cientifico
   * numero_extremidades
   * numero_ojos
13. Parte_Cuerpo<br />
   * codigo
   * nombre
14. Lenguaje<br />
   * codigo
   * nombre
15. Lenguaje_Gestos
16. Lenguaje_Sonidos
17. Lenguaje_Escrito
18. Lenguaje_Escrito_Fonetico
19. Lenguaje_Escrito_Pictografico
20. Personal<br />
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

1. Planeta_Estudiado
2. Luna_Estudiada
3. Area_Estudiada
4. Especie_Animal_en_Area
   * nombre_local
5. Planta_Estudiada
   * nombre_local
6. Sustancia_en_Area
   * explotable

## Relaciones

<pre>
1. [   Galaxia   ]0|---------------&lt;      tiene      &gt;---------------&lt;0[Sistema_Solar]
2. [Sistema_solar]0|---------------&lt;      tiene      &gt;---------------&lt;0[   Planeta   ]
3. [     Sol     ]0&gt;---------------&lt;       es        &gt;---------------|0[  Tipo_Sol   ]
2. [   Planeta   ]0&gt;---------------&lt;      tiene      &gt;---------------|0[     Sol     ]
3. [   Planeta   ]0|---------------&lt;      tiene      &gt;---------------&lt;0[    Area     ]
4. [   Planeta   ]0|---------------&lt;      tiene      &gt;---------------&lt;0[    Luna     ]
5. [ Federacion  ]0|---------------&lt;      tiene      &gt;---------------&lt;0[   Planeta   ]
6. [  Lenguaje   ]0&gt;---------------&lt;   es variante   &gt;---------------|0[  Lenguaje   ]
7. [  Lenguaje   ]0|---------------&lt;es especificacion&gt;---------------&lt;0[  Lenguaje   ]
8. [  Proyecto   ]0&gt;---------------&lt; es subproyecto  &gt;---------------0|[  Proyecto   ]
</pre>
