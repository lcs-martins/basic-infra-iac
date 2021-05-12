
#!/bin/bash
## USE PARA GERAR LOG AO LONGO DO SEU SCRIPT

startTime="$(date +'%m-%d-%Y')"
log="logfile.$startTime"

sudo echo "------------------------------------------------------------------------------" >> $log
sudo echo "-- Processo iniciado em: $(date +"%m-%d-%Y-%H:%M") --" >> $log
sudo echo "------------------------------------------------------------------------------" >> $log
sudo echo "$(date +"%m-%d-%Y-%H:%M"): Removendo informações anteriores herdadas de snapshot" >> $log
