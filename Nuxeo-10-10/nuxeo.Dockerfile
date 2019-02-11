FROM nuxeo:10.10

USER root

RUN mkdir -p /opt/nuxeo/server/packages/store
RUN chown -R 1000:1000 /opt/nuxeo/server/packages

#RUN apt-get update && apt-get install wkhtmltopdf -y --no-install-recommends
#RUN apt-get update && apt-get install lsb-release -y --no-install-recommends
#RUN apt-get update && apt-get install mediainfo vim iproute2 ffmpeg x264 -y --no-install-recommends

USER 1000
