FROM debian:buster-slim

ENV buildTag=v0.0.3
RUN apt update && apt install -y wget gnupg &&\
    wget -qO - https://www.mongodb.org/static/pgp/server-4.2.asc | apt-key add - &&\ 
    apt -y remove wget gnupg
RUN echo "deb http://repo.mongodb.org/apt/debian buster/mongodb-org/4.2 main" | tee /etc/apt/sources.list.d/mongodb-org-4.2.list
RUN apt update && apt install -y mongodb-org
WORKDIR /data
COPY ./docker-entrypoint.sh ./
RUN chmod +x docker-entrypoint.sh
ENTRYPOINT [ "./docker-entrypoint.sh" ]
CMD [ "--bind_ip_all" ]
EXPOSE 27017
