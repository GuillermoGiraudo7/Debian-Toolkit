# DEBIAN TOOLKIT - ISPC TECH ENTERPRISE
## Requisitos

- Sistema operativo: Linux (Ubuntu recomendado)
- Bash shell
- Permisos de ejecución en los scripts (`chmod +x`)

---
## Archivos Incluidos

| Archivo           | Descripción                                                                 |
|-------------------|------------------------------------------------------------------------------|
| `main_toolkit.sh` | Script principal con menú de texto para acceder a las funcionalidades        |
| `procesos.sh`     | Script que gestiona los procesos del sistema                                 |
| `memoria.sh`      | Script que muestra el estado de la memoria RAM/SWAP y detalles de vmstat     |
| `disco.sh`        | Script que muestra el uso del disco y archivos del sistema                   |

---

## Cómo Ejecutar el Toolkit

1. Asegurarse de que los scripts tienen permisos de ejecución:
   ```bash
   chmod +x main_toolkit.sh procesos.sh
   ```

2. Ejecuta el script principal:
   ```bash
   ./main_toolkit.sh
   ```

---

## Funcionalidades Disponibles 

### 1. Gestión de Procesos (`procesos.sh`)
- Listar procesos en ejecución (`ps aux`)
- Consultar información detallada de un proceso (`ps -p <PID>`)
- Terminar un proceso (`kill` con confirmación)
- Ver estado de procesos por nombre (`pgrep -a`)

### 2. Información de Memoria (`memoria.sh`)
- Uso de RAM y SWAP (`free -h`)
- Detalles de `/proc/meminfo`
- Estado en tiempo real con `vmstat`

### 3. Información del Disco (`disco.sh`)
- Mostrar espacio en disco (`df -h`)
- Mostrar tamaño de una ruta (`du -sh`)
- Listar archivos y permisos (`ls -l`)

### 0. Salir
Finaliza la ejecución del toolkit.

---

## 🔧 Comandos Utilizados

- `ps`, `kill`, `pgrep`
- `free`, `vmstat`, `cat /proc/meminfo`
- `df`, `du`, `ls`
- `read`, `clear`, `sleep`

---
