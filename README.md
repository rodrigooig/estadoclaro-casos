# Casos Estado Claro

59 casos de investigación periodística, encontrados, investigados, contrastados con
explicaciones legítimas alternativas y redactados por múltiples agentes de inteligencia
artificial orquestados sobre [Estado Claro](https://estadoclaro.cl): un
sistema que cruza las declaraciones de patrimonio e intereses de autoridades y funcionarios
públicos chilenos (Ley 20.880) con las órdenes de compra pública de ChileCompra (Mercado
Público).

Todo lo publicado aquí sale de datos públicos —InfoProbidad y ChileCompra— y cada
afirmación cita la declaración, la orden de compra o la fuente pública concreta de la que
sale. Nada aquí es una acusación ni una conclusión legal: son hechos, con su fecha, y —para
cada uno— la explicación legítima más plausible que se pudo encontrar y contrastar contra
evidencia pública real. Ver [METODOLOGIA.md](METODOLOGIA.md) para cómo se encontraron y
verificaron, incluidos dos errores propios que el proceso detectó y corrigió solo.

**Corrección del 27 de septiembre de 2026.** Se retiraron ocho casos de saltos patrimoniales.
Se habían escrito sobre montos en moneda extranjera que Estado Claro leía mal —multiplicaba
por el tipo de cambio cifras que el declarante ya había informado en pesos— y que el
portal corrigió el 22 de septiembre. Con los datos corregidos, esos saltos no existen o no
pueden afirmarse. Se retiró además uno de proximidad temporal, cuya cercanía entre cargo y
contrato resultó ser un artefacto del cruce. Los 61 casos que quedan se volvieron a verificar
uno por uno contra los datos vigentes ese día. El detalle, en
[METODOLOGIA.md](METODOLOGIA.md#corrección-del-27-de-septiembre-de-2026).

**Corrección del 7 de octubre de 2026.** Estado Claro llama «durante el cargo» al tiempo en
que una declaración está en vigor —hasta la siguiente, o un año si no la hay—, sin saber si la
persona seguía en el puesto. Contrastadas con las fechas reales de cada cargo, dos autoridades
municipales de autocontratación ya no lo eran cuando su municipio le compró a su sociedad, y
esos dos casos se retiraron. En otros tres, la mayor parte de las ventas al Estado que se les
atribuían ocurrió después de que dejaran el concejo, y se corrigieron sus cifras; en un sexto,
una declaración se había leído al revés. Quedan 59 casos. El detalle, en
[METODOLOGIA.md](METODOLOGIA.md#corrección-del-7-de-octubre-de-2026).

> **Segunda entrega (septiembre de 2026):** casos nuevos sobre el artefacto del 22-09-2026, con
> la capa de vigencia de cargos y la corrección de montos en otra moneda. Están en
> [`entrega-2/`](entrega-2/), con su propio índice y su metodología.

## Índice por categoría

### [Autocontratación](casos/autocontratacion/) — 6 casos
Autoridades o funcionarios cuya sociedad declarada le vendió a su propia institución.

### [Negocios con el Estado](casos/negocios_estado/) — 18 casos
Participaciones societarias de autoridades en empresas que facturan al Estado, con foco
en participación controladora y en la que enumera el artículo 4 de la Ley 19.886.

### [Patrimonios con pasivos desproporcionados](casos/patrimonio_pasivos/) — 15 casos
Declaraciones con pasivos muy por sobre los activos, o patrimonio neto muy negativo.

### [Saltos patrimoniales](casos/saltos_patrimoniales/) — 4 casos
Los mayores aumentos de patrimonio entre declaraciones consecutivas de una misma persona,
descartados los que resultaron ser errores de digitación o re-declaraciones del mismo bien.

### [Puerta giratoria](casos/puerta_giratoria/) — 6 casos
Autoridades con una actividad económica remunerada declarada que se cruza con el ámbito
de su propio cargo público —un juez que declara haber ejercido como abogado, un notario
con estudio jurídico propio—.

### [Salud pública](casos/salud_publica/) — 3 casos
Patrimonio y negocios con el Estado de autoridades y funcionarios del sector salud:
servicios de salud, FONASA, superintendencia, clínicas.

### [Redes societarias](casos/redes_societarias/) — 3 casos
Sociedades con varios declarantes vinculados —ni bursátiles ni de una sola persona— que
hacen negocio con el Estado.

### [Proximidad temporal cargo↔contrato](casos/proximidad_temporal/) — 4 casos
Negocios de sociedades declaradas cuya primera o última orden de compra al Estado cae muy
cerca de cuando la persona asumió o dejó su cargo.

## Cómo se hizo

Tres rondas de agentes. La primera minó el artefacto por indicador (autocontratación,
monto de negocio, pasivos, saltos) sobre cinco ángulos. La segunda amplió la minería a
ocho sectores institucionales transversales —notarios, Ministerio Público, parlamentarios,
gobierno central, municipios, Poder Judicial, Fuerzas Armadas y Contraloría, servicio
exterior— y agregó la exigencia, para todo caso nuevo o ya publicado, de que un agente
buscara activamente explicaciones legítimas específicas y las contrastara con evidencia
pública real —incluido, cuando corresponde, el registro de financiamiento electoral de
SERVEL—. La tercera abrió cuatro categorías enteramente nuevas —puerta giratoria, salud
pública, redes societarias y proximidad temporal—, para lo que se agregaron tres consultas
nuevas al artefacto (actividades económicas remuneradas, sociedades compartidas por varios
declarantes, y la distancia en días entre asumir o dejar un cargo y las órdenes de compra
de una sociedad declarada), con el mismo estándar de explicaciones verificadas. En todas
las rondas, un agente de verificación por categoría, que no escribió los casos, volvió a
correr las consultas por su cuenta antes de aprobar cada uno.

De más de 200 candidatos entre las tres rondas, se investigaron a fondo 102 casos nuevos;
27 se descartaron al redactar por no sostenerse en los datos, y 4 los rechazó el
verificador —una fabricación de datos y tres casos con la aritmética inflada por doble
conteo de órdenes de compra—. De los 29 casos publicados en la primera ronda, el
reenriquecimiento de la segunda retiró 1 más, tras encontrar que el hallazgo era un error
de lectura de unidades cometido en la propia redacción original. El detalle completo,
incluidos los errores que el propio proceso encontró y corrigió en cada ronda, está en
[METODOLOGIA.md](METODOLOGIA.md).

En total, las tres rondas desplegaron **159 agentes de inteligencia artificial**
—41 en la primera, 70 en la segunda, 48 en la tercera—, cada uno con una tarea acotada
dentro de una fase (minar un ángulo, investigar y redactar un caso, o verificar de forma
adversarial lo que otro agente ya escribió).

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
