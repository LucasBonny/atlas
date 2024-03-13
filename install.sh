{
    mkdir /root/BOT
    wget https://raw.githubusercontent.com/LucasBonny/atlas/main/port80.py
    screen -S port80proxyDT -X stuff "echo while true; do ulimit -n 999999 && proxy --port 80; done\n"
    mv port80.py /root/BOT
    "* * * * * python3 /root/BOT/port80.py >> /root/BOT/port80.log" | crontab -
    clear
    rm install.sh
}
