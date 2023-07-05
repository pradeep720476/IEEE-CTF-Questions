FROM docker.io/nikolaik/python-nodejs:python3.11-nodejs20-slim

WORKDIR /app
COPY . /app
RUN apt-get update && apt-get install iptables ip6tables
RUN npm install
RUN chmod +x run.sh
CMD ./run.sh
EXPOSE 2640
