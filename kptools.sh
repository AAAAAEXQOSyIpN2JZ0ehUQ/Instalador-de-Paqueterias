#!/bin/bash
x="ok"

# Paleta de colores
reset="\033[0m"       # Restablecer todos los estilos y colores
bold="\033[1m"        # Texto en negrita
italic="\033[3m"      # Texto en cursiva
underline="\033[4m"   # Texto subrayado
blink="\033[5m"       # Texto parpadeante
reverse="\033[7m"     # Invertir colores de fondo y texto
hidden="\033[8m"      # Texto oculto (generalmente invisible)

# Colores de texto
black="\033[0;30m"     # Negro
red="\033[0;31m"       # Rojo
green="\033[0;32m"     # Verde
yellow="\033[0;33m"    # Amarillo
blue="\033[0;34m"      # Azul
magenta="\033[0;35m"   # Magenta
cyan="\033[0;36m"      # Cian
white="\033[0;37m"     # Blanco

# Colores de fondo
bg_black="\033[0;40m"     # Fondo Negro
bg_red="\033[0;41m"       # Fondo Rojo
bg_green="\033[0;42m"     # Fondo Verde
bg_yellow="\033[0;43m"    # Fondo Amarillo
bg_blue="\033[0;44m"      # Fondo Azul
bg_magenta="\033[0;45m"   # Fondo Magenta
bg_cyan="\033[0;46m"      # Fondo Cian
bg_white="\033[0;47m"     # Fondo Blanco

# Iconos v3
checkmark="${white}[${green}+${white}]${green}"
error="${white}[${red}-${white}]${red}"
info="${white}[${yellow}*${white}]${yellow}"
unknown="${white}[${blue}!${white}]${blue}"
process="${white}[${magenta}>>${white}]${magenta}"
indicator="${red}==>${cyan}"

# Barra de separación
barra="${blue}|--------------------------------------------|${reset}"
bar="${yellow}----------------------------------------------${reset}"

# Comprobación de permisos de root
[[ "$(whoami)" != "root" ]] && {
    echo -e "\n${yellow}[${red}Error${yellow}] ${white}- ${yellow}Necesitas ejecutar esto como administrador (${red}root${yellow})${reset}"
    echo -e "\n${green} sudo $0 ${reset}"
    exit 0
}

main_menu () {

fun_bannerOFF () {
# Mostrar segundo banner
    clear
    echo -e "$red"
    #echo "                                      "
    echo "                        ..:::::::::..     "
    echo "                     ..:::aad8888888baa:::..  "
    echo "                 .::::d:?88888888888?::8b::::.    "
    echo "               .:::d8888:?88888888??a888888b:::.  "
    echo "             .:::d8888888a8888888aa8888888888b:::.    "
    echo "            ::::dP::::::::88888888888::::::::Yb::::   "
    echo "           ::::dP:::::::::Y888888888P:::::::::Yb::::  "
    echo "          ::::d8:::::::::::Y8888888P:::::::::::8b:::: "
    echo "         .::::88::::::::::::Y88888P::::::::::::88::::.    "
    echo "         :::::Y8baaaaaaaaaa88P:T:Y88aaaaaaaaaad8P:::::    "
    echo "         :::::::Y88888888888P::|::Y88888888888P:::::::    "
    echo "         ::::::::::::::::888:::|:::888::::::::::::::::    "
    echo "          :::::::::::::::8888888888888b:::::::::::::: "
    echo "          :::::::::::::::88888888888888:::::::::::::: "
    echo "           :::::::::::::d88888888888888:::::::::::::  "
    echo "            ::::::::::::88::88::88:::88::::::::::::   "
    echo "              ::::::::::88::88::88:::88:::::::::: "
    echo "                ::::::::88::88::P::::88::::::::   "
    echo "                  ::::::88::88:::::::88:::::: "
    echo "                      ::::::::::::::::::: "
    echo "                           :::::::::  "
    echo ""
    echo -e "      ${red}   ID        ${green}:  ${white}$USER${reset}"
    echo -e "      ${red}   Update    ${green}:  ${white}[17-09-2024]${reset}\n"
    echo -e "${green} Instalador de paqueterias - Versión Personalizada${reset}"
    echo -e " \n${green} Version coded by: Dzhoni_dev ${reset}"
}

fun_banner () {
# Mostrar segundo banner
    clear
    echo -e "$green"
    #echo ""
    echo -e "               ____________          " 
    echo -e "            __/ ///////// /l         "
    echo -e "           /               /l        "
    echo -e "          /_______________/ l        "
    echo -e "          l  __________  l  l        "
    echo -e "          l l          l l  l    ${red}   ID        ${green}:  ${white}$USER${green}"
    echo -e "          l l c:^\^>   l l  l    ${red}   Update    ${green}:  ${white}[17-09-2024]${green}"
    echo -e "          l l          l l  l      "
    echo -e "          l l__________l l /          ${yellow} Instalador de paqueterias - Versión Personalizada${green}"
    echo -e "          l______________l/____       ${cyan} Versión codificada por: Dzhoni_dev ${green}"
    echo -e "         /___/$/___/_$/__@__/_/      "
    echo -e "       / = ==== ==== ==== / /)       "
    echo -e "      / ========= === ===/ //        "
    echo -e "     / ///// ========= === /         "
    echo -e "    (__________________[_@)          "
    echo ""
}

# Comprobación de permisos de root
[[ "$(whoami)" != "root" ]] && {
    echo -e "\n${yellow}[${red}Error${yellow}] ${white}- ${yellow}Necesitas ejecutar esto como administrador (${red}root${yellow})${reset}"
    echo -e "\n${green} sudo $0 ${reset}"
    exit 0
}

# Función para actualizar el sistema
update_system() {
    echo -e "\n${info} ${cyan}Actualizando el sistema...${reset}\n"
    sudo apt-get -y update
    echo -e "\n${checkmark} ${green}Sistema actualizado.${reset}"
}

# Función para hacer un full-upgrade
full_upgrade_system() {
    echo -e "\n${info} ${cyan}Realizando full-upgrade...${reset}\n"
    sudo apt-get -y full-upgrade
    echo -e "\n${checkmark} ${green}Full-upgrade completado.${reset}"
}

# Funciones para instalar herramientas individualmente
install_pluma() {
    echo -e "\n${info} ${cyan}Instalando Pluma...${reset}\n"
    sudo apt-get install -y pluma
    echo -e "\n${checkmark} ${green}Pluma instalado.${reset}"
}

install_ipinfo() {
    echo -e "\n${info} ${cyan}Instalando ipinfo...${reset}\n"
    curl -Ls https://github.com/ipinfo/cli/releases/download/ipinfo-2.10.0/deb.sh | sh
    echo -e "\n${checkmark} ${green}ipinfo instalado.${reset}"
}

install_tor_browser() {
    echo -e "\n${info} ${cyan}Instalando Tor Browser...${reset}\n"
    sudo apt-get install -y tor
    sudo apt-get install -y torbrowser-launcher
    echo -e "\n${checkmark} ${green}Tor Browser instalado.${reset}"
}

install_gedit() {
    echo -e "\n${info} ${cyan}Instalando Gedit...${reset}\n"
    sudo apt-get install -y gedit
    echo -e "\n${checkmark} ${green}Gedit instalado.${reset}"
}

install_mousepad() {
    echo -e "\n${info} ${cyan}Instalando Mousepad...${reset}\n"
    sudo apt-get install -y mousepad
    echo -e "\n${checkmark} ${green}Mousepad instalado.${reset}"
}

install_librewolf() {
    echo -e "\n${info} ${cyan}Instalando LibreWolf...${reset}\n"
    ##* Url:            https://librewolf.net/installation/debian/

# Removing the repositories from your system
# To remove all of the LibreWolf repositories from your system, run:

sudo rm -f \
    /etc/apt/sources.list.d/librewolf.sources \
    /etc/apt/keyrings/librewolf.gpg \
    /etc/apt/preferences.d/librewolf.pref \
    /etc/apt/sources.list.d/home_bgstack15_aftermozilla.sources \
    /etc/apt/keyrings/home_bgstack15_aftermozilla.gpg \
    /etc/apt/sources.list.d/librewolf.list \
    /etc/apt/trusted.gpg.d/librewolf.gpg \
    /etc/apt/sources.list.d/home:bgstack15:aftermozilla.list \
    /etc/apt/trusted.gpg.d/home_bgstack15_aftermozilla.gpg

sudo apt update && sudo apt install -y wget gnupg lsb-release apt-transport-https ca-certificates

distro=$(if echo " una bookworm vanessa focal jammy bullseye vera uma " | grep -q " $(lsb_release -sc) "; then lsb_release -sc; else echo focal; fi)

wget -O- https://deb.librewolf.net/keyring.gpg | sudo gpg --dearmor -o /usr/share/keyrings/librewolf.gpg

sudo tee /etc/apt/sources.list.d/librewolf.sources << EOF > /dev/null
Types: deb
URIs: https://deb.librewolf.net
Suites: $distro
Components: main
Architectures: amd64
Signed-By: /usr/share/keyrings/librewolf.gpg
EOF

sudo apt update

sudo apt install librewolf -y


echo -e "${checkmark} ${green}LibreWolf instalado.${reset}"
}

install_sublime_text_4180() {
    echo -e "\n${info} ${cyan}Instalando Sublime Text...${reset}\n"
    ##* Url:            https://www.sublimetext.com/docs/linux_repositories.html

    ###- apt
    #--- The apt repository contains packages for both x86-64 and arm64.
    #--- Install the GPG key:

    wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/sublimehq-archive.gpg > /dev/null

    #--- Select the channel to use:
    #--- Stable

    echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list

    #--- Update apt sources and install Sublime Text:

    sudo apt-get update
    sudo apt-get install sublime-text

    #--- If this fails ensure apt is set up to work with https sources:

    sudo apt-get install apt-transport-https

    ###- Sublime Text 4 Patcher Linux Build 4180

    # Opcion 1
    
    sudo cp /opt/sublime_text/sublime_text ./sublime_text.old

    sudo sed -i 's/\x80\x79\x05\x00\x0F\x94\xC2/\xC6\x41\x05\x01\xB2\x00\x90/g' /opt/sublime_text/sublime_text

    echo -e "\n${checkmark} ${green}Sublime Text 4180 instalado correctamente.${reset}"
}

install_sublime_text_4169() {
            echo -e "\n${info} ${cyan}Instalando Sublime Text 4169...${reset}\n"
            
            #--- Update apt sources and install Sublime Text:
            sudo apt-get update
            wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
            sudo apt-add-repository "deb https://download.sublimetext.com/ apt/stable/"
            sudo apt install sublime-text=4169
            
            #--- If this fails ensure apt is set up to work with https sources:
            sudo apt-get install apt-transport-https
            
            ###- Sublime Text 4 Patcher Linux Build 4169
            
            # Opcion 1
            sudo cp /opt/sublime_text/sublime_text ./sublime_text.old
            sudo sed -i 's/\x80\x78\x05\x00\x0f\x94\xc1/\xc6\x40\x05\x01\x48\x85\xc9/g' /opt/sublime_text/sublime_text
            
            # Opcion 2
            #-/  sudo echo "00489f39: c640 0501 4885 c9" | sudo xxd -r - /opt/sublime_text/sublime_text
            
            echo -e "\n${checkmark} ${green}Sublime Text 4169 instalado correctamente.${reset}"
}

pimp_my_kali () {
    echo -e "\n${info} ${cyan}Instalando Pimp My Kali...${reset}\n"
    ##* Url:            https://github.com/Dewalt-arch/pimpmykali

    # Remove existing pimpmykali folder
    cd /opt
    sudo rm -rf pimpmykali/

    # Clone pimpmykali repository & enter the folder
    sudo git clone https://github.com/Dewalt-arch/pimpmykali
    cd pimpmykali

    # Execute the script - For a new Kali VM, run menu option 'N'
    # (The script must be run with root privileges)
    #-/ sudo ./pimpmykali.sh
    ls -lthas 

    echo -e "\n${checkmark} ${green}Pimp My Kali instalado.${reset}"

}

# Menú principal modificado
while true $x != "ok"
do

# Mostrar banner
fun_banner

    echo -e "\n${bold}${cyan} Seleccione una opción del menú:               Rev: v0.0.01-dev Arch: amd64${reset}"
    echo -e "\n${indicator} ${yellow}Key  Menú opción:                    ${yellow}Descripción:${reset}"
    echo -e "${indicator} ${yellow}---  ------------                    ${yellow}------------${reset}"
    echo -e "${indicator} ${green}1. ${white} Actualizar el sistema            ${cyan}(Realiza una actualización de los repositorios)${reset}"
    echo -e "${indicator} ${green}2. ${white} Full-upgrade del sistema         ${cyan}(Actualiza todo el sistema a la última versión)${reset}"
    echo -e "${indicator} ${green}3. ${white} Instalar Pluma                   ${cyan}(Editor de texto ligero)${reset}"
    echo -e "${indicator} ${green}4. ${white} Instalar ipinfo                  ${cyan}(Obtén información sobre IP)${reset}"
    echo -e "${indicator} ${green}5. ${white} Instalar Tor Browser             ${cyan}(Navegador para navegar por la web de forma anónima)${reset}"
    echo -e "${indicator} ${green}6. ${white} Instalar Gedit                   ${cyan}(Editor de texto GNOME)${reset}"
    echo -e "${indicator} ${green}7. ${white} Instalar Mousepad                ${cyan}(Editor de texto ligero para XFCE)${reset}"
    echo -e "${indicator} ${green}8. ${white} Instalar LibreWolf               ${cyan}(Navegador orientado a la privacidad)${reset}"
    echo -e "${indicator} ${green}9. ${white} Instalar Sublime Text 4180       ${cyan}(Editor de texto avanzado)${reset}"
    echo -e "${indicator} ${green}10.${white} Instalar Sublime Text 4169       ${cyan}(Editor de texto avanzado)${reset}"
    echo -e "${indicator} ${green}11.${white} Instalar Pimp My Kali            ${cyan}(Optimización y personalización ${white}-p --pmk ${red}(Ref. ${yellow}0n 9 !y${red})${cyan})${reset}"
    echo -e "${indicator} ${green}12.${white} Habilitar OpenSSH Server         ${cyan}(Configurar OpenSSH Server ${white}-o --oss${cyan})${reset}"
    echo -e "${bar}"
    echo -e "${indicator} ${green}0.${white}  Salir                            ${cyan}(Salir del script)${reset}"
    echo -e "\n${barra}"

    echo -ne "\n${bold}${yellow} Elige una opción:${white} >> "; read x

    case $x in
        1)
            echo -e "\n${process} ${cyan}Actualizando el sistema...${reset}"
            update_system
            echo -ne "\n${bold}${red}ENTER ${yellow}para volver a ${green}MENU!${reset}"; read
            ;;
        2)
            echo -e "\n${process} ${cyan}Realizando full-upgrade...${reset}"
            full_upgrade_system
            echo -ne "\n${bold}${red}ENTER ${yellow}para volver a ${green}MENU!${reset}"; read
            ;;
        3)
            echo -e "\n${process} ${cyan}Instalando Pluma...${reset}"
            install_pluma
            echo -ne "\n${bold}${red}ENTER ${yellow}para volver a ${green}MENU!${reset}"; read
            ;;
        4)
            echo -e "\n${process} ${cyan}Instalando ipinfo...${reset}"
            install_ipinfo
            echo -ne "\n${bold}${red}ENTER ${yellow}para volver a ${green}MENU!${reset}"; read
            ;;
        5)
            echo -e "\n${process} ${cyan}Instalando Tor Browser...${reset}"
            install_tor_browser
            echo -ne "\n${bold}${red}ENTER ${yellow}para volver a ${green}MENU!${reset}"; read
            ;;
        6)
            echo -e "\n${process} ${cyan}Instalando Gedit...${reset}"
            install_gedit
            echo -ne "\n${bold}${red}ENTER ${yellow}para volver a ${green}MENU!${reset}"; read
            ;;
        7)
            echo -e "\n${process} ${cyan}Instalando Mousepad...${reset}"
            install_mousepad
            echo -ne "\n${bold}${red}ENTER ${yellow}para volver a ${green}MENU!${reset}"; read
            ;;
        8)
            echo -e "\n${process} ${cyan}Instalando LibreWolf...${reset}"
            install_librewolf
            echo -ne "\n${bold}${red}ENTER ${yellow}para volver a ${green}MENU!${reset}"; read
            ;;
        9)
            echo -e "\n${process} ${cyan}Instalando Sublime Text 4180...${reset}"
            install_sublime_text_4180
            echo -ne "\n${bold}${red}ENTER ${yellow}para volver a ${green}MENU!${reset}"; read
            ;;
        10)
            echo -e "\n${process} ${cyan}Instalando Sublime Text 4169...${reset}"
            install_sublime_text_4169
            echo -ne "\n${bold}${red}ENTER ${yellow}para volver a ${green}MENU!${reset}"; read
            ;;
        11)
            echo -e "\n${process} ${cyan}Instalando Pimp My Kali...${reset}"
            pimp_my_kali
            echo -ne "\n${bold}${red}ENTER ${yellow}para volver a ${green}MENU!${reset}"; read
            ;;
        12 )
            echo -e "\n${process} ${cyan}Habilitando OpenSSH Server...${reset}"
            # Configuración SSH en Kali Linux
            # https://medium.com/@InzenSecure/ssh-configuration-in-kali-linux-3f7c456560a9
            sudo apt-get install openssh-server
            sudo service ssh start 
            sudo service ssh status
            echo -ne "\n${bold}${red}ENTER ${yellow}para volver a ${green}MENU!${reset}"; read
            ;;
        0)
            echo -e "\n${info} ${cyan}Saliendo...${reset}"
            exit 0
            ;;
        -o | --oss)
            sudo service ssh start 
            sudo service ssh status
            echo -ne "\n${bold}${red}ENTER ${yellow}para volver a ${green}MENU!${reset}"; read
            ;;
        -p | --pmk)
            cd /opt/pimpmykali && sudo ./pimpmykali.sh
            echo -ne "\n${bold}${red}ENTER ${yellow}para volver a ${green}MENU!${reset}"; read
            ;;
        *)
            echo -e "\n${error} ${red}Opción no válida, por favor intente de nuevo.${reset}"
            sleep 1
            ;;
    esac
done
}

# Ejecución del menú principal
main_menu
