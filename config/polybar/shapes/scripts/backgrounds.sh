#!/bin/bash

ORIGINAL_DIR="/usr/share/backgrounds/kali"
LINK_DIR="/usr/share/desktop-base/kali-theme/login/background"

# Verifica que sudo esté disponible
if ! command -v sudo &>/dev/null; then
  echo "❌ 'sudo' no está disponible. Ejecuta el script como root o instala sudo."
  exit 1
fi

# Pide solo el nombre de la imagen
read -e -p "🖼️ Ingresa SOLO el nombre de la imagen (por ejemplo: foto.jpg): " -i "" IMAGE_NAME

# Busca la ruta absoluta en el directorio actual
INPUT_PATH="$(realpath "$IMAGE_NAME" 2>/dev/null)"

# Verifica que el archivo exista en la ruta obtenida
if [ ! -f "$INPUT_PATH" ]; then
  echo "❌ No se encontró el archivo en el directorio actual: $IMAGE_NAME"
  exit 1
fi

# Ruta destino
DEST_PATH="$ORIGINAL_DIR/$IMAGE_NAME"

# Si ya existe en el destino, no se copia
if [ -f "$DEST_PATH" ]; then
  echo "ℹ️ Ya existe en $DEST_PATH — No se copia de nuevo."
else
  echo "📂 Copiando $INPUT_PATH a $DEST_PATH ..."
  sudo cp "$INPUT_PATH" "$DEST_PATH" || { echo "❌ Error al copiar."; exit 1; }

  echo "🔑 Cambiando permisos a 644..."
  sudo chmod 644 "$DEST_PATH" || { echo "❌ Error al cambiar permisos."; exit 1; }
fi

# Crea o actualiza el enlace simbólico
echo "🔗 Creando enlace simbólico en $LINK_DIR ..."
sudo ln -sf "$DEST_PATH" "$LINK_DIR"

echo "✅ Proceso completado."