#!/usr/bin/env bash

clear_screen() {
    command -v clear >/dev/null && clear
}

logo='
  _________                            ___________           .__
 /   _____/ ____   ______  _  __       \__    ___/___   ____ |  |
 \_____  \ /    \ /  _ \ \/ \/ /  ______ |    | /  _ \ /  _ \|  |
 /        \   |  (  <_> )     /  /_____/ |    |(  <_> |  <_> )  |__
/_______  /___|  /\____/ \/\_/           |____| \____/ \____/|____/
        \/     \/
'

while true; do
    clear_screen

    printf "%s\n" "$logo"
    echo "[1] HelloWorld"
    echo "[2] MP3 Player"
    echo "[3] ASCII"
    echo "[4] Exit"
    echo

    printf "Choice > "
    read -r option

    case "$option" in
        1)
            echo
            echo "Hello World"
            ;;

        2)
            echo
            echo "MP3 player not implemented in shell."
            ;;

        3)
            echo
            if command -v figlet >/dev/null 2>&1; then
                printf "Enter text: "
                read -r text
                echo
                figlet "$text"
            else
                echo "Error: figlet is not installed."
                echo
                echo "Install it first:"
                echo "  Debian/Ubuntu: sudo apt install figlet"
                echo "  Arch Linux:    sudo pacman -S figlet"
                echo "  macOS:         brew install figlet"
            fi
            ;;

        4)
            echo
            echo "Goodbye!"
            exit 0
            ;;

        *)
            echo
            echo "Invalid choice!"
            ;;
    esac

    echo
    printf "Press Enter to continue..."
    read -r
done
