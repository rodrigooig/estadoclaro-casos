# Casos Estado Claro

29 casos de investigación periodística, encontrados, investigados y redactados por
múltiples agentes de inteligencia artificial orquestados sobre
[Estado Claro](https://github.com/rodrigooig/estadoclaro): un sistema que cruza las
declaraciones de patrimonio e intereses de autoridades y funcionarios públicos chilenos
(Ley 20.880) con las órdenes de compra pública de ChileCompra (Mercado Público).

Todo lo publicado aquí sale de datos públicos —InfoProbidad y ChileCompra— y cada
afirmación cita la declaración o la orden de compra concreta de la que sale. Nada aquí es
una acusación ni una conclusión legal: son hechos, con su fecha, puestos uno junto al
otro. Ver [METODOLOGIA.md](METODOLOGIA.md) para cómo se encontraron y verificaron.

## Índice por categoría

### [Autocontratación](casos/autocontratacion/) — 8 casos
Autoridades o funcionarios cuya sociedad declarada le vendió a su propia institución.

### [Negocios con el Estado](casos/negocios_estado/) — 8 casos
Participaciones societarias de autoridades en empresas que facturan al Estado, con foco
en participación controladora y en la que enumera el artículo 4 de la Ley 19.886.

### [Patrimonios con pasivos desproporcionados](casos/patrimonio_pasivos/) — 6 casos
Declaraciones con pasivos muy por sobre los activos, o patrimonio neto muy negativo.

### [Saltos patrimoniales](casos/saltos_patrimoniales/) — 7 casos
Los mayores aumentos de patrimonio entre declaraciones consecutivas de una misma persona,
descartados los que resultaron ser errores de digitación o re-declaraciones del mismo bien.

## Cómo se hizo

Cinco agentes minaron el artefacto de datos por ángulos distintos; cada candidato pasó
por un agente que profundizó, contrastó con una pregunta real al agente de producción de
Estado Claro, y decidió si el caso se sostenía; y un agente de verificación por categoría,
que no escribió los casos, volvió a correr las consultas por su cuenta antes de aprobar
cada uno. De 53 candidatos únicos, se investigaron a fondo 32; 3 se descartaron por no
sostenerse en los datos (un salto que resultó ser la misma propiedad redeclarada sin
adquisición nueva, y dos pasivos hipotecarios con un patrón de autocorrección año a año
sin ningún evento que lo explique — exactamente el tipo de artefacto que este proceso
existe para filtrar); los 29 restantes pasaron la verificación. El detalle completo está
en [METODOLOGIA.md](METODOLOGIA.md).

## Qué NO es esto

- No es una lista de personas corruptas. Es una lista de hechos públicos —una declaración,
  una compra— que antes vivían en dos sistemas sin cruzar y ahora están uno junto al otro.
- No está auditado por ningún organismo: todo el dato de origen es autodeclarado por el
  propio titular bajo su responsabilidad.
- No cubre todo: las órdenes de compra parten en 2020, y el cruce solo alcanza a
  sociedades, nunca a una venta hecha por una persona natural.

## Licencia de los datos de origen

CC BY 4.0 — Consejo para la Transparencia y Contraloría General de la República
(`infoprobidad.cl`). Órdenes de compra: ChileCompra / Mercado Público, dato abierto.
