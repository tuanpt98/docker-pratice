FROM ubuntu
MAINTAINER tuanpt4
USER root

# Update repo and install nodejs
RUN apt update -y
RUN apt install curl -y
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash
RUN apt install -y nodejs

# Useradd
# Add user
RUN useradd frontend-dev

# Copy source code 
WORKDIR /home/frontend-dev/
COPY --chown=frontend-dev . .
RUN npm install 
USER frontend-dev
CMD API_URL=${URL}  npm start


EXPOSE 5000 
