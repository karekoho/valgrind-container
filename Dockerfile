FROM ubuntu:latest
ARG GTEST_DIR=/usr/local/src/googletest/googletest
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install git-core -y
RUN git clone https://github.com/google/googletest.git /usr/local/src/googletest  
RUN apt-get install build-essential cmake valgrind -y
COPY ./Makefile ${GTEST_DIR}/make/Makefile.local
RUN cd ${GTEST_DIR}/make && make -f Makefile.local && make -f Makefile.local install
RUN ln -s ${GTEST_DIR}/make/sample1_unittest 
WORKDIR /valgrind