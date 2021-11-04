from archlinux:latest

# Install base firefox 
RUN pacman -Syu --noconfirm \
    ca-certificates \
    firefox

# route pulse to host
COPY route-pulseaudio-to-host.conf /etc/pulse/client.conf

# Configure rest
RUN useradd -m firefox \
    && usermod -a -G video,input,audio firefox
    

user firefox
CMD ["firefox"]
