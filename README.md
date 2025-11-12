# you-oops-dev-repo
This repository holds packages of programs that I've made for my own personal use, as well as the resulting packages from PKGBUILDs I've made for either missing or broken AUR packages.
This is more of a learning experience/fun project for me, but if you find any of my packages useful and use this yourself, that makes me very happy.

## How to Add this Repository
Using your text editor of choice, modify `/etc/pacman.conf`. For example: `sudo nano /etc/pacman.conf`. Scroll down to the bottom and append the following lines:
```
[you-oops-dev-repo]
SigLevel = Optional DatabaseOptional
Server = https://github.com/you-oops-dev/you-oops-dev-repo/releases/tag/stable
```

After appending the above lines, it's always a good idea to update everything: `sudo pacman -Syyu`. Now, you should be good to go!
