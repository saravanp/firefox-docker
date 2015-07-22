Run command "xhost +" on the docker host to allow full remote network access to the X11 server

docker build -t saravan/firefox https://github.com/saravanp/firefox-docker.git 

docker run -i -t --rm -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix saravan/firefox
