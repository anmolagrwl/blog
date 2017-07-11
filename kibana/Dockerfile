FROM kibana:5.4.3

RUN apt-get update && apt-get install -y netcat

COPY entrypoint.sh /tmp/entrypoint.sh
RUN chmod +x /tmp/entrypoint.sh

ADD kibana.yml /opt/kibana/config/

CMD ["/tmp/entrypoint.sh"]