FROM ubuntu:18.04


ADD wkhtmltox_0.12.5-1.bionic_amd64.deb .
RUN apt-get update
RUN apt-get -y install ca-certificates fontconfig libc6 libfreetype6 libjpeg-turbo8 libpng16-16 libssl1.1 libstdc++6 libx11-6 libxcb1 libxext6 libxrender1 xfonts-75dpi xfonts-base zlib1g
RUN dpkg -i wkhtmltox_0.12.5-1.bionic_amd64.deb

ADD app app
CMD cd app && ./run.sh
