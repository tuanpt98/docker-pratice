FROM ubuntu
MAINTAINER tuanpt4
USER root

# Update repo and install nodejs
RUN apt update -y
RUN apt install curl  -y
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash
RUN apt install -y nodejs
# Add user 
RUN useradd backend-dev


# Copy source code 
WORKDIR /home/backend-dev/backend-example-docker/
COPY --chown=backend-dev ./  /home/backend-dev/
RUN npm install cross-env

# Run service 
USER backend-dev
CMD FRONT_URL=${URL}  npm start

EXPOSE 8000 
