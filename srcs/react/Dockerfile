FROM alpine:3.19

RUN apk add --update npm \
	&& npm install --save-dev jest \
	&& npm install --save react react-dom \
	&& npm install --save-dev @babel/preset-env @babel/preset-react \
	&& npm install --save-dev @babel/plugin-transform-runtime \
	&& npm install --save @babel/runtime