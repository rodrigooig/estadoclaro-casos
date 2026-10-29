# Francisco Javier Sanz Abad — gasto electoral a ABS SpA declarada (2024)

## Pregunta decisiva
¿El gasto de campaña de Francisco Javier Sanz Abad a ABS SpA, sociedad que él mismo declaró controlar, deja una cuestión material no resuelta por la rendición electoral o es un gasto de arriendo declarado y aceptado por Servel, sin nexo con compras de la Municipalidad de Curicó?

## Hechos comprobados
- InfoProbidad identifica a **FRANCISCO JAVIER SANZ ABAD**, candidato a concejal 2024 por Curicó, en declaración presentada el 25-07-2024 (fuente primaria: [declaración 1259398](https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1259398)). La declaración incluye **ABS SpA, RUT 76.505.155-K**, con 75% de participación, adquisición el 11-05-2015, valor declarado CLP $2.500.000 y calidad de controlador. La ficha trata esto como autodeclaración, no como verificación de propiedad externa.
- El libro oficial de SERVEL para elecciones municipales y regionales 2024 registra la factura 207 de ABS SpA por arriendo de vehículo: **CLP $2.951.200 (77,73 UF)**, fecha 08-10-2024, renglón «Arriendo de vehículos», concepto «factura por pagar arriendo vehículo», no marcado como rechazado, con reembolso directo solicitado. Fuente primaria: [Reporte definitivo de ingresos y gastos 2024 (XLSX)](https://www-doc.servel.cl/2025/08/Reporte_Ingresos_Gastos_Definitivas2024.xlsx), hoja exportada localmente `INGRESOS Y GASTOS.csv`; el Formulario Auxiliar 107 incluye la solicitud de reembolso por el mismo monto y la descripción «arriendo vehículo para campaña a concejal».
- La rendición de campaña de Sanz figura en oro como «aprueba con observaciones»; no es rechazo del asiento ni equivale a una certificación independiente del servicio prestado. El expediente consultado no aporta observación específica sobre esta factura.
- En Mercado Público, el cruce por RUT **76.505.155-K** recupera una OC aceptada 5052-790-SE17 de CLP $3.748.500 (140,70 UF), fechada 18-07-2017, del Hospital de Talca/Servicio de Salud del Maule. Es anterior a su asunción como concejal (06-12-2024 según el registro de vigencia en el oro) y `same_institution=false`; no hay órdenes del proveedor a la Municipalidad de Curicó en el resultado consultado.

## Explicación legítima más fuerte
La factura declarada corresponde a arriendo de vehículo para la campaña; tanto la relación con ABS SpA como la solicitud de reembolso se informaron a las autoridades electorales. Servel no rechazó el gasto y aprobó la cuenta con observaciones. La OC identificada es antigua, de otro organismo y anterior al cargo electivo. Nada de lo revisado acredita intervención en la compra, pago final del reembolso, sobreprecio, falta de servicio o beneficio ilícito.

## Decisión: descartada
No emerge un hecho distinto de una operación de campaña autorreportada a una sociedad controlada y no rechazada por el fiscalizador. La cifra aislada y el asiento no resuelto en sentido adverso no satisfacen materialidad ni nexo funcional que justifique un caso de interés público. No se abre PR al editor.

**Reabrir si** una resolución o documento primario de SERVEL cambia el resultado de auditoría de esta línea, se acredita que el servicio no se prestó o hubo sobreprecio, o aparece una contratación de ABS SpA con la Municipalidad de Curicó durante el ejercicio del cargo acompañada de un acto concreto de intervención o decisión de Sanz.

## Consultas y fuentes
- Oro (solo `ec-gold-sql`), corte `meta.build_date=2026-10-27T15:25:49+00:00`; consulta reproducible: `consultas/francisco-sanz-abs-campana-2024-1.sql`.
- SERVEL libro de campaña 2024 y Formularios Auxiliares 103/107, consultados en los CSV exportados localmente desde el archivo oficial enlazado arriba.
- InfoProbidad: declaración 1259398, URL indicada arriba.
- Mercado Público: https://www.mercadopublico.cl/PurchaseOrder/Modules/PO/DetailsPurchaseOrder.aspx?codigoOC=5052-790-SE17
