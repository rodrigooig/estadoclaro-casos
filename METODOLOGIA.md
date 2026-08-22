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
artificial — orquestados como un flujo de trabajo de varias fases, no una sola
conversación — la explotación de esa herramienta para encontrar y redactar casos que
ameritan seguimiento periodístico. El proceso tuvo tres fases:

**1. Minería.** Cinco agentes, cada uno con un ángulo distinto, consultaron directamente
las mismas tablas y consultas SQL que usa el agente en producción (sin pasar por el
modelo de lenguaje, para poder revisar miles de filas sin costo ni límite de fila del
servicio público) y priorizaron los candidatos más notables de cada ángulo:

- Autoridades o funcionarios cuya sociedad declarada le vende a **su propia institución**.
- Las personas con mayor **monto total de negocio** declarado con el Estado.
- Sociedades donde la persona es **controladora** y su participación es una de las que
  enumera el artículo 4 de la Ley 19.886, con negocio real y no ampliamente tenidas.
- Declaraciones con **pasivos desproporcionados** sobre los activos, o **patrimonio neto
  muy negativo**.
- Los mayores **saltos patrimoniales** entre declaraciones consecutivas, excluyendo los
  que la propia herramienta marca como errores de digitación implausibles.

**2. Investigación y redacción.** Cada candidato preseleccionado pasó por un agente que
profundizó con las mismas herramientas, hizo una pregunta real al agente de producción de
Estado Claro para obtener una narrativa con sus propias citas, decidió si el caso
sostenía lo que parecía en la minería inicial —y descartó los que resultaron ser
artefactos de datos (una sociedad ampliamente tenida, un pasivo que es un error de
captura, una coincidencia de nombre débil)— y redactó el caso.

**3. Verificación adversarial.** Un agente por categoría, que no escribió los casos, volvió
a correr los comandos por su cuenta para confirmar cada cifra contra la salida real de la
herramienta, revisó el cumplimiento de las reglas de abajo, corrigió lo corregible y
rechazó lo que no se sostuvo.

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
