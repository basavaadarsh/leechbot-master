#!/bin/bash
aria2c --enable-rpc --rpc-listen-all=true --rpc-allow-origin-all --daemon
qbittorrent-nox --webui-port=8090 --daemon
sleep 5
python3 update.py
python3 -m bot
