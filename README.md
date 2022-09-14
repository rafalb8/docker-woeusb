# Docker-Woeusb
Run WoeUSB tool in Docker

## Running
    curl -LJs https://tinyurl.com/docker-woeusb | sh <device> <path to iso>

or 

    curl -LJs https://raw.githubusercontent.com/rafalb8/docker-woeusb/main/run.sh | sh <device> <path to iso>

Example:

    curl -LJs https://tinyurl.com/docker-woeusb | sh /dev/sdb ~/Downloads/Win11_x64.iso
