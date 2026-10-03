# Federico Leonardo Venegas Cancino — sociedad médica y gestión del Servicio de Salud Reloncaví

- **ID:** `federico-venegas-cancino-sociedad-medica`
- **Categoría:** actividades/cargos/temporalidad; salud pública; compras/relaciones con el Estado.
- **Estado:** evidencia insuficiente; sin borrador de caso.
- **Fecha de trabajo:** 2026-10-03.
- **Corte del oro:** `meta.build_date = 2026-10-02T15:43:07+00:00`; consultas de solo lectura con `ec-gold-sql`.
- **Identidad:** consulta por nombre completo exacto en `person`; sin atribución a homónimos. Se redacta todo RUT personal.

## Síntesis y mapa de afirmaciones

El oro contiene una declaración periódica fechada 29-03-2017 que identifica a Federico Leonardo Venegas Cancino como director del Servicio de Salud Reloncaví. En el mismo snapshot figura una actividad profesional en medicina, «CONSULTA MEDICA», marcada remunerada; también una participación de 36% en SOCIEDAD MEDICA FEDERICO VENEGAS, marcada no controladora y con giro de servicios médicos. El registro es autodeclarado y no verifica prestación efectiva, control, continuidad ni situación posterior a marzo de 2017. La consulta produce dos filas por la coexistencia de dos registros de actividad en la misma declaración; el dato societario repetido por ese join no son dos participaciones.[consultas/federico-venegas-cancino-1.sql]

Dos resoluciones primarias de la Superintendencia de Salud registran a Venegas como representante legal que solicitó acreditación para el Hospital de Maullín en diciembre de 2015 y para el Hospital de Calbuco el 21-09-2017; la resolución de Calbuco se emitió en enero de 2018.[2][3] Una fuente periodística de 2017 informa que dejó la dirección del SSR el 15-11-2017 y que volvería a Psiquiatría del Hospital de Puerto Montt.[4] Una nota de 2017 sobre acreditación recoge que Venegas hablaba como director del SSR sobre la red de hospitales, incluido Calbuco y Maullín.[10] Esta secuencia hace relevante aclarar en qué calidad actuó como representante en cada expediente; las fuentes consultadas no dicen que representara a la sociedad médica declarada, ni identifican una relación entre esa sociedad y esos procesos.

Las consultas del oro por el RUT societario declarado y por dos variantes del nombre del proveedor encontraron cero órdenes; una consulta aparte acotada a los compradores SSR/Hospital de Puerto Montt/Maullín/Calbuco también encontró cero.[consultas/federico-venegas-cancino-2.sql] [consultas/federico-venegas-cancino-3.sql] [consultas/federico-venegas-cancino-4.sql] No es evidencia de que no existan contratos, honorarios, subcontratos u órdenes fuera del artefacto/cobertura o bajo otra identificación.

**Decisión:** evidencia insuficiente, no preparar caso. La hipótesis de interés público —eventual relación entre una participación médica privada declarada y actuaciones de gestión/acreditación en la red pública— no supera el gate: falta el documento primario de la declaración original en InfoProbidad y no hay evidencia que conecte la sociedad con los hospitales o a Venegas con una decisión contractual/administrativa en beneficio de esa sociedad. La explicación legítima más plausible es que las gestiones de acreditación fueran parte de su función de dirección pública, y que la participación médica fuera una inversión/actividad profesional previamente declarada; no se pudo verificar cuál capacidad invocó formalmente en cada expediente.

## Consultas reproducibles al oro

| Consulta guardada | Resultado medido |
|---|---|
| [1](../consultas/federico-venegas-cancino-1.sql) | 1 declaración, 29-03-2017; 2 filas de actividad. Director del SSR, actividad médica remunerada, participación societaria 36%, no controladora. |
| [2](../consultas/federico-venegas-cancino-2.sql) | 0 filas en `purchase_order` por RUT societario exacto normalizado `777042408`. |
| [3](../consultas/federico-venegas-cancino-3.sql) | 0 filas por nombres de proveedor «sociedad medica federico venegas» / «federico venegas». |
| [4](../consultas/federico-venegas-cancino-4.sql) | 0 filas por el mismo RUT societario y comprador SSR / hospitales de Puerto Montt, Maullín o Calbuco. |

La declaración es un único snapshot y no acredita cargo o interés actual. Los resultados negativos están limitados a `purchase_order` y los predicados guardados. No se ejecutó el build ni se consultó la API de producción.

## Rutas examinadas (2026-10-03)

