# c-brainfuck-compiler
Brainfuck to Assembly complier written in C.
It outputs an assembly file which is used to create an executable binary using nasm
### Dependencies
Install these if you dont have it already.
- make
- nasm
- ld
### Demo
```console
make
./bfc examples/hello-world.bf -o hello-world
```
