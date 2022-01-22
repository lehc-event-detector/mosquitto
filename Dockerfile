FROM ubuntu:latest

RUN apt-get update
RUN apt-get install -y software-properties-common
RUN add-apt-repository ppa:mosquitto-dev/mosquitto-ppa

RUN apt-get install mosquitto -y
RUN apt-get clean

ADD ./mosquitto.conf /etc/mosquitto/conf.d/mosquitto.conf

EXPOSE 1883
EXPOSE 9000
CMD mosquitto -c /etc/mosquitto/mosquitto.conf