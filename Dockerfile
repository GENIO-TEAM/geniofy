FROM mhart/alpine-node:14

WORKDIR /app
ADD . .

RUN apk add --no-cache make gcc g++ python2
RUN yarn
RUN yarn build

EXPOSE 8000
CMD ["yarn", "start"]
