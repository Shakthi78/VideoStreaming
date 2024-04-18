FROM ubuntu:focal

RUN apt-get update
RUN apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_18.x | bash -
RUN apt-get upgrade -y
RUN apt-get install -y nodejs
RUN apt-get install -y ffmpeg

WORKDIR /home/app

RUN npm i -g nodemon

CMD nodemon index.js