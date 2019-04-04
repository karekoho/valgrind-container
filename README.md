## Run Valgrind in a container
[Valgrind](http://valgrind.org/) may be difficult if not impossible to install on macOS (X86/Darwin (> 10.10, 10.11), AMD64/Darwin (> 10.10, 10.11)), 
and if succesfully installed it may not run properly or may not run at all.

A workaround for this is to run Valgrind in a Linux container. Some extra work is required, such as compilation for the container's platform,
but what you do get is a properly running Valgrind.
### Usage
Run the container:
```sh
docker run -tiv $PWD/path/to/my/files:/valgrind karek/valgrind:latest
```
The command above starts an interactive session with the container:
```
root@e5215faf4f73:/valgrind# 
```
You should now compile your project for the container's platform (x86_64) and run Valgrind as usual.
The container has basic build tools installed:
- dpkg-dev (>= 1.17.11)
- g++ (>= 4:5.2)
- GNU C++ compiler
- gcc (>= 4:5.2)
- GNU C compiler
- libc6-dev
- GNU C Library: Development Libraries and Header Files or libc-dev
- make
- cmake

[Google Test](https://github.com/google/googletest) is installed in */usr/local/src/googletest/googletest*

There is a sample [Makefile](https://github.com/google/googletest/blob/master/googletest/make/Makefile) demonstrating how to compile unit tests with Google Test.

#### A Memory debugging example

Start the container with:
```
docker run -tiv $PWD/examples:/valgrind karek/valgrind:latest
```
Once in the container, compile *leak.cpp* and run it in Valgrind:
```
root@d3e8ebc051b8:/valgrind# make && valgrind ./leak
g++    -c -o leak.o leak.cpp
g++ -o leak leak.o
==19== Memcheck, a memory error detector
==19== Copyright (C) 2002-2017, and GNU GPL'd, by Julian Seward et al.
==19== Using Valgrind-3.13.0 and LibVEX; rerun with -h for copyright info
==19== Command: ./leak
==19== 
0
1
2
==19== 
==19== HEAP SUMMARY:
==19==     in use at exit: 24 bytes in 1 blocks
==19==   total heap usage: 3 allocs, 2 frees, 73,752 bytes allocated
==19== 
==19== LEAK SUMMARY:
==19==    definitely lost: 24 bytes in 1 blocks
==19==    indirectly lost: 0 bytes in 0 blocks
==19==      possibly lost: 0 bytes in 0 blocks
==19==    still reachable: 0 bytes in 0 blocks
==19==         suppressed: 0 bytes in 0 blocks
==19== Rerun with --leak-check=full to see details of leaked memory
==19== 
==19== For counts of detected and suppressed errors, rerun with: -v
==19== ERROR SUMMARY: 0 errors from 0 contexts (suppressed: 0 from 0)
```