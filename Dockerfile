FROM postgres as base

COPY 00_create_db.sh /docker-entrypoint-initdb.d/00_create_db.sh
RUN chmod +x /docker-entrypoint-initdb.d/00_create_db.sh

USER postgres

ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["postgres"]
