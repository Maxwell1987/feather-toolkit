FROM feather_run:latest

COPY feather/build/feather /opt/feather/
COPY feather/purecpp /opt/feather/purecpp
COPY feather/feather.sql /opt/feather/feather.sql
COPY ./data ./entrypoint.sh /opt/feather/

WORKDIR /opt/feather

ENTRYPOINT ["bash", "./entrypoint.sh"]
