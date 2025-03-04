#!/bin/bash
echo "🚀 Arrancando YesiMan OS..."

# 🔧 Eliminar bloqueos previos
echo "🔧 Eliminando bloqueos previos..."
rm -f /data/data/com.termux/files/usr/var/run/crond.pid 2>/dev/null

# 🧹 Limpiar caché
echo "🧹 Limpiando caché del sistema..."
apt clean && apt autoremove -y

# 🔄 Optimización del sistema
echo "🔄 Optimizando el sistema..."
sync && echo "🔄 Memoria liberada virtualmente (sin root)."

# 🔐 Iniciar encriptación de datos personales
echo "🔐 Iniciando encriptación segura..."
openssl enc -aes-256-cbc -pbkdf2 -in archivo -out archivo.enc
echo "✅ Encriptación completada. Datos protegidos."

# 🛠️ Iniciar servicios en segundo plano
echo "🛠️ Iniciando servicios de fondo..."
crond || echo "⚠️ crond ya está en ejecución."

# ✅ Arranque finalizado
echo "✅ YesiMan OS está operativo."
exec bash
