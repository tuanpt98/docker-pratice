FROM ubuntu
MAINTAINER tuanpt4
USER root

# Update repo and install nodejs
COPY ./need.sh /root/
WORKDIR /root/
RUN ./need.sh
# Add user 
RUN useradd frontend-dev


# Copy source code 

COPY --chown=frontend-dev ./ frontend-example-docker /home/frontend-dev/
WORKDIR /home/frontend-dev/frontend-example-docker/
RUN npm install cross-env
USER backend-dev
CMD API_URL=http://172.27.100.198:8000 npm start


EXPOSE 5000 
