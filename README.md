# Casos Estado Claro

53 casos de investigación periodística, encontrados, investigados, contrastados con
explicaciones legítimas alternativas y redactados por múltiples agentes de inteligencia
artificial orquestados sobre [Estado Claro](https://github.com/rodrigooig/estadoclaro): un
sistema que cruza las declaraciones de patrimonio e intereses de autoridades y funcionarios
públicos chilenos (Ley 20.880) con las órdenes de compra pública de ChileCompra (Mercado
Público).

Todo lo publicado aquí sale de datos públicos —InfoProbidad y ChileCompra— y cada
afirmación cita la declaración, la orden de compra o la fuente pública concreta de la que
sale. Nada aquí es una acusación ni una conclusión legal: son hechos, con su fecha, y —para
cada uno— la explicación legítima más plausible que se pudo encontrar y contrastar contra
evidencia pública real. Ver [METODOLOGIA.md](METODOLOGIA.md) para cómo se encontraron y
verificaron, incluidos dos errores propios que el proceso detectó y corrigió solo.

## Índice por categoría

### [Autocontratación](casos/autocontratacion/) — 8 casos
Autoridades o funcionarios cuya sociedad declarada le vendió a su propia institución.

### [Negocios con el Estado](casos/negocios_estado/) — 18 casos
Participaciones societarias de autoridades en empresas que facturan al Estado, con foco
en participación controladora y en la que enumera el artículo 4 de la Ley 19.886.

### [Patrimonios con pasivos desproporcionados](casos/patrimonio_pasivos/) — 15 casos
Declaraciones con pasivos muy por sobre los activos, o patrimonio neto muy negativo.

### [Saltos patrimoniales](casos/saltos_patrimoniales/) — 12 casos
Los mayores aumentos de patrimonio entre declaraciones consecutivas de una misma persona,
descartados los que resultaron ser errores de digitación o re-declaraciones del mismo bien.

## Cómo se hizo

Dos rondas de agentes. La primera minó el artefacto por indicador (autocontratación,
monto de negocio, pasivos, saltos) sobre cinco ángulos. La segunda amplió la minería a
ocho sectores institucionales transversales —notarios, Ministerio Público, parlamentarios,
gobierno central, municipios, Poder Judicial, Fuerzas Armadas y Contraloría, servicio
exterior— y, antes de publicar cualquier caso nuevo o mantener cualquiera de los ya
publicados, exigió a un agente buscar activamente explicaciones legítimas específicas y
contrastarlas con evidencia pública real —incluido, cuando corresponde, el registro de
financiamiento electoral de SERVEL—. Un agente de verificación por categoría, que no
escribió los casos, volvió a correr las consultas por su cuenta antes de aprobar cada uno.
De 166 candidatos entre ambas rondas, se investigaron a fondo 62 casos nuevos; 8 se
descartaron en el proceso —7 al redactar, por no sostenerse en los datos, y 1 por el
verificador de la segunda ronda, que detectó una fabricación—. De los 29 casos publicados
en la primera ronda, el reenriquecimiento de la segunda retiró 1 más, tras encontrar que
el hallazgo era un error de lectura de unidades cometido en la propia redacción original.
El detalle completo, incluidos esos dos errores que el propio proceso encontró y corrigió,
está en [METODOLOGIA.md](METODOLOGIA.md).

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
