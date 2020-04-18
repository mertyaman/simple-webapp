FROM node:alpine
COPY . /src
RUN cd /src && npm install
EXPOSE 11130
CMD ["node", "/src/server.js"]
