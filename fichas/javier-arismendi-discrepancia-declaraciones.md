# Javier Ignacio Arismendi Valenzuela — diferencia numérica entre declaraciones del mismo día

- **ID:** `javier-arismendi-discrepancia-declaraciones`
- **Producto:** caso documental sobre diferencias publicadas en valores societarios.
- **Estado:** `borrador listo` — paquete final revisado dos veces de forma independiente; pendiente de entrega por `ec-inv-pr` y PR borrador a `main`.
- **Pregunta decisiva:** ¿Qué relación de presentación existe entre InfoProbidad 1893910 (actualización periódica) y 1818514 (rectificación voluntaria), ambas fechadas 30-09-2026, y qué unidad/alcance corresponde a los valores de las dos participaciones?
- **Corte del oro:** `meta.build_date=2026-10-13T17:02:26+00:00`; acceso solo lectura con `ec-gold-sql`.
- **Dedupe:** búsquedas locales por nombre completo e IDs en `INDICE.md`, fichas, casos públicos e índices no encontraron una pista/caso existente de esta persona. Nombre completo coincide en ambas primarias. No se atribuyó nada por homonimia ni se expuso identificador personal.

## Mapa de afirmaciones

- **c1 — identidad y contexto:** las dos primarias identifican a JAVIER IGNACIO ARISMENDI VALENZUELA, alcalde de la Municipalidad de Frutillar, ambas con fecha 30-09-2026; una se titula «Rectificación Voluntaria» y la otra «Actualización Periódica (Septiembre)».
- **c2 — las dos líneas coincidentes:** MAQUINARIAS JAVIER ARISMENDI VALENZUELA EIRL (RUT societario 76.269.043-8), con cantidad/porcentaje 100, y SOCIEDAD COMERCIAL ARISMENDI Y MICHILLANCA LIMITADA (RUT societario 76.142.911-6), con cantidad/porcentaje 50, aparecen en ambas primarias.
- **c3 — valores publicados:** en cada sociedad, el campo «Valor Corriente en plazo o Valor Libro» publica 100.000.000 en la actualización y 1.000.000 en la rectificación. «Tipo de Moneda» está vacío en ambas primarias. Aunque el oro devuelve `currency=CLP`, no se atribuye esa unidad a lo publicado en la fuente.
- **c4 — límites:** los registros establecen qué campos publicaron dos formularios, no qué versión prevalece, unidad monetaria, valor real, causa, falsedad, irregularidad o intervención individual.

## Consultas y evidencia

- Primarias reabiertas directamente y por ambos revisores: https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1818514 y https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1893910. El borrador conserva citas y evidencia literal.
- `consultas/javier-arismendi-discrepancia-declaraciones-20261013-1.sql`: devuelve 4 filas, una por sociedad en cada fuente, con fecha, identidad, valores, cantidad y RUT societario.
- `consultas/javier-arismendi-discrepancia-declaraciones-20261013-2.sql`: primero agrupa por fuente/RUT/tipo y luego coteja, evitando fan-out; devuelve 2 pares comparables. Ambos SQL se ejecutaron y se reejecutaron independientemente por revisores.
- `meta.build_date` verificado: `2026-10-13T17:02:26+00:00`.
- `sources.py verify borradores/javier-arismendi-discrepancia-declaraciones.md --evidence --min-coverage 0.5`: pasó con 7/12 frases cubiertas (58%) y seis quotes en las dos primarias. Warning de citas múltiples revisado: el registro compara dos declaraciones primarias y ambos IDs se necesitan; no es un error del gate.

## Alternativa, incertidumbre y límites

La rectificación voluntaria podría ser una explicación legítima para que los valores difieran, pero su etiqueta no indica los campos que rectifica ni prueba que sustituya íntegramente la actualización. No se afirma cuál prevalece. Las primarias no asignan moneda en esas líneas; la lectura `CLP` del artefacto no sustituye el campo fuente vacío. No se revisaron antecedentes privados ni se contactó a nadie.

## Revisiones finales del borrador

- **SHA256 común:** `6ba79c01592939d7249d283a404a77702878ba0447d304342b1384d2a3031837`.
- **Evidencia:** `revisiones/javier-arismendi-discrepancia-declaraciones-20261013T192548Z-revisor-1.json`, `approve`; reabrió ambas primarias y repitió consultas 1 y 2.
- **Adversarial:** `revisiones/javier-arismendi-discrepancia-declaraciones-20261013T192548Z-revisor-2.json`, `approve`; reabrió primarias, ejecutó queries propios/guardados y confirmó unidad no atribuida, sin fan-out y relevancia de la discrepancia publicada.
- Ambos registros corresponden exactamente al mismo SHA; preguntas restantes: alcance formal de la rectificación y unidad fuente de los valores.

## Decisión y retorno

La evidencia sostiene un borrador documental factual, no acusatorio y acotado; no requiere afirmar cuál declaración es correcta. Próxima acción: ejecutar `ec-inv-pr --dry-run` para el paquete y no alterar cambios ajenos ya presentes en `COLA.md`/`INDICE.md`. Si el helper rechaza esos archivos compartidos, preservar el borrador y revisiones y reintentar la entrega cuando la bitácora esté libre, sin repetir la investigación. Reabrir investigación solo si aparece historial oficial o explicación pública del alcance de la rectificación, o unidad oficial de esos valores. Rodrigo decide el merge/publicación de cualquier PR a `main`.
