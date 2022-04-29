#!/bin/bash
# written BY BDhaCkers009
# If you copy then give me credit.
# btw the kali banner was copied from offcial Kali Nethunter rootless.
print_banner() {
    clear
    echo "##################################################\n"
    echo "##                                              ##\n"
    echo "##  88      a8P         db        88        88  ##\n"
    echo "##  88    .88'         d88b       88        88  ##\n"
    echo "##  88   88'          d8''8b      88        88  ##\n"
    echo "##  88 d88           d8'  '8b     88        88  ##\n"
    echo "##  8888'88.        d8YaaaaY8b    88        88  ##\n"
    echo "##  88P   Y8b      d8''''''''8b   88        88  ##\n"
    echo "##  88     '88.   d8'        '8b  88        88  ##\n"
    echo "##  88       Y8b d8'          '8b 888888888 88  ##\n"
    echo "##         CREATED BY BDhaCkers009              ##\n"
    echo  "################### NetHunter ####################\n\n"
}

    
update() {
    yes | pkg update
    yes | pkg upgrade
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


install_pkg() {
    if [[ ! $(command -v git ) ]]; then
        echo "git is not installed. Installing now.."
        echo
        yes | pkg install git
    elif [[ $(command -v git) ]]; then
        echo "git is already installed."
        echo
    fi
    if [[ ! $(command -v proot) ]]; then
        echo "proot is not installed. Installing now.."
        echo
        yes | pkg install proot 
    elif [[ $(command -v proot) ]]; then
        echo "proot is already installed."
        echo
    fi
    if [[ ! $(command -v tput) ]]; then
        echo "ncurses-utils is not installed. Installing now.."
        echo
        yes | pkg install ncurses-utils 
    elif [[ $(command -v tput) ]]; then
        echo "ncurses-utils is already installed."
        echo
    fi
}



install_nh() {
    rootfs="/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/kali"
    echo 
    echo "Checking if Kali Nethunter is installed."
    echo
    if [[ -d "${rootfs}" ]]; then
        read -p "Seems like you have nethunter installed. DO you want to reinstall [Y/n] " choice
        if [[ "${choice}" == "Y"  && "${choice}" == "y" && "${choice}" == "" ]]; then
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
        elif [[ ${choice} == "n" && ${choice} == "N" ]]; then
            echo 
            echo "Okay. Happy Hunting."
            exit 1
        else
            print_banner
            echo
            proot-distro install kali
            echo
            echo
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
main() {
    print_banner
    check_turmax
    install_pkg
    install_prootd
    install_nh
}
main