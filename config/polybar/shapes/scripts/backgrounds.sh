#!/bin/bash

ORIGINAL_DIR="/usr/share/backgrounds/kali"
LINK_DIR="/usr/share/desktop-base/kali-theme/login/background"

# Verifica que sudo esté disponible
if ! command -v sudo &>/dev/null; then
  echo "❌ 'sudo' no está disponible. Ejecuta el script como root o instala sudo."
  exit 1
fi
''

echo -e "\n📸 Usa TAB para autocompletar el nombre de la imagen / Use TAB to autocomplete the image name."

# Habilitar autocompletado para archivos de imagen (.jpg, .png, .jpeg, .bmp, .gif)
# Definimos las extensiones de imagen que se pueden completar

IMAGE_EXTENSIONS="*.jpg *.jpeg *.png"

# Usamos read con -e para que permita autocompletar y con -i para texto inicial vacío
read -e -p "🖼️ Enter the exact image name / Ingresa el nombre exacto de la imagen: " -i "" IMAGE_NAME

# Función para permitir autocompletado manualmente:
# Se recomienda ejecutar el script en una terminal compatible con readline para que TAB funcione.

if [ ! -f "$ORIGINAL_DIR/$IMAGE_NAME" ]; then
  echo "❌ La imagen no existe: $ORIGINAL_DIR/$IMAGE_NAME"
  exit 1
fi



sudo ln -sf $ORIGINAL_DIR/$IMAGE_NAME $LINK_DIR