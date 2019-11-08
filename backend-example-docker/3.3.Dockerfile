FROM ubuntu
MAINTAINER tuanpt4
USER root

# Update repo and install nodejs
RUN apt update -y
RUN apt install curl xsel -y
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash
RUN apt install -y nodejs
# Add user 
RUN useradd backend-dev


# Copy source code 
COPY --chown=backend-dev ./ backend-example-docker /home/backend-dev/
WORKDIR /home/backend-dev/backend-example-docker/
RUN npm install cross-env

# Run service 
USER backend-dev
CMD FRONT_URL npm start


EXPOSE 8000 
