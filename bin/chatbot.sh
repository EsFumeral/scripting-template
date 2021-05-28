#!/bin/bash
#### Description: Notificació de missatges del sistema 
#### per Telegram usant un Bot 
#### Written by: Guillermo de Ignacio - gdeignacio@fundaciobit.org on 04-2021

###################################
###   CHATBOT UTILS             ###
###################################

echo ""
PROJECT_PATH="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && cd .. && pwd )"
echo "Project path at $PROJECT_PATH"
echo ""
echo "[$(date +"%Y-%m-%d %T")] Setting .env file..."
echo ""

source $PROJECT_PATH/bin/loadenv.sh

MENSAJE="Hola! La data del equip és: $(date)"

echo $TOKEN
echo $ID
echo $MENSAJE
echo $URL

curl -s -X POST $URL -d chat_id=$ID -d text="$MENSAJE"

