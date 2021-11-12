#!/usr/bin/env bash
#
#
# WELCOME PARA O TIGER OS
#
# Desenvolvido por eltonff 31/10/2020
# Com a ferramenta BigBashView
# Tecnologias utilizadas: bash, html, css, javascript e <3

windowID="$(xwininfo -name "Bem-vindo TigerOS" | head -n2 | tail -n1 | awk '{print $4}')"

function instalarPacote(){
  if [ ! "$(grep -Rl opera /etc/apt/sources.list.d)" ]; then
    wget -qO - https://deb.opera.com/archive.key | apt-key add -
    add-apt-repository -y 'deb https://deb.opera.com/opera-stable/ stable non-free'
  fi
  export DEBIAN_FRONTEND="noninteractive"
  apt-get install opera-stable -y && {
    rm -f /etc/apt/sources.list.d/opera-stable.list
    zenity --info --modal --width=350 --attach="$windowID" \
    --text="O Opera foi instalado com sucesso!"
  } || {
    zenity --error --modal --width=350 --attach="$windowID" \
    --text="Não foi possível concluir a instalação...\nPor favor, tente novamente!"
  }
}

instalarPacote | zenity --progress --no-cancel --width=350 --modal \
--attach="$windowID" --auto-close --pulsate \
--text="\nPor favor, aguarde...\n" --title="Instalando o Opera..."

exit
