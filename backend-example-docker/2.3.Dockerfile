FROM ubuntu
MAINTAINER tuanpt4
USER root

# Update repo and install nodejs
RUN apt update -y
RUN apt install curl xsel -y
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash
RUN apt install -y nodejs
RUN mkdir /home/backend-dev

# Copy source code 
COPY ./ /home/backend-dev
WORKDIR /home/backend-dev/ 
RUN npm install cross-env
CMD FRONT_URL  npm start


EXPOSE 8000 