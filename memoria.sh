#!/bin/bash

echo "====== INFORMACIÓN DE MEMORIA ======"
echo ""
echo "--- Uso general (free -h) ---"
free -h
echo ""
echo "--- Detalles desde /proc/meminfo ---"
grep -E 'MemTotal|MemFree|Buffers|Cached|SwapTotal|SwapFree' /proc/meminfo
echo ""
echo "--- Estado actual con vmstat (1 segundo) ---"
vmstat 1 1
echo ""
read -p "Presiona Enter para volver al menú..."