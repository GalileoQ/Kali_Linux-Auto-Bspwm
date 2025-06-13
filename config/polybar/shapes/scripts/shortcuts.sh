#!/bin/bash

# Colores
RESET='\033[0m'
RED='\033[1;31m'
GREEN='\033[1;32m'
YELLOW='\033[1;33m'
BLUE='\033[1;34m'
MAGENTA='\033[1;35m'
CYAN='\033[1;36m'
BOLD='\033[1m'

clear
echo -e "${CYAN}${BOLD}🌐 Selecciona el idioma:${RESET}"
echo -e "${GREEN}1) Español${RESET}"
echo -e "${YELLOW}2) English${RESET}"
read -p "Opción (1/2): " lang

case $lang in
  1)
    echo -e "\n${BLUE}${BOLD}🧠 SHORTCUTS DISPONIBLES (Español)${RESET}"

    echo -e "\n${MAGENTA}🖥️  Ventanas y BSPWM${RESET}"
    echo -e "  ${BOLD}Windows + Enter${RESET}              → Abrir terminal (kitty)"
    echo -e "  ${BOLD}Windows + W${RESET}                  → Cerrar ventana actual"
    echo -e "  ${BOLD}Windows + Alt + R${RESET}            → Reiniciar BSPWM"
    echo -e "  ${BOLD}Windows + Alt + Q${RESET}            → Cerrar sesión"
    echo -e "  ${BOLD}Windows + ↑↓←→${RESET}               → Moverse entre ventanas"
    echo -e "  ${BOLD}Windows + D${RESET}                  → Abrir Rofi (Esc)"
    echo -e "  ${BOLD}Windows + T${RESET}                  → Modo tile"
    echo -e "  ${BOLD}Windows + M${RESET}                  → Modo full"
    echo -e "  ${BOLD}Windows + F${RESET}                  → Pantalla completa"
    echo -e "  ${BOLD}Windows + S${RESET}                  → Modo flotante"
    echo -e "  ${BOLD}Windows + Shift + (1–0)${RESET}      → Mover ventana a workspace"
    echo -e "  ${BOLD}Windows + Ctrl + ↑↓←→${RESET}        → Mover ventana flotante"
    echo -e "  ${BOLD}Windows + Alt + ↑↓←→${RESET}         → Redimensionar ventana"

    echo -e "\n${MAGENTA}🧭  Workspaces${RESET}"
    echo -e "  ${BOLD}Windows + (1–0)${RESET}              → Cambiar de workspace"

    echo -e "\n${MAGENTA}🌐  Apps Rápidas${RESET}"
    echo -e "  ${BOLD}Windows + Shift + F${RESET}          → Firefox"
    echo -e "  ${BOLD}Windows + Shift + B${RESET}          → Burpsuite"

    echo -e "\n${MAGENTA}🔒  Sistema${RESET}"
    echo -e "  ${BOLD}Ctrl + Alt + L${RESET}               → Bloquear pantalla"

    echo -e "\n${MAGENTA}🔊  Volumen${RESET}"
    echo -e "  ${BOLD}Ctrl + Shift + ↑↓${RESET}            → Subir/Bajar volumen"
    echo -e "  ${BOLD}Ctrl + Shift + M${RESET}             → Mute/Unmute"

    echo -e "\n${MAGENTA}🪟  Subventanas (Kitty)${RESET}"
    echo -e "  ${BOLD}Ctrl + Shift + Enter${RESET}         → Nueva subventana"
    echo -e "  ${BOLD}Ctrl + (↑↓←→)${RESET}                → Navegar subventanas"
    echo -e "  ${BOLD}Ctrl + Shift + Z${RESET}             → Zoom subventana"
    echo -e "  ${BOLD}Ctrl + Shift + R${RESET}             → Redimensionar subventana"
    echo -e "  ${BOLD}Ctrl + Shift + L${RESET}             → Cambiar layout"
    echo -e "  ${BOLD}Ctrl + Shift + W${RESET}             → Cerrar subventana"
    echo -e "  ${BOLD}Ctrl + Shift + T${RESET}             → Nueva pestaña"
    echo -e "  ${BOLD}Ctrl + Shift + Alt + T${RESET}       → Renombrar pestaña"
    echo -e "  ${BOLD}Ctrl + Shift + ←→${RESET}            → Cambiar pestaña"

    echo -e "\n${MAGENTA}📋  Portapapeles${RESET}"
    echo -e "  ${BOLD}Ctrl + Shift + C${RESET}             → Copiar"
    echo -e "  ${BOLD}Ctrl + Shift + V${RESET}             → Pegar"
    echo -e "  ${BOLD}F1 / F2${RESET}                      → Copiar / Pegar desde buffer A"
    echo -e "  ${BOLD}F3 / F4${RESET}                      → Copiar / Pegar desde buffer B"
    ;;

  2)
    echo -e "\n${BLUE}${BOLD}🧠 SHORTCUTS AVAILABLE (English)${RESET}"

    echo -e "\n${MAGENTA}🖥️  Windows and BSPWM${RESET}"
    echo -e "  ${BOLD}Windows + Enter${RESET}              → Open terminal (kitty)"
    echo -e "  ${BOLD}Windows + W${RESET}                  → Close current window"
    echo -e "  ${BOLD}Windows + Alt + R${RESET}            → Restart BSPWM"
    echo -e "  ${BOLD}Windows + Alt + Q${RESET}            → Log out"
    echo -e "  ${BOLD}Windows + ↑↓←→${RESET}               → Navigate between windows"
    echo -e "  ${BOLD}Windows + D${RESET}                  → Launch Rofi (Esc)"
    echo -e "  ${BOLD}Windows + T${RESET}                  → Tile mode"
    echo -e "  ${BOLD}Windows + M${RESET}                  → Full mode"
    echo -e "  ${BOLD}Windows + F${RESET}                  → Fullscreen mode"
    echo -e "  ${BOLD}Windows + S${RESET}                  → Floating mode"
    echo -e "  ${BOLD}Windows + Shift + (1–0)${RESET}      → Move window to workspace"
    echo -e "  ${BOLD}Windows + Ctrl + ↑↓←→${RESET}        → Move floating window"
    echo -e "  ${BOLD}Windows + Alt + ↑↓←→${RESET}         → Resize floating window"

    echo -e "\n${MAGENTA}🧭  Workspaces${RESET}"
    echo -e "  ${BOLD}Windows + (1–0)${RESET}              → Switch workspace"

    echo -e "\n${MAGENTA}🌐  Quick Apps${RESET}"
    echo -e "  ${BOLD}Windows + Shift + F${RESET}          → Open Firefox"
    echo -e "  ${BOLD}Windows + Shift + B${RESET}          → Open Burpsuite"

    echo -e "\n${MAGENTA}🔒  System${RESET}"
    echo -e "  ${BOLD}Ctrl + Alt + L${RESET}               → Lock screen"

    echo -e "\n${MAGENTA}🔊  Volume${RESET}"
    echo -e "  ${BOLD}Ctrl + Shift + ↑↓${RESET}            → Increase/Decrease volume"
    echo -e "  ${BOLD}Ctrl + Shift + M${RESET}             → Mute/Unmute"

    echo -e "\n${MAGENTA}🪟  Kitty Subwindows${RESET}"
    echo -e "  ${BOLD}Ctrl + Shift + Enter${RESET}         → New subwindow"
    echo -e "  ${BOLD}Ctrl + (↑↓←→)${RESET}                → Navigate subwindows"
    echo -e "  ${BOLD}Ctrl + Shift + Z${RESET}             → Zoom subwindow"
    echo -e "  ${BOLD}Ctrl + Shift + R${RESET}             → Resize subwindow"
    echo -e "  ${BOLD}Ctrl + Shift + L${RESET}             → Change layout"
    echo -e "  ${BOLD}Ctrl + Shift + W${RESET}             → Close subwindow"
    echo -e "  ${BOLD}Ctrl + Shift + T${RESET}             → New tab"
    echo -e "  ${BOLD}Ctrl + Shift + Alt + T${RESET}       → Rename tab"
    echo -e "  ${BOLD}Ctrl + Shift + ←→${RESET}            → Switch tab"

    echo -e "\n${MAGENTA}📋  Clipboard${RESET}"
    echo -e "  ${BOLD}Ctrl + Shift + C${RESET}             → Copy"
    echo -e "  ${BOLD}Ctrl + Shift + V${RESET}             → Paste"
    echo -e "  ${BOLD}F1 / F2${RESET}                      → Copy / Paste from buffer A"
    echo -e "  ${BOLD}F3 / F4${RESET}                      → Copy / Paste from buffer B"
    ;;
  *)
    echo -e "${RED}❌ Opción inválida.${RESET}"
    ;;
esac
