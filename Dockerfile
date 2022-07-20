FROM node:12.16.1

WORKDIR /usr/src/app

COPY /gen/srv .
RUN npm install

RUN find app -name '*cds' | xargs rm -f

EXPOSE 4004
USER node
CMD [ "npm", "start"]