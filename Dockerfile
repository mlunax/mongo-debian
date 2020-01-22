FROM debian:buster-slim

RUN apt update && apt install -y wget gnupg \
    wget -qO - https://www.mongodb.org/static/pgp/server-4.2.asc | apt-key add - \ 
    apt remove wget gnupg
RUN echo "deb http://repo.mongodb.org/apt/debian buster/mongodb-org/4.2 main" | tee /etc/apt/sources.list.d/mongodb-org-4.2.list
RUN apt update && apt install -y mongodb-org

WORKDIR /data

EXPOSE 27017
EXPOSE 28017
CMD [ "mongod", "--bind_ip", "0.0.0.0" ]
