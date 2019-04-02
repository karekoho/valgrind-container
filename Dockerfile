FROM ubuntu:latest
ARG GTEST_DIR=/usr/local/src/googletest
COPY ./googletest ${GTEST_DIR}
# WORKDIR /valgrind
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install build-essential valgrind -y
# RUN apt-get qt5-default
RUN cd ${GTEST_DIR}/make && make && make install
WORKDIR /valgrind