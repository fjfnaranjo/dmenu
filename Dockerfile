FROM debian:buster
RUN apt-get -y update && \
	apt-get -y install build-essential libx11-dev libxinerama-dev libxft-dev && \
	apt-get -y autoremove && \
	apt-get -y clean && \
	rm -rf /var/lib/apt/lists/*
ENTRYPOINT make install
