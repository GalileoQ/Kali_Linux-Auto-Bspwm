#!/bin/bash

ORIGINAL_DIR="/usr/share/backgrounds/kali"
LINK_DIR="/usr/share/backgrounds/kali-16x9"

# Verifica si el directorio original existe
if [ ! -d "$ORIGINAL_DIR" ]; then
  echo "❌ El directorio de imágenes no existe: $ORIGINAL_DIR"
  exit 1
fi

# Verifica si el directorio de destino existe
if [ ! -d "$LINK_DIR" ]; then
  echo "❌ El directorio destino no existe: $LINK_DIR"
  exit 1
fi

# Verifica que sudo esté disponible
if ! command -v sudo &>/dev/null; then
  echo "❌ 'sudo' no está disponible. Ejecuta el script como root o instala sudo."
  exit 1
fi

cd "$ORIGINAL_DIR" || { echo "❌ No se pudo cambiar al directorio $ORIGINAL_DIR"; exit 1; }

echo -e "\n📸 Usa TAB para autocompletar el nombre de la imagen / Use TAB to autocomplete the image name."

# Habilitar autocompletado para archivos de imagen (.jpg, .png, .jpeg, .bmp, .gif)
# Definimos las extensiones de imagen que se pueden completar
IMAGE_EXTENSIONS="*.jpg *.jpeg *.png *.bmp *.gif"

# Usamos read con -e para que permita autocompletar y con -i para texto inicial vacío
read -e -p "🖼️ Enter the exact image name / Ingresa el nombre exacto de la imagen: " -i "" IMAGE_NAME

# Función para permitir autocompletado manualmente:
# Se recomienda ejecutar el script en una terminal compatible con readline para que TAB funcione.

ORIGINAL_PATH="$ORIGINAL_DIR/$IMAGE_NAME"

if [ ! -f "$ORIGINAL_PATH" ]; then
  echo "❌ La imagen no existe: $ORIGINAL_PATH"
  exit 1
fi

EXT="${IMAGE_NAME##*.}"
BASE="${IMAGE_NAME%.*}"
LINK_PATH="$LINK_DIR/${BASE}-16x9.$EXT"

if [ -e "$LINK_PATH" ]; then
  echo "🗑️ Eliminando archivo existente: $LINK_PATH"
  sudo rm -fs "$LINK_PATH"
fi

echo "🔗 Creando enlace simbólico:"
echo "$LINK_PATH -> ../kali/$IMAGE_NAME"
sudo ln -s "../kali/$IMAGE_NAME" "$LINK_PATH"

if [ -L "$LINK_PATH" ]; then
  echo -e "✅ \e[32mSymlink creado correctamente:\e[0m $LINK_PATH"
else
  echo -e "❌ \e[31mError al crear el symlink.\e[0m"
fi