FROM node:9.3.0-onbuild

COPY . /package.json src/

RUN cd src && npm install

COPY ./src

WORKDIR src/

CMD ["npm", "start"]
