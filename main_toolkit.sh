#!/bin/bash
while true; do
        clear

        echo "====================================="
        echo "------- ISPC TECH ENTERPRISE --------"
        echo "           DEBIAN TOOLKIT            "
        echo "            Menu Opciones            "
        echo "-------------------------------------"
        echo "1 - Listar PROCESOS en Ejecución"
        echo "2 - Información de MEMORIA"
        echo "3 - Información de DISCO"
        echo "0 - Salir de la Aplicación"
        echo "===================================="
        read -p "Elige una opción (1-5): " opcion
                case $opcion in
            1)
                bash procesos.sh listar
                ;;
            2)
                bash memoria.sh
                ;;
            3)
                bash disco.sh
                ;;
            0)
                echo "Saliendo de la App"
                sleep 1
                break
                ;;
            *)
                echo "Opción inválida. Presiona Enter para continuar."
                read;;
        esac
done

