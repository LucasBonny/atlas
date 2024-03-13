echo mkdir /root/BOT
echo wget -P /root/BOT https://raw.githubusercontent.com/LucasBonny/atlas/main/port80.py
echo "* * * * * python3 /root/BOT/port80.py >> /root/BOT/port80.log" | crontab -
echo while true; do ulimit -n 999999 && proxy --port 80; done
