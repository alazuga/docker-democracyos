FROM democracyos/app:test
RUN apt-get update && apt-get install nano




ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["node" "index.js"]