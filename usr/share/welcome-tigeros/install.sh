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

    edge)
        flatpak-install-gui --override-appname="Microsoft Edge" com.microsoft.Edge
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
        io.elementary.appcenter --show-updates &
        exit
        ;;

    clamav)
        flatpak-install-gui --override-appname="Antivírus" com.gitlab.davem.ClamTk
        exit
        ;;

    msoffice)
        "$PWD"/msoffice.sh
        echo "Foi chamado" > /tmp/msoffice
        exit
        ;;

    googledocs)
        "$PWD"/googledocs.sh
        echo "Foi chamado" > /tmp/gdocs
        exit
        ;;

    remmina)
        flatpak-install-gui --override-appname="Remmina" org.remmina.Remmina
        exit
        ;;

    codecs)
        [ "$(pidof zenity)" ] && zenity --warning --attach="$windowID" --width=380 --modal \
        --text="Já existe outra instalação/remoção em andamento!\nAguarde a instalação/remoção concluir..." && exit
        "$PWD"/wrapper-codecs.sh
        exit
        ;;
    
    temas-flatpak)
        "$PWD"/instalar-temas-flatpak.sh
        exit
        ;;

    driver)
        driver-manager
        exit
        ;;

    gcontacts)
        "$PWD"/webapps.sh "$1" "Google Contacts" "Utility" "$1" "https://contacts.google.com" && {
            zenity --info --text="O webapp Google Contacts foi instalado com sucesso!" --modal --attach="$windowID" --width=380
        } || {
            zenity --error --text="Não foi possível concluir a instalação do webapp!" --modal --attach="$windowID" --width=380
        }
        exit
        ;;

    gcalendar)
        "$PWD"/webapps.sh "$1" "Google Calendar" "Utility" "$1" "https://calendar.google.com/calendar/u/0/r" && {
            zenity --info --text="O webapp Google Calendar foi instalado com sucesso!" --modal --attach="$windowID" --width=380
        } || {
            zenity --error --text="Não foi possível concluir a instalação do webapp!" --modal --attach="$windowID" --width=380
        }
        exit
        ;;

    gkeep)
        "$PWD"/webapps.sh "$1" "Google Keep" "Utility" "$1" "keep.new" && {
            zenity --info --text="O webapp Google Keep foi instalado com sucesso!" --modal --attach="$windowID" --width=380
        } || {
            zenity --error --text="Não foi possível concluir a instalação do webapp!" --modal --attach="$windowID" --width=380
        }
        exit
        ;;

    cvyou)
        "$PWD"/webapps.sh "$1" "CV2You" "Utility" "$1" "resume.new" && {
            zenity --info --text="O webapp CV2You foi instalado com sucesso!" --modal --attach="$windowID" --width=380
        } || {
            zenity --error --text="Não foi possível concluir a instalação do webapp!" --modal --attach="$windowID" --width=380
        }
        exit
        ;;

    github)
        "$PWD"/webapps.sh "$1" "GitHub" "Development" "$1" "github.new" && {
            zenity --info --text="O webapp GitHub foi instalado com sucesso!" --modal --attach="$windowID" --width=380
        } || {
            zenity --error --text="Não foi possível concluir a instalação do webapp!" --modal --attach="$windowID" --width=380
        }
        exit
        ;;

    gist)
        "$PWD"/webapps.sh "$1" "Gist" "Development" "$1" "gist.new" && {
            zenity --info --text="O webapp Gist foi instalado com sucesso!" --modal --attach="$windowID" --width=380
        } || {
            zenity --error --text="Não foi possível concluir a instalação do webapp!" --modal --attach="$windowID" --width=380
        }
        exit
        ;;

    glitch)
        "$PWD"/webapps.sh "$1" "Glitch" "Development" "$1" "glitch.new" && {
            zenity --info --text="O webapp Glitch foi instalado com sucesso!" --modal --attach="$windowID" --width=380
        } || {
            zenity --error --text="Não foi possível concluir a instalação do webapp!" --modal --attach="$windowID" --width=380
        }
        exit
        ;;

    codepen)
        "$PWD"/webapps.sh "$1" "CodePen" "Development" "$1" "pen.new" && {
            zenity --info --text="O webapp CodePen foi instalado com sucesso!" --modal --attach="$windowID" --width=380
        } || {
            zenity --error --text="Não foi possível concluir a instalação do webapp!" --modal --attach="$windowID" --width=380
        }
        exit
        ;;

    diagrams)
        "$PWD"/webapps.sh "$1" "Diagrams" "Development" "$1" "diagrams.new" && {
            zenity --info --text="O webapp Diagrams foi instalado com sucesso!" --modal --attach="$windowID" --width=380
        } || {
            zenity --error --text="Não foi possível concluir a instalação do webapp!" --modal --attach="$windowID" --width=380
        }
        exit
        ;;

    gforms)
        "$PWD"/webapps.sh "$1" "Google Forms" "Office" "$1" "forms.new" && {
            zenity --info --text="O webapp Google Forms foi instalado com sucesso!" --modal --attach="$windowID" --width=380
        } || {
            zenity --error --text="Não foi possível concluir a instalação do webapp!" --modal --attach="$windowID" --width=380
        }
        exit
        ;;

    spark)
        "$PWD"/webapps.sh "$1" "Adobe Spark" "Graphics" "$1" "spark.new" && {
            zenity --info --text="O webapp Adobe Spark foi instalado com sucesso!" --modal --attach="$windowID" --width=380
        } || {
            zenity --error --text="Não foi possível concluir a instalação do webapp!" --modal --attach="$windowID" --width=380
        }
        exit
        ;;

    canva)
        "$PWD"/webapps.sh "$1" "Canva" "Graphics" "$1" "canva.new" && {
            zenity --info --text="O webapp Canva foi instalado com sucesso!" --modal --attach="$windowID" --width=380
        } || {
            zenity --error --text="Não foi possível concluir a instalação do webapp!" --modal --attach="$windowID" --width=380
        }
        exit
        ;;

    logomaker)
        "$PWD"/webapps.sh "$1" "Logo Maker" "Graphics" "$1" "logo.new" && {
            zenity --info --text="O webapp Logo Maker foi instalado com sucesso!" --modal --attach="$windowID" --width=380
        } || {
            zenity --error --text="Não foi possível concluir a instalação do webapp!" --modal --attach="$windowID" --width=380
        }
        exit
        ;;

    photoshop)
        "$PWD"/webapps.sh "$1" "Photoshop Online" "Graphics" "$1" "photoshop.new" && {
            zenity --info --text="O webapp Photoshop Online foi instalado com sucesso!" --modal --attach="$windowID" --width=380
        } || {
            zenity --error --text="Não foi possível concluir a instalação do webapp!" --modal --attach="$windowID" --width=380
        }
        exit
        ;;

    photopea)
        "$PWD"/webapps.sh "$1" "Photopea" "Graphics" "$1" "https://www.photopea.com/" && {
            zenity --info --text="O webapp Photopea Online foi instalado com sucesso!" --modal --attach="$windowID" --width=380
        } || {
            zenity --error --text="Não foi possível concluir a instalação do webapp!" --modal --attach="$windowID" --width=380
        }
        exit
        ;;

    gmeet)
        "$PWD"/webapps.sh "$1" "Google Meet" "Network" "$1" "meet.new" && {
            zenity --info --text="O webapp Google Meet foi instalado com sucesso!" --modal --attach="$windowID" --width=380
        } || {
            zenity --error --text="Não foi possível concluir a instalação do webapp!" --modal --attach="$windowID" --width=380
        }
        exit
        ;;

    medium)
        "$PWD"/webapps.sh "$1" "Medium" "Network" "$1" "story.new" && {
            zenity --info --text="O webapp Medium foi instalado com sucesso!" --modal --attach="$windowID" --width=380
        } || {
            zenity --error --text="Não foi possível concluir a instalação do webapp!" --modal --attach="$windowID" --width=380
        }
        exit
        ;;

    *) exit ;;
esac
