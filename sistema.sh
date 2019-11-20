#!/bin/bash
# sistema - script que mostra inrformações do sistema
# Autor: Felipe dos Santos

# Pede a confirmação do usuário antes de executar
echo "Vou buscar os dados do sistema. Posso continuar? [S/n]"
read RESPOSTA

# Se o usuário digitou 'n', vamos interromper o script
test "$RESPOSTA" = "n" -o "$RESPOSTA" = "N" && exit

# O 'date' mostra a data e hora corrente
echo "Data e Horário:"
date
echo

# O 'df' mostra as partições e quanto cada uma ocupa no disco
echo "Uso de disco:"
df -h
echo

# O 'w' mostra os usuários que estão conectados na máquina
echo "Usuários Conectados:"
w
