GOOS=linux GOARCH=amd64 go build .
docker build . -t abgordon/quote-server:0.1
docker push abgordon/quote-server:0.1
