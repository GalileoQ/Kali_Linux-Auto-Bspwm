#!/usr/bin/env bash
# Script para actualizar el fondo de login en Kali Linux usando ranger

# Directorio con las imágenes que puedes elegir
ORIGINAL_DIR="/usr/share/backgrounds/kali"

# Ruta donde debe apuntar el enlace simbólico final
LINK_PATH="/usr/share/desktop-base/kali-theme/login/background"

# Verificar si sudo está disponible
if ! command -v sudo &>/dev/null; then
  echo "❌ 'sudo' no está disponible. Ejecuta el script como root o instala sudo."
  exit 1
fi

# Si se pasa una imagen como argumento
if [ -n "$1" ]; then
  IMAGE_PATH=$(realpath "$1" 2>/dev/null)

  if [ ! -f "$IMAGE_PATH" ]; then
    echo "❌ La imagen no existe: $IMAGE_PATH"
    exit 1
  fi

else

  if ! command -v ranger &>/dev/null; then
    echo "❌ 'ranger' no está instalado. Instálalo con: sudo apt install ranger"
    exit 1
  fi

  echo "📁 Abriendo 'ranger' para seleccionar una imagen..."
  ranger --choosefile=/tmp/selected_image "$ORIGINAL_DIR" >/dev/tty

  if [ ! -f /tmp/selected_image ]; then
    echo "❌ No se seleccionó ninguna imagen."
    exit 1
  fi

  IMAGE_PATH=$(cat /tmp/selected_image)
fi

# Validar que exista
if [ ! -f "$IMAGE_PATH" ]; then
  echo "❌ La imagen no existe: $IMAGE_PATH"
  exit 1
fi

echo "✅ Imagen seleccionada: $IMAGE_PATH"
echo "🔗 Creando enlace simbólico en $LINK_PATH ..."

sudo ln -sf "$IMAGE_PATH" "$LINK_PATH" || { echo "❌ Error al crear el enlace simbólico."; exit 1; }

echo "✅ Fondo de login actualizado con: $(basename "$IMAGE_PATH")"
