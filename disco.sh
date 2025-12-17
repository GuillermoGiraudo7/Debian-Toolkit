
#!/bin/bash

echo "====== INFORMACIÓN DE DISCO ======"
echo ""
echo "--- Espacio en disco (df -h) ---"
df -h
echo ""

read -p "Ingresa una ruta para ver su tamaño (ej: /home): " ruta
if [ -d "$ruta" ] || [ -f "$ruta" ]; then
    du -sh "$ruta"
else
    echo "Ruta inválida."
fi
echo ""
read -p "Ingresa una ruta para ver su tamaño (ej: /home): " ruta
if [ -d "$ruta" ] || [ -f "$ruta" ]; then
    du -sh "$ruta"
else
    echo "Ruta inválida."
fi
echo ""
read -p "Ingresa un directorio para listar archivos con permisos: " dir
if [ -d "$dir" ]; then
    ls -l "$dir"
else
    echo "Directorio inválido."
fi

echo ""
read -p "Presiona Enter para volver al menú..."