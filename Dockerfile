FROM quay.io/invidious/invidious:latest

WORKDIR /invidious

# Set Invidious configuration
COPY config.yml /invidious/config/config.yml

EXPOSE 3000

CMD ["sh", "docker-entrypoint.sh"]
