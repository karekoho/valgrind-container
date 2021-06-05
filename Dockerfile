FROM ubuntu:latest
ARG GTEST_DIR=/usr/local/src/googletest/googletest

# Fix enter timezone issue
ENV TZ=Europe/Helsinki
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install git-core sudo build-essential cmake valgrind libcppunit-dev -y

# Build Google Test
RUN git clone https://github.com/google/googletest.git /usr/local/src/googletest
COPY ./Makefile.gtest ${GTEST_DIR}/make/Makefile.local
RUN cd ${GTEST_DIR}/make && make -f Makefile.local && make -f Makefile.local install
RUN ln -s ${GTEST_DIR}/make/sample1_unittest 

# TODO: add Quick test, Boost test, Catch test

WORKDIR /valgrind

# docker build -t karek/valgrind:latest .
# docker run -tiv $PWD/path/to/my/files:/valgrind karek/valgrind:latest