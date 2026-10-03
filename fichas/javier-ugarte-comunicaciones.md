# Javier Hernán Ugarte Mansilla y actividad de comunicaciones — descartada

- **ID:** `javier-ugarte-comunicaciones`
- **Categoría:** actividades/cargos/temporalidad; compras/relaciones con el Estado.
- **Estado:** descartada como pista editorial; no hay caso.
- **Fecha de trabajo:** 2026-10-03.
- **Corte del oro:** `meta.build_date = 2026-10-02T15:43:07+00:00`; copia local sin cambios según el pre-run.
- **Identidad:** coincidencia del nombre completo JAVIER HERNÁN UGARTE MANSILLA en declaración InfoProbidad y `person.full_name`; no se atribuyen registros por nombre parcial.

## Resultado y mapa de afirmaciones

InfoProbidad registra que, en su declaración del 30-09-2025, Ugarte ejercía como alcalde de Quemchi desde 06-12-2024 y declaró una actividad económica remunerada de comunicaciones, además de derechos del 100% en una EIRL de radiodifusión adquiridos en 2019.[1] El documento prueba lo declarado, no los ingresos efectivamente percibidos, ni una compra municipal.

El sitio municipal biográfico informa que Ugarte se hizo cargo de Radio Coloane FM en 2012 y comenzó su primer periodo como concejal ese mismo año; la misma fuente indica que fue electo alcalde para 2024–2028.[2] Es contexto compatible con una actividad de comunicaciones preexistente, no una explicación de contratos públicos específicos.

La consulta guardada [`consultas/javier-ugarte-comunicaciones-1.sql`](../consultas/javier-ugarte-comunicaciones-1.sql) buscó el nombre legal exacto declarado en `purchase_order` y devolvió 0 filas. La consulta [`consultas/javier-ugarte-comunicaciones-2.sql`](../consultas/javier-ugarte-comunicaciones-2.sql) buscó a la persona en `declared_supply` y también devolvió 0 filas. Ambas se ejecutaron con `ec-gold-sql` contra el corte señalado; la cobertura de compras del artefacto comienza en 2020 y no permite descartar negocios fuera de su cobertura o bajo otros proveedores.

La búsqueda exacta en casos publicados y fichas de investigación locales no encontró una coincidencia. Se consultaron búsquedas web exactas por nombre/actividad, por razón social, y restringidas a los sitios municipales y de Mercado Público; solo la búsqueda por nombre recuperó la declaración y el perfil municipal descritos arriba. Los resultados sin coincidencias no prueban que no haya otros antecedentes públicos.

## Rutas revisadas y contraste — 2026-10-03

1. **Minería del artefacto:** apareció en un barrido de actividades económicas declaradas junto a cargos municipales; la señal fue únicamente actividad sectorial concurrente.
2. **Origen declarativo:** declaración InfoProbidad del 30-09-2025; coteja nombre completo, cargo, fecha de asunción, actividad y sociedad declaradas.[1]
3. **Compras, cruce canónico:** búsqueda exacta del nombre legal de la sociedad en `purchase_order`; 0 filas para el artefacto consultado (corte 2026-10-02). Consulta guardada 1.
4. **Compras, enlace por persona:** `declared_supply` no devolvió fila para la coincidencia de nombre completo. Consulta guardada 2. Esto es una prueba del cruce disponible, no de ausencia universal de contratación.
5. **Perfil institucional y alternativa plausible:** la Municipalidad de Quemchi sitúa su trayectoria de comunicador y radio local desde 2012, antes del cargo de alcalde que comienza en 2024; favorece la explicación de actividad profesional preexistente, sin verificar operación comercial ni ingresos.[2]
6. **Índices de publicación y búsqueda exacta:** deduplicación literal contra el índice/fichas de la bitácora y búsqueda web por nombre, empresa y dominios oficiales. Sin candidato previo y sin documento de compra recuperado; la consulta de sitios oficiales no produjo resultados nuevos.

## Decisión y próxima acción

**Decisión:** descartar la pista para seguimiento editorial. Los hechos disponibles son una actividad de comunicaciones y una empresa declaradas, más una trayectoria municipalmente reportada; no hay una orden de compra vinculada por la evidencia consultada, ni un acto o participación individual concreta que permita explicar relevancia pública suficiente. No se prepara borrador de caso.

**Límites:** las búsquedas negativas describen solo las fuentes, campos y expresiones indicados; no prueban inexistencia de contratos, pagos, proveedores relacionados ni actividad fuera de la cobertura del artefacto. La declaración es autodeclarada y el perfil institucional es biográfico, no un registro contable.

**Reabrir solo** ante una orden/contrato oficial con proveedor y vínculo jurídico verificables, o un acto público individual relacionado con una función municipal concreta. Próxima acción general: rotar la minería a otra institución/categoría y evitar reutilizar este cruce sin evidencia nueva.

## Sources

[1] https://www.infoprobidad.cl/Declaracion/BuscarDeclaracion?declaracion=ed87585703c6fbd97ddf912f06a3229a — InfoProbidad, declaración Javier Hernán Ugarte Mansilla
    > "Clasificación | REMUNERADA"
    > "Fecha de Asunción en el cargo | 06-12-2024"
[2] https://www.muniquemchi.cl/alcalde — Municipalidad de Quemchi, alcalde
    > "El 2012 acentuó su rol de comunicador al hacerse cargo de radio Coloane FM 92.3 y encargado de Funeraria Vásquez a nivel local."
