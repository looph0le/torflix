#!/bin/bash


query=$(printf '' | dmenu -p "Search: ")

fq=$(echo $query | tr ' ' '+')

link=$(curl https://www.1337xxx.to/search/$fq/1/ | grep -Eo "/torrent\/[0-9]{7}\/[a-zA-Z0-9?%-]*/" | dmenu -i -l 20)

mag=$(curl https://www.1337xxx.to$link | grep -Eo "magnet:\?xt=urn:btih:[a-zA-Z0-9]*" | head -n 1)

notify-send "Playing...."

webtorrent $mag --mpv
