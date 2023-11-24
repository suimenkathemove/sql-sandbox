FROM postgres:13-alpine AS database
ENV LANG de_DE.utf8

COPY ./init-scripts/ /docker-entrypoint-initdb.d/
