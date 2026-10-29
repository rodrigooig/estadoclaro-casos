# Angela Cabezón Contreras — gasto de campaña a AC Impresiones SpA declarada (2025)

## Pregunta decisiva
¿La compra de propaganda de Angela Cabezón Contreras a AC Impresiones SpA, sociedad que su declaración de intereses identifica entre las empresas declaradas, revela un hecho de interés público no explicado por una operación de campaña informada y aprobada; y hay un nexo funcional con compras públicas?

## Hechos comprobados
- InfoProbidad identifica a **ANGELA CABEZON CONTRERAS** como candidata a diputada 2025 por el organismo «SERVEL CANDIDATOS A ELECCIONES». La declaración 1505058 fue presentada el 20-08-2025 y registra asunción como candidata el 18-08-2025. La sección de sociedades muestra una participación en empresa; fuente primaria: [declaración 1505058](https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1505058). El oro vincula esa declaración con **AC IMPRESIONES SPA**, RUT 77.143.924-1, giro declarado «SERVICIOS PUBLICITARIOS» y marca `is_controlling=true`; esos campos son lo declarado/normalizado, no una verificación registral externa.
- El libro definitivo de SERVEL para elecciones presidenciales y parlamentarias 2025 contiene la factura 894, fechada 07-11-2025, por **CLP $1.685.040 (42,50 UF)** a AC Impresiones SpA, por «Propaganda impresa y merchandising»: «VOLANTES JOCKEY CALENDARIOS DE BOLSILLO CANDIDATA DISTRITO 7». La fila está clasificada «Reembolso directo al candidato» y no está marcada como gasto rechazado. El Formulario Auxiliar 107 registra solicitud por igual importe. El resultado oficial de auditoría para la candidatura de Cabezón en Distrito 7 es «Aprueba». Fuentes primarias: [libro definitivo de SERVEL 2025 (XLSX)](https://www-doc.servel.cl/2026/09/Reporte%20Ingresos%20y%20Gastos%20Electorales%202025%20-%20Definitivas%20Presidenciales%20y%20Parlamentarias.xlsx), hojas exportadas localmente `FORMULARIO 87 Y 88.csv`, `FORMULARIO AUXILIAR 107.csv` y `Resultado Auditoria Cuentas.csv`.
- El cruce por el RUT 77.143.924-1 en las órdenes guardadas en el oro devuelve **9 órdenes** entre 19-08-2021 y 11-06-2024, por **CLP $4.564.686 (132,29 UF)**: municipalidades de Valparaíso, Quillota, Cabildo, Petorca, Viña del Mar y La Cruz. No aparecen órdenes posteriores a la declaración de candidatura del 20-08-2025. Son compras anteriores al rol electoral, sin evidencia revisada de intervención de Cabezón.

## Explicación legítima más fuerte
La línea de SERVEL describe material de propaganda impresa para la propia candidatura; fue reportada con el proveedor y la solicitud de reembolso aparece en el auxiliar, y la rendición de la candidatura fue aprobada. Las órdenes municipales del proveedor son años anteriores al rol de candidata. No hay en las fuentes revisadas un gasto rechazado, ni una autoridad electa de Cabezón que permita trazar un nexo entre su función pública y aquellas órdenes.

## Decisión: descartada
No queda una pregunta material de probidad más allá de una operación de campaña explícitamente reportada y aprobada, con bienes coherentes con su descripción. La actividad previa de la sociedad como proveedora municipal no acredita intervención o beneficio funcional de la candidata. No pasa la vara de interés público y nexo exigida para un borrador editorial.

**Reabrir si** SERVEL revierte la aprobación o identifica una observación específica de la factura 894; aparece prueba primaria de servicio no prestado, sobreprecio o reembolso improcedente; o un documento acredita que Cabezón ejercía un cargo público con competencia/intervención en las compras municipales de AC Impresiones SpA.

## Consultas y fuentes
- Oro (solo `ec-gold-sql`), corte `meta.build_date=2026-10-27T15:25:49+00:00`; consulta reproducible: `consultas/angela-cabezon-ac-impresiones-campana-2025-1.sql`.
- SERVEL: libro definitivo oficial 2025 enlazado arriba; descarga local 15,4 MB y exportación `xlsx2csv -a`; factura 894 en la hoja `FORMULARIO 87 Y 88.csv`, solicitud del mismo importe en `FORMULARIO AUXILIAR 107.csv` y resultado «Aprueba» en `Resultado Auditoria Cuentas.csv`.
- InfoProbidad: declaración 1505058, URL indicada arriba.
