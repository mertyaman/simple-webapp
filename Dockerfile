FROM node:alpine
MAINTAINER Mert Yaman <mertyaman144@gmail.com>
COPY . /src
RUN cd /src && npm install
EXPOSE 11130
CMD ["node", "/src/server.js"]

# !!!
# I used node:alpine as base image to reduce final image size (114 mb)
# It copies everything from project directory to src folder except the files which are listed in dockerignore.
# 11130 port exposed to handle service requests.
