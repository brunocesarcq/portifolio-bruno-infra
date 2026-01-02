# Automação de Atualização do GLPI

Este projeto reúne scripts para atualização segura e controlada do GLPI em ambientes Linux produtivos.

O foco é garantir previsibilidade, segurança e possibilidade de rollback durante o processo de upgrade, respeitando boas práticas de ambientes corporativos.

---

## 🎯 Objetivo do Projeto

- Automatizar o processo de atualização do GLPI
- Reduzir riscos em ambientes produtivos
- Garantir backup antes de qualquer alteração
- Padronizar o processo de upgrade
- Facilitar validação e auditoria pós-atualização

---

## 🛠 Tecnologias Utilizadas

- Linux
- Bash
- Apache / PHP
- MySQL / MariaDB
- GLPI

---

## 📂 Estrutura do Projeto


glpi-automation/
├── scripts/
│ ├── backup_glpi.sh
│ ├── upgrade_glpi.sh
│ └── validate_glpi.sh
└── README.md

---

## 🔐 Script de Backup

📄 `scripts/backup_glpi.sh`

### O que faz:
- Backup completo do banco de dados do GLPI
- Backup dos arquivos da aplicação
- Garante possibilidade de rollback

### Por que é importante:
- Evita perda de dados
- Atende boas práticas de produção
- É obrigatório antes de qualquer upgrade

---

## ⚙️ Script de Atualização

📄 `scripts/upgrade_glpi.sh`

### O que faz:
- Baixa a nova versão do GLPI
- Atualiza apenas os arquivos da aplicação
- Mantém o banco de dados intacto
- Ajusta permissões corretamente

### Boas práticas aplicadas:
- Não executa upgrade silencioso do banco
- Mantém controle humano no processo
- Evita impactos inesperados

---

## 🔍 Script de Validação Pós-Upgrade

📄 `scripts/validate_glpi.sh`

### O que faz:
- Valida versão do GLPI
- Verifica permissões
- Confirma status dos serviços web e banco

### Importância:
- Garante que o ambiente está operacional
- Facilita troubleshooting
- Serve como evidência técnica

---

## ▶️ Fluxo de Execução Recomendado

1. Executar backup_glpi.sh  
2. Executar upgrade_glpi.sh  
3. Finalizar upgrade pela interface web do GLPI  
4. Executar validate_glpi.sh  

---

## 🔒 Boas Práticas Adotadas

- Backup obrigatório antes da atualização
- Separação entre código e banco de dados
- Validação pós-upgrade
- Processo documentado e reaplicável
- Adequado para ambientes produtivos

---

## 📈 Resultado

- Atualização previsível e segura
- Redução de risco operacional
- Processo reutilizável para futuras versões
- Base sólida para automação avançada (Ansible / CI/CD)

---

## 📌 Observação

Este projeto foi desenvolvido com base em experiências reais em ambientes corporativos, priorizando estabilidade, segurança e governança.
