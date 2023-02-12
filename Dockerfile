# STAGE 1

FROM node:18-alpine AS build

ENV FOLDER=/myapp

WORKDIR /app

COPY ${FOLDER}/package.json  ./

RUN yarn install

COPY ${FOLDER}  ${WORKDIR}

RUN yarn build


# STAGE 2

FROM nginx:stable-alpine

COPY --from=build /app/build /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
