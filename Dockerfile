FROM node:lts

RUN apt-get update && apt-get upgrade -y && apt-get clean

RUN mkdir /app
WORKDIR /app

COPY . /app


EXPOSE 3000

CMD [ "yarn", "start" ]
