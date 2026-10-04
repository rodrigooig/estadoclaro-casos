# Revisión editorial — Lizardo Alberto Moscoso González, Clínica San Francisco y compras hospitalarias

> **Ficha de investigación; no es un caso publicable ni una afirmación de conducta irregular.** Estado: **evidencia insuficiente**. Última revisión: 2026-10-04. RUT personal omitido.

## §0. Resultado ejecutivo

La declaración InfoProbidad ID 5118780 identifica a Lizardo Alberto Moscoso González como notario suplente del Poder Judicial, con asunción declarada el 01-01-2026, y registra 11.478 acciones de Clínica San Francisco S.A., adquiridas el 25-05-2005, no controlador.[4]

El artefacto de EstadoClaro registra 39 órdenes únicas para esa sociedad entre 15-12-2023 y 09-06-2026, por CLP 381.161.164 nominales acumulados; seis son posteriores a la fecha de asunción declarada y suman CLP 69.887.785.[5][6]

Las compras fueron para exámenes o informes de biopsias de los hospitales de San Fernando y Santa Cruz; la orden 1627-808-SE26 remite a una licitación pública y 2107-627-TD26 consigna trato directo bajo categoría de emergencia, urgencia o imprevisto.[5][6]

La explicación legítima más plausible es que una clínica regional provee análisis médicos demandados por hospitales públicos, principalmente bajo licitaciones; la propia página institucional describe un centro médico y su sitio enumera servicios clínicos.[12][13][14]

**Decisión:** la coincidencia societaria y temporal amerita dejar constancia, pero no se encontró evidencia de intervención de Moscoso en la compra, de competencia funcional como notario sobre estos contratos, ni de un vínculo entre su labor y los servicios clínicos.[4][5][unverified] No cumple el gate para borrador de caso; no es una conclusión jurídica.

## 1. Identidad, declaración y vínculo societario

**Medido en EstadoClaro** contra `gold.duckdb`, corte `2026-10-02T15:43:07+00:00` (copia local indicada sin cambios). La consulta guardada [1](../consultas/lizardo-moscoso-clinica-san-francisco-1.sql) devuelve dos snapshots de la misma persona, con nombre completo coincidente y el mismo RUT societario: 13-12-2023 y 23-06-2026.[1][4]

La declaración primaria del 23-06-2026 registra la entidad Clínica San Francisco S.A., 11.478 acciones, valor declarado CLP 49.734.174, adquisición 25-05-2005 y «Tiene Calidad de Controlador: false».[4]

En el snapshot anterior, 13-12-2023, el mismo número de acciones, valor declarado y fecha de adquisición están registrados mientras la declaración identifica el cargo como Conservador; la actualización de 2026 identifica el cargo como Notario y una asunción declarada de 01-01-2026.[1][4]

Estos son datos autorreportados en fechas específicas.[1][4] No se obtuvo porcentaje de propiedad, valor de mercado independiente, registro societario histórico de accionistas ni evidencia de que el declarante gestione la clínica.[unverified]

**Base de identidad:** coincidencia exacta del nombre completo en ambas declaraciones y cargo/institución en InfoProbidad; no se atribuyen registros por similitud nominal.[1][4] El RUT de la persona no se reproduce.

## 2. Compras reproducidas y control de doble conteo

Las consultas [2](../consultas/lizardo-moscoso-clinica-san-francisco-2.sql) y [3](../consultas/lizardo-moscoso-clinica-san-francisco-3.sql) se ejecutaron sobre el oro. Agrupar por código de orden devolvió 39 códigos únicos, 39 filas —una por orden—, desde el 15-12-2023 al 09-06-2026, y CLP 381.161.164 nominales. El desglose fue 22 órdenes por CLP 187.679.721 del Hospital de San Fernando y 17 por CLP 193.481.443 del Hospital de Santa Cruz. Las seis órdenes desde el 01-01-2026 totalizaron CLP 69.887.785.

**Contraste independiente:** la consulta [4](../consultas/lizardo-moscoso-clinica-san-francisco-4.sql) en la tabla `purchase_order`, filtrada por el RUT/DV societario exacto y los códigos del cruce, devolvió 39 órdenes únicas, mismo rango de fechas y suma CLP 381.161.164. No se sumaron separadamente subconjuntos de órdenes por clasificación temporal.

La orden primaria 1627-808-SE26, de 09-06-2026, muestra el nombre legal y RUT del proveedor, referencia la licitación 1627-35-LQ23 y detalla servicios de análisis de biopsias de abril y mayo de 2026, por un total de CLP 12.402.369.[5]

La orden primaria 2107-627-TD26, de 06-04-2026, identifica a la misma sociedad y consigna trato directo ID 2107-200-FTD26, categoría «Emergencia, urgencia o imprevisto», para informes de biopsias de enero y febrero de 2026, total CLP 8.907.000.[6]

