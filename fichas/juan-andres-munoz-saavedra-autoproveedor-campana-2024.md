# Juan Andrés Muñoz Saavedra — gastos electorales a sociedad declarada (2024)

## Pregunta decisiva
¿El gasto de campaña de Juan Andrés Muñoz Saavedra a una sociedad que declaró como propia revela un hecho material no explicado por la rendición electoral aprobada, o solo una operación transparentada y auditada?

## Hechos comprobados
- InfoProbidad publica una declaración de Juan Andrés Muñoz Saavedra, candidato a consejero regional 2024, presentada el 23-07-2024. Registra una acción en **INVERSIONES MUÑOZ Y SAAVEDRA LTDA.**, RUT **76.028.531-5**; declara cantidad 80, valor corriente/libro CLP $3.200.000, fecha de adquisición 12-08-2008 y «Tiene Calidad de Controlador: false». Fuente primaria: https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1253060 (la página HTML fue revisada directamente; evidencia local temporal: `tmp/servel-2024-munoz/declaracion.html`). La ficha de oro usa `source_id=1253060`.
- El archivo definitivo de ingresos y gastos de Servel registra tres gastos del candidato a la misma sociedad, los tres fechados 24-10-2024: CLP $416.500 por impresión de adhesivos, $5.525.170 por publicidad y merchandising, y $952.000 por registro de vehículo. Total: **CLP $6.893.670 (181,57 UF)**. Dos líneas indican reembolso directo al candidato. El reporte no marca ninguna de las tres como rechazada. Fuente primaria: https://www-doc.servel.cl/2025/08/Reporte_Ingresos_Gastos_Definitivas2024.xlsx; hoja `INGRESOS Y GASTOS`, descargada y convertida con `xlsx2csv -a` a `tmp/servel-2024-munoz/all.csv/`. La hoja `Resultado Auditoria Cuentas` identifica la candidatura de Muñoz y le asigna **Aprueba**.
- El oro registra CLP $22.390.015 de gastos totales para la campaña, CLP $0 de gastos rechazados y estado `aprueba`; las tres líneas a la sociedad son las mismas. Consultas reproducibles: `consultas/juan-andres-munoz-saavedra-autoproveedor-campana-2024-1.sql`.
- El oro del corte **2026-10-27T15:25:49+00:00** no registra órdenes de compra con el RUT proveedor normalizado `76028531` en `purchase_order` (cero filas). Consulta: `consultas/juan-andres-munoz-saavedra-autoproveedor-campana-2024-2.sql`.

## Explicación legítima más fuerte
La relación sociedad-declarante y los gastos están identificados en fuentes públicas: Servel los registra bajo la razón social y el RUT declarado en InfoProbidad; la revisión de cuentas reporta «Aprueba». El gasto corresponde a bienes/servicios ordinarios de campaña (impresos, publicidad y registro vehicular). No hay evidencia encontrada de gasto rechazado, de omisión de la sociedad, de una orden estatal al proveedor ni de irregularidad en el precio o reembolso. «Aprueba» se reporta solo como resultado de la auditoría de la cuenta, no como conclusión sobre cualquier aspecto ajeno a ella.

## Límites
- La fuente de InfoProbidad informa cantidad 80; no la reinterpretamos como 80%.
- No se atribuye participación controladora: la declaración dice expresamente `false`.
- No se infiere infracción o conflicto por el solo hecho de pagar a una sociedad declarada.
- El cero en el oro se limita a las órdenes cargadas para ese RUT al corte citado; no es una afirmación sobre servicios privados ni sobre todas las compras públicas fuera de la cobertura del modelo.

## Decisión: descartada
La identidad y la transacción se verifican en primarias, pero la pista se limita a gasto de campaña informado y aprobado, sin rechazo, sin órdenes de compra públicas al proveedor y sin discrepancia o nexo adicional que justifique una pieza para investigador/a o auditor/a. El hecho aislado no supera la pregunta de interés público del protocolo en esta corrida.

**Reabrir si:** una resolución posterior modifica la aprobación de esta cuenta; aparece un documento primario sobre gasto, precio, reembolso o vínculo no transparentado; o se documentan ventas del proveedor a un organismo público y un nexo funcional temporal relevante.

## Fuentes
- Declaración InfoProbidad, ID 1253060: https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1253060
- Informe definitivo de ingresos y gastos electorales municipales 2024, Servel: https://www-doc.servel.cl/2025/08/Reporte_Ingresos_Gastos_Definitivas2024.xlsx
- Oro EstadoClaro, corte 2026-10-27T15:25:49+00:00; SQL reproducible: `consultas/juan-andres-munoz-saavedra-autoproveedor-campana-2024-1.sql` y `consultas/juan-andres-munoz-saavedra-autoproveedor-campana-2024-2.sql`.
