FROM adoptopenjdk:8-jre
WORKDIR /root

RUN apt update
RUN apt install -qqy wget vim nano 
RUN wget -O install https://api.modpacks.ch/public/modpack/80/2068/server/linux
RUN chmod +x install && ./install 80 2068 --auto
RUN echo eula=true > eula.txt

CMD ./start.sh
