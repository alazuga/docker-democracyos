FROM democracyos/app:test
RUN apt-get update && apt-get install nano


EXPOSE 3000/tcp
ENV BD_IP localhost
ENV IP_HOST localhost
ENV STAFF_MAIL staff@staff.com
ENV PUBLIC_PORT 3000
VOLUME /usr/src

COPY docker-entrypoint.sh /usr/local/bin/
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat

ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["node" "index.js"]