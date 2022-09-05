FROM node:14-alpine

WORKDIR /app
ADD . .

RUN yarn
RUN yarn build

EXPOSE 8000
CMD ["yarn", "start"]
