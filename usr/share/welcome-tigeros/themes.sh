#!/usr/bin/env bash
#
#
# WELCOME PARA O TIGER OS
#
# Desenvolvido por eltonff 31/10/2020
# Com a ferramenta BigBashView
# Tecnologias utilizadas: bash, html, css, javascript e <3

icon_theme="$(xfconf-query -c xsettings -p /Net/IconThemeName)"
sys_theme="$(xfconf-query -c xsettings -p /Net/ThemeName)"

case $1 in
    mix)
        if [ $(grep -i 'green' <<< $icon_theme) ];then
            xfconf-query -c xsettings -p /Net/IconThemeName -s "Green-Dark" &
            xfconf-query -c xsettings -p /Net/ThemeName -s "green-mix" &
            xfconf-query -c xfwm4 -p /general/theme -s "Flat-Remix-Dark-XFWM"
        elif [ $(grep -i 'orange' <<< $icon_theme) ];then
            xfconf-query -c xsettings -p /Net/IconThemeName -s "Orange-Dark" &
            xfconf-query -c xsettings -p /Net/ThemeName -s "orange-mix" &
            xfconf-query -c xfwm4 -p /general/theme -s "Flat-Remix-Dark-XFWM"
        elif [ $(grep -i 'red' <<< $icon_theme) ];then
            xfconf-query -c xsettings -p /Net/IconThemeName -s "Red-Dark" &
            xfconf-query -c xsettings -p /Net/ThemeName -s "red-mix" &
            xfconf-query -c xfwm4 -p /general/theme -s "Flat-Remix-Dark-XFWM"
        elif [ $(grep -i 'pink' <<< $icon_theme) ];then
            xfconf-query -c xsettings -p /Net/IconThemeName -s "Pink-Dark" &
            xfconf-query -c xsettings -p /Net/ThemeName -s "pink-mix" &
            xfconf-query -c xfwm4 -p /general/theme -s "Flat-Remix-Dark-XFWM"
        elif [ $(grep -i 'yellow' <<< $icon_theme) ];then
            xfconf-query -c xsettings -p /Net/IconThemeName -s "Yellow-Dark" &
            xfconf-query -c xsettings -p /Net/ThemeName -s "yellow-mix" &
            xfconf-query -c xfwm4 -p /general/theme -s "Flat-Remix-Dark-XFWM"
        else
            xfconf-query -c xsettings -p /Net/IconThemeName -s "Purple-Dark" &
            xfconf-query -c xsettings -p /Net/ThemeName -s "purple-mix" &
            xfconf-query -c xfwm4 -p /general/theme -s "Flat-Remix-Dark-XFWM"
        fi
        ;;
    dark)
        if [ $(grep -i 'green' <<< $icon_theme) ];then
            xfconf-query -c xsettings -p /Net/IconThemeName -s "Green-Dark" &
            xfconf-query -c xsettings -p /Net/ThemeName -s "green-dark" &
            xfconf-query -c xfwm4 -p /general/theme -s "Flat-Remix-Dark-XFWM"
        elif [ $(grep -i 'orange' <<< $icon_theme) ];then
            xfconf-query -c xsettings -p /Net/IconThemeName -s "Orange-Dark" &
            xfconf-query -c xsettings -p /Net/ThemeName -s "orange-dark" &
            xfconf-query -c xfwm4 -p /general/theme -s "Flat-Remix-Dark-XFWM"
        elif [ $(grep -i 'red' <<< $icon_theme) ];then
            xfconf-query -c xsettings -p /Net/IconThemeName -s "Red-Dark" &
            xfconf-query -c xsettings -p /Net/ThemeName -s "red-dark" &
            xfconf-query -c xfwm4 -p /general/theme -s "Flat-Remix-Dark-XFWM"
        elif [ $(grep -i 'purple' <<< $icon_theme) ];then
            xfconf-query -c xsettings -p /Net/IconThemeName -s "Purple-Dark" &
            xfconf-query -c xsettings -p /Net/ThemeName -s "purple-dark" &
            xfconf-query -c xfwm4 -p /general/theme -s "Flat-Remix-Dark-XFWM"
        elif [ $(grep -i 'pink' <<< $icon_theme) ];then
            xfconf-query -c xsettings -p /Net/IconThemeName -s "Pink-Dark" &
            xfconf-query -c xsettings -p /Net/ThemeName -s "pink-dark" &
            xfconf-query -c xfwm4 -p /general/theme -s "Flat-Remix-Dark-XFWM"
        else
            xfconf-query -c xsettings -p /Net/IconThemeName -s "Yellow-Dark" &
            xfconf-query -c xsettings -p /Net/ThemeName -s "yellow-dark" &
            xfconf-query -c xfwm4 -p /general/theme -s "Flat-Remix-Dark-XFWM"
        fi
        ;;

    light)
        if [ $(grep -i 'green' <<< $icon_theme) ];then
            xfconf-query -c xsettings -p /Net/IconThemeName -s "Green-Light" &
            xfconf-query -c xsettings -p /Net/ThemeName -s "green-light" &
            xfconf-query -c xfwm4 -p /general/theme -s "Flat-Remix-Light-XFWM"
        elif [ $(grep -i 'orange' <<< $icon_theme) ];then
            xfconf-query -c xsettings -p /Net/IconThemeName -s "Orange-Light" &
            xfconf-query -c xsettings -p /Net/ThemeName -s "orange-light" &
            xfconf-query -c xfwm4 -p /general/theme -s "Flat-Remix-Light-XFWM"
        elif [ $(grep -i 'red' <<< $icon_theme) ];then
            xfconf-query -c xsettings -p /Net/IconThemeName -s "Red-Light" &
            xfconf-query -c xsettings -p /Net/ThemeName -s "red-light" &
            xfconf-query -c xfwm4 -p /general/theme -s "Flat-Remix-Light-XFWM"
        elif [ $(grep -i 'purple' <<< $icon_theme) ];then
            xfconf-query -c xsettings -p /Net/IconThemeName -s "Purple-Light" &
            xfconf-query -c xsettings -p /Net/ThemeName -s "purple-light" &
            xfconf-query -c xfwm4 -p /general/theme -s "Flat-Remix-Light-XFWM"
        elif [ $(grep -i 'pink' <<< $icon_theme) ];then
            xfconf-query -c xsettings -p /Net/IconThemeName -s "Pink-Light" &
            xfconf-query -c xsettings -p /Net/ThemeName -s "pink-light" &
            xfconf-query -c xfwm4 -p /general/theme -s "Flat-Remix-Light-XFWM"
        else
            xfconf-query -c xsettings -p /Net/IconThemeName -s "Yellow-Light" &
            xfconf-query -c xsettings -p /Net/ThemeName -s "yellow-light" &
            xfconf-query -c xfwm4 -p /general/theme -s "Flat-Remix-Light-XFWM"
        fi
    ;;

    orange)
        if [ $(grep -i 'dark' <<< $sys_theme) ];then
            xfconf-query -c xsettings -p /Net/IconThemeName -s "Orange-Dark" &
            xfconf-query -c xsettings -p /Net/ThemeName -s "orange-dark" &
            xfconf-query -c xfwm4 -p /general/theme -s "Flat-Remix-Dark-XFWM"
        elif [ $(grep -i 'light' <<< $sys_theme) ];then
            xfconf-query -c xsettings -p /Net/IconThemeName -s "Orange-Light" &
            xfconf-query -c xsettings -p /Net/ThemeName -s "orange-light" &
            xfconf-query -c xfwm4 -p /general/theme -s "Flat-Remix-Light-XFWM"
        else
            xfconf-query -c xsettings -p /Net/IconThemeName -s "Orange-Dark" &
            xfconf-query -c xsettings -p /Net/ThemeName -s "orange-mix" &
            xfconf-query -c xfwm4 -p /general/theme -s "Flat-Remix-Dark-XFWM"
        fi
        ;;

    green)
        if [ $(grep -i 'dark' <<< $sys_theme) ];then
            xfconf-query -c xsettings -p /Net/IconThemeName -s "Green-Dark" &
            xfconf-query -c xsettings -p /Net/ThemeName -s "green-dark" &
            xfconf-query -c xfwm4 -p /general/theme -s "Flat-Remix-Dark-XFWM"
        elif [ $(grep -i 'light' <<< $sys_theme) ];then
            xfconf-query -c xsettings -p /Net/IconThemeName -s "Green-Light" &
            xfconf-query -c xsettings -p /Net/ThemeName -s "green-light" &
            xfconf-query -c xfwm4 -p /general/theme -s "Flat-Remix-Light-XFWM"
        else
            xfconf-query -c xsettings -p /Net/IconThemeName -s "Green-Dark" &
            xfconf-query -c xsettings -p /Net/ThemeName -s "green-mix" &
            xfconf-query -c xfwm4 -p /general/theme -s "Flat-Remix-Dark-XFWM"
        fi
        ;;

    purple)
        if [ $(grep -i 'dark' <<< $sys_theme) ];then
            xfconf-query -c xsettings -p /Net/IconThemeName -s "Purple-Dark" &
            xfconf-query -c xsettings -p /Net/ThemeName -s "purple-dark" &
            xfconf-query -c xfwm4 -p /general/theme -s "Flat-Remix-Dark-XFWM"
        elif [ $(grep -i 'light' <<< $sys_theme) ];then
            xfconf-query -c xsettings -p /Net/IconThemeName -s "Purple-Light" &
            xfconf-query -c xsettings -p /Net/ThemeName -s "purple-light" &
            xfconf-query -c xfwm4 -p /general/theme -s "Flat-Remix-Light-XFWM"
        else
            xfconf-query -c xsettings -p /Net/IconThemeName -s "Purple-Dark" &
            xfconf-query -c xsettings -p /Net/ThemeName -s "purple-mix" &
            xfconf-query -c xfwm4 -p /general/theme -s "Flat-Remix-Dark-XFWM"
        fi
        ;;

    pink)
        if [ $(grep -i 'dark' <<< $sys_theme) ];then
            xfconf-query -c xsettings -p /Net/IconThemeName -s "Pink-Dark" &
            xfconf-query -c xsettings -p /Net/ThemeName -s "pink-dark" &
            xfconf-query -c xfwm4 -p /general/theme -s "Flat-Remix-Dark-XFWM"
        elif [ $(grep -i 'light' <<< $sys_theme) ];then
            xfconf-query -c xsettings -p /Net/IconThemeName -s "Pink-Light" &
            xfconf-query -c xsettings -p /Net/ThemeName -s "pink-light" &
            xfconf-query -c xfwm4 -p /general/theme -s "Flat-Remix-Light-XFWM"
        else
            xfconf-query -c xsettings -p /Net/IconThemeName -s "Pink-Dark" &
            xfconf-query -c xsettings -p /Net/ThemeName -s "pink-mix" &
            xfconf-query -c xfwm4 -p /general/theme -s "Flat-Remix-Dark-XFWM"
        fi
        ;;

    yellow)
        if [ $(grep -i 'dark' <<< $sys_theme) ];then
            xfconf-query -c xsettings -p /Net/IconThemeName -s "Yellow-Dark" &
            xfconf-query -c xsettings -p /Net/ThemeName -s "yellow-dark" &
            xfconf-query -c xfwm4 -p /general/theme -s "Flat-Remix-Dark-XFWM"
        elif [ $(grep -i 'light' <<< $sys_theme) ];then
            xfconf-query -c xsettings -p /Net/IconThemeName -s "Yellow-Light" &
            xfconf-query -c xsettings -p /Net/ThemeName -s "yellow-light" &
            xfconf-query -c xfwm4 -p /general/theme -s "Flat-Remix-Light-XFWM"
        else
            xfconf-query -c xsettings -p /Net/IconThemeName -s "Yellow-Dark" &
            xfconf-query -c xsettings -p /Net/ThemeName -s "yellow-mix" &
            xfconf-query -c xfwm4 -p /general/theme -s "Flat-Remix-Dark-XFWM"
        fi
        ;;

    red)
        if [ $(grep -i 'dark' <<< $sys_theme) ];then
            xfconf-query -c xsettings -p /Net/IconThemeName -s "Red-Dark" &
            xfconf-query -c xsettings -p /Net/ThemeName -s "red-dark" &
            xfconf-query -c xfwm4 -p /general/theme -s "Flat-Remix-Dark-XFWM"
        elif [ $(grep -i 'light' <<< $sys_theme) ];then
            xfconf-query -c xsettings -p /Net/IconThemeName -s "Red-Light" &
            xfconf-query -c xsettings -p /Net/ThemeName -s "red-light" &
            xfconf-query -c xfwm4 -p /general/theme -s "Flat-Remix-Light-XFWM"
        else
            xfconf-query -c xsettings -p /Net/IconThemeName -s "Red-Dark" &
            xfconf-query -c xsettings -p /Net/ThemeName -s "red-mix" &
            xfconf-query -c xfwm4 -p /general/theme -s "Flat-Remix-Dark-XFWM"
        fi
        ;;

    *) exit ;;
esac

exit
