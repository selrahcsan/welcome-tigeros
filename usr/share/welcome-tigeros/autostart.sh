#!/usr/bin/env bash
#
#
# WELCOME PARA O TIGER OS
#
# Desenvolvido por eltonff 31/10/2020
# Com a ferramenta BigBashView
# Tecnologias utilizadas: bash, html, css, javascript e <3

mkdir -p ~/.config/autostart

if [ -e ~/.config/autostart/welcome-tigeros.desktop ];then
    rm ~/.config/autostart/welcome-tigeros.desktop
else
    echo "[Desktop Entry]
Hidden=true" > ~/.config/autostart/welcome-tigeros.desktop
fi
exit