FROM ubuntu:latest
WORKDIR /valgrind
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install build-essential valgrind -y