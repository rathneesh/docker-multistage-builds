FROM alpine:3.5
RUN apk add --no-cache mysql-client apache2 
ENTRYPOINT ["mysql"]
