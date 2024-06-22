# https://developer.valvesoftware.com/wiki/SteamCMD#Ubuntu
# https://linuxgsm.com/

apt install -y bc binutils bsdmainutils bzip2 ca-certificates cpio curl distro-info expect file gzip hostname jq lib32gcc-s1 lib32stdc++6 libsdl2-2.0-0:i386 libxml2-utils netcat-openbsd pigz python3 steamcmd tar telnet tmux unzip util-linux uuid-runtime wget xz-utils

add-apt-repository multiverse; dpkg --add-architecture i386; apt update ; apt install -y steamcmd
