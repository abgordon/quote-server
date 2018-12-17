FROM registry.vipertv.net/viper/alpine:3.7

ADD toy-server /toy-server
ADD quotes.txt /quotes.txt
RUN chmod +x toy-server
EXPOSE 8080

ENTRYPOINT ["/toy-server"]
