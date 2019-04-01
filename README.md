## Run Valgrind in a container
Valgrind may be difficult if not impossible to install for **macOS**, and if succesfully installed it may not run properly or may not run at all.
A workaround for this is to run Valgrind in a Linux container. Some extra work is required, such as compilation for the container's platform,
but what you do get is a properly running Valgrind.
### Usage
Run the container:
```sh
docker run -ti -v $PWD/path/to/my/files:/valgrind karek/valgrind:latest
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
