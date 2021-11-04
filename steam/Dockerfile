# change to steamos container if possible at some point
from archlinux:latest

# Install base steam
RUN echo "[multilib]" >> /etc/pacman.conf && \
    echo "Include = /etc/pacman.d/mirrorlist" >> /etc/pacman.conf && \
    pacman -Syu --noconfirm \
    ca-certificates \
    zenity \
    wget \
    vulkan-radeon \
    lib32-vulkan-radeon \
    steam

# fix warning with setlocale
RUN localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF8

# route pulse to host
COPY ../common/pulse-client.conf /etc/pulse/client.conf

# Configure rest
RUN useradd -m steam \
    && usermod -a -G video,input,audio steam

user steam
CMD ["steam"]
