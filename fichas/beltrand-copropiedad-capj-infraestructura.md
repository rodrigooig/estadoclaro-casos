# Copropiedad declarada en CAPJ e infraestructura judicial — revisión editorial

- **ID:** `beltrand-copropiedad-capj-infraestructura`
- **Estado:** descartada como pista de caso; revisión de cribado, no imputación.
- **Fecha de revisión:** 2026-10-06 UTC.
- **Corte del oro:** `meta.build_date=2026-10-02T15:43:07+00:00`; copia local reportada sin cambios. Consultas solo con `ec-gold-sql`.
- **Identidad:** InfoProbidad identifica por nombre completo a Jessica Alejandra Beltrand Montenegro como jueza y a Vanessa Ivonne Beltrand Montenegro como jefa de sección de construcción de la Corporación Administrativa del Poder Judicial (CAPJ).[2][3] El material revisado no permite afirmar parentesco; no se cruzaron RUT personales.

## Hallazgo medido y mapa editorial

El cribado de inmuebles actuales con fecha de adquisición desde 2025 generó una coincidencia: ambas declaraciones actuales informan tres inmuebles bajo «Comunidad», adquiridos el 26-03-2025, con roles de avalúo coincidentes. En particular, el rol 08085-00208 aparece con avalúo fiscal CLP 350.526.294 en ambas declaraciones.[2][3] Esto acredita una coincidencia declarativa de copropiedad/inscripción, no parentesco, intervención pública, origen de fondos ni beneficio indebido.

Hay una diferencia en la presentación de otro registro compartido: para el rol 02033-00012, la declaración de Vanessa reporta comuna San Rafael y CLP 44.212.108, mientras la de Jessica reporta Talca y CLP 45.727.934.[2][3] Es una discrepancia de las fichas consultadas; no se presume cuál dato es correcto ni se infiere irregularidad.

InfoProbidad describe el cargo de Vanessa como «Jefe Seccion De Construccion Zona Sur», con fecha de asunción 01-01-2025; la declaración también clasifica su actividad remunerada como laboral en la CAPJ.[2] Una publicación institucional de Radio PJUD presenta a una Vanessa Beltrán entre las jefas de diseño y construcción de proyectos del Poder Judicial, sin aportar evidencia de participación en una compra concreta.[4]

## Rutas independientes revisadas — 2026-10-06

1. **Minería de inmuebles recientes (oro):** consulta `beltrand-copropiedad-capj-infraestructura-1.sql`, `panel` + declaraciones + `real_estate`, fechas de adquisición desde 2025, top 50 por valor; produjo registros de inmuebles y permitió detectar los tres roles coincidentes. Es un filtro exploratorio, no prueba de relación personal o contractual.
2. **Instrumentos financieros recientes (oro):** consulta `...-2.sql`, mismo corte y ventana con `financial_asset`; devolvió cero filas. Esto solo describe los registros/campos y filtro consultados.
3. **Verificación individual en origen:** se extrajeron las declaraciones completas de InfoProbidad ID 5113738 (31-03-2026) y 5111715 (24-03-2026), cotejando nombre, cargo, fechas, forma de propiedad y roles de avalúo.[2][3] Ambas declaran la inscripción 08085-00208; la ficha de Jessica informa además estado civil casada y régimen de separación total, mientras la de Vanessa declara soltería. No se usa ese contraste para inferir vínculo familiar.
4. **Interés societario/órdenes vinculadas en el oro:** cruce independiente por nombre exacto de `declared_supply` con `purchase_order`; cero filas para ambas personas. El resultado no cubre compras no asociadas a una sociedad declarada ni evidencia de funciones individuales.
5. **Registro institucional de función:** búsqueda en `pjud.cl` por el nombre completo halló la página de Radio PJUD sobre infraestructura, que menciona a Vanessa Beltrán en jefatura de construcción; se leyó el contenido de la página.[4] No identifica a Jessica como copropietaria ni a Vanessa en evaluación, administración o recepción de una contratación.
6. **Búsqueda del proceso/contratación exacta:** consultas web por nombre completo en `pjud.cl`/`capj.cl` y por licitaciones de construcción de CAPJ no devolvieron un documento de compra que la nombre en una intervención. Los resultados de licitaciones generales no relacionadas se descartaron; no se eludieron controles de acceso.
7. **Dedupe:** búsqueda de ambos nombres completos en `INDICE.md`, fichas locales y el repositorio público de casos no encontró coincidencias. No se atribuyeron resultados de homónimos.

## Explicación más plausible, límites y decisión

La explicación legítima más plausible es una adquisición privada en comunidad que ambas titulares declararon, consistente con los campos de sus propias fichas; la coincidencia no establece por sí sola parentesco ni conflicto con el cargo de Vanessa. La función de construcción justifica comprobar expedientes si surgiera un nexo específico, pero las búsquedas realizadas no individualizaron proceso, proveedor, acto o intervención personal.

**Decisión:** `descartada` como pista de caso por ahora. No se satisface relevancia pública más allá de la coincidencia patrimonial: falta evidencia primaria de una decisión contractual, interés frente a una contraparte o participación de alguna de las dos en acto público relacionado. No se prepara borrador. La discrepancia de comuna/avalúo queda como límite de calidad de dato, no como hallazgo de conducta.

**Condición para reabrir:** documento registral oficial accesible que aclare la coincidencia/diferencia de la inscripción, o expediente/acta de CAPJ que conecte una contratación de infraestructura con un interés declarado y especifique el papel de Vanessa; para cualquier atribución relacional se necesitaría fuente primaria pública que identifique expresamente el vínculo, nunca solo apellidos o registros de propiedad compartidos. No hubo segundo revisor independiente.

## Sources

[2] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=5113738 — InfoProbidad: declaración de Vanessa Beltrand Montenegro
    > "### Declaración completa de VANESSA IVONNE BELTRAND MONTENEGRO"
    > "| Cargo o función | Jefe Seccion De Construccion Zona Sur |"
    > "| Rol avalúo | 08085-00208 |"
    > "| Fecha de adquisición | 26-03-2025 |"
    > "| Avalúo Fiscal | $ 350.526.294 |"
    > "| Forma de propiedad | COMUNIDAD |"
    > "| Comuna | San Rafael |"
    > "| Rol avalúo | 02033-00012 |"
    > "| Avalúo Fiscal | $ 44.212.108 |"
[3] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=5111715 — InfoProbidad: declaración de Jessica Beltrand Montenegro
    > "### Declaración completa de JESSICA ALEJANDRA BELTRAND MONTENEGRO"
    > "| Rol avalúo | 08085-00208 |"
    > "| Avalúo Fiscal | $ 350.526.294 |"
    > "| Cargo o función | Juez |"
    > "| Fecha de adquisición | 26-03-2025 |"
    > "| Forma de propiedad | COMUNIDAD |"
    > "| Comuna | Talca |"
    > "| Rol avalúo | 02033-00012 |"
    > "| Avalúo Fiscal | $ 45.727.934 |"
[4] https://radio.pjud.cl/podcast/cap-54-tenemos-que-hablar-de-justicia-infraestructura-del-poder-judicial — Radio PJUD: episodio sobre infraestructura judicial
    > "Conversamos con Jorge Ponce, Jefe del Departamento de Infraestructura y Mantenimiento del Poder Judicial, junto a las Jefas de Diseño y de Construcción de proyectos, Valentina Luksic y Vanessa Beltrán."
