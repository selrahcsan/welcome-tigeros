#!/usr/bin/env bash
#
#
# WELCOME PARA O TIGER OS
#
# Desenvolvido por eltonff 31/10/2020
# Com a ferramenta BigBashView
# Tecnologias utilizadas: bash, html, css, javascript e <3

windowID="$(xwininfo -name "Bem-vindo TigerOS" | head -n2 | tail -n1 | awk '{print $4}')"

case $1 in
    libreoffice)
        flatpak-install-gui --override-appname="LibreOffice" org.libreoffice.LibreOffice
        exit
        ;;

    wps)
        flatpak-install-gui --override-appname="WPS Office" com.wps.Office
        exit
        ;;

    onlyoffice)
        flatpak-install-gui --override-appname="OnlyOffice" org.onlyoffice.desktopeditors
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
        flatpak-install-gui --override-appname="Brave" com.brave.Browser
        exit
        ;;

    chrome)
        flatpak-install-gui --override-appname="Google Chrome" com.google.Chrome
        exit
        ;;

    opera)
        flatpak-install-gui --override-appname="Opera" com.opera.Opera
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
        flatpak-install-gui --override-appname="Firefox" org.mozilla.firefox
        exit
        ;;

    tor)
        flatpak-install-gui --override-appname="Tor Browser" com.github.micahflee.torbrowser-launcher
        exit
        ;;

    update)
        /usr/bin/update-manager &
        exit
        ;;

    clamav)
        [ "$(pidof zenity)" ] && zenity --warning --attach="$windowID" --width=380 --modal \
        --text="Já existe outra instalação/remoção em andamento!\nAguarde a instalação/remoção concluir..." && exit
        "$PWD"/pkg-install.sh clamtk "Antivírus"
        exit
        ;;

    msoffice)
        pkexec env DISPLAY=$DISPLAY XAUTHORITY=$XAUTHORITY "$PWD"/msoffice.sh
        [ $(type -P msword) ] && zenity --info --modal \
        --text="O Microsoft Office Online foi instalado com sucesso!" --attach="$windowID" --width="380"
        exit
        ;;

    googledocs)
        pkexec env DISPLAY=$DISPLAY XAUTHORITY=$XAUTHORITY "$PWD"/googledocs.sh
        [ $(type -P gdocs) ] && zenity --info --modal \
        --text="O Google Docs foi instalado com sucesso!" --attach="$windowID" --width="380"
        exit
        ;;

    remmina)
        [ "$(pidof zenity)" ] && zenity --warning --attach="$windowID" --width=380 --modal \
        --text="Já existe outra instalação/remoção em andamento!\nAguarde a instalação/remoção concluir..." && exit
        "$PWD"/pkg-install.sh remmina "Remmina"
        exit
        ;;

    codecs)
        [ "$(pidof zenity)" ] && zenity --warning --attach="$windowID" --width=380 --modal \
        --text="Já existe outra instalação/remoção em andamento!\nAguarde a instalação/remoção concluir..." && exit
        "$PWD"/wrapper-codecs.sh
        exit
        ;;

    driver)
        driver-manager
        exit
        ;;

    gcontacts)
        pkexec env DISPLAY=$DISPLAY XAUTHORITY=$XAUTHORITY \
        "$PWD"/webapps.sh "$1" "Google Contacts" "Utility" "$1" "https://contacts.google.com" && {
            zenity --info --text="O webapp Google Contacts foi instalado com sucesso!" --modal --attach="$windowID" --width=380
        } || {
            zenity --error --text="Não foi possível concluir a instalação do webapp!" --modal --attach="$windowID" --width=380
        }
        exit
        ;;

    gcalendar)
        pkexec env DISPLAY=$DISPLAY XAUTHORITY=$XAUTHORITY \
        "$PWD"/webapps.sh "$1" "Google Calendar" "Utility" "$1" "https://calendar.google.com/calendar/u/0/r" && {
            zenity --info --text="O webapp Google Calendar foi instalado com sucesso!" --modal --attach="$windowID" --width=380
        } || {
            zenity --error --text="Não foi possível concluir a instalação do webapp!" --modal --attach="$windowID" --width=380
        }
        exit
        ;;

    gkeep)
        pkexec env DISPLAY=$DISPLAY XAUTHORITY=$XAUTHORITY \
        "$PWD"/webapps.sh "$1" "Google Keep" "Utility" "$1" "keep.new" && {
            zenity --info --text="O webapp Google Keep foi instalado com sucesso!" --modal --attach="$windowID" --width=380
        } || {
            zenity --error --text="Não foi possível concluir a instalação do webapp!" --modal --attach="$windowID" --width=380
        }
        exit
        ;;

    cvyou)
        pkexec env DISPLAY=$DISPLAY XAUTHORITY=$XAUTHORITY \
        "$PWD"/webapps.sh "$1" "CV2You" "Utility" "$1" "resume.new" && {
            zenity --info --text="O webapp CV2You foi instalado com sucesso!" --modal --attach="$windowID" --width=380
        } || {
            zenity --error --text="Não foi possível concluir a instalação do webapp!" --modal --attach="$windowID" --width=380
        }
        exit
        ;;

    github)
        pkexec env DISPLAY=$DISPLAY XAUTHORITY=$XAUTHORITY \
        "$PWD"/webapps.sh "$1" "GitHub" "Development" "$1" "github.new" && {
            zenity --info --text="O webapp GitHub foi instalado com sucesso!" --modal --attach="$windowID" --width=380
        } || {
            zenity --error --text="Não foi possível concluir a instalação do webapp!" --modal --attach="$windowID" --width=380
        }
        exit
        ;;

    gist)
        pkexec env DISPLAY=$DISPLAY XAUTHORITY=$XAUTHORITY \
        "$PWD"/webapps.sh "$1" "Gist" "Development" "$1" "gist.new" && {
            zenity --info --text="O webapp Gist foi instalado com sucesso!" --modal --attach="$windowID" --width=380
        } || {
            zenity --error --text="Não foi possível concluir a instalação do webapp!" --modal --attach="$windowID" --width=380
        }
        exit
        ;;

    glitch)
        pkexec env DISPLAY=$DISPLAY XAUTHORITY=$XAUTHORITY \
        "$PWD"/webapps.sh "$1" "Glitch" "Development" "$1" "glitch.new" && {
            zenity --info --text="O webapp Glitch foi instalado com sucesso!" --modal --attach="$windowID" --width=380
        } || {
            zenity --error --text="Não foi possível concluir a instalação do webapp!" --modal --attach="$windowID" --width=380
        }
        exit
        ;;

    codepen)
        pkexec env DISPLAY=$DISPLAY XAUTHORITY=$XAUTHORITY \
        "$PWD"/webapps.sh "$1" "CodePen" "Development" "$1" "pen.new" && {
            zenity --info --text="O webapp CodePen foi instalado com sucesso!" --modal --attach="$windowID" --width=380
        } || {
            zenity --error --text="Não foi possível concluir a instalação do webapp!" --modal --attach="$windowID" --width=380
        }
        exit
        ;;

    diagrams)
        pkexec env DISPLAY=$DISPLAY XAUTHORITY=$XAUTHORITY \
        "$PWD"/webapps.sh "$1" "Diagrams" "Development" "$1" "diagrams.new" && {
            zenity --info --text="O webapp Diagrams foi instalado com sucesso!" --modal --attach="$windowID" --width=380
        } || {
            zenity --error --text="Não foi possível concluir a instalação do webapp!" --modal --attach="$windowID" --width=380
        }
        exit
        ;;

    gforms)
        pkexec env DISPLAY=$DISPLAY XAUTHORITY=$XAUTHORITY \
        "$PWD"/webapps.sh "$1" "Google Forms" "Office" "$1" "forms.new" && {
            zenity --info --text="O webapp Google Forms foi instalado com sucesso!" --modal --attach="$windowID" --width=380
        } || {
            zenity --error --text="Não foi possível concluir a instalação do webapp!" --modal --attach="$windowID" --width=380
        }
        exit
        ;;

    spark)
        pkexec env DISPLAY=$DISPLAY XAUTHORITY=$XAUTHORITY \
        "$PWD"/webapps.sh "$1" "Adobe Spark" "Graphics" "$1" "spark.new" && {
            zenity --info --text="O webapp Adobe Spark foi instalado com sucesso!" --modal --attach="$windowID" --width=380
        } || {
            zenity --error --text="Não foi possível concluir a instalação do webapp!" --modal --attach="$windowID" --width=380
        }
        exit
        ;;

    canva)
        pkexec env DISPLAY=$DISPLAY XAUTHORITY=$XAUTHORITY \
        "$PWD"/webapps.sh "$1" "Canva" "Graphics" "$1" "canva.new" && {
            zenity --info --text="O webapp Canva foi instalado com sucesso!" --modal --attach="$windowID" --width=380
        } || {
            zenity --error --text="Não foi possível concluir a instalação do webapp!" --modal --attach="$windowID" --width=380
        }
        exit
        ;;

    logomaker)
        pkexec env DISPLAY=$DISPLAY XAUTHORITY=$XAUTHORITY \
        "$PWD"/webapps.sh "$1" "Logo Maker" "Graphics" "$1" "logo.new" && {
            zenity --info --text="O webapp Logo Maker foi instalado com sucesso!" --modal --attach="$windowID" --width=380
        } || {
            zenity --error --text="Não foi possível concluir a instalação do webapp!" --modal --attach="$windowID" --width=380
        }
        exit
        ;;

    photoshop)
        pkexec env DISPLAY=$DISPLAY XAUTHORITY=$XAUTHORITY \
        "$PWD"/webapps.sh "$1" "Photoshop Online" "Graphics" "$1" "photoshop.new" && {
            zenity --info --text="O webapp Photoshop Online foi instalado com sucesso!" --modal --attach="$windowID" --width=380
        } || {
            zenity --error --text="Não foi possível concluir a instalação do webapp!" --modal --attach="$windowID" --width=380
        }
        exit
        ;;

    photopea)
        pkexec env DISPLAY=$DISPLAY XAUTHORITY=$XAUTHORITY \
        "$PWD"/webapps.sh "$1" "Photopea" "Graphics" "$1" "https://www.photopea.com/" && {
            zenity --info --text="O webapp Photopea Online foi instalado com sucesso!" --modal --attach="$windowID" --width=380
        } || {
            zenity --error --text="Não foi possível concluir a instalação do webapp!" --modal --attach="$windowID" --width=380
        }
        exit
        ;;

    gmeet)
        pkexec env DISPLAY=$DISPLAY XAUTHORITY=$XAUTHORITY \
        "$PWD"/webapps.sh "$1" "Google Meet" "Network" "$1" "meet.new" && {
            zenity --info --text="O webapp Google Meet foi instalado com sucesso!" --modal --attach="$windowID" --width=380
        } || {
            zenity --error --text="Não foi possível concluir a instalação do webapp!" --modal --attach="$windowID" --width=380
        }
        exit
        ;;

    medium)
        pkexec env DISPLAY=$DISPLAY XAUTHORITY=$XAUTHORITY \
        "$PWD"/webapps.sh "$1" "Medium" "Network" "$1" "story.new" && {
            zenity --info --text="O webapp Medium foi instalado com sucesso!" --modal --attach="$windowID" --width=380
        } || {
            zenity --error --text="Não foi possível concluir a instalação do webapp!" --modal --attach="$windowID" --width=380
        }
        exit
        ;;

    *) exit ;;
esac