En conjunto, los campos de EstadoClaro muestran una sucesión de órdenes de suministro por servicios médicos: para San Fernando se enlazan al proceso 1627-35-LQ23 y para Santa Cruz al proceso 2107-106-LP24, además de órdenes de ruta directa.[5][6][14] Los registros confirman comprador, proveedor, fecha, monto y ruta; no muestran quién, por parte del funcionario, participó en evaluación, autorización, administración o recepción.[unverified]

## 3. Rutas independientes examinadas y alternativas

1. **Declaración de origen / identidad (04-10-2026):** consulté directamente InfoProbidad 5118780 y el snapshot 5082242.[1][4] La primaria enlaza nombre, cargo, organismo, fecha de asunción y acciones; ambos snapshots reportan la misma fecha de adquisición y cantidad.[1][4] No acredita administración ni participación en contratos.[unverified]
2. **Órdenes de compra primarias (04-10-2026):** leí el detalle oficial de 1627-808-SE26 y 2107-627-TD26.[5][6] Coinciden en la razón social/RUT de Clínica San Francisco; una consigna origen licitación y otra trato directo/emergencia.[5][6] Ambas presentan «Ver Anexos», pero no se revisaron resoluciones/anexos justificativos ni documentos de pago individual.[unverified]
3. **Procesos de licitación / catálogos alternativos (04-10-2026):** consulté los IDs 1627-35-LQ23 y 2107-106-LP24 en Mercado Público y referencias del catálogo secundario TodoLicitaciones. El catálogo informa las adjudicaciones de análisis de biopsias a la clínica por CLP 180.630.152 (San Fernando) y CLP 130.799.999 (Santa Cruz), respectivamente; esto es una fuente secundaria y no prueba participación personal del declarante.[13][14]
4. **Identidad económica y explicación sanitaria (04-10-2026):** revisé el sitio de Clínica San Francisco, que se presenta como centro médico de la región, y una ficha empresarial secundaria que atribuye sus datos públicos al SII. El sitio institucional describe servicios y atención médica, alternativa compatible con que hospitales contraten servicios diagnósticos; no explica por sí solo selección de proveedor o trato directo.[11][12][14]
5. **Búsqueda exacta / corroboración adversa (04-10-2026):** busqué nombre completo, razón social y RUT societario junto con compras de biopsias, hospitales y nombramiento del cargo. Las búsquedas exactas devolvieron la declaración 2023 anterior y registros secundarios del proveedor, pero no una fuente independiente que vincule a Moscoso con actos de compra, una decisión judicial relevante o la gestión del proveedor.[unverified] Hubo resultados irrelevantes por homónimos geográficos y una ficha de otra licitación hospitalaria; no se usaron como evidencia.[unverified]
6. **Deduplicación (04-10-2026):** contrasté nombre completo, institución, sociedad/RUT y huella contra `INDICE.md`, fichas y casos publicados. No hay ficha previa con Lizardo Alberto Moscoso González ni con la pista de sus acciones en Clínica San Francisco. Un caso publicado menciona Clínica San Francisco solo como lugar de consulta de un médico distinto; no es la misma identidad ni una prueba de relación con el proveedor declarado ([caso](https://github.com/rodrigooig/estadoclaro-casos/blob/main/casos/autocontratacion/sepulveda-sepulveda-servicio-salud-ohiggins.md)).

### Cribado amplio que llevó a esta pista

Además de retomar las brechas de la corrida previa, ejecuté búsquedas diferenciadas en el oro: compras de sociedades declaradas al mismo organismo; actividades económicas remuneradas vigentes; pasivos sobre CLP 1.000 millones; outliers; proveedores con participación de un solo declarante y >3 órdenes durante la declaración; y actividad económica actual por cargo. El corte del artefacto fue el indicado arriba.

Las primeras cuatro pantallas generaron principalmente nombres con fichas/casos ya existentes o resultados limitados por sus filtros; la consulta estrecha de actividad remunerada dentro de los últimos 12 meses devolvió cero, mientras que la consulta más amplia de actividades económicas actuales reveló varios registros que exigían descartar descripción del cargo propio y entidades no relacionadas.[unverified] No se interpreta ningún cero como ausencia general.[unverified] En la pantalla de proveedores se ubicó este candidato sin ficha previa y se contrastó con las consultas independientes guardadas [1]–[4].

## 4. Mapa de afirmaciones y límites

- **Afirmación:** Moscoso declaró acciones de Clínica San Francisco S.A. en el snapshot de 2026. **Primaria necesaria:** declaración InfoProbidad. **Resultado:** confirmada como autorreporte; participación no controladora declarada.[4]
- **Afirmación:** la sociedad recibió órdenes de dos hospitales públicos. **Primaria necesaria:** órdenes Mercado Público. **Alternativas consultadas:** dos órdenes exactas, referencias de licitaciones y coincidencia de razón social/RUT. **Resultado:** confirmado para las órdenes revisadas; 39 códigos y montos agregados reproducibles en el artefacto, contrastados con `purchase_order`.
- **Afirmación:** existió vínculo personal de Moscoso con evaluación, autorización o ejecución contractual. **Primaria necesaria:** resolución, anexo, acta, delegación o registro del expediente que lo identifique. **Resultado:** no encontrado en las fuentes revisadas; su inexistencia no se demuestra.[unverified]
- **Alternativa legítima principal:** los hospitales contrataron análisis/informes de biopsias como servicio sanitario; los dos procesos principales aparecen catalogados como licitaciones públicas y la clínica se presenta como centro médico.[5][12][14] Esto contextualiza el objeto y la ruta, pero no acredita por sí solo que cada decisión fuese correcta ni descarta intervención individual.[unverified]
- **Discrepancia temporal relevante:** parte de las 39 órdenes antecede la fecha declarada de asunción del 01-01-2026; seis caen desde esa fecha al 09-06-2026. La titularidad societaria se declara adquirida en 2005 y aparecía ya en el snapshot de 2023.[1][4] La proximidad temporal no prueba causalidad.
- **Límite de valoración:** la ficha de ChileCompra consigna órdenes en pesos nominales y EstadoClaro publica un agregado calculado; no se actualizaron montos a hoy ni se convierten en ingreso personal.[5][6] El estado «recepción conforme» de dos ejemplos tampoco equivale a auditoría de calidad del servicio.[unverified]

## 5. Gate editorial, revisión y próxima acción

- Identidad corroborada: **sí**, por nombre completo + institución/cargo en la declaración.
- Hecho material reproducible y fuente primaria: **sí**, acciones declaradas y órdenes con RUT societario coincidente; consultas guardadas y doble conteo contrastado.
- Relevancia pública en una frase: una participación societaria declarada coincide temporalmente con compras de servicios diagnósticos de hospitales públicos.
- Descartar error de cruce/datos: **parcialmente**; razón social y RUT coinciden en los ejemplos primarios y los agregados independientes cuadran, pero no se revisaron anexos de todas las órdenes ni la totalidad de las resoluciones.
- Explicación legítima buscada: **sí**, el objeto sanitario y el uso mayoritario de licitaciones públicas; los tratos directos requieren leer sus propios fundamentos antes de valorarlos.

**No pasa el gate para borrador:** falta evidencia primaria de rol individual de Moscoso, y la función declarada de notario no muestra un vínculo funcional con compras de análisis de biopsias.[4][5][unverified] No corresponde afirmar conflicto, infracción o irregularidad.

**Próxima acción concreta:** mantener `evidencia insuficiente` y no repetir búsquedas exactas. Reabrir solo si aparece anexo/resolución pública de una orden que identifique su intervención, evidencia oficial de una función relacionada con la compra, o antecedente societario primario que cambie la lectura de su participación/temporalidad. Revisor independiente: no disponible en esta corrida; las consultas de montos fueron contrastadas por segunda consulta en otra tabla, pero no hubo revisión humana independiente.[unverified]

## Sources

[1] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=5082242
    > "| Fecha | 13-12-2023 |"
    > "| Cantidad / Porcentaje | 11478 |"
    > "| Fecha de adquisición | 25-05-2005 |"
[4] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=5118780
    > "| Fecha de Asunción en el cargo | 01-01-2026 |"
    > "| Nombre o Razón Social | CLINICA SAN FRANCISCO S.A. |"
    > "| Cantidad / Porcentaje | 11478 |"
    > "| Fecha de adquisición | 25-05-2005 |"
    > "| Tiene Calidad de Controlador | false |"
[5] http://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=1627-808-SE26
    > "| Proveniente de Licitación | 1627-35-LQ23 |"
    > "| R.U.T. | 88.093.300-0 |"
[6] http://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=2107-627-TD26
    > "| Orden de Compra. Nº 2107-627-TD26 " Orden de Compra generada por Trato Directo ID 2107-200-FTD26" |"
    > "| Total Neto | $ 8.907.000 |"
[11] https://chilerutempresa.cl/empresa/88093300-0/clinica-san-francisco-s-a
    > "CENTROS MEDICOS PRIVADOS (ESTABLECIMIENTOS DE ATENCION AMBULATORIA)"
    > "Su actividad económica principal es CENTROS MEDICOS PRIVADOS (ESTABLECIMIENTOS DE ATENCION AMBULATORIA)."
[12] https://www.clinicasanfrancisco.cl
    > "Centro Médico Clínica San Francisco"
[13] https://www.todolicitaciones.cl/licitacion/1627-35-LQ23
    > "Proveedor: | CLINICA SAN FRANCISCO S A"
    > "| Proveedor: | CLINICA SAN FRANCISCO S A |"
    > "| Total | $ 180.630.152 |"
[14] https://www.todolicitaciones.cl/licitacion/2107-106-LP24
    > "el Hospital Santa Cruz, como establecimiento de salud requiere adquirir servicio externo de informes de biopsias, para contar con proveedor que efectúe estos estudios"
    > "| Total | $ 130.799.999 |"
    > "para contar con proveedor que efectúe estos estudios"
    > "el Hospital Santa Cruz, como establecimiento de salud requiere adquirir servicio externo de informes de biopsias, para contar con proveedor que efectúe estos estudios, con el fin de asegurar un seguimiento a los pacientes que se les solicita exámenes de biopsias"
