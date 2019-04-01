FROM ubuntu:latest
WORKDIR /app
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install g++ valgrind -y
# run container: docker run -ti -v $PWD/test:/app docker-valgrind