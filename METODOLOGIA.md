# Metodología

## Qué es Estado Claro

Estado Claro es un sistema sobre las declaraciones de patrimonio e intereses que la Ley
20.880 exige a las autoridades y funcionarios públicos chilenos, publicadas como datos
abiertos por el Consejo para la Transparencia y la Contraloría General de la República.
Un proceso de datos (Polars + SQL sobre DuckDB) las descarga, limpia, deflacta a UF y
compone la variación de patrimonio de cada persona entre declaraciones consecutivas —
separando cuánto es un bien nuevo, cuánto es un bien vendido y cuánto es solo
revalorización—. Ese mismo proceso cruza las sociedades que cada persona declara con las
órdenes de compra públicas de ChileCompra (Mercado Público) desde 2020, para marcar qué
sociedades declaradas por una autoridad también le venden al Estado.

Sobre ese artefacto ya calculado corre un agente conversacional con siete herramientas de
solo lectura (`find_person`, `wealth_panel`, `declaration_detail`, `cohort`, `ranking`,
`asset_ranking`, `state_business`): el modelo elige qué consultar y escribe la respuesta,
pero nunca hace una operación aritmética sobre los montos — todo lo que cita ya viene
calculado en el artefacto. Ese mismo agente, con las mismas reglas y el mismo modelo, es
el que se usó para la parte narrativa de los casos de este repositorio.

## Cómo se hizo esta investigación

Este repositorio es el resultado de delegar en múltiples agentes de inteligencia
artificial — orquestados como flujos de trabajo de varias fases, no una sola conversación
— la explotación de esa herramienta para encontrar y redactar casos que ameritan
seguimiento periodístico. Hubo dos rondas.

### Ronda 1 — minería por indicador

**1. Minería.** Cinco agentes, cada uno con un ángulo distinto, consultaron directamente
las mismas tablas y consultas SQL que usa el agente en producción (sin pasar por el
modelo de lenguaje, para poder revisar miles de filas sin costo ni límite de fila del
servicio público) y priorizaron los candidatos más notables de cada ángulo: autocontratación,
mayor monto de negocio con el Estado, sociedades controladas con participación del
artículo 4 de la Ley 19.886, pasivos desproporcionados o patrimonio neto muy negativo, y
saltos patrimoniales grandes.

**2. Investigación y redacción.** Cada candidato pasó por un agente que profundizó con las
mismas herramientas, hizo una pregunta real al agente de producción de Estado Claro para
obtener una narrativa con sus propias citas, decidió si el caso sostenía lo que parecía en
la minería inicial, y redactó el caso.

**3. Verificación adversarial.** Un agente por categoría, que no escribió los casos, volvió
a correr los comandos por su cuenta para confirmar cada cifra, y rechazó lo que no se
sostuvo.

### Ronda 2 — minería transversal por sector, y una capa de razonamiento responsable

Después de revisar el primer lote, se pidió expresamente ampliar la cobertura a otros
tipos de rol e institución, y agregar una capa de razonamiento sobre explicaciones legítimas
antes de publicar cualquier hallazgo — validada con búsquedas reales en internet, no solo
con los datos del artefacto. La ronda 2 añadió dos fases:

**0. Enriquecimiento retroactivo.** Los 29 casos de la ronda 1 se revisaron de nuevo, uno
por uno, por un agente que no los había escrito: para cada caso, identificó entre 2 y 4
explicaciones legítimas y específicas que podrían justificar el hallazgo —un crédito para
financiar una campaña electoral, la venta de un bien, una herencia, una liquidación
conyugal, etc., según correspondiera a esa persona— y buscó en internet (incluido, cuando
aplica, el registro de financiamiento electoral de SERVEL) si había evidencia pública que
las confirmara o las descartara. Con eso, cada caso se mantuvo, se reencuadró —incorporando
la explicación posible con la misma prominencia que el hallazgo, sin prejuzgarla— o se
retiró, si una explicación legítima quedaba respaldada por evidencia pública sólida y
explicaba el hallazgo por completo.

**Minería sectorial.** Ocho agentes nuevos, cada uno con un sector institucional distinto
—notarios y conservadores; Ministerio Público y Defensoría; parlamentarios en ejercicio;
gobierno central; gobiernos regionales y municipios más allá de la autocontratación; personal
no judicial del Poder Judicial; Fuerzas Armadas, Carabineros, PDI y Contraloría; y servicio
exterior— minaron varios indicadores dentro de su sector, no solo uno, para dar una
cobertura transversal por tipo de institución y no solo por tipo de hallazgo. Los casos
resultantes pasaron por el mismo razonamiento responsable con verificación web *antes* de
decidir si se publicaban, y luego por la misma verificación adversarial por categoría.

### Ronda 3 — cuatro categorías enteramente nuevas

La ronda 3 no amplió la minería de las cuatro categorías existentes: abrió cuatro
categorías nuevas —puerta giratoria, salud pública, redes societarias y proximidad
temporal cargo↔contrato— que no encajaban en ninguna de las anteriores. Para hacerlo se
agregaron al artefacto de consulta (nunca al artefacto de datos en sí) tres consultas
nuevas, sobre tablas que el sistema ya calcula pero que ninguna ronda anterior había
minado: las actividades económicas remuneradas de cada declarante, las sociedades
declaradas por más de una persona sin ser de amplia propiedad, y la distancia en días
entre la primera y la última declaración de una persona y las órdenes de compra de sus
sociedades. Los cuatro ángulos nuevos pasaron por el mismo proceso de razonamiento
responsable con verificación web y el mismo verificador adversarial por categoría que las
rondas anteriores.

