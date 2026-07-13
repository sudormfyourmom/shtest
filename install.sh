#!/usr/bin/env bash

clear_screen() {
    clear
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
    echo "$logo"
    echo "[1] HelloWorld"
    echo "[2] MP3 Player"
    echo "[3] ASCII"
    echo "[4] Exit"

    printf "Choice > "
    read option

    case "$option" in
        1)
            echo "Hello World"
            ;;
        2)
            echo "MP3 player not implemented in shell."
            ;;
        3)
            
            printf "Enter text: "
            read text
            figlet "$text"
            ;;
        4)
            echo "Goodbye!"
            exit 0
            ;;
        *)
            echo "Invalid choice."
            ;;
    esac

    printf "Press Enter to continue..."
    read dummy
done
