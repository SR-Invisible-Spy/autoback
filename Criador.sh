#!bin/bash
v="\033[1;31m"
V="\033[1;32m"
b="\033[1;37m"
a="\033[1;34m"
echo
echo
echo $b"Criador: $a SR.INVISIBLE SPY"
echo
echo $b"Numero: $a +1 (210) 963-7678"
echo
echo
echo
echo -n $b"Deseja iniciar essa ferramenta ou deseja sair?[iniciar/sair]\n>>> $V"
read R
if [ "$R" = "iniciar" ];then
    echo $V"Iniciando..."
    sh autoback.sh
fi
if [ "$R" = "sair" ];then
    echo $v"Saindo..."
sleep 2
echo $a"OBRIGADO POR BAIXAR MINHA FERRAMENTA!"
    exit
fi
