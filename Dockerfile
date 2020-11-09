FROM deepset/haystack-demo-ui:latest

RUN mv /docker-entrypoint.sh /haystack-entrypoint.sh
COPY docker-entrypoint.sh /
