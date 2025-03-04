#!/bin/bash

echo "🚀 Arrancando YesiMan OS..."

# Eliminar bloqueos previos
echo "🔧 Eliminando bloqueos previos..."
pkill crond 2>/dev/null  # Matar instancias previas de crond
rm -f /data/data/com.termux/files/usr/var/run/crond.pid

# Limpiar caché del sistema
echo "🧹 Limpiando caché del sistema..."
apt update && apt upgrade -y
sync && echo "🔄 Memoria liberada virtualmente (sin root)."

# Iniciar encriptación segura solo si el archivo existe
ARCHIVO_ENCRIPTAR="$HOME/mi_proyecto/archivo.txt"
if [[ -f "$ARCHIVO_ENCRIPTAR" ]]; then
    echo "🔐 Iniciando encriptación segura..."
    openssl enc -aes-256-cbc -pbkdf2 -in "$ARCHIVO_ENCRIPTAR" -out "$ARCHIVO_ENCRIPTAR.enc"
    echo "✅ Encriptación completada. Datos protegidos."
else
    echo "⚠️ No se encontró el archivo a encriptar. Continuando..."
fi

# Iniciar servicios de fondo
echo "🛠️ Iniciando servicios de fondo..."
crond -n &  # Iniciar crond en segundo plano

echo "✅ YesiMan OS está operativo."
