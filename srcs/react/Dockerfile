# syntax=docker/dockerfile:1

FROM alpine:3.19 as builder

WORKDIR /usr/src/app

COPY . .

ENV SAVE_DIR /app/save

RUN apk update \
	&& apk add --no-cache npm \
	&& npm install \
	&& npm run build \
	&& tar -czvf public/build.js.tar public/build.js

EXPOSE 8080

#ENTRYPOINT [ "./entrypoint.sh" ]
