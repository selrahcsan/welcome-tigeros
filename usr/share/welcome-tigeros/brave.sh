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
  if [ ! "$(grep -Rl brave /etc/apt/sources.list.d)" ]; then
    wget https://brave-browser-apt-release.s3.brave.com/brave-core.asc -O /tmp/brave-core.asc
    apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-release.gpg add /tmp/brave-core.asc
    echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | tee /etc/apt/sources.list.d/brave-browser-release.list
    rm /tmp/brave-core.asc
    apt-get update
  fi
  export DEBIAN_FRONTEND="noninteractive"
  apt-get install brave-browser -y && {
    zenity --info --modal --width=350 --attach="$windowID" \
    --text="O Brave Browser foi instalado com sucesso!"
  } || {
    zenity --error --modal --width=350 --attach="$windowID" \
    --text="Não foi possível concluir a instalação...\nPor favor, tente novamente!"
  }
}

instalarPacote | zenity --progress --no-cancel --width=350 --modal \
--attach="$windowID" --auto-close --pulsate \
--text="\nPor favor, aguarde...\n" --title="Instalando o Brave Browser..."

exit
