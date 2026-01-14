# Detecção de Ataques Brute Force SSH com Elastic Stack 🛡️🔥

Este projeto documenta a implementação de um ambiente de monitoramento (SIEM) para detectar ataques de força bruta ao serviço SSH, utilizando a **Elastic Stack** e ferramentas de **Red Team**.

## 👤 Autor
**Ronan Bruno (narutoxdo)**

## Tecnologias e Ferramentas
* **Kali Linux**: OS Base.
* **Elasticsearch & Kibana**: Armazenamento e visualização de dados.
* **Filebeat**: Coleta e envio de logs de autenticação (`/var/log/auth.log`).
* **THC-Hydra**: Simulação de ataques de dicionário e força bruta.

## O que foi implementado
1. **Pipeline de Logs**: Configuração do Filebeat para monitorar logs do sistema via módulo `system`.
2. **Ataques Simulados**: Execução de ataques persistentes com Hydra usando a wordlist `rockyou.txt`.
3. **Dashboards**: Criação de visualizações no Kibana para monitorar picos de falhas de login.
4. **Troubleshooting**: Ajuste de Timezone e configuração de `rsyslog` para garantir a integridade dos dados.

## Visualização do Ataque
--Gráfico de barras demonstrando o volume de tentativas de login falhas capturadas pelo SIEM--
<img width="1891" height="790" alt="1" src="https://github.com/user-attachments/assets/bcf2b013-2696-49c3-a101-ace6982a5b4f" />

--Gráfico e terminal demonstrando uma parte desses ataques usando "rockyou" como base--
<img width="1890" height="625" alt="2" src="https://github.com/user-attachments/assets/6dbab9bf-2e53-4354-b965-da3278e4c4dd" />


## 🧠 Desafios Superados
Durante o laboratório, realizei a correção de IDs de Data Views no Kibana e ajustei o limite de conexões do serviço SSH para suportar o volume de logs gerado para o teste, pois alguns ataques mais fortes conseguiram derrubar o limite do sistema atual, um DDOS acidental.
