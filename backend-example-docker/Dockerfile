FROM ubuntu
MAINTAINER tuanpt4
USER root

# Update repo and install nodejs
COPY ./need.sh /root/
WORKDIR /root/
RUN ./need.sh

# Copy source code 

COPY ./ backend-example-docker /root/
WORKDIR /root/backend-example-docker/
RUN npm install cross-env
CMD FRONT_URL=http://172.27.100.198:5000  npm start


EXPOSE 8000 
