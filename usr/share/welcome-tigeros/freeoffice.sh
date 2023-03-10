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
  if [ ! "$(grep -Rl softmaker /etc/apt/sources.list.d)" ]; then
    # Adiciona chave publica ao sistema
    wget -qO - "https://shop.softmaker.com/repo/linux-repo-public.key" | apt-key add -
    # Adiciona repositorio ao sistema
    echo "deb https://shop.softmaker.com/repo/apt/ wheezy non-free" | tee /etc/apt/sources.list.d/softmaker-wheezy.list
    apt-get update
  fi
  export DEBIAN_FRONTEND="noninteractive"
  apt-get install softmaker-freeoffice-2021 -y && {
    zenity --info --modal --width=350 --attach="$windowID" \
    --text="O FreeOffice foi instalado com sucesso!"
  } || {
    zenity --error --modal --width=350 --attach="$windowID" \
    --text="Não foi possível concluir a instalação...\nPor favor, tente novamente!"
  }
}

instalarPacote | zenity --progress --no-cancel --width=350 --modal \
--attach="$windowID" --auto-close --pulsate \
--text="\nPor favor, aguarde...\n" --title="Instalando o FreeOffice..."

exit
