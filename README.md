<h1 align="center">torflix</h1>
<p align="center">Stream movies and TV shows in MPV or VLC, links fetched from tor website.</p>

<iframe width="560" height="315" src="https://www.youtube.com/embed/RVDRy-Kc4xA" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

## Requirements:
- tor: Tor is a connection-oriented anonymizing communication service.
- torsocks: torsocks is a wrapper between the torsocks library and the application in order to make every Internet communication go through the Tor network.
- webtorrent-cli: download and stream to your favourite media player. (mpv)
- fzf: fzf is a general-purpose command-line fuzzy finder.

'Make sure to start *tor.service* on your system.'

```bash
sudo pacman -S tor torsocks fzf;sudo npm install -g webtorrent-cli
```

