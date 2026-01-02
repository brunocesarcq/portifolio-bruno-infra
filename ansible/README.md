# Automação com Ansible

Este projeto contém playbooks Ansible voltados para automação de tarefas administrativas em servidores Linux, com foco em ambientes corporativos e críticos.

O objetivo é padronizar processos, reduzir erro humano e garantir execuções controladas e seguras.

---

## 🎯 Objetivo do Projeto

- Automatizar rotinas administrativas em servidores Linux
- Padronizar atualizações de sistema
- Separar verificação (pré-check) da execução
- Evitar impactos em produção (sem reboot automático)
- Gerar evidências técnicas para auditoria

---

## 🛠 Tecnologias Utilizadas

- Ansible
- Linux (Ubuntu, Debian, Oracle Linux, RHEL)
- SSH
- YAML

---

## 📂 Estrutura do Projeto

ansible/
├── playbooks/
│ ├── check-updates.yml
│ └── update-linux.yml
├── inventory/
│ └── hosts.ini
└── README.md

---

## 🔍 Playbook de Verificação (Pre-check)

📄 `playbooks/check-updates.yml`

Este playbook realiza apenas a **verificação de atualizações disponíveis**, sem aplicar nenhuma mudança no sistema.

### O que ele faz:
- Atualiza o cache de pacotes
- Lista pacotes com atualização disponível
- Não altera o sistema operacional

### Por que isso é importante:
- Permite análise prévia
- Evita impactos inesperados
- Atende boas práticas de ambientes críticos

---

## ⚙️ Playbook de Execução (Atualização)

📄 `playbooks/update-linux.yml`

Este playbook aplica as atualizações de sistema de forma **controlada**.

### O que ele faz:
- Atualiza pacotes do sistema
- Não reinicia automaticamente o servidor
- Informa quando um reboot é necessário

### Boas práticas aplicadas:
- Execução consciente
- Controle de impacto
- Decisão humana para reboot

---

## ▶️ Como Executar os Playbooks

### Pré-check (verificação):

ansible-playbook -i inventory/hosts.ini playbooks/check-updates.yml
