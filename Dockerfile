FROM ubuntu:14.04

RUN apt-get update
RUN apt-get install -y firefox 
RUN apt-get install -y x11-apps

RUN adduser developer
USER developer 
ENV HOME /home/developer

CMD /usr/bin/firefox
