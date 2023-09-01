#!/bin/bash

# Define los nombres de los componentes
component_names=("EjemploUno" "EjemploDos" "EjemploTres" "EjemploCuatro" "EjemploCinco")

# Ruta del directorio donde se crearán los componentes (ajústala según tu proyecto)
components_dir="./src/components"

# Inicializa el archivo de registro
log_file="component_creation.log"
> "$log_file"

# Itera sobre los nombres de los componentes y crea cada uno
for component_name in "${component_names[@]}"; do
  # Nombre completo del archivo .vue
  component_file="$components_dir/$component_name.vue"

  # Comprueba si el archivo ya existe
  if [ -e "$component_file" ]; then
    echo "El componente $component_name ya existe. Saltando..." | tee -a "$log_file"
  else
    # Crea el archivo .vue del componente
    touch "$component_file"

    # Agrega una plantilla básica al archivo .vue
    {
      echo "<template>"
      echo "  <div>"
      echo "    <!-- Contenido del componente $component_name -->"
      echo "  </div>"
      echo "</template>"
    } >> "$component_file"

    # Agrega el script básico al archivo .vue
    {
      echo "<script setup>"
      echo "# Agrega lógica del componente $component_name aquí"
      echo "</script>"
    } >> "$component_file"

    # Agrega estilos básicos al archivo .vue
    {
      echo "<style scoped>"
      echo "# Estilos específicos para el componente $component_name"
      echo "</style>"
    } >> "$component_file"

    echo "Componente $component_name creado con éxito en $component_file" | tee -a "$log_file"
  fi
done

echo "Creación de componentes completada."
