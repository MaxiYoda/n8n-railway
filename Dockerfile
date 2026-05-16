FROM n8nio/n8n:latest-debian
USER root
RUN apt-get update && apt-get install -y su-exec
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