Esta fue la ronda con la tasa de descarte más alta de las tres: de 40 candidatos
investigados a fondo, 20 no llegaron a publicarse -la mitad-, principalmente por dos
motivos que valen la pena nombrar porque son el tipo de error que este proceso existe
para atrapar: una actividad remunerada que en realidad era la persona describiendo su
propio cargo (no un cruce real), y "saltos" o "proximidades" de exactamente cero días que
resultaron ser el mismo bien redeclarado o una coincidencia sin relación causal, no un
hallazgo real.

### Lo que ese proceso encontró sobre sí mismo

El objetivo de las capas de verificación no es solo revisar los datos: es desconfiar del
trabajo de la ronda anterior. A lo largo de las tres rondas, ese proceso encontró y
corrigió errores reales que había cometido la propia investigación, antes de que llegaran
a publicarse en forma incorrecta:

- **Una fabricación (ronda 2).** Un agente de redacción, al justificar por qué un salto
  patrimonial podía leerse como una omisión y no como una compra nueva, inventó cuatro
  fechas de adquisición para activos financieros que el propio formulario de declaración
  no exige ni registra. El agente de verificación lo detectó consultando directamente la
  tabla del artefacto y el código de la consulta SQL que la produce, confirmó que esas
  fechas no existen en ningún lugar de los datos, y rechazó el caso.
- **Un error de unidades (ronda 2).** Un caso de la ronda 1 leía el campo "valor corriente
  en plaza" —ya convertido a pesos— de dos depósitos a plazo en dólares y lo presentaba
  como si fuera el monto en dólares, inflando el hallazgo por un factor de casi 1.000. El
  agente de enriquecimiento lo detectó volviendo a leer la página original de la
  declaración en infoprobidad.cl y comparando la proporción entre ambos campos con los
  depósitos en pesos de la misma declaración. El caso se retiró.
- **Aritmética inflada por doble conteo (ronda 3, tres casos).** Un agente de redacción
  sumó como si fueran independientes dos conjuntos de órdenes de compra de una misma
  sociedad —las marcadas "durante" el cargo y las marcadas "después"— cuando en realidad
  unas eran un subconjunto de las otras, duplicando el total. El verificador lo detectó
  volviendo a agregar las órdenes directamente contra la tabla del artefacto y rechazó los
  tres casos.

Ninguno de esos casos aparece en este repositorio.

## Qué reglas siguen los casos publicados

Las mismas que ya sigue el agente de Estado Claro en producción:

1. **Nunca se escribe «conflicto de interés» ni se afirma que alguien infringió una
   norma.** Se entregan los hechos por separado y con su fecha —qué declaró y cuándo, qué
   le compró el Estado y cuándo— y se deja que quien lee concluya.
2. **Ninguna cifra sin una consulta real detrás.** Nada se estima ni se redondea a ojo.
3. **Los pesos son los declarados, en su fecha**, nunca actualizados a hoy; la UF viaja al
   lado para poder comparar entre años.
4. **Toda afirmación cita su fuente real** — la declaración en el portal de origen, o la
   orden de compra en Mercado Público.
5. Una sociedad con muchos declarantes no es una relación de negocios personal: tener
   acciones de una empresa grande no es "hacer negocios con el Estado".
6. El artículo 4 de la Ley 19.886 se menciona solo cuando la herramienta lo marca, y como
   lo que es —una participación de las que enumera esa norma—, nunca como una
   inhabilitación.
7. Todo dato es **autodeclarado por el propio titular y no está auditado por ningún
   organismo**. Lo que no se declaró no aparece en el cruce.
8. **Toda explicación legítima alternativa que se haya considerado se presenta con la
   misma seriedad que el hallazgo, y sin prejuzgarla.** Si se buscó evidencia pública y no
   se encontró, el caso lo dice así —nunca como si la ausencia de evidencia probara que la
   explicación es falsa—. Si se encontró, se cita con su fuente igual que cualquier otro
   hecho.

## Qué no cubre el cruce

- Las órdenes de compra de Mercado Público empiezan en **2020**. Un negocio con el Estado
  anterior a esa fecha no aparece.
- El cruce solo alcanza a **sociedades**: no existe el RUT de la persona natural en este
  artefacto, así que quien le vende al Estado directamente, como persona natural y no a
  través de una sociedad, es invisible para esta herramienta.
- `same_institution = NULL` en una orden significa que **no se pudo determinar** el
  organismo comprador — nunca que se determinó que es uno distinto.
- El partido político solo se conoce para parlamentarios en ejercicio, y viene de las
  nóminas de ambas cámaras, no de la declaración.
- Nada de esto es una conclusión legal. Es, en cada caso, la conexión entre dos hechos
  públicos que antes vivían en dos sistemas separados y sin cruzar.

## Licencia de los datos de origen

CC BY 4.0 — Consejo para la Transparencia y Contraloría General de la República, sobre
`infoprobidad.cl`. Órdenes de compra: ChileCompra / Mercado Público, dato abierto.
