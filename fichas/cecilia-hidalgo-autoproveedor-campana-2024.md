# Cecilia Hidalgo — gasto de campaña a empresa declarada

## Pregunta decisiva
¿La cuenta electoral de Cecilia Hidalgo en la elección municipal de 2024 registra un gasto y solicitud de reembolso a una sociedad que ella había declarado controlar, y qué permite afirmar la evidencia sobre pago efectivo, materialidad y nexo con su cargo?

## Identidad
InfoProbidad identifica a CECILIA HIDALGO LABBE, concejala de la Municipalidad de Mariquina y candidata a concejala en 2024. La declaración 1249848, del 22-07-2024, consigna COMUNICACIONES CECILIA C HIDALGO LABBÉ IRL, RUT 76.317.272-4, cantidad 100, controladora, giro radioemisora y fecha de adquisición declarada 19-11-2013. La declaración previa 1235480 (04-07-2024) consigna el mismo RUT y empresa. La propia InfoProbidad indica como fecha de asunción en la concejalía 28-06-2021.

## Hechos comprobados

1. **Servel, reporte definitivo de ingresos y gastos electorales 2024:** la línea de gasto 267822 de la campaña de concejala de Hidalgo en Mariquina, fecha 22-10-2024, identifica al proveedor por RUT 76.317.272-4 y registra CLP $285.600 (7,52 UF), factura afecta a IVA n.º 478, categoría «Propaganda en radioemisoras», glosa «difusion radial» y «Reembolso directo al candidato». La solicitud se marca verdadera en el oro. El archivo original fue descargado desde el dominio oficial de Servel (2025/08) y convertido con `xlsx2csv -a`; la fila figura en `tmp/20261030T030148Z/hidalgo/servel/csv/INGRESOS Y GASTOS.csv`.
2. El mismo informe registra para la candidatura gasto electoral total CLP $1.358.068, solicitud de reembolsos por CLP $852.451 e ingreso de CLP $852.451 bajo «Reembolso hacia la Candidatura» el 11-11-2024. La cuenta figura «Aprueba con observaciones». El ingreso agregado no identifica qué gastos cubre ni permite atribuir la factura 478 a un pago específico.
3. El oro enlaza la participación declarada por RUT con la línea Servel. Marca la factura 267822 como `is_rejected = false`; la suma `self_supply_clp` de la candidatura es CLP $285.600. Esto es dato del cruce, no una determinación jurídica.
4. El oro contiene cuatro OCs a ese proveedor: tres de la Municipalidad de Mariquina en 2020, anteriores a la asunción de Hidalgo en 2021, por CLP $297.500 (10,36 UF), $416.500 (14,52 UF) y $59.500 (2,05 UF); y una de FOSIS del 24-03-2023 por CLP $750.000 (21,08 UF). La OC de FOSIS es para creación y difusión de cápsulas radiales en Mariquina, estado «Recepción Conforme», compra ágil de hasta 30 UTM con tres cotizaciones; la propia empresa figura como una cotizante junto a otra.
5. La consulta a `declared_supply` para la sociedad devuelve una OC durante las declaraciones que acreditan la participación, cero órdenes a la misma institución del cargo, una adjudicación directa y CLP $750.000. La OC durante ese período es FOSIS, no el municipio de Hidalgo. Esta cobertura es la de las órdenes incluidas en el oro, no un censo independiente de pagos.

## Pregunta e interés público
La cuenta electoral registra un gasto material para esta campaña (21,03% del gasto informado) a una empresa que la candidata declaró controlar, y marca una solicitud de reembolso directo. La pregunta acotada es cómo se trató ese gasto y si quedó incluido en el reembolso agregado. Es un nexo documentado entre el financiamiento electoral público solicitado y una sociedad controlada por la candidata; no se ha acreditado que el reembolso global de CLP $852.451 incluya esta factura ni que la empresa recibiera fondos fiscales por ella.

