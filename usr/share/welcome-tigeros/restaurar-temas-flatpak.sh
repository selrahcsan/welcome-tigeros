#!/bin/bash

criando uma lista de temas e estilo
    corTemaSistema=("orange" "green" "orange" "pink" "purple" "red" "yellow")
    estiloTemaSistema=("dark" "light" "mix")

    # Em um laço encadeado, copia somente os temas padrão do sistema
    for estilotema in ${estiloTemaSistema[@]}; do
        for cortema in ${corTemaSistema[@]}; do
            rm -R ~/.themes/$cortema-$estilotema
        done
    done


aviso_instalador_do_menu="Bem-vindo(a)
Ao clicar, os softwares em flatpak, seus temas originais 
"

aviso_sucesso="<big><b>A restauração foi um sucesso</b></big>

Agora você pode aproveitar os temas originais em seus softwares Flatpak
"

aviso_erro="<big><b>Oops, Ocorreu um erro :(</b></big>

Reinicie o sistema e tente de novamente, antes da próxima tentativa 
verifique se você digitou sua senha corretamente e que você possui 
permissão para isso caso esteja em uma empresa
"

titulo="Tiger OS - Informativo"

[ "${1}" = "--silent" ] && {
    [ ! "${EUID}" = "0" ] && {
        echo "Você precisa executar esse instalador como root, para isso execute:"
        echo
        echo "  sudo \"${0}\" --silent "
        echo
        exit 1
    }

    # #criando uma lista de temas e estilo
    # corTemaSistema=("orange" "green" "orange" "pink" "purple" "red" "yellow")
    # estiloTemaSistema=("dark" "light" "mix")

    # # Em um laço encadeado, copia somente os temas padrão do sistema
    # for estilotema in ${estiloTemaSistema[@]}; do
    #     for cortema in ${corTemaSistema[@]}; do
    #         rm -R /usr/share/themes/$cortema-$estilotema ~/.themes/
    #     done
    # done

    # Comando que dá a permissão para todos os pacotes flatpak acessem o ~/.themes
    sudo flatpak override --reset

    #escreve no arquivo de controle, a palavra chave para especificar que os temas GTK estão desabilitados no flatpak
    sudo rm /usr/share/welcome-tigeros/flatpakThemes

    exit
}

[ ! -f "${1}" ] && {
    aviso_instalador="${aviso_instalador_do_menu}"
    titulo="Tiger OS - Temas Flatpak"
}

yad --text="${aviso_instalador}" --button="Cancelar":0 --button="<b>Instalar</b>":1 --borders=32 --center --fixed --title="${titulo}" --window-icon=preferences-plugin

[ "${?}" = "1" ] && {
    cmd=$(readlink -f "${0}")
    pkexec "${cmd}" --silent && {
        yad --text="${aviso_sucesso}" --button=Ok --fixed --center --borders=32 --title="Tiger OS - Informativo" --window-icon=preferences-plugin
        [ -f "${1}" ] && {
            xdg-open "${1}"
        }
        exit
    } || {
        yad --text="${aviso_erro}" --button=Ok --fixed --center --borders=32 --title="Tiger OS - Informativo" --window-icon=preferences-plugin
        exit 1
    }
}
