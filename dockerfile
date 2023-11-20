FROM ubuntu:latest
RUN apt-get update && apt-get install -y \
x11-apps \
xauth \
&& rm -rf /var/lib/apt/lists/*
ENV DISPLAY=:0
CMD [ "xeyes" ]



#FROM ubuntu:latest
#WORKDIR /08.11.23
#COPY /calc.jar /08.11.23
#RUN apt-get update && apt-get install -y \
#x11-apps \
#openjdk-11-jre \
#xauth \
#&& rm -rf /var/lib/apt/lists/*
#ENV DISPLAY=:0
#CMD [ "java", "-jar", "/08.11.23/calc.jar" ]