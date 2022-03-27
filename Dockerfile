FROM debian:bullseye
RUN set -e; \
    apt-get update; \
    apt-get upgrade -y; \
    apt-get install -y openssh-client autossh
COPY entrypoint.bash /entrypoint.bash
ENTRYPOINT ["bash", "/entrypoint.bash"]