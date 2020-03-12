# add this to your ~/.bash_history or ~/.bashrc
RUNNING=$(docker ps | grep abgordon/quote-server)
if [ -z "$RUNNING" ];
then
  docker run -p 8080:8080 -d abgordon/quote-server:0.3
fi

curl localhost:8080
