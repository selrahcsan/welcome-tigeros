#!/usr/bin/env bash
#
#
# WELCOME PARA O TIGER OS
#
# Desenvolvido por eltonff 31/10/2020
# Com a ferramenta BigBashView
# Tecnologias utilizadas: bash, html, css, javascript e <3
# Script by Natanael.755

function flatpak-remove-gui() {
  name=$(echo "${1}" | cut -c 20-)
  flatpak uninstall --assumeyes "${2}" | yad --center --progress --pulsate --auto-close --no-buttons --borders=32 --width=480 --text="<b>Removendo ${name}</b>" --on-top --skip-taskbar --undecorated
}

windowID="$(xwininfo -name "Bem-vindo TigerOS" | head -n2 | tail -n1 | awk '{print $4}')"

[ "$(pidof zenity)" ] && zenity --warning --width=380 --modal --attach="$windowID" \
--text="Já existe outra instalação/remoção em andamento!\nAguarde a instalação/remoção concluir..." && exit

case $1 in
    msoffice)
        pkexec env DISPLAY=$DISPLAY XAUTHORITY=$XAUTHORITY rm /usr/bin/msword /usr/bin/msexcel /usr/bin/mspowerpoint \
        /usr/share/applications/msword.desktop /usr/share/applications/msexcel.desktop /usr/share/applications/mspowerpoint.desktop && {
        rm -r ~/.msword ~/.msexcel ~/.mspowerpoint
        zenity --modal --info --width=380 --attach="$windowID" --text="O MS Office foi removido com sucesso!"
    } || {
        zenity --modal --error --width=380 --attach="$windowID" \
        --text="Não foi possível concluir a remoção...\nPor favor, tente novamente!"
    }
    ;;

    googledocs)
        pkexec env DISPLAY=$DISPLAY XAUTHORITY=$XAUTHORITY rm /usr/bin/gdocs /usr/bin/gsheets /usr/bin/gslides \
        /usr/share/applications/gdocs.desktop /usr/share/applications/gsheets.desktop /usr/share/applications/gslides.desktop && {
        rm -r ~/.gdocs ~/.gsheets ~/.gslides
        zenity --modal --info --width=380 --attach="$windowID" --text="O Google Docs foi removido com sucesso!"
    } || {
        zenity --modal --error --width=380 --attach="$windowID" \
        --text="Não foi possível concluir a remoção...\nPor favor, tente novamente!"
    }
    ;;

    gcontacts)
        pkexec env DISPLAY=$DISPLAY XAUTHORITY=$XAUTHORITY rm /usr/bin/gcontacts /usr/share/applications/gcontacts.desktop && {
            rm -r ~/.gcontacts
            zenity --info --text="O webapp Google Contacts foi removido com sucesso!" --modal --attach="$windowID" --width=380
        } || {
            zenity --error --text="Não foi possível concluir a remoção do webapp!" --modal --attach="$windowID" --width=380
        }
        exit
        ;;

    gcalendar)
        pkexec env DISPLAY=$DISPLAY XAUTHORITY=$XAUTHORITY rm /usr/bin/gcalendar /usr/share/applications/gcalendar.desktop && {
            rm -r ~/.gcalendar
            zenity --info --text="O webapp Google Calendar foi removido com sucesso!" --modal --attach="$windowID" --width=380
        } || {
            zenity --error --text="Não foi possível concluir a remoção do webapp!" --modal --attach="$windowID" --width=380
        }
        exit
        ;;

    gkeep)
        pkexec env DISPLAY=$DISPLAY XAUTHORITY=$XAUTHORITY rm /usr/bin/gkeep /usr/share/applications/gkeep.desktop && {
            rm -r ~/.gkeep
            zenity --info --text="O webapp Google Keep foi removido com sucesso!" --modal --attach="$windowID" --width=380
        } || {
            zenity --error --text="Não foi possível concluir a remoção do webapp!" --modal --attach="$windowID" --width=380
        }
        exit
        ;;

    cvyou)
        pkexec env DISPLAY=$DISPLAY XAUTHORITY=$XAUTHORITY rm /usr/bin/cvyou /usr/share/applications/cvyou.desktop && {
            rm -r ~/.cvyou
            zenity --info --text="O webapp CV2You foi removido com sucesso!" --modal --attach="$windowID" --width=380
        } || {
            zenity --error --text="Não foi possível concluir a remoção do webapp!" --modal --attach="$windowID" --width=380
        }
        exit
        ;;

    github)
        pkexec env DISPLAY=$DISPLAY XAUTHORITY=$XAUTHORITY rm /usr/bin/github /usr/share/applications/github.desktop && {
            rm -r ~/.github
            zenity --info --text="O webapp GitHub foi removido com sucesso!" --modal --attach="$windowID" --width=380
        } || {
            zenity --error --text="Não foi possível concluir a remoção do webapp!" --modal --attach="$windowID" --width=380
        }
        exit
        ;;

    gist)
        pkexec env DISPLAY=$DISPLAY XAUTHORITY=$XAUTHORITY rm /usr/bin/gist /usr/share/applications/gist.desktop && {
            rm -r ~/.gist
            zenity --info --text="O webapp Gist foi removido com sucesso!" --modal --attach="$windowID" --width=380
        } || {
            zenity --error --text="Não foi possível concluir a remoção do webapp!" --modal --attach="$windowID" --width=380
        }
        exit
        ;;

    glitch)
        pkexec env DISPLAY=$DISPLAY XAUTHORITY=$XAUTHORITY rm /usr/bin/glitch /usr/share/applications/glitch.desktop && {
            rm -r ~/.glitch
            zenity --info --text="O webapp Glitch foi removido com sucesso!" --modal --attach="$windowID" --width=380
        } || {
            zenity --error --text="Não foi possível concluir a remoção do webapp!" --modal --attach="$windowID" --width=380
        }
        exit
        ;;

    codepen)
        pkexec env DISPLAY=$DISPLAY XAUTHORITY=$XAUTHORITY rm /usr/bin/codepen /usr/share/applications/codepen.desktop && {
            rm -r ~/.codepen
            zenity --info --text="O webapp CodePen foi removido com sucesso!" --modal --attach="$windowID" --width=380
        } || {
            zenity --error --text="Não foi possível concluir a remoção do webapp!" --modal --attach="$windowID" --width=380
        }
        exit
        ;;

    diagrams)
        pkexec env DISPLAY=$DISPLAY XAUTHORITY=$XAUTHORITY rm /usr/bin/diagrams /usr/share/applications/diagrams.desktop && {
            rm -r ~/.diagrams
            zenity --info --text="O webapp Diagrams foi removido com sucesso!" --modal --attach="$windowID" --width=380
        } || {
            zenity --error --text="Não foi possível concluir a remoção do webapp!" --modal --attach="$windowID" --width=380
        }
        exit
        ;;

    gforms)
        pkexec env DISPLAY=$DISPLAY XAUTHORITY=$XAUTHORITY rm /usr/bin/gforms /usr/share/applications/gforms.desktop && {
            rm -r ~/.gforms
            zenity --info --text="O webapp Google Forms foi removido com sucesso!" --modal --attach="$windowID" --width=380
        } || {
            zenity --error --text="Não foi possível concluir a remoção do webapp!" --modal --attach="$windowID" --width=380
        }
        exit
        ;;

    spark)
        pkexec env DISPLAY=$DISPLAY XAUTHORITY=$XAUTHORITY rm /usr/bin/spark /usr/share/applications/spark.desktop && {
            rm -r ~/.spark
            zenity --info --text="O webapp Adobe Spark foi removido com sucesso!" --modal --attach="$windowID" --width=380
        } || {
            zenity --error --text="Não foi possível concluir a remoção do webapp!" --modal --attach="$windowID" --width=380
        }
        exit
        ;;

    canva)
        pkexec env DISPLAY=$DISPLAY XAUTHORITY=$XAUTHORITY rm /usr/bin/canva /usr/share/applications/canva.desktop && {
            rm -r ~/.canva
            zenity --info --text="O webapp Canva foi removido com sucesso!" --modal --attach="$windowID" --width=380
        } || {
            zenity --error --text="Não foi possível concluir a remoção do webapp!" --modal --attach="$windowID" --width=380
        }
        exit
        ;;

    logomaker)
        pkexec env DISPLAY=$DISPLAY XAUTHORITY=$XAUTHORITY rm /usr/bin/logomaker /usr/share/applications/logomaker.desktop && {
            rm -r ~/.logomaker
            zenity --info --text="O webapp Logo Maker foi removido com sucesso!" --modal --attach="$windowID" --width=380
        } || {
            zenity --error --text="Não foi possível concluir a remoção do webapp!" --modal --attach="$windowID" --width=380
        }
        exit
        ;;

    photoshop)
        pkexec env DISPLAY=$DISPLAY XAUTHORITY=$XAUTHORITY rm /usr/bin/photoshop /usr/share/applications/photoshop.desktop && {
            rm -r ~/.photoshop
            zenity --info --text="O webapp Photoshop Online foi removido com sucesso!" --modal --attach="$windowID" --width=380
        } || {
            zenity --error --text="Não foi possível concluir a remoção do webapp!" --modal --attach="$windowID" --width=380
        }
        exit
        ;;

    photopea)
        pkexec env DISPLAY=$DISPLAY XAUTHORITY=$XAUTHORITY rm /usr/bin/photopea /usr/share/applications/photopea.desktop && {
            rm -r ~/.photopea
            zenity --info --text="O webapp Photopea foi removido com sucesso!" --modal --attach="$windowID" --width=380
        } || {
            zenity --error --text="Não foi possível concluir a remoção do webapp!" --modal --attach="$windowID" --width=380
        }
        exit
        ;;

    gmeet)
        pkexec env DISPLAY=$DISPLAY XAUTHORITY=$XAUTHORITY rm /usr/bin/gmeet /usr/share/applications/gmeet.desktop && {
            rm -r ~/.gmeet
            zenity --info --text="O webapp Google Meet foi removido com sucesso!" --modal --attach="$windowID" --width=380
        } || {
            zenity --error --text="Não foi possível concluir a remoção do webapp!" --modal --attach="$windowID" --width=380
        }
        exit
        ;;

    medium)
        pkexec env DISPLAY=$DISPLAY XAUTHORITY=$XAUTHORITY rm /usr/bin/medium /usr/share/applications/medium.desktop && {
            rm -r ~/.medium
            zenity --info --text="O webapp Medium foi removido com sucesso!" --modal --attach="$windowID" --width=380
        } || {
            zenity --error --text="Não foi possível concluir a remoção do webapp!" --modal --attach="$windowID" --width=380
        }
        exit
        ;;

    libreoffice)
        flatpak-remove-gui --override-appname="LibreOffice" org.libreoffice.LibreOffice
        exit
        ;;

    wps)
        flatpak-remove-gui --override-appname="WPS Office" com.wps.Office
        exit
        ;;

    onlyoffice)
        flatpak-remove-gui --override-appname="OnlyOffice" org.onlyoffice.desktopeditors
        exit
        ;;

    freeoffice)
        [ "$(pidof zenity)" ] && zenity --warning --attach="$windowID" --width=380 --modal \
        --text="Já existe outra instalação/remoção em andamento!\nAguarde a instalação/remoção concluir..." && exit
        pkexec env DISPLAY=$DISPLAY XAUTHORITY=$XAUTHORITY "$PWD"/freeoffice.sh
        # Instala o dicionario
        wget -q "https://www.softmaker.net/down/hunspell/softmaker-hunspell-portuguese-br-101.sox" -O /tmp/pt_BR.sox
        mkdir -p ~/SoftMaker/hunspell/pt_BR/ ~/SoftMaker/Settings/
        unzip /tmp/pt_BR.sox -d ~/SoftMaker/hunspell/pt_BR/
        echo -e "[UserDict]\nLCID_0=1046,Hunspell\n" > ~/SoftMaker/Settings/tmfo18config.ini
        exit
        ;;

    brave)
        flatpak-remove-gui --override-appname="Brave" com.brave.Browser
        exit
        ;;

    chrome)
        flatpak-remove-gui --override-appname="Google Chrome" com.google.Chrome
        exit
        ;;

    opera)
        flatpak-remove-gui --override-appname="Opera" com.opera.Opera
        exit
        ;;

    vivaldi)
        [ "$(pidof zenity)" ] && zenity --warning --attach="$windowID" --width=380 --modal \
        --text="Já existe outra instalação/remoção em andamento!\nAguarde a instalação/remoção concluir..." && exit
        version="$(./download.py https://repo.vivaldi.com/archive/deb/pool/main/ | grep -E .*stable.*amd64.*)"
        "$PWD"/download.sh $version "Vivaldi"
        "$PWD"/pkg-install.sh /tmp/${version##*/} "Vivaldi"
        rm /tmp/${version##*/}
        exit
        ;;

    firefox)
        flatpak-remove-gui --override-appname="Firefox" org.mozilla.firefox
        exit
        ;;

    tor)
        flatpak-remove-gui --override-appname="Tor Browser" com.github.micahflee.torbrowser-launcher
        exit
        ;;


    *)
        pkexec env DISPLAY=$DISPLAY XAUTHORITY=$XAUTHORITY "$PWD"/pkg-remove.sh "$1" "$2"
        ;;
esac
