# Ejemplos de UX writing para dashboards: Español

## Ejemplo 1: Mensaje de error

### Antes
> ¡Lo sentimos mucho! Algo salió mal al intentar guardar tus cambios, aunque no te preocupes porque el servidor solamente tardó demasiado en responder (error 504) y por eso no se completó el guardado. Por favor, volvé a intentarlo en unos minutos.

### Después
> No se guardaron los cambios: el servidor tardó demasiado en responder (504). Verifica tu conexión e inténtalo de nuevo.

### Qué cambió
- **Estructura de tres partes**: separa qué pasó, por qué y el siguiente paso en frases claras y breves.
- **Sin disculpas por defecto**: elimina «Lo sentimos mucho» y «no te preocupes».
- **Voseo a tuteo: normalización de registro, no corrección**: «volvé» pasa a «inténtalo» en tuteo.
- **Nombra el recurso, da un paso a seguir**: nombra el error 504 de forma directa y ofrece un paso concreto.

## Ejemplo 2: Diálogo de confirmación destructiva

### Antes
> ¿ESTÁS SEGURO DE QUE QUERÉS ELIMINAR EL PROYECTO «FACTURACIÓN 2024»? ESTA ACCIÓN NO SE PUEDE DESHACER.
> [ Sí ] [ No ]

### Después
> ¿Eliminar el proyecto «Facturación 2024»? Esta acción no se puede deshacer.
> [ Cancelar ] [ Eliminar proyecto ]

### Qué cambió
- **Mayúscula sostenida en textos largos**: el diálogo baja de mayúscula sostenida a caja oracional.
- **Voseo a tuteo: normalización de registro, no corrección**: «querés» se normaliza al reformular la pregunta.
- **Las confirmaciones destructivas nombran la acción**: el botón pasa de «Sí» a «Eliminar proyecto» y de «No» a «Cancelar».
- **Caja oracional**: el título y los botones capitalizan solo la primera palabra.

## Ejemplo 3: Estado vacío con tooltip

### Antes
> No Hay Registros Para El Rango De Fechas Seleccionado. Tocá Aquí Para Ajustar Los Filtros.
> [ícono de filtro] (tooltip: «Ajusta los filtros.»)

### Después
> No hay registros para el rango de fechas seleccionado.
> [Ajustar filtros]

### Qué cambió
- **Explica la causa, ofrece una salida**: mantiene el motivo, el rango de fechas seleccionado, y ofrece «Ajustar filtros» como salida directa.
- **La acción puede ir junto al mensaje, no dentro de él**: separa el botón del texto en vez de incrustar «Tocá aquí» dentro del mensaje.
- **Voseo a tuteo: normalización de registro, no corrección**: elimina «Tocá» al reformular el mensaje sin segunda persona.
- **Caja oracional**: el mensaje baja de Title Case a caja oracional.
- **Aporta información que el control no muestra**: al nombrar el botón «Ajustar filtros» explícitamente, el tooltip redundante deja de ser necesario.