1. **Declaración / identidad y temporalidad — fuente primaria necesaria, no localizada en origen.** Consulté el oro por el nombre completo y fecha: un snapshot 29-03-2017 enlaza cargo, actividad y sociedad.[consultas/federico-venegas-cancino-1.sql] Busqué el nombre exacto en InfoProbidad, incluyendo búsqueda restringida al dominio y registro de declaración; los resultados condujeron a declaraciones de terceros/homónimos, no a la ficha correcta. No atribuyo el ID resultante 5019575: la extracción verifica que corresponde a otra persona.[1] Queda pendiente obtener la ficha de declaración primaria correcta desde el índice/fuente de InfoProbidad.
2. **Expedientes oficiales de acreditación.** Leí resoluciones alojadas por la Superintendencia: la de Maullín menciona solicitud del 29-12-2015 y a Venegas como representante legal; la de Calbuco menciona solicitud del 21-09-2017 y el mismo rol.[2][3] Son evidencia de lo que esos expedientes registran, no de una relación con la sociedad declarada, de quién pagó la atención médica ni de un contrato de compra.
3. **Cargo y cese — contraste temporal.** SoyChile publicó el 08-11-2017 que el cargo terminaba el 15-11-2017 y que retornaría a labores de Psiquiatría en el Hospital Puerto Montt.[4] Una nota de 14-03-2018 sitúa el cambio de dirección del SSR en marzo de 2018; no altera la fecha de salida publicada para Venegas.[8]
4. **Contexto institucional y explicación legítima.** Una fuente local recoge a Venegas, como director del Servicio de Salud, hablando sobre acreditación y calidad en hospitales de la red, incluidos Calbuco y Maullín.[10] Esto respalda como alternativa plausible una función pública de gestión de calidad/acreditación; no determina su firma o competencia formal en los dos expedientes.[10]
5. **Sociedad / desambiguación.** Una ficha tributaria secundaria asocia al nombre de la sociedad y RUT societario el rubro de servicios médicos independientes.[9] Es un directorio derivado, no fuente primaria de propiedad ni de beneficiarios; la participación de 36% procede del campo declarado en el oro, pendiente de cotejo con la declaración original.
6. **Mercado Público / identificador, razón social y comprador.** Tres consultas independientes guardadas contra la tabla canónica `purchase_order`: RUT societario exacto; fragmentos del nombre de proveedor; RUT más conjunto de compradores del SSR y hospitales relevantes. Las tres dieron cero filas. Búsquedas web exactas por RUT y razón social no mostraron ficha oficial pertinente; los resultados irrelevantes de homónimos/proveedores distintos no se cuentan como hallazgo.
7. **Deduplicación.** Revisión de `INDICE.md`, fichas locales y búsqueda textual del nombre completo, variante de sociedad y RUT societario en `estadoclaro-casos` el 2026-10-03: no apareció otra pista/caso con la misma huella en esos repositorios. Resultado limitado al material revisado.

## Gate editorial y vacíos

- Identidad por nombre completo, cargo e institución en el snapshot del oro: **sí**; cotejo de la declaración primaria original: **pendiente**.
- Hecho material reproducible: **parcial**; participación médica declarada y rol público coexisten en el snapshot; no está verificada fuera del dato autodeclarado.
- Relevancia pública concreta: **insuficiente**; las resoluciones registran una representación legal, pero no establecen una conexión con la sociedad médica ni una decisión favorable a ella.
- Error de cruce: **controlado dentro del artefacto** por búsquedas exactas a órdenes en cuatro predicados; esto no descarta contratos o relaciones fuera de cobertura.
- Explicación legítima: **buscada**; la gestión de acreditación/calidad de la red aparece en la cobertura pública como parte de su cargo de director; no se puede atribuir aún cada acto a esa capacidad.

No se elude acceso, login, CAPTCHA ni pago; no se contacta a personas ni se presentan solicitudes. No corresponde «requiere humano»: ya hay documentos públicos legibles y no es imprescindible una barrera de acceso la que impide concluir, sino la falta de enlace probatorio entre participación societaria y actos institucionales. Reabrir solo con la declaración primaria correcta y documentación oficial que identifique capacidad, representado y eventual nexo económico en los expedientes, o con una compra/contrato nuevo de la sociedad con vínculo exacto.

## Sources

[1] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=5019575 — InfoProbidad declaration (search result may be homonym, verify)
    > "CECILIA ELIANA URBINA PINTO"
[2] https://www.superdesalud.gob.cl/normativa/668/articles-16602_recurso_1.pdf — Superintendencia de Salud, Hospital de Calbuco accreditation resolution
    > "mediante la cual don Federico Leonardo Venegas Cancino, en su calidad de representante legal, solicita la acreditación del prestador institucional denominado “HOSPITAL DE CALBUCO”"
[3] https://www.superdesalud.gob.cl/app/uploads/2016/08/articles-14239_recurso_1.pdf — Superintendencia de Salud, Hospital de Maullín accreditation resolution
    > "mediante la cual don Federico Leonardo Venegas Cancino, en su calidad de representante legal, solicita la acreditación del prestador institucional denominado “HOSPITAL DE MAULLÍN”"
[4] https://www.soychile.cl/Puerto-Montt/Sociedad/2017/11/08/497765/Director-del-Servicio-de-Salud-del-Reloncavi-dijo-ignorar-por-que-no-renovaron-su-contrato.aspx — SoyChile, término de período de director
    > "El 15 de noviembre de 2017, dejó ese cargo el psiquiatra Federico Venegas, a quien el Minsal no le renovó su contrato."
[8] https://www.soychile.cl/Puerto-Montt/Sociedad/2018/03/14/522003/Gobierno-nombro-al-nuevo-director-del-Servicio-de-Salud-del-Reloncavi.aspx — SoyChile, nombramiento nuevo director SSR
    > "El 15 de noviembre de 2017, dejó ese cargo el psiquiatra Federico Venegas, a quien el Minsal no le renovó su contrato."
[9] https://www.chilepymes.com/info/soc-medica-federico-venegas-ltda-8140B6A6F96FB89E — ChilePymes, ficha secundaria sociedad
    > "SOC MEDICA FEDERICO VENEGAS LTDA es una empresa dedicada a actividades de atencion de la salud humana y de asistencia social / actividades de medicos y odontologos con presencia en Puerto Montt, Llanquihue, Region Los Lagos."
[10] https://www.elcalbucano.cl/2017/08/hospital-de-frutillar-recibe-acreditacion-por-sus-estandares-de-calidad — El Calbucano, contexto acreditación hospitales SSR
    > "Por su parte el Director del Servicio de Salud Del Reloncaví, Federico Venegas, señaló que los usuarios pueden tener la seguridad de que se está trabajando con calidad."
