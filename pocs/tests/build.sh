#/bin/bash

c3c compile src/*.c3 -o target/main
c3c compile src/sum.c3 test/test_main.c3 -o target/testmain
