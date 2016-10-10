FROM democracyos/app
RUN apt-get update && apt-get install nano


EXPOSE 3000/tcp
ENV BD_IP=localhost
ENV IP_HOST=localhost
ENV STAFF_MAIL=staff@staff.com
ENV PUBLIC_PORT=3000



 ENTRYPOINT ["docker-entrypoint.sh"]