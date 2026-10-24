# Guillermo Pedro Cejas Valenzuela — Talon de Vaca SpA y órdenes de difusión radial de Alto Hospicio

## Pregunta decisiva
¿Hay sustento primario para un patrón de contrataciones materiales de una sociedad controlada por un concejal, con una conexión entre la función pública/beneficio que justifique elevarlo a revisión editorial o de auditoría, y qué prueba falta para distinguir una compra radial ordinaria de una relación relevante?

## Origen y selección
Pista nueva de la pantalla `trato_directo` del pre-run 2026-10-24. Se eligió a Cejas entre las semillas por 11 órdenes repetidas bajo causal de proveedor único, coincidencia temporal con su cargo y una actividad radial que él mismo declaró. Antes de elegir se comprobó INDICE.md: no había ficha previa con su nombre ni la empresa.

## Hechos verificados

- InfoProbidad, declaración ID 506299, fechada 30-03-2020, identifica a Guillermo Pedro Cejas Valenzuela como concejal de la Municipalidad de Iquique; consigna derecho del 100% y condición de controlador en Talon de Vaca SpA, RUT 76.526.315-8. También registra actividad laboral no remunerada en Radio Neura.
- El gold `build_date` es `2026-10-23T14:20:50+00:00`. Consulta reproducible: `consultas/guillermo-cejas-alto-hospicio-radio-neura-1.sql`.
- En la ventana acreditada por sus declaraciones, el oro arroja once OCs únicas de Alto Hospicio a Talon de Vaca SpA, entre 18-02-2019 y 26-12-2019. Todas corresponden a difusión radial de “Fuerza Iquique”, tienen causal `Si solo existe un proveedor del bien o servicio` y monto bruto CLP $476.000 cada una. Total nominal: CLP $5.236.000; total de los valores UF de cada fecha: 187,66 UF. Seis figuran como `Aceptada` y cinco como `Enviada a proveedor`. El oro marca `same_institution=false`: el comprador no coincide con la Municipalidad de Iquique declarada como empleadora.
- Reapertura de primarias: OC 3447-392-SE19 (18-02-2019) está `Aceptada`; 3447-2350-SE19 (27-08-2019) y 3447-3598-SE19 (26-12-2019) están `Enviada a proveedor`. Sus fichas identifican al proveedor por el mismo RUT, la misma causal, difusión del programa, compra mensual y CLP $476.000 por orden.
- Las órdenes son de contratación mensual; la descripción de febrero especifica diez tandas comerciales diarias de 50 segundos. El comprador es la Municipalidad de Alto Hospicio, no Iquique.

## Inferencias e hipótesis, no hechos probados

- La reiteración mensual por causal de proveedor único, sumada al control societario declarado y a la actividad radial autodeclarada, justifica pedir el expediente de contratación y verificar el destino del beneficio. Es una razón para revisión, no evidencia de trato impropio.
- Puede tratarse de la compra ordinaria de espacios en un programa específico con derechos o disponibilidad de difusión exclusivos. Las fuentes públicas revisadas no permiten comprobar esa explicación.
- No se ha probado que el programa “Fuerza Iquique” se transmitiera por Radio Neura, que Cejas lo condujera, que recibiera beneficios personales ni que influyera en la contratación. No se infiere que el servicio beneficiara a la Municipalidad de Iquique; el comprador fue Alto Hospicio.

## Decisión
**borrador listo**. Se remite al editor como caso de compras/relaciones con el Estado para revisar un patrón concreto y una conexión documentada, con preguntas acotadas sobre fundamento de proveedor único, relación del programa con la actividad radial declarada y aceptación/pago. No se atribuye irregularidad ni conflicto. Reabrir/corregir el borrador si la revisión de expedientes demuestra que el patrón no existió, que el programa no tiene relación con la actividad declarada, o si las órdenes duplicadas/canceladas alteran el total y sus estados.

## Fuentes primarias
- InfoProbidad, declaración ID 506299: https://www.infoprobidad.cl/Declaracion/Declaracion?ID=506299
- Mercado Público, OC 3447-392-SE19: https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=3447-392-SE19
- Mercado Público, OC 3447-2350-SE19: https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=3447-2350-SE19
- Mercado Público, OC 3447-3598-SE19: https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=3447-3598-SE19

## Fuentes y límites de búsqueda
- Revisados primariamente: declaración InfoProbidad 506299 y fichas de Mercado Público de las OCs 3447-392-SE19, 3447-2350-SE19 y 3447-3598-SE19. Se buscaron las otras órdenes en el gold y se guardó su lista completa en la consulta reproducible; el paquete de PR lleva sus URLs.
- Revisado INDICE.md y `origin/main`: no se encontró Cejas, Talon de Vaca, Fuerza Iquique ni Radio Neura como caso previo.
- Búsquedas web sobre el programa y el candidato no identificaron corroboración utilizable; resultados generales o no relacionados. No se hizo búsqueda de Servel de resultados electorales ni se consultaron campañas. No se afirma que el cargo esté verificado por Servel: aquí consta en InfoProbidad.
- No se revisaron adjuntos/actos administrativos enlazados desde las órdenes, ni evidencia de pago, recepción conforme para todas las órdenes, audiencia del programa, titularidad/administración de Radio Neura o intervención de Cejas.
