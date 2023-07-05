FROM docker.io/nikolaik/python-nodejs:python3.11-nodejs20-slim

WORKDIR /app
COPY . /app
RUN npm install
RUN chmod +x run.sh
RUN apt-get update && \
      apt-get -y install sudo
RUN sudo iptables --some-option
CMD ./run.sh
EXPOSE 2640