## Explicación legítima más fuerte
La empresa se dedica a radiodifusión y el gasto fue reportado como propaganda radial. La candidata declaró la participación antes de presentar el gasto; el gasto no está marcado como rechazado por el campo del cruce, y la cuenta completa aparece «Aprueba con observaciones». La compra de medios para una campaña es una explicación comercial ordinaria. Las compras de Mariquina al mismo RUT que aparecen en el oro son de 2020, antes de que Hidalgo asumiera; la compra de 2023 fue de FOSIS, no de su municipalidad.

## Límites y afirmaciones débiles
- La participación y el control son autodeclarados; no se verificó en el Registro de Empresas.
- «Reembolso directo al candidato» y la glosa agregada de reembolso prueban lo informado en la cuenta, pero no enlazan el ingreso de CLP $852.451 con la factura 478 ni el movimiento de fondos a la sociedad.
- «Aprueba con observaciones» es el estado global de la cuenta y no establece por sí solo el tratamiento individual de la factura.
- No hay documento revisado que acredite intervención personal de Hidalgo, precio no competitivo, sobreprecio, conflicto legal, infracción o beneficio personal. No se sugiere ninguno.

## Decisión
**borrador listo** para el editor, en `casos/autocontratacion/cecilia-hidalgo-autoproveedor-campana-2024.md`. La identidad/RUT, gasto, solicitud y participación coinciden en primarias; la proporción del gasto y el reembolso reportado hacen pertinente una pregunta de auditoría, aunque el caso es de relevancia moderada y no prueba irregularidad. La explicación legítima queda expuesta y las preguntas siguientes son acotadas.

### Revisión editorial v6
1. **Verdad:** la ficha primaria de InfoProbidad, el reporte primario definitivo Servel y las fichas primarias de Mercado Público fueron reabiertos; identidad cruzada por RUT.
2. **Importancia:** gasto a sociedad controlada y solicitud de fondos de reembolso; el monto es CLP $285.600 (7,52 UF) y representa 21,03% del gasto de campaña registrado.
3. **Justicia:** el borrador dice «solicitó», no que el reembolso específico se haya pagado; incluye el servicio comercial plausible, la no-rechazo en el oro y los límites.
4. **Hecho:** categoría existente `autocontratacion`; citas verificadas y fuentes primarias enlazadas.
5. **Novedad:** `git grep` en `origin/main` para Cecilia Hidalgo y RUT 76317272 en `casos/` no halló coincidencias.

## Consultas reproducibles
- `consultas/cecilia-hidalgo-autoproveedor-campana-2024-1.sql`: declaración candidatura, sociedad y línea Servel.
- `consultas/cecilia-hidalgo-autoproveedor-campana-2024-2.sql`: órdenes al RUT y cronología de compradores.

## Fuentes primarias
- InfoProbidad, declaraciones 1235480 y 1249848: https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1235480 y https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1249848
- Servel, Reporte definitivo de ingresos y gastos electorales 2024: https://www-doc.servel.cl/2025/08/Reporte_Ingresos_Gastos_Definitivas2024.xlsx
- Mercado Público: OC 4061-242-SE20, 4061-306-SE20, 4053-825-SE20 y 509149-8-AG23, enlazadas en las consultas guardadas.
- Corte del oro: `2026-10-27T15:25:49+00:00`.

## Decisión editorial (2026-10-30): publicado

Publicar: InfoProbidad 1249848 identifica a Cecilia Hidalgo Labbe y registra el RUT 76.317.272-4, giro radioemisora, 100 en cantidad/porcentaje y calidad de controladora.
El reporte oficial de Servel 2024 registra el 22-10-2024 la factura 478 al mismo RUT por $285.600, propaganda radial, con reembolso directo al candidato solicitado.
El gasto es una fracción material de la cuenta según el reporte; el ingreso agregado de reembolso no prueba que esta factura se haya pagado ni que la sociedad recibiera fondos.
El borrador acota la pregunta de auditoría, expone la explicación comercial y no atribuye intervención, sobreprecio ni infracción; no encontré duplicado en la categoría.

PR: https://github.com/rodrigooig/estadoclaro-casos/pull/251
