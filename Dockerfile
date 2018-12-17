FROM alpine

ADD quote-server /quote-server
ADD quotes.txt /quotes.txt
RUN chmod +x quote-server
EXPOSE 8080

ENTRYPOINT ["/quote-server"]
