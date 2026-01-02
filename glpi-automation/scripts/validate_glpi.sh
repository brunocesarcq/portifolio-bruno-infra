#!/bin/bash

GLPI_DIR="/var/www/html/glpi"

echo "=== Verificando versão do GLPI ==="
grep -R "GLPI_VERSION" "$GLPI_DIR/inc/define.php"

echo "=== Verificando permissões ==="
ls -ld "$GLPI_DIR"

echo "=== Verificando serviços ==="
systemctl status apache2 || systemctl status httpd
systemctl status mysql || systemctl status mariadb
