# Reglas de UX writing para dashboards y sistemas internos: Español

## 1. Mensajes de error

- **Estructura de tres partes.** Indica qué ocurrió, por qué ocurrió y qué hacer a continuación. [Editorial policy]
  - Incorrecto: «Ocurrió un error.»
  - Correcto: «No se pudo procesar el pago. La tarjeta fue rechazada. Actualiza los datos de la tarjeta o usa otro método de pago.»
- **Nombra el recurso, da un paso a seguir.** Identifica el recurso o la acción afectada y dile al usuario cómo continuar. [NN/g]
  - Incorrecto: «Se produjo un error.»
  - Correcto: «No se pudo eliminar el proyecto. Tiene despliegues activos. Pausa los despliegues primero.»
- **Sin disculpas por defecto.** Evita «lo sentimos» y «por favor» en los mensajes de error. [Atlassian, Material] Reserva una disculpa breve para un fallo grave causado por el propio producto, como pérdida de datos; NN/g no prohíbe las disculpas en absoluto. [Microsoft, NN/g]
  - Incorrecto: «¡Lo sentimos! Algo salió mal al guardar.»
  - Correcto: «No se guardaron los cambios: tiempo de espera agotado (504). Verifica la conexión e inténtalo de nuevo.»

## 2. Botones y confirmaciones destructivas

- **Verbo específico en cada botón.** Todo botón principal nombra la acción y, cuando aporta claridad, el objeto. [Polaris, Material]
  - Incorrecto: «Enviar»
  - Correcto: «Guardar cambios»
- **Evita confirmaciones vagas.** No uses «Aceptar», «Sí», «No» ni un «Enviar» genérico para acciones con consecuencias reales. [Polaris, Material] «Aceptar» a secas solo vale en alertas puramente informativas sin decisión que tomar; «Continuar» no está prohibido, ya que Polaris lo lista como verbo específico válido cuando nombra con claridad el resultado. [Apple HIG, Polaris]
  - Incorrecto: «¿Eliminar este proyecto?» -> [ Aceptar ]
  - Correcto: «¿Eliminar este proyecto?» -> [ Eliminar proyecto ]
- **Las confirmaciones destructivas nombran la acción.** El botón de confirmación usa un verbo que describe el resultado destructivo, no un «Sí» genérico. [Editorial policy, aligned with Apple HIG and Polaris]
  - Incorrecto: «¿Eliminar usuario "mauricio"?» -> [ Sí ] [ No ]
  - Correcto: «¿Eliminar usuario "mauricio"?» -> [ Cancelar ] [ Eliminar usuario ]

## 3. Estados vacíos

- **Explica la causa, ofrece una salida.** Indica por qué la vista está vacía y da un camino directo hacia la siguiente acción. [NN/g]
  - Incorrecto: «Sin datos.»
  - Correcto: «Todavía no hay pedidos. Aparecerán aquí cuando un cliente compre. [Compartir enlace de la tienda]»
- **La acción puede ir junto al mensaje, no dentro de él.** Un estado vacío no interactivo no necesita el llamado a la acción incrustado en el texto; un botón o enlace separado funciona igual de bien. [Material]
  - Incorrecto: «No hay registros. Toca aquí para agregar uno.» (el texto parece un control pero no responde al toque)
  - Correcto: «No hay registros para el rango de fechas seleccionado.» más un botón separado [Ajustar filtros]

## 4. Encabezados de tabla y badges de estado

- **Encabezados breves, sin artículos.** Usa de 1 a 3 palabras en los encabezados de tabla y evita los artículos. [Editorial policy]
  - Incorrecto: «El estado del servicio»
  - Correcto: «Estado»
- **Badges: breves y en participio.** Usa de 1 a 2 palabras en los badges de estado, en participio, nunca una oración completa. [Polaris]
  - Incorrecto: «Se procesó el reembolso»
  - Correcto: «Reembolsado»

## 5. Tooltips y textos de ayuda

- **Aporta información que el control no muestra.** Usa los tooltips para atajos, restricciones o el formato requerido, nunca para instrucciones imprescindibles. [Polaris]
  - Incorrecto: Botón «Actualizar» -> tooltip «Actualiza la tabla.» (repite la etiqueta; NN/g muestra este mismo patrón como ejemplo de «qué no hacer»)
  - Correcto: Botón «Actualizar» -> tooltip «Sincroniza con el último commit.»
- **Nunca dejes información obligatoria solo en un tooltip.** Si el usuario la necesita para completar la tarea, colócala en texto visible. [Polaris]
  - Incorrecto: El formato requerido de un campo solo aparece al pasar el cursor
  - Correcto: Texto de ayuda debajo del campo: «Formato: AAAA-MM-DD»

## 6. Convenciones gramaticales del texto de interfaz

- **Infinitivo para botones y menús.** Usa el infinitivo cuando el usuario le indica una acción al programa. [Microsoft, guía de estilo en español]
  - Incorrecto: «Guardando cambios»
  - Correcto: «Guardar cambios»
- **Imperativo tú para instrucciones de campo.** Usa la segunda persona del singular (tú) cuando el programa le indica algo al usuario, sin voseo. [Microsoft, guía de estilo en español]
  - Incorrecto: «Ingresá la URL del servidor»
  - Correcto: «Ingresa la URL del servidor»
- **Caja oracional.** Capitaliza solo la primera palabra en comandos, botones, menús y títulos de cuadro de diálogo. [Microsoft, guía de estilo en español]
  - Incorrecto: «Ver Detalle» / «VER DETALLE»
  - Correcto: «Ver detalle»

## Fuentes
- Nielsen Norman Group, Error Message Guidelines: https://www.nngroup.com/articles/error-message-guidelines/
- Nielsen Norman Group, Empty State Interface Design: https://www.nngroup.com/articles/empty-state-interface-design/
- Nielsen Norman Group, Tooltip Guidelines: https://www.nngroup.com/articles/tooltip-guidelines/
- Material Design 3, Word choice: https://m3.material.io/foundations/content-design/global-writing/word-choice
- Material Design 3, Dialogs guidelines: https://m3.material.io/components/dialogs/guidelines
- Material Design 3, Buttons guidelines: https://m3.material.io/components/buttons/guidelines
- Material Design 2, Empty states: https://m2.material.io/design/communication/empty-states.html
- Atlassian Design System, Writing error messages: https://atlassian.design/content/designing-messages/writing-error-messages
- Microsoft Style Guide, "sorry": https://learn.microsoft.com/en-us/style-guide/a-z-word-list-term-collections/s/sorry
- Apple Human Interface Guidelines, Alerts: https://developer.apple.com/design/human-interface-guidelines/alerts
- Shopify Polaris, Modal overlay: https://shopify.dev/docs/api/app-home/polaris-web-components/overlays/modal
- Shopify Polaris, Badge: https://shopify.dev/docs/api/app-home/web-components/feedback-and-status-indicators/badge
- Shopify Polaris, Tooltip: https://shopify.dev/docs/api/app-home/polaris-web-components/overlays/tooltip
- Microsoft Spanish (Spain) Localization Style Guide: https://download.microsoft.com/download/9/a/1/9a19beca-597c-417b-a2c2-0f1ea5a1e6c3/spa-esp-StyleGuide.pdf
