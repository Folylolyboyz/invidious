FROM quay.io/invidious/invidious:latest

WORKDIR /invidious

# Copy the config file
COPY config.yml /invidious/config/config.yml

# Ensure the entrypoint script exists
COPY docker-entrypoint.sh /invidious/docker-entrypoint.sh
RUN chmod +x /invidious/docker-entrypoint.sh

# Set the default port for Railway
ENV PORT=3000

EXPOSE 3000

CMD ["/bin/sh", "/invidious/docker-entrypoint.sh"]
