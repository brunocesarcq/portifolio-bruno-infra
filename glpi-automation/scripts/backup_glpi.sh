#!/bin/bash

DATA=$(date +%F)
BACKUP_DIR="/backup/glpi/$DATA"
GLPI_DIR="/var/www/html/glpi"
DB_NAME="glpi"
DB_USER="glpi"
DB_PASS="SENHA_AQUI"

mkdir -p "$BACKUP_DIR"

echo "=== Backup do banco de dados ==="
mysqldump -u"$DB_USER" -p"$DB_PASS" "$DB_NAME" > "$BACKUP_DIR/glpi_db.sql"

echo "=== Backup dos arquivos do GLPI ==="
tar -czf "$BACKUP_DIR/glpi_files.tar.gz" "$GLPI_DIR"

echo "Backup concluído em $BACKUP_DIR"
