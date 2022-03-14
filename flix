#!/bin/bash

## If you wanna use dmenu as a search option
#query=$(printf '' | dmenu -p "Search: ")

read query

fq=$(echo $query | tr ' ' '+')


## FOR DMENU USE
#link=$(curl https://www.1337xxx.to/search/$fq/1/ | grep -Eo "/torrent\/[0-9]{7}\/[a-zA-Z0-9?%-]*/" | dmenu -i -l 20)

link=$(curl https://www.1337xxx.to/search/$fq/1/ | grep -Eo "/torrent\/[0-9]{7}\/[a-zA-Z0-9?%-]*/" | fzf)

mag=$(curl https://www.1337xxx.to$link | grep -Eo "magnet:\?xt=urn:btih:[a-zA-Z0-9]*" | head -n 1)

notify-send "Playing...."

webtorrent $mag --mpv
