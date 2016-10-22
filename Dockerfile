FROM node:5.9.0-wheezy

RUN apk update && apk upgrade
RUN apk add build-base gcc abuild binutils cmake python
RUN npm install -g grunt
RUN npm install -g node-gyp
RUN node-gyp install --target=0.37.8 --arch=x64 --dist-url=https://atom.io/download/atom-shell
#RUN node-gyp install