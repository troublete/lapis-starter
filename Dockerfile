FROM openresty/openresty:alpine
RUN apk -U add build-base \
			   openssl-dev \
			   git \
			   lua-dev \
			   luarocks
RUN luarocks-5.1 install lapis
WORKDIR /app
COPY . .
EXPOSE 8080
CMD lapis serve