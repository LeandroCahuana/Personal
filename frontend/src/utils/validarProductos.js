export function validarProducto(form) {
  const errores = {};

  if (!form.nombre.trim()) {
    errores.nombre = "El nombre es obligatorio";
  } else if (!/^[A-Za-zÁÉÍÓÚáéíóúÑñ\s]+$/.test(form.nombre)) {
    errores.nombre = "El nombre solo puede contener letras y espacios";
  } else if (/^\s/.test(form.nombre)) {
    errores.nombre = "El nombre no puede comenzar con un espacio";
  } else if (form.nombre && form.nombre.length > 100) {
    errores.nombre = "El nombre no puede superar los 100 caracteres"
  }

  if (form.precio === "" || form.precio === undefined)
    errores.precio = "El precio es obligatorio";
  else if (form.precio <= 0)
    errores.precio = "El precio debe ser mayor a 0";

  if (form.descripcion && form.descripcion.length > 200){
    errores.descripcion = "La descripción no puede superar los 200 caracteres";
  } else if (/^\s/.test(form.descripcion)) {
    errores.descripcion = "La descripción no puede comenzar con un espacio";
  };

  if (form.stock === "" || form.stock === undefined)
    errores.stock = "El stock es obligatorio";
  else if (form.stock < 0)
    errores.stock = "El stock no puede ser negativo";

  return errores;
}
