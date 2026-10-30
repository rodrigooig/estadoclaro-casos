# Claudia Paz Miranda Fuentes — participación no controladora en SURA y coincidencia con compras del Poder Judicial

## Pregunta decisiva
¿La coincidencia entre una tenencia declarada minoritaria/no controladora en SURA y órdenes al proveedor que el oro normaliza como RSA Seguros Chile, con nueve registros atribuidos al Poder Judicial, permite sostener una pregunta de auditoría concreta ligada a la función jurisdiccional?

## Hechos observados
- La consulta del oro identifica a Claudia Paz Miranda Fuentes, jueza del Poder Judicial. En declaraciones sucesivas (2022–2025) aparece SURA, RUT 99.017.000, como tipo “OTRO”, cantidad 100, valor CLP $15.000.000 y sin calidad de controladora. InfoProbidad, fuente primaria consultable por ID 5096629 (actualización 24-03-2025): https://www.infoprobidad.cl/Declaracion/Declaracion?ID=5096629 . El valor equivale aproximadamente a 386,01 UF al 24-03-2025; es valor declarado, no tasación independiente.
- El cruce del oro agrupa 1.312 órdenes en el período cubierto bajo RSA Seguros Chile S.A. (mismo RUT normalizado), 9 coincidencias de institución con Poder Judicial; 473 aparecen marcadas como trato directo. El monto agregado del cruce es CLP $33.033.810.954 (887.093,42 UF según suma del oro); el oro asocia dos declarantes a ese RUT. La similitud de nombre entre SURA/RSA y proveedor es 0,56, por lo que el emparejamiento nominal es incierto, aunque el RUT coincide.
- Corte del oro: `meta.build_date = 2026-10-27T15:25:49+00:00`. SQL reproducible: `consultas/claudia-miranda-rsa-20261030-1.sql`.

## Explicación legítima más fuerte y límites
La declaración no identifica una participación controladora; se clasifica como “OTRO”, y el oro registra dos declarantes para el RUT, compatible con una tenencia financiera no exclusiva. Seguros es un proveedor institucional amplio; la compra del Poder Judicial no demuestra que esta jueza participara en selección, administración o decisión de compra, ni que obtuviera beneficio personal. El emparejamiento del nombre societario tiene similitud moderada y no se individualizaron OCs primarias con la consulta realizada. No se infiere que la compañía haya sido favorecida ni que exista infracción.

## Decisión
**Descartada.** La coincidencia agregada es grande, pero el dato de participación es no controlador, el proveedor tiene múltiples declarantes y el oro no acredita vínculo decisorio de la jueza con la contratación. El volumen institucional atribuido no es monto de beneficio personal. Falla el umbral de nexo funcional documentado de la v6; la pista no pasa a borrador.

**Qué la reabriría:** una orden/expediente primario que demuestre intervención o competencia de Miranda en la contratación de seguros del Poder Judicial, junto con confirmación del RUT/razón social y del período de tenencia; o evidencia primaria de participación controladora/beneficio material distinto del registro financiero observado.

## Fuentes y límites
- InfoProbidad, declaración ID 5096629: https://www.infoprobidad.cl/Declaracion/Declaracion?ID=5096629
- Mercado Público, datos agregados consultados a través de `declared_supply` del oro; no se obtuvo en esta pasada una OC individual primaria que enlace a la declarante con una decisión.
- Resultado negativo limitado a las fuentes y al corte señalados; no es afirmación sobre todas las compras del Poder Judicial.
