#!/usr/bin/env bash
#
#
# WELCOME PARA O TIGER OS
#
# Desenvolvido por eltonff 31/10/2020
# Com a ferramenta BigBashView
# Tecnologias utilizadas: bash, html, css, javascript e <3

windowID="$(xwininfo -name "Bem-vindo TigerOS" | head -n2 | tail -n1 | awk '{print $4}')"

DOWNLOAD() {
  rand="$RANDOM $(date)"
  pipe="/tmp/pipe.$(echo '$rand' | md5sum | tr -d ' -')"
  mkfifo $pipe
  wget -c $1 2>&1 | while read data;do
    if [ "$(echo $data | grep '[0-9]*%' )" ];then
      percent=$(echo $data | grep -o "[0-9]*%" | tr -d '%')
      current=$(echo $data | grep "[0-9]*%" | sed 's/\([0-9BKMG.]\+\).*/\1/' )
      speed="$(echo $data | grep "[0-9]*%" | sed 's|.*% ||;s| .*||')B"
      echo $percent
      echo "#Recebido: $current ($percent%)\nVelocidade: $speed/s"
    fi
  done > $pipe &

  wget_info=$(ps ax |grep "wget.*$1" |awk '{print $1"|"$2}')
  wget_pid=$(echo $wget_info|cut -d'|' -f1 )

  zenity --progress --auto-close --text="Conectando...\n\n\n" --width="350" --title="Baixando... $2..." \
  --attach="$windowID" --no-cancel --time-remaining --modal < $pipe
  if [ "$(ps -A |grep "$wget_pid")" ];then
    kill $wget_pid
  fi
  rm -f $pipe
}

if [ $1 ];then
  cd /tmp
  DOWNLOAD "$1" "$2"
else
  exit
fi

exit
