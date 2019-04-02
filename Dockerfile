FROM ubuntu:latest
ARG GTEST_DIR=/usr/local/src/gtest
COPY ./gtest ${GTEST_DIR}
WORKDIR /valgrind
RUN apt-get update
RUN apt-get upgrade -y
# RUN apt-get install build-essential qt5-default valgrind -y
RUN apt-get install build-essential valgrind -y
RUN g++ -std=c++11 -isystem ${GTEST_DIR}/include -I${GTEST_DIR} \
    -pthread -c ${GTEST_DIR}/src/gtest-all.cc
RUN ar -rv libgtest.a gtest-all.o