  GNU nano 8.4                                                                     .config/polybar/shapes/scripts/backgrounds.sh                                                                               
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
  # No se pasó argumento: mostrar menú interactivo
  echo "🖼️ No se pasó ninguna imagen. Usa TAB para seleccionar una desde $ORIGINAL_DIR"
  echo "🔁 Autocompletado habilitado (estás dentro de $ORIGINAL_DIR)..."
  cd "$ORIGINAL_DIR" || { echo "❌ No se pudo acceder a $ORIGINAL_DIR"; exit 1; }

  # Leer solo el nombre con autocompletado
  read -e -p "Selecciona una imagen: " IMAGE_NAME

  IMAGE_PATH="$ORIGINAL_DIR/$IMAGE_NAME"
fi

# Validar si la imagen existe
if [ ! -f "$IMAGE_PATH" ]; then
  echo "❌ La imagen no existe: $IMAGE_PATH"
  exit 1
fi

IMAGE_NAME=$(basename "$IMAGE_PATH")
DEST_PATH="$ORIGINAL_DIR/$IMAGE_NAME"

# Si no está copiada en ORIGINAL_DIR, copiarla
if [ ! -f "$DEST_PATH" ]; then
  echo "📁 Copiando $IMAGE_PATH a $DEST_PATH ..."
  sudo cp "$IMAGE_PATH" "$DEST_PATH" || { echo "❌ Error al copiar."; exit 1; }
  sudo chmod 644 "$DEST_PATH" || { echo "❌ Error al cambiar permisos."; exit 1; }
else
  echo "✅ La imagen ya existe en $DEST_PATH"
fi

# Crear enlace simbólico
echo "🔗 Creando enlace simbólico en $LINK_DIR ..."
sudo ln -sf "$DEST_PATH" "$LINK_DIR" || { echo "❌ Error al crear el enlace simbólico."; exit 1; }

echo "✅ Fondo de login actualizado con '$IMAGE_NAME'"