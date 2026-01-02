#!/bin/bash

GLPI_DIR="/var/www/html/glpi"
GLPI_NEW="/tmp/glpi-new"
GLPI_URL="https://github.com/glpi-project/glpi/releases/download/10.0.19/glpi-10.0.19.tgz"

echo "=== Baixando nova versão do GLPI ==="
mkdir -p "$GLPI_NEW"
cd /tmp || exit 1
wget "$GLPI_URL" -O glpi.tgz
tar -xzf glpi.tgz -C "$GLPI_NEW" --strip-components=1

echo "=== Substituindo código do GLPI ==="
rsync -av --delete "$GLPI_NEW/" "$GLPI_DIR/"

echo "=== Ajustando permissões ==="
chown -R www-data:www-data "$GLPI_DIR"
chmod -R 755 "$GLPI_DIR"

echo "Atualização de arquivos concluída."
echo "Acesse a interface web para finalizar o upgrade do banco."
