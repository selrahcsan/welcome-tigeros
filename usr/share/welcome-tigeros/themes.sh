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
        if [ $(grep -i 'amber' <<< $icon_theme) ]; then
            xfconf-query -c xsettings -p /Net/IconThemeName -s "Obsidian-Amber" &
            xfconf-query -c xsettings -p /Net/ThemeName -s "tiger-orange-mix" &
            xfconf-query -c xfwm4 -p /general/theme -s "tiger-orange-mix"
        elif [ $(grep -i 'green' <<< $icon_theme) ];then
            xfconf-query -c xsettings -p /Net/IconThemeName -s "Obsidian-Green" &
            xfconf-query -c xsettings -p /Net/ThemeName -s "tiger-green-mix" &
            xfconf-query -c xfwm4 -p /general/theme -s "tiger-green-mix"

        elif [ $(grep -i 'yellow' <<< $icon_theme) ];then
            xfconf-query -c xsettings -p /Net/IconThemeName -s "Obsidian-Yellow" &
            xfconf-query -c xsettings -p /Net/ThemeName -s "tiger-yellow-mix" &
            xfconf-query -c xfwm4 -p /general/theme -s "tiger-yellow-mix"

        elif [ $(grep -i 'gray' <<< $icon_theme) ];then
            xfconf-query -c xsettings -p /Net/IconThemeName -s "Obsidian-Gray" &
            xfconf-query -c xsettings -p /Net/ThemeName -s "tiger-grey-mix" &
            xfconf-query -c xfwm4 -p /general/theme -s "tiger-grey-mix"
        elif [ $(grep -i 'red' <<< $icon_theme) ];then
            xfconf-query -c xsettings -p /Net/IconThemeName -s "Obsidian-Red" &
            xfconf-query -c xsettings -p /Net/ThemeName -s "tiger-red-mix" &
            xfconf-query -c xfwm4 -p /general/theme -s "tiger-red-mix"
        elif [ $(grep -i 'purple' <<< $icon_theme) ];then
            xfconf-query -c xsettings -p /Net/IconThemeName -s "Obsidian-Purple" &
            xfconf-query -c xsettings -p /Net/ThemeName -s "tiger-purple-mix" &
            xfconf-query -c xfwm4 -p /general/theme -s "tiger-purple-mix"

        elif [ $(grep -i 'pink' <<< $icon_theme) ];then
            xfconf-query -c xsettings -p /Net/IconThemeName -s "Obsidian-Pink" &
            xfconf-query -c xsettings -p /Net/ThemeName -s "tiger-pink-mix" &
            xfconf-query -c xfwm4 -p /general/theme -s "tiger-pink-mix"

        else
            xfconf-query -c xsettings -p /Net/IconThemeName -s "Obsidian" &
            xfconf-query -c xsettings -p /Net/ThemeName -s "tiger-blue-mix" &
            xfconf-query -c xfwm4 -p /general/theme -s "tiger-blue-mix"
        fi

        ;;
    dark)
        if [ $(grep -i 'amber' <<< $icon_theme) ]; then
            xfconf-query -c xsettings -p /Net/IconThemeName -s "Obsidian-Amber" &
            xfconf-query -c xsettings -p /Net/ThemeName -s "tiger-orange-dark" &
            xfconf-query -c xfwm4 -p /general/theme -s "tiger-orange-dark"
        elif [ $(grep -i 'green' <<< $icon_theme) ];then
            xfconf-query -c xsettings -p /Net/IconThemeName -s "Obsidian-Green" &
            xfconf-query -c xsettings -p /Net/ThemeName -s "tiger-green-dark" &
            xfconf-query -c xfwm4 -p /general/theme -s "tiger-green-dark"

        elif [ $(grep -i 'yellow' <<< $icon_theme) ];then
            xfconf-query -c xsettings -p /Net/IconThemeName -s "Obsidian-Yellow" &
            xfconf-query -c xsettings -p /Net/ThemeName -s "tiger-yellow-dark" &
            xfconf-query -c xfwm4 -p /general/theme -s "tiger-yellow-dark"

        elif [ $(grep -i 'gray' <<< $icon_theme) ];then
            xfconf-query -c xsettings -p /Net/IconThemeName -s "Obsidian-Gray" &
            xfconf-query -c xsettings -p /Net/ThemeName -s "tiger-grey-dark" &
            xfconf-query -c xfwm4 -p /general/theme -s "tiger-grey-dark"
        elif [ $(grep -i 'red' <<< $icon_theme) ];then
            xfconf-query -c xsettings -p /Net/IconThemeName -s "Obsidian-Red" &
            xfconf-query -c xsettings -p /Net/ThemeName -s "tiger-red-dark" &
            xfconf-query -c xfwm4 -p /general/theme -s "tiger-red-dark"
        elif [ $(grep -i 'purple' <<< $icon_theme) ];then
            xfconf-query -c xsettings -p /Net/IconThemeName -s "Obsidian-Purple" &
            xfconf-query -c xsettings -p /Net/ThemeName -s "tiger-purple-dark" &
            xfconf-query -c xfwm4 -p /general/theme -s "tiger-purple-dark"

        elif [ $(grep -i 'pink' <<< $icon_theme) ];then
            xfconf-query -c xsettings -p /Net/IconThemeName -s "Obsidian-Pink" &
            xfconf-query -c xsettings -p /Net/ThemeName -s "tiger-pink-dark" &
            xfconf-query -c xfwm4 -p /general/theme -s "tiger-pink-dark"

        else
            xfconf-query -c xsettings -p /Net/IconThemeName -s "Obsidian" &
            xfconf-query -c xsettings -p /Net/ThemeName -s "tiger-blue-dark" &
            xfconf-query -c xfwm4 -p /general/theme -s "tiger-blue-dark"
        fi
        ;;

    light)
        if [ $(grep -i 'amber' <<< $icon_theme) ]; then
            xfconf-query -c xsettings -p /Net/IconThemeName -s "Obsidian-Amber-Light" &
            xfconf-query -c xsettings -p /Net/ThemeName -s "tiger-orange-light" &
            xfconf-query -c xfwm4 -p /general/theme -s "tiger-orange-light"
        elif [ $(grep -i 'green' <<< $icon_theme) ];then
            xfconf-query -c xsettings -p /Net/IconThemeName -s "Obsidian-Green-Light" &
            xfconf-query -c xsettings -p /Net/ThemeName -s "tiger-green-light" &
            xfconf-query -c xfwm4 -p /general/theme -s "tiger-green-light"

        elif [ $(grep -i 'yellow' <<< $icon_theme) ];then
            xfconf-query -c xsettings -p /Net/IconThemeName -s "Obsidian-Yellow-Light" &
            xfconf-query -c xsettings -p /Net/ThemeName -s "tiger-yellow-light" &
            xfconf-query -c xfwm4 -p /general/theme -s "tiger-yellow-light"

        elif [ $(grep -i 'gray' <<< $icon_theme) ];then
            xfconf-query -c xsettings -p /Net/IconThemeName -s "Obsidian-Gray-Light" &
            xfconf-query -c xsettings -p /Net/ThemeName -s "tiger-grey-light" &
            xfconf-query -c xfwm4 -p /general/theme -s "tiger-grey-light"
        elif [ $(grep -i 'red' <<< $icon_theme) ];then
            xfconf-query -c xsettings -p /Net/IconThemeName -s "Obsidian-Red-Light" &
            xfconf-query -c xsettings -p /Net/ThemeName -s "tiger-red-light" &
            xfconf-query -c xfwm4 -p /general/theme -s "tiger-red-light"
        elif [ $(grep -i 'purple' <<< $icon_theme) ];then
            xfconf-query -c xsettings -p /Net/IconThemeName -s "Obsidian-Purple-Light" &
            xfconf-query -c xsettings -p /Net/ThemeName -s "tiger-purple-light" &
            xfconf-query -c xfwm4 -p /general/theme -s "tiger-purple-light"

        elif [ $(grep -i 'pink' <<< $icon_theme) ];then
            xfconf-query -c xsettings -p /Net/IconThemeName -s "Obsidian-Pink-Light" &
            xfconf-query -c xsettings -p /Net/ThemeName -s "tiger-pink-light" &
            xfconf-query -c xfwm4 -p /general/theme -s "tiger-pink-light"

        else
            xfconf-query -c xsettings -p /Net/IconThemeName -s "Obsidian-Light" &
            xfconf-query -c xsettings -p /Net/ThemeName -s "tiger-blue-light" &
            xfconf-query -c xfwm4 -p /general/theme -s "tiger-blue-light"
        fi
    ;;

    blue)
        if [ $(grep -i 'dark' <<< $sys_theme) ];then
            xfconf-query -c xsettings -p /Net/IconThemeName -s "Obsidian" &
            xfconf-query -c xsettings -p /Net/ThemeName -s "tiger-blue-dark" &
            xfconf-query -c xfwm4 -p /general/theme -s "tiger-blue-dark"
        elif [ $(grep -i 'light' <<< $sys_theme) ];then
            xfconf-query -c xsettings -p /Net/IconThemeName -s "Obsidian-Light" &
            xfconf-query -c xsettings -p /Net/ThemeName -s "tiger-blue-light" &
            xfconf-query -c xfwm4 -p /general/theme -s "tiger-blue-light"
        else
            xfconf-query -c xsettings -p /Net/IconThemeName -s "Obsidian" &
            xfconf-query -c xsettings -p /Net/ThemeName -s "tiger-blue-mix" &
            xfconf-query -c xfwm4 -p /general/theme -s "tiger-blue-mix"
        fi
        ;;

    yellow)
        if [ $(grep -i 'dark' <<< $sys_theme) ];then
            xfconf-query -c xsettings -p /Net/IconThemeName -s "Obsidian-Yellow" &
            xfconf-query -c xsettings -p /Net/ThemeName -s "tiger-yellow-dark" &
            xfconf-query -c xfwm4 -p /general/theme -s "tiger-yellow-dark"
        elif [ $(grep -i 'light' <<< $sys_theme) ];then
            xfconf-query -c xsettings -p /Net/IconThemeName -s "Obsidian-Yellow-Light" &
            xfconf-query -c xsettings -p /Net/ThemeName -s "tiger-yellow-light" &
            xfconf-query -c xfwm4 -p /general/theme -s "tiger-yellow-light"
        else
            xfconf-query -c xsettings -p /Net/IconThemeName -s "Obsidian-Yellow-Mix" &
            xfconf-query -c xsettings -p /Net/ThemeName -s "tiger-yellow-mix" &
            xfconf-query -c xfwm4 -p /general/theme -s "tiger-yellow-mix"
        fi
        ;;

    amber)
        if [ $(grep -i 'dark' <<< $sys_theme) ];then
            xfconf-query -c xsettings -p /Net/IconThemeName -s "Obsidian-Amber" &
            xfconf-query -c xsettings -p /Net/ThemeName -s "tiger-orange-dark" &
            xfconf-query -c xfwm4 -p /general/theme -s "tiger-orange-dark"
        elif [ $(grep -i 'light' <<< $sys_theme) ];then
            xfconf-query -c xsettings -p /Net/IconThemeName -s "Obsidian-Amber-Light" &
            xfconf-query -c xsettings -p /Net/ThemeName -s "tiger-orange-light" &
            xfconf-query -c xfwm4 -p /general/theme -s "tiger-orange-light"
        else
            xfconf-query -c xsettings -p /Net/IconThemeName -s "Obsidian-Amber" &
            xfconf-query -c xsettings -p /Net/ThemeName -s "tiger-orange-mix" &
            xfconf-query -c xfwm4 -p /general/theme -s "tiger-orange-mix"
        fi
        ;;

    gray)
        if [ $(grep -i 'dark' <<< $sys_theme) ];then
            xfconf-query -c xsettings -p /Net/IconThemeName -s "Obsidian-Gray" &
            xfconf-query -c xsettings -p /Net/ThemeName -s "tiger-grey-dark" &
            xfconf-query -c xfwm4 -p /general/theme -s "tiger-grey-dark"
        elif [ $(grep -i 'light' <<< $sys_theme) ];then
            xfconf-query -c xsettings -p /Net/IconThemeName -s "Obsidian-Gray-Light" &
            xfconf-query -c xsettings -p /Net/ThemeName -s "tiger-grey-light" &
            xfconf-query -c xfwm4 -p /general/theme -s "tiger-grey-light"
        else
            xfconf-query -c xsettings -p /Net/IconThemeName -s "Obsidian-Gray" &
            xfconf-query -c xsettings -p /Net/ThemeName -s "tiger-grey-mix" &
            xfconf-query -c xfwm4 -p /general/theme -s "tiger-grey-mix"
        fi
        ;;

    pink)
        if [ $(grep -i 'dark' <<< $sys_theme) ];then
            xfconf-query -c xsettings -p /Net/IconThemeName -s "Obsidian-Pink" &
            xfconf-query -c xsettings -p /Net/ThemeName -s "tiger-pink-dark" &
            xfconf-query -c xfwm4 -p /general/theme -s "tiger-pink-dark"
        elif [ $(grep -i 'light' <<< $sys_theme) ];then
            xfconf-query -c xsettings -p /Net/IconThemeName -s "Obsidian-Pink-Light" &
            xfconf-query -c xsettings -p /Net/ThemeName -s "tiger-pink-light" &
            xfconf-query -c xfwm4 -p /general/theme -s "tiger-pink-light"
        else
            xfconf-query -c xsettings -p /Net/IconThemeName -s "Obsidian-Pink" &
            xfconf-query -c xsettings -p /Net/ThemeName -s "tiger-pink-mix" &
            xfconf-query -c xfwm4 -p /general/theme -s "tiger-pink-mix"
        fi
        ;;

    green)
        if [ $(grep -i 'dark' <<< $sys_theme) ];then
            xfconf-query -c xsettings -p /Net/IconThemeName -s "Obsidian-Green" &
            xfconf-query -c xsettings -p /Net/ThemeName -s "tiger-green-dark" &
            xfconf-query -c xfwm4 -p /general/theme -s "tiger-green-dark"
        elif [ $(grep -i 'light' <<< $sys_theme) ];then
            xfconf-query -c xsettings -p /Net/IconThemeName -s "Obsidian-Green-Light" &
            xfconf-query -c xsettings -p /Net/ThemeName -s "tiger-green-light" &
            xfconf-query -c xfwm4 -p /general/theme -s "tiger-green-light"
        else
            xfconf-query -c xsettings -p /Net/IconThemeName -s "Obsidian-Green" &
            xfconf-query -c xsettings -p /Net/ThemeName -s "tiger-green-mix" &
            xfconf-query -c xfwm4 -p /general/theme -s "tiger-green-mix"
        fi
        ;;

    purple)
        if [ $(grep -i 'dark' <<< $sys_theme) ];then
            xfconf-query -c xsettings -p /Net/IconThemeName -s "Obsidian-Purple" &
            xfconf-query -c xsettings -p /Net/ThemeName -s "tiger-purple-dark" &
            xfconf-query -c xfwm4 -p /general/theme -s "tiger-purple-dark"
        elif [ $(grep -i 'light' <<< $sys_theme) ];then
            xfconf-query -c xsettings -p /Net/IconThemeName -s "Obsidian-Purple-Light" &
            xfconf-query -c xsettings -p /Net/ThemeName -s "tiger-purple-light" &
            xfconf-query -c xfwm4 -p /general/theme -s "tiger-purple-light"
        else
            xfconf-query -c xsettings -p /Net/IconThemeName -s "Obsidian-Purple" &
            xfconf-query -c xsettings -p /Net/ThemeName -s "tiger-purple-mix" &
            xfconf-query -c xfwm4 -p /general/theme -s "tiger-purple-mix"
        fi
        ;;

    red)
        if [ $(grep -i 'dark' <<< $sys_theme) ];then
            xfconf-query -c xsettings -p /Net/IconThemeName -s "Obsidian-Red" &
            xfconf-query -c xsettings -p /Net/ThemeName -s "tiger-red-dark" &
            xfconf-query -c xfwm4 -p /general/theme -s "tiger-red-dark"
        elif [ $(grep -i 'light' <<< $sys_theme) ];then
            xfconf-query -c xsettings -p /Net/IconThemeName -s "Obsidian-Red-Light" &
            xfconf-query -c xsettings -p /Net/ThemeName -s "tiger-red-light" &
            xfconf-query -c xfwm4 -p /general/theme -s "tiger-red-light"
        else
            xfconf-query -c xsettings -p /Net/IconThemeName -s "Obsidian-Red" &
            xfconf-query -c xsettings -p /Net/ThemeName -s "tiger-red-mix" &
            xfconf-query -c xfwm4 -p /general/theme -s "tiger-red-mix"
        fi
        ;;

    *) exit ;;
esac

exit
