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
COPY ./ /home/frontend-dev
WORKDIR /home/frontend-dev/

CMD API_URL npm start


EXPOSE 5000 
