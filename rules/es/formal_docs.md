# Reglas de documentos formales: Español

## 1. Registro y persona

- **Registro impersonal en documentos formales.** En tesis, auditorías e informes de gestión, sustituye el tuteo informal por la forma impersonal, la pasiva refleja o la tercera persona. La ISO 7144 no debe citarse como fundamento de esta regla: regula solo la presentación física de tesis (formato, portada, paginación), no la gramática ni el registro lingüístico. [Política editorial; RAE, Nueva Gramática, la pasiva refleja, describe esta tendencia en textos genéricos sin imponerla como norma obligatoria]
  - Incorrecto: «Instala el paquete y revisa la memoria.»
  - Correcto: «Se instaló el entorno y se auditó el consumo de memoria.»
  - Incorrecto: «En este capítulo te mostraré la arquitectura.»
  - Correcto: «El presente capítulo expone la arquitectura del sistema.»
- **Consistencia de registro.** No mezcles tuteo informal con la forma impersonal dentro del mismo documento formal; una vez elegido el registro, mantenlo en todas las secciones. [Política editorial]

## 2. Preguntas retóricas y metadiscurso

- **Sin preguntas retóricas como recurso expositivo.** No se encontró una norma oficial, ni de la RAE ni de APA o IEEE, que prohíba las preguntas retóricas en el registro académico; desaconsejarlas es una preferencia editorial de claridad, no una corrección normativa. [Política editorial]
  - Incorrecto: «¿Por qué esta arquitectura es resiliente? La respuesta está en...»
  - Correcto: «La resiliencia de esta arquitectura se debe a...»
- **Sin metadiscurso autorreferencial.** Elimina fórmulas como «en este trabajo, el autor abordará...» o «como es sabido...»; enuncia la afirmación de manera directa. [Política editorial]
  - Incorrecto: «En este trabajo, el autor profundizará en los resultados obtenidos.»
  - Correcto: «Este trabajo analiza los resultados obtenidos.»

## 3. Evidencia, adjetivos y citas

- **Sin calificativos vacíos.** No califiques hallazgos con adjetivos sin sustento, como «un descubrimiento asombroso» o «una mejora increíble»; expresa la evidencia de forma empírica. [Política editorial]
  - Incorrecto: «El ajuste logró una mejora increíble.»
  - Correcto: «El ajuste redujo la latencia en un 22 % respecto a la línea base.»
- **Cita la fuente o elimina la afirmación.** Evita alusiones vagas como «los expertos señalan» sin autor ni año; si no hay cita formal, reformula la afirmación como hipótesis de trabajo o elimínala. [Política editorial]
  - Incorrecto: «Los expertos señalan que este enfoque es superior.»
  - Correcto: «Según Fernández (2023), este enfoque reduce el tiempo de implementación en un 15 %.»
- **Evita absolutos sin evidencia.** No uses «siempre», «nunca» o «totalmente» sin respaldo cuantitativo; matiza el alcance real del hallazgo. [Política editorial]
  - Incorrecto: «Esta solución siempre elimina el problema de latencia.»
  - Correcto: «Esta solución eliminó el problema de latencia en el 94 % de los casos observados.»

## 4. Tablas

- **Solo líneas horizontales, formato booktabs.** Usa una línea superior, una bajo la fila de encabezado y una inferior; nunca líneas verticales ni líneas dobles. [Booktabs, manual del paquete; APA 7, configuración de tablas]
  - Incorrecto: tabla con líneas verticales entre columnas y doble línea bajo el encabezado.
  - Correcto: tabla con línea superior, línea de encabezado y línea inferior, sin verticales.
- **Sombreado sobrio del encabezado.** El encabezado puede llevar fondo blanco con texto en negrita o un gris muy claro; evita colores saturados o azul en la tabla. [Política editorial]
- **Filas alternadas solo si hacen falta.** Reserva el sombreado alterno («cebra») para tablas de más de ocho columnas y en un tono neutro muy claro; en tablas cortas, evítalo. [Política editorial]
- **Título de tabla arriba, numeración consecutiva.** Coloca el título de la tabla encima de ella, centrado, con numeración consecutiva («Tabla 1», «Tabla 2»); esta es la convención documentada por el manual editorial de IEEE. [IEEE Editorial Style Manual]

## 5. Sobriedad visual

- **Paleta monocromática en el cuerpo del texto.** Usa negro o gris oscuro para el cuerpo y los encabezados; evita el azul corporativo, el teal o el púrpura decorativos. No existe una norma de la RAE ni de APA que exija texto en negro: APA 7 solo exige que, si se usa color, cumpla el contraste WCAG 2.0 AA. [Política editorial]
  - Incorrecto: encabezados en azul corporativo sobre fondo decorativo.
  - Correcto: encabezados en negro o gris oscuro, sin color decorativo.
- **Enlaces sobrios.** Subraya los enlaces en negro o en un gris neutro oscuro; evita el azul brillante decorativo. [Política editorial]
- **Citas en bloque sin color de fondo.** Los blockquotes llevan un borde gris sutil y el texto en cursiva negra, no un fondo de color. [Política editorial]
- **Sin cuadros de alerta de colores ni fondos pastel.** Los avisos se distinguen por texto en negrita, no por color de fondo. [Política editorial]
- **Sin emojis como viñetas o énfasis.** Wikipedia documenta el uso ornamental de emojis como señal de edición asistida por IA; en documentos formales, evítalos por la misma razón de sobriedad. [Patrón documentado en inglés: Wikipedia, Signs of AI writing]
- **Paleta de referencia. [Política editorial]** Cuando el formato de salida admite estilos (HTML, DOCX, PDF), aplica estos valores salvo que la plantilla del usuario indique otra cosa.

| Elemento | Valor |
|---|---|
| Cuerpo del texto | `#000000` o `#111827` |
| Encabezados H1 a H4 | `#000000`; nunca azul corporativo (`#0066CC`, `#1E40AF`), teal ni púrpura |
| Enlaces | subrayados, `#000000` o `#374151` |
| Cita en bloque | borde izquierdo de 1 px `#D1D5DB`, texto en cursiva negra, sin fondo |
| Relleno de encabezado de tabla | `#FFFFFF` con texto en negrita, o como máximo `#F3F4F6` |
| Filas alternas | ninguna salvo que la tabla supere 8 columnas; en ese caso `#F9FAFB` |
| Filetes de tabla | de `#E5E7EB` a `#D1D5DB`; solo horizontales (sección 4) |

## Fuentes
- RAE, la pasiva refleja: https://www.rae.es/gram%C3%A1tica-b%C3%A1sica/oraciones-activas-pasivas-impersonales-y-medias/la-pasiva-refleja
- ISO 7144:1986 (alcance real: presentación física de tesis, no registro lingüístico): https://www.iso.org/standard/13736.html
- Booktabs, manual del paquete: https://tug.ctan.org/macros/latex/contrib/booktabs/booktabs.pdf
- APA Style, configuración de tablas: https://apastyle.apa.org/style-grammar-guidelines/tables-figures/tables
- APA Style, uso accesible del color en figuras: https://apastyle.apa.org/style-grammar-guidelines/tables-figures/colors
- IEEE Editorial Style Manual for Authors: https://journals.ieeeauthorcenter.ieee.org/wp-content/uploads/sites/7/IEEE-Editorial-Style-Manual-for-Authors.pdf
- Wikipedia, Signs of AI writing: https://en.wikipedia.org/wiki/Wikipedia:Signs_of_AI_writing
