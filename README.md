# Diagrama Entidad-Relacion

## Entidades

1. Federacion<br />
   * codigo
   * nombre
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
20. Persona
21. Persona_Investigador
22. Persona_Investigador_Zoologo
23. Persona_Investigador_Botanico
24. Persona_Investigador_Geologo
25. Persona_Mantenimiento
26. Persona_Militar
27. Proyecto
28. Tipo_Proyecto

## Relaciones

<pre>1. [   Sol    ]0&gt;---------------&lt; es  &gt;---------------|0[Tipo_Sol]
2. [ Planeta  ]0&gt;---------------&lt;tiene&gt;---------------|0[Sol]
3. [ Planeta  ]||---------------&lt;tiene&gt;---------------&lt;0[Area]
4. [ Planeta  ]||---------------&lt;tiene&gt;---------------&lt;0[Luna]
5. [Federacion]0|---------------&lttiene&gt;---------------&lt;0[Planeta]
6. [ Galaxia  ]0&gt;---------------&lt;tiene&gt;---------------&lt;0[Planeta]</pre>
