#!/usr/bin/env bash
#
#
# WELCOME PARA O TIGER OS
#
# Desenvolvido por eltonff 31/10/2020
# Com a ferramenta BigBashView
# Tecnologias utilizadas: bash, html, css, javascript e <3
# Script by Natanael.755

WEBAPP_TARGET="${HOME}/.local/share"

mkdir -p "${WEBAPP_TARGET}/bin"
mkdir -p "${WEBAPP_TARGET}/applications"

function flatpak-remove-gui() {
  name=$(echo "${1}" | cut -c 20-)
  flatpak uninstall --assumeyes "${2}" | yad --center --progress --pulsate --auto-close --no-buttons --borders=32 --width=480 --text="<b>Removendo ${name}</b>" --on-top --skip-taskbar --undecorated
}

windowID="$(xwininfo -name "Bem-vindo TigerOS" | head -n2 | tail -n1 | awk '{print $4}')"

[ "$(pidof zenity)" ] && zenity --warning --width=380 --modal --attach="$windowID" \
--text="Já existe outra instalação/remoção em andamento!\nAguarde a instalação/remoção concluir..." && exit

case $1 in

    clamav)
        flatpak-remove-gui --override-appname="Antivírus" com.gitlab.davem.ClamTk
        exit
    ;;
    
    remmina)
        flatpak-remove-gui --override-appname="Remmina" org.remmina.Remmina
        exit
    ;;

    msoffice)
        pkexec env DISPLAY=$DISPLAY XAUTHORITY=$XAUTHORITY rm ${WEBAPP_TARGET}/bin/msword ${WEBAPP_TARGET}/bin/msexcel ${WEBAPP_TARGET}/bin/mspowerpoint \
        ${WEBAPP_TARGET}/applications/msword.desktop ${WEBAPP_TARGET}/applications/msexcel.desktop ${WEBAPP_TARGET}/applications/mspowerpoint.desktop && {
        rm -r ~/.msword ~/.msexcel ~/.mspowerpoint
        zenity --modal --info --width=380 --attach="$windowID" --text="O MS Office foi removido com sucesso!"
    } || {
        zenity --modal --error --width=380 --attach="$windowID" \
        --text="Não foi possível concluir a remoção...\nPor favor, tente novamente!"
    }
    ;;

    googledocs)
        pkexec env DISPLAY=$DISPLAY XAUTHORITY=$XAUTHORITY rm ${WEBAPP_TARGET}/bin/gdocs ${WEBAPP_TARGET}/bin/gsheets ${WEBAPP_TARGET}/bin/gslides \
        ${WEBAPP_TARGET}/applications/gdocs.desktop ${WEBAPP_TARGET}/applications/gsheets.desktop ${WEBAPP_TARGET}/applications/gslides.desktop && {
        rm -r ~/.gdocs ~/.gsheets ~/.gslides
        zenity --modal --info --width=380 --attach="$windowID" --text="O Google Docs foi removido com sucesso!"
    } || {
        zenity --modal --error --width=380 --attach="$windowID" \
        --text="Não foi possível concluir a remoção...\nPor favor, tente novamente!"
    }
    ;;

    gcontacts)
        pkexec env DISPLAY=$DISPLAY XAUTHORITY=$XAUTHORITY rm ${WEBAPP_TARGET}/bin/gcontacts ${WEBAPP_TARGET}/applications/gcontacts.desktop && {
            rm -r ~/.gcontacts
            zenity --info --text="O webapp Google Contacts foi removido com sucesso!" --modal --attach="$windowID" --width=380
        } || {
            zenity --error --text="Não foi possível concluir a remoção do webapp!" --modal --attach="$windowID" --width=380
        }
        exit
        ;;

    gcalendar)
        pkexec env DISPLAY=$DISPLAY XAUTHORITY=$XAUTHORITY rm ${WEBAPP_TARGET}/bin/gcalendar ${WEBAPP_TARGET}/applications/gcalendar.desktop && {
            rm -r ~/.gcalendar
            zenity --info --text="O webapp Google Calendar foi removido com sucesso!" --modal --attach="$windowID" --width=380
        } || {
            zenity --error --text="Não foi possível concluir a remoção do webapp!" --modal --attach="$windowID" --width=380
        }
        exit
        ;;

    gkeep)
        pkexec env DISPLAY=$DISPLAY XAUTHORITY=$XAUTHORITY rm ${WEBAPP_TARGET}/bin/gkeep ${WEBAPP_TARGET}/applications/gkeep.desktop && {
            rm -r ~/.gkeep
            zenity --info --text="O webapp Google Keep foi removido com sucesso!" --modal --attach="$windowID" --width=380
        } || {
            zenity --error --text="Não foi possível concluir a remoção do webapp!" --modal --attach="$windowID" --width=380
        }
        exit
        ;;

    cvyou)
        pkexec env DISPLAY=$DISPLAY XAUTHORITY=$XAUTHORITY ${WEBAPP_TARGET}/bin/cvyou ${WEBAPP_TARGET}/applications/cvyou.desktop && {
            rm -r ~/.cvyou
            zenity --info --text="O webapp CV2You foi removido com sucesso!" --modal --attach="$windowID" --width=380
        } || {
            zenity --error --text="Não foi possível concluir a remoção do webapp!" --modal --attach="$windowID" --width=380
        }
        exit
        ;;

    github)
        pkexec env DISPLAY=$DISPLAY XAUTHORITY=$XAUTHORITY rm ${WEBAPP_TARGET}/bin/github ${WEBAPP_TARGET}/applications/github.desktop && {
            rm -r ~/.github
            zenity --info --text="O webapp GitHub foi removido com sucesso!" --modal --attach="$windowID" --width=380
        } || {
            zenity --error --text="Não foi possível concluir a remoção do webapp!" --modal --attach="$windowID" --width=380
        }
        exit
        ;;

    gist)
        pkexec env DISPLAY=$DISPLAY XAUTHORITY=$XAUTHORITY rm ${WEBAPP_TARGET}/bin/gist ${WEBAPP_TARGET}/applications/gist.desktop && {
            rm -r ~/.gist
            zenity --info --text="O webapp Gist foi removido com sucesso!" --modal --attach="$windowID" --width=380
        } || {
            zenity --error --text="Não foi possível concluir a remoção do webapp!" --modal --attach="$windowID" --width=380
        }
        exit
        ;;

    glitch)
        pkexec env DISPLAY=$DISPLAY XAUTHORITY=$XAUTHORITY rm ${WEBAPP_TARGET}/bin/glitch ${WEBAPP_TARGET}/applications/glitch.desktop && {
            rm -r ~/.glitch
            zenity --info --text="O webapp Glitch foi removido com sucesso!" --modal --attach="$windowID" --width=380
        } || {
            zenity --error --text="Não foi possível concluir a remoção do webapp!" --modal --attach="$windowID" --width=380
        }
        exit
        ;;

    codepen)
        pkexec env DISPLAY=$DISPLAY XAUTHORITY=$XAUTHORITY rm ${WEBAPP_TARGET}/bin/codepen ${WEBAPP_TARGET}/applications/codepen.desktop && {
            rm -r ~/.codepen
            zenity --info --text="O webapp CodePen foi removido com sucesso!" --modal --attach="$windowID" --width=380
        } || {
            zenity --error --text="Não foi possível concluir a remoção do webapp!" --modal --attach="$windowID" --width=380
        }
        exit
        ;;

    diagrams)
        pkexec env DISPLAY=$DISPLAY XAUTHORITY=$XAUTHORITY rm ${WEBAPP_TARGET}/bin/diagrams ${WEBAPP_TARGET}/applications/diagrams.desktop && {
            rm -r ~/.diagrams
            zenity --info --text="O webapp Diagrams foi removido com sucesso!" --modal --attach="$windowID" --width=380
        } || {
            zenity --error --text="Não foi possível concluir a remoção do webapp!" --modal --attach="$windowID" --width=380
        }
        exit
        ;;

    gforms)
        pkexec env DISPLAY=$DISPLAY XAUTHORITY=$XAUTHORITY rm ${WEBAPP_TARGET}/bin/gforms ${WEBAPP_TARGET}/applications/gforms.desktop && {
            rm -r ~/.gforms
            zenity --info --text="O webapp Google Forms foi removido com sucesso!" --modal --attach="$windowID" --width=380
        } || {
            zenity --error --text="Não foi possível concluir a remoção do webapp!" --modal --attach="$windowID" --width=380
        }
        exit
        ;;

    spark)
        pkexec env DISPLAY=$DISPLAY XAUTHORITY=$XAUTHORITY rm ${WEBAPP_TARGET}/bin/spark ${WEBAPP_TARGET}/applications/spark.desktop && {
            rm -r ~/.spark
            zenity --info --text="O webapp Adobe Spark foi removido com sucesso!" --modal --attach="$windowID" --width=380
        } || {
            zenity --error --text="Não foi possível concluir a remoção do webapp!" --modal --attach="$windowID" --width=380
        }
        exit
        ;;

    canva)
        pkexec env DISPLAY=$DISPLAY XAUTHORITY=$XAUTHORITY rm ${WEBAPP_TARGET}/bin/canva ${WEBAPP_TARGET}/applications/canva.desktop && {
            rm -r ~/.canva
            zenity --info --text="O webapp Canva foi removido com sucesso!" --modal --attach="$windowID" --width=380
        } || {
            zenity --error --text="Não foi possível concluir a remoção do webapp!" --modal --attach="$windowID" --width=380
        }
        exit
        ;;

    logomaker)
        pkexec env DISPLAY=$DISPLAY XAUTHORITY=$XAUTHORITY rm ${WEBAPP_TARGET}/bin/logomaker ${WEBAPP_TARGET}/applications/logomaker.desktop && {
            rm -r ~/.logomaker
            zenity --info --text="O webapp Logo Maker foi removido com sucesso!" --modal --attach="$windowID" --width=380
        } || {
            zenity --error --text="Não foi possível concluir a remoção do webapp!" --modal --attach="$windowID" --width=380
        }
        exit
        ;;

    photoshop)
        pkexec env DISPLAY=$DISPLAY XAUTHORITY=$XAUTHORITY rm ${WEBAPP_TARGET}/bin/photoshop ${WEBAPP_TARGET}/applications/photoshop.desktop && {
            rm -r ~/.photoshop
            zenity --info --text="O webapp Photoshop Online foi removido com sucesso!" --modal --attach="$windowID" --width=380
        } || {
            zenity --error --text="Não foi possível concluir a remoção do webapp!" --modal --attach="$windowID" --width=380
        }
        exit
        ;;

    photopea)
        pkexec env DISPLAY=$DISPLAY XAUTHORITY=$XAUTHORITY rm ${WEBAPP_TARGET}/bin/photopea ${WEBAPP_TARGET}/applications/photopea.desktop && {
            rm -r ~/.photopea
            zenity --info --text="O webapp Photopea foi removido com sucesso!" --modal --attach="$windowID" --width=380
        } || {
            zenity --error --text="Não foi possível concluir a remoção do webapp!" --modal --attach="$windowID" --width=380
        }
        exit
        ;;

    gmeet)
        pkexec env DISPLAY=$DISPLAY XAUTHORITY=$XAUTHORITY rm ${WEBAPP_TARGET}/bin/gmeet ${WEBAPP_TARGET}/applications/gmeet.desktop && {
            rm -r ~/.gmeet
            zenity --info --text="O webapp Google Meet foi removido com sucesso!" --modal --attach="$windowID" --width=380
        } || {
            zenity --error --text="Não foi possível concluir a remoção do webapp!" --modal --attach="$windowID" --width=380
        }
        exit
        ;;

    medium)
        pkexec env DISPLAY=$DISPLAY XAUTHORITY=$XAUTHORITY rm ${WEBAPP_TARGET}/bin/medium ${WEBAPP_TARGET}/applications/medium.desktop && {
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

    edge)
        flatpak-remove-gui --override-appname="Microsoft Edge" com.Microsoft.Edge
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

    temas-flatpak)
        "$PWD"/restaurar-temas-flatpak.sh
        exit
        ;;



    *)
        pkexec env DISPLAY=$DISPLAY XAUTHORITY=$XAUTHORITY "$PWD"/pkg-remove.sh "$1" "$2"
        ;;
esac
