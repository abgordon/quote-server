GOOS=linux GOARCH=amd64 go build .
docker build . -t registry.vipertv.net/viper/quote-server:0.1
docker push registry.vipertv.net/viper/quote-server:0.1
