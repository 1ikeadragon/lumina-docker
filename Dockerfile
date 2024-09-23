FROM ubuntu:latest

RUN apt-get update && apt-get install -y mysql-server

ENV MYSQL_DATABASE=lumina \
    MYSQL_USER=lumina \
    MYSQL_PASSWORD=lumina \
    MYSQL_ROOT_PASSWORD=root

COPY ./lumina /opt/lumina

COPY ./hexvault /opt/hexvault

RUN useradd -m -s /bin/bash lumina && \
    echo "lumina:lumina" | chpasswd && \
    useradd -m -s /bin/bash hexvault && \
    echo "hexvault:hexvault" | chpasswd
    
RUN chown -R lumina:lumina /opt/lumina && \
    chmod 640 /opt/lumina/lumina.crt /opt/lumina/lumina.key /opt/lumina/luminasrv.hexlic

RUN chown -R hexvault:hexvault /opt/hexvault && \
    chmod 640 /opt/hexvault/hexvault.crt /opt/hexvault/hexvault.key /opt/hexvault/teamssrv.hexlic /opt/hexvault/hexvault.conf

EXPOSE 65432

EXPOSE 65433

COPY init.sh /init.sh

RUN chmod +x /init.sh

CMD ["/init.sh"]