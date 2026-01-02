# Automação de Atualização do GLPI

Projeto voltado para atualização segura do GLPI em ambientes Linux produtivos.

## 🎯 Objetivo
Garantir um processo previsível, seguro e documentado para atualização do GLPI, com backup e validação.

## 🛠 Tecnologias
- Linux
- Bash
- Apache / PHP
- MySQL / MariaDB
- GLPI

## 📂 Estrutura

glpi-automation/
├── scripts/
│ ├── backup_glpi.sh
│ ├── upgrade_glpi.sh
│ └── validate_glpi.sh
└── README.md


## ⚙️ Fluxo de Execução
1. Executar backup_glpi.sh
2. Executar upgrade_glpi.sh
3. Finalizar upgrade via interface web
4. Executar validate_glpi.sh

## 🔒 Boas Práticas
- Backup obrigatório
- Separação entre código e banco
- Validação pós-upgrade
- Processo reaplicável

## 📈 Resultado
Atualização controlada, com redução de risco operacional e facilidade de manutenção futura.
