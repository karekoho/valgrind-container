FROM ubuntu:latest
WORKDIR /app
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install build-essential valgrind -y
# build: docker build -t karek/valgrind:latest .
# run: docker run -ti -v $PWD/test:/app karek/valgrind:latest