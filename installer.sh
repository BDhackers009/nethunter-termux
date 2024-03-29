#!/bin/bash

# btw the kali banner was copied from offcial Kali Nethunter rootless.
# PATH VARIABLES
INSTALLED_ROOTFS_DIR="/data/data/com.termux/files/var/lib/proot-distro/installed-rootfs"
print_banner() {
    clear
    echo "##################################################"
    echo "##                                              ##"
    echo "##  88      a8P         db        88        88  ##"
    echo "##  88    .88'         d88b       88        88  ##"
    echo "##  88   88'          d8''8b      88        88  ##"
    echo "##  88 d88           d8'  '8b     88        88  ##"
    echo "##  8888'88.        d8YaaaaY8b    88        88  ##"
    echo "##  88P   Y8b      d8''''''''8b   88        88  ##"
    echo "##  88     '88.   d8'        '8b  88        88  ##"
    echo "##  88       Y8b d8'          '8b 888888888 88  ##"
    echo "##         CREATED BY BDhaCkers009              ##"
    echo  "################### NetHunter ####################"
}




author_info() {
    print_banner
    echo
    echo "        Creator Info     "
    echo 
    echo "Name: Mustakim Ahmed Sifat (BDhaCkers009)"
    echo
    echo "Github: https://github.com/BDhaCkers009"
    echo
    echo "YouTube: Learn Termux"
    echo
    echo "Telegram: @bdhackers009"
    echo ""
    echo "FaceBook: Mustakim Ahmed Sifat"
    echo 
    echo "Wait Your installation will be started soon.."
    echo
    echo
    sleep 5
}



  
update() {
    apt update -y 
    apt upgrade -y 
}
check_turmax() {
    if [[ $HOME == /data/data/com.termux/files/home ]]; then
        update
    else
        echo ""
        echo "LOL.You are not using Termux."
        echo ""
        exit 1
    fi
}

is_distro_installed() {
    if [ -e "${INSTALLED_ROOTFS_DIR}/${1}/bin" ]; then
        return 0
    else
        return 1
    fi
}


install_pkg() {
    print_banner
    echo
    echo "Installing required Packages.."
    echo
    sleep .9
    if [[ ! $(command -v git ) ]]; then
        echo
        echo "git is not installed. Installing now.."
        echo
        apt install git -y
    elif [[ $(command -v git) ]]; then
        echo
        echo "git is already installed."
        echo
    fi
    if [[ ! $(command -v proot) ]]; then
        print_banner
        echo
        echo "proot is not installed. Installing now.."
        echo
        apt install proot -y
    elif [[ $(command -v proot) ]]; then
        echo
        echo "proot is already installed."
        echo
    fi
    if [[ ! $(command -v aria2c) ]]; then
        print_banner
        echo
        echo "aria2 is not installed. Installing now.."
        echo
        apt install aria2 -y
    elif [[ $(command -v aria2c) ]]; then
        echo
        echo "aria2 is already installed."
        echo
    fi
    if [[ ! $(command -v tput) ]]; then
        print_banner
        echo
        echo "ncurses-utils is not installed. Installing now.."
        echo
        apt install ncurses-utils  -y
    elif [[ $(command -v tput) ]]; then
        echo "ncurses-utils is already installed."
        echo
    fi
}

check_nh() {
    if [[ -d "$PREFIX/var/lib/proot-distro/installed-rootfs/kali" ]]; then
        author_info
        echo "Kali Nethunter is already installed."
        echo 
        read -p "Do you want to reinstall Kali? (y/N) " reinstall

        if [[ $reinstall == "y" || $reinstall == "Y" ]]; then
            echo "Reinstalling Kali..."
            reinstall_nh
        else
            echo
            echo "Exiting script."
            echo
            echo "Happy Hunting"
            exit 0
        fi
    else
        author_info
        echo "Kali Nethunter is not installed."
        echo 
        read -p "Do you want to install Kali? (y/N) " install

        if [[ $install == "y" || $install == "Y" ]]; then
            echo "Installing Kali..."
            install_nh
        else
            echo
            echo "Exiting script."
            echo
            echo "Happy Hunting"
            exit 0
        fi
    fi
}


install_nh_old() {
    author_info
    check_turmax
    install_pkg
    install_prootd
    proot-distro install kali

}
reinstall_nh() {
    echo
    proot-distro remove kali && proot-distro clear-cache && proot-distro install kali
}
install_nh_wrong() {
    rootfs="/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/kali"
    echo 
    echo "Checking if Kali Nethunter is installed."
    echo
    if [[ -d "${rootfs}" ]]; then
        read -p "Seems like you have nethunter installed. DO you want to reinstall [Y/n] " choice
        if [ "${choice}" == "Y"  || "${choice}" == "y" ]; then
            print_banner
            echo
            echo "Removing Kali Nethunter.."
            echo
            proot-distro remove kali && proot-distro clear-cache
            echo
            print_banner
            echo
            proot-distro install kali
            echo
            echo
        elif [ ${choice} == "n" || ${choice} == "N" ]; then
            echo 
            echo "Okay. Happy Hunting."
            exit 1
        else
           echo "Incorrect choice. Please choose a right option"
           exit 1
        fi
    else
        print_banner
        echo
        proot-distro install kali
        echo
        echo
    fi
}
install_nh() {
    rootfs="/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/kali"
    echo 
    echo "Checking if Kali Nethunter is installed."
    echo
    if [[ -d "${rootfs}" ]]; then
        read -p "Seems like you have nethunter installed. Do you want to reinstall [Y/n] " choice
        if [[ "${choice}" == "Y"  || "${choice}" == "y" ]]; then
            print_banner
            echo
            echo "Removing Kali Nethunter.."
            echo
            proot-distro remove kali && proot-distro clear-cache
            echo
            print_banner
            echo
            proot-distro install kali
            echo
            echo
        elif [[ ${choice} == "n" || ${choice} == "N" ]]; then
            echo 
            echo "Okay. Happy Hunting."
            exit 1
        elif [[ -z "${choice}" ]]; then
            echo "No choice provided. Aborting."
            exit 1
        else
           echo "Incorrect choice. Please choose a valid option (Y/n)."
           exit 1
        fi
    else
        print_banner
        echo
        proot-distro install kali
        echo
        echo
    fi
}


install_prootd() {
    if [[ -d "/data/data/com.termux/files/home/proot-distro" ]]; then
        rm -rf "/data/data/com.termux/files/home/proot-distro"
    elif [[ ! -d "/data/data/com.termux/files/home/proot-distro" ]]; then
        cd $HOME && git clone https://github.com/BDhaCkers009/proot-distro.git  && cd ~/proot-distro && bash install.sh && cd $HOME && rm -rf ~/proot-distro
    fi
}

create_user() {
    print_banner
    sleep .6
    echo "Creating User for Kali Nethunter (Required)"
    echo 
    echo
    proot-distro login kali -- bash user.sh 
    echo
}
main() {
    author_info
    print_banner
    check_turmax
    install_pkg
    install_prootd
    install_nh
    #create_user
}
main
#check_nh
