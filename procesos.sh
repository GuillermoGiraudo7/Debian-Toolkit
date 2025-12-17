#!/bin/bash

while true; do
    clear
    echo "====== GESTIÓN DE PROCESOS ======"
    echo "1 - Listar procesos en ejecución"
    echo "2 - Ver información de un proceso por PID"
    echo "3 - Terminar un proceso"
    echo "4 - Buscar proceso por nombre"
    echo "0 - Volver al menú principal"
    read -p "Elige una opción: " opcion

    case $opcion in
        1)
            ps aux | less
            ;;
        2)
            read -p "Ingrese el PID: " pid
            echo ""
            ps -p "$pid" -f
            ;;
        3)
            read -p "Ingrese el PID a terminar: " pid
            read -p "¿Está seguro? (s/n): " confirm
            if [[ "$confirm" =~ ^[sS]$ ]]; then
                kill "$pid" && echo "✅ Proceso $pid terminado." || echo "❌ Error al terminar el proceso."
            else
                echo "Operación cancelada."
            fi
            ;;
        4)
            read -p "Nombre o parte del nombre del proceso: " nombre
            echo ""
            pgrep -a "$nombre"
            ;;
        0)
            break
            ;;
        *)
            echo "Opción inválida."
            ;;
    esac

    echo ""
    read -p "Presiona Enter para continuar..."
done
        echo "Uso: $0 {listar|info|matar|estado}"
        ;;    
esac