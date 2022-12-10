<h1 align="center">torflix</h1>
<p align="center">Stream movies and TV shows in MPV or VLC, links fetched from tor website.</p>

<div align="center">
[![Youtube Demonstration Video](http://img.youtube.com/vi/RVDRy-Kc4xA/0.jpg)](https://www.youtube.com/embed/RVDRy-Kc4xA)
</div>

## Requirements:
- tor: Tor is a connection-oriented anonymizing communication service.
- torsocks: torsocks is a wrapper between the torsocks library and the application in order to make every Internet communication go through the Tor network.
- webtorrent-cli: download and stream to your favourite media player. (mpv)
- fzf: fzf is a general-purpose command-line fuzzy finder.

'Make sure to start *tor.service* on your system.'

```bash
sudo pacman -S tor torsocks fzf;sudo npm install -g webtorrent-cli
```
## How to install
1. Install the requirements mentioned above.
2. Start tor.service on your system
```bash
systemctl enable tor.service
systemctl start tor.service
```
3. clone the repo and run the install.sh script.
```bash
git clone https://github.com/looph0le/torflix;cd torflix;bash install.sh
```
4. The script is installed at $HOME/.local/bin, make sure to export this path.
5. Enjoy!
