#!/usr/bin/env bash
#
#
# WELCOME PARA O TIGER OS
#
# Desenvolvido por eltonff 31/10/2020
# Com a ferramenta BigBashView
# Tecnologias utilizadas: bash, html, css, javascript e <3

windowID="$(xwininfo -name "Bem-vindo TigerOS" | head -n2 | tail -n1 | awk '{print $4}')"
lang_cut="${LANG%.*}"
lang_lower="${lang_cut,,}"
lang="${lang_lower/_/-}"
function instalarPacote(){
  if [ ! "$(grep -Rl libreoffice /etc/apt/sources.list.d)" ]; then
    add-apt-repository ppa:libreoffice/ppa -y
  fi
  export DEBIAN_FRONTEND="noninteractive"
  apt-get install libreoffice libreoffice-l10n-"$lang" -y && {
    zenity --info --modal --width=350 --attach="$windowID" \
    --text="O LibreOffice foi instalado com sucesso!"
  } || {
    zenity --error --modal --width=350 --attach="$windowID" \
    --text="Não foi possível concluir a instalação...\nPor favor, tente novamente!"
  }
}

instalarPacote | zenity --progress --no-cancel --width=350 --modal \
--attach="$windowID" --auto-close --pulsate \
--text="\nPor favor, aguarde...\n" --title="Instalando o LibreOffice..."

exit
