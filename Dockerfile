FROM debian:stable-slim

RUN apt-get update && apt-get install -y \
          wget \
          --no-install-recommends && rm -r /var/lib/apt/lists/*


RUN wget http://linux.mtasa.com/dl/multitheftauto_linux_x64.tar.gz && \
tar -xf multitheftauto_linux_x64.tar.gz && \
rm -f multitheftauto_linux_x64.tar.gz && \
wget http://linux.mtasa.com/dl/baseconfig.tar.gz && \
tar -xf baseconfig.tar.gz && \
mv baseconfig/* multitheftauto_linux_x64/mods/deathmatch && \
rm -f baseconfig.tar.gz

EXPOSE 22126/udp
EXPOSE 22003/udp
EXPOSE 22005/tcp

WORKDIR /multitheftauto_linux_x64

ENTRYPOINT ["./mta-server64"]
