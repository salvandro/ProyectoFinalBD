# Entidades

1. Tipo_Sol ![check icon](http://files.softicons.com/download/internet-icons/checkout-process-icons-by-jakub-stacho/png/16/tick.png)<br />
   * codigo ![check icon](http://files.softicons.com/download/internet-icons/checkout-process-icons-by-jakub-stacho/png/16/tick.png)
   * nombre ![check icon](http://files.softicons.com/download/internet-icons/checkout-process-icons-by-jakub-stacho/png/16/tick.png)
2. Sol ![check icon](http://files.softicons.com/download/internet-icons/checkout-process-icons-by-jakub-stacho/png/16/tick.png)<br />
   * codigo ![check icon](http://files.softicons.com/download/internet-icons/checkout-process-icons-by-jakub-stacho/png/16/tick.png)
   * nombre ![check icon](http://files.softicons.com/download/internet-icons/checkout-process-icons-by-jakub-stacho/png/16/tick.png)
   * tiempo_vida ![check icon](http://files.softicons.com/download/internet-icons/checkout-process-icons-by-jakub-stacho/png/16/tick.png)
   * tiempo_vida_restante ![check icon](http://files.softicons.com/download/internet-icons/checkout-process-icons-by-jakub-stacho/png/16/tick.png)
   * codigo_tipo_sol ![check icon](http://files.softicons.com/download/internet-icons/checkout-process-icons-by-jakub-stacho/png/16/tick.png)
3. Planeta ![check icon](http://files.softicons.com/download/internet-icons/checkout-process-icons-by-jakub-stacho/png/16/tick.png)<br />
   * codigo ![check icon](http://files.softicons.com/download/internet-icons/checkout-process-icons-by-jakub-stacho/png/16/tick.png)
   * nombre ![check icon](http://files.softicons.com/download/internet-icons/checkout-process-icons-by-jakub-stacho/png/16/tick.png)
   * distancia_sol ![check icon](http://files.softicons.com/download/internet-icons/checkout-process-icons-by-jakub-stacho/png/16/tick.png)
   * codigo_sol ![check icon](http://files.softicons.com/download/internet-icons/checkout-process-icons-by-jakub-stacho/png/16/tick.png)
4. Area
5. Luna
6. Federacion
7. Sistema_Solar
8. Galaxia
9. Sustancia
10. Estado_Sustancia
11. Planta
12. Especie_Animal
13. Parte_Cuerpo
14. Lenguaje
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

# Relaciones

<pre>1. [   Sol    ]0&gt;---------------&lt; es  &gt;---------------|0[Tipo_Sol]
2. [ Planeta  ]0&gt;---------------&lt;tiene&gt;---------------|0[Sol]
3. [ Planeta  ]||---------------&lt;tiene&gt;---------------&lt;0[Area]
4. [ Planeta  ]||---------------&lt;tiene&gt;---------------&lt;0[Luna]
5. [Federacion]0|---------------&lttiene&gt;---------------&lt;0[Planeta]
6. [ Galaxia  ]0&gt;---------------&lt;tiene&gt;---------------&lt;0[Planeta]</pre>
