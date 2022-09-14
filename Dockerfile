FROM debian:stable-slim

# Install deps
RUN apt-get update && apt-get install -y wget dosfstools grub2 ntfs-3g parted wimtools udev

# Check if version is set
ARG VERSION
RUN [ ! -z $VERSION ]

# Add woeusb
RUN wget "https://github.com/WoeUSB/WoeUSB/releases/download/v${VERSION}/woeusb-${VERSION}.bash" -O /bin/woeusb && chmod +x /bin/woeusb

ENTRYPOINT [ "/bin/woeusb" ]
