#!/bin/bash
git clone --depth 1 -b main https://github.com/yym68686/ChatGPT-Bing-Telegram-Bot.git > /dev/null
echo "code downloaded..." >> /home/log 2>&1
cd ChatGPT-Bing-Telegram-Bot
pip install -r /home/ChatGPT-Bing-Telegram-Bot/requirements.txt > /dev/null
echo "python env downloaded..." >> /home/log 2>&1
touch /home/log
nohup python -u /home/ChatGPT-Bing-Telegram-Bot/app/main.py >> /home/log 2>&1 &
echo "web is starting..." >> /home/log 2>&1
tail -f /home/log