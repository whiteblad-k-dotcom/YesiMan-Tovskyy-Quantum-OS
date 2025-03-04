#!/bin/bash
echo "🚀 Arrancando YesiMan OS..."

# Reparar posibles bloqueos de procesos
echo "🔧 Eliminando bloqueos previos..."
rm -f /data/data/com.termux/files/usr/var/run/crond.pid

# Limpiar caché del sistema (sin usar drop_caches)
echo "🧹 Limpiando caché..."
apt clean
apt autoremove -y

# Optimización del sistema (sin comandos que requieran root)
echo "🔄 Optimizando el sistema..."
sync

# Cifrado de datos personales con OpenSSL
echo "🔐 Iniciando encriptación segura..."
ENCRYPTED_FILE="/data/data/com.termux/files/home/mi_proyecto/datos_backup.tar.gz.enc"
SOURCE_FILE="/data/data/com.termux/files/home/mi_proyecto/datos_backup.tar.gz"

if [ -f "$SOURCE_FILE" ]; then
    openssl enc -aes-256-cbc -pbkdf2 -iter 100000 -in "$SOURCE_FILE" -out "$ENCRYPTED_FILE"
    echo "✅ Encriptación completada. Datos protegidos."
else
    echo "⚠️ No se encontró el archivo de respaldo para cifrar."
fi

# Iniciar `crond` solo si no está corriendo
if ! pgrep -x "crond" > /dev/null; then
    echo "🛠️ Iniciando servicios de fondo..."
    crond &
else
    echo "⚠️ crond ya está en ejecución."
fi

echo "✅ YesiMan OS está operativo."
exec bash#!/bin/bash
echo "🚀 Arrancando YesiMan OS..."

# Reparar posibles bloqueos de procesos
echo "🔧 Eliminando bloqueos previos..."
rm -f /data/data/com.termux/files/usr/var/run/crond.pid

# Limpiar caché del sistema
echo "🧹 Limpiando caché..."
apt clean
apt autoremove -y

# Optimización del sistema
echo "🔄 Optimizando el sistema..."
sync && echo 3 > /proc/sys/vm/drop_caches

# Cifrado de datos personales con OpenSSL mejorado
echo "🔐 Iniciando encriptación segura..."
ENCRYPTED_FILE="/data/data/com.termux/files/home/mi_proyecto/datos_backup.tar.gz.enc"
SOURCE_FILE="/data/data/com.termux/files/home/mi_proyecto/datos_backup.tar.gz"

if [ -f "$SOURCE_FILE" ]; then
    openssl enc -aes-256-cbc -pbkdf2 -iter 100000 -in "$SOURCE_FILE" -out "$ENCRYPTED_FILE"
    echo "✅ Encriptación completada. Datos protegidos."
else
    echo "⚠️ No se encontró el archivo de respaldo para cifrar."
fi

# Iniciar `crond` correctamente
echo "🛠️ Iniciando servicios de fondo..."
crond &

echo "✅ YesiMan OS está operativo."
bash#!/bin/bash
echo "Arrancando YesiMan OS..."
bash
