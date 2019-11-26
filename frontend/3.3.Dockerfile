FROM ubuntu
MAINTAINER tuanpt4
USER root

# Update repo and install nodejs
RUN apt update -y
RUN apt install curl -y
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash
RUN apt install -y nodejs
RUN mkdir /home/frontend-dev

# Copy source code 

COPY --chown=frontend-dev ./ frontend-example-docker /home/frontend-dev/
WORKDIR /home/frontend-dev/frontend-example-docker/
RUN npm install cross-env
USER backend-dev
CMD API_URL=${URL}  npm start


EXPOSE 5000 
