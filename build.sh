#!/bin/bash -x
shopt -s expand_aliases

alias CLANG34='/home/bjacob/Downloads/clang+llvm-3.4-x86_64-unknown-ubuntu12.04/bin/clang++ -O3 -S -Wall -Wextra -pedantic'
alias GCC46='g++-4.6 -O3 -S -Wall -Wextra -pedantic'

mkdir -p out

CLANG34 a.cpp -o out/a-clang3.4.s
CLANG34 a.cpp -o out/a-clang3.4-use-unreachable.s -DUSE_UNREACHABLE
diff -u out/a-clang3.4.s out/a-clang3.4-use-unreachable.s > out/a-clang3.4-effect-of-unreachable.diff
GCC46 a.cpp -o out/a-gcc4.6.s
GCC46 a.cpp -o out/a-gcc4.6-use-unreachable.s -DUSE_UNREACHABLE
diff -u out/a-gcc4.6.s out/a-gcc4.6-use-unreachable.s > out/a-gcc4.6-effect-of-unreachable.diff

CLANG34 b.cpp -o out/b-clang3.4.s
CLANG34 b.cpp -o out/b-clang3.4-use-unreachable.s -DUSE_UNREACHABLE
diff -u out/b-clang3.4.s out/b-clang3.4-use-unreachable.s > out/b-clang3.4-effect-of-unreachable.diff
GCC46 b.cpp -o out/b-gcc4.6.s
GCC46 b.cpp -o out/b-gcc4.6-use-unreachable.s -DUSE_UNREACHABLE
diff -u out/b-gcc4.6.s out/b-gcc4.6-use-unreachable.s > out/b-gcc4.6-effect-of-unreachable.diff

CLANG34 c.cpp -o out/c-clang3.4.s
CLANG34 c.cpp -o out/c-clang3.4-use-unreachable.s -DUSE_UNREACHABLE
diff -u out/c-clang3.4.s out/c-clang3.4-use-unreachable.s > out/c-clang3.4-effect-of-unreachable.diff
GCC46 c.cpp -o out/c-gcc4.6.s
GCC46 c.cpp -o out/c-gcc4.6-use-unreachable.s -DUSE_UNREACHABLE
diff -u out/c-gcc4.6.s out/c-gcc4.6-use-unreachable.s > out/c-gcc4.6-effect-of-unreachable.diff

CLANG34 d.cpp -o out/d-clang3.4.s
CLANG34 d.cpp -o out/d-clang3.4-use-unreachable.s -DUSE_UNREACHABLE
diff -u out/d-clang3.4.s out/d-clang3.4-use-unreachable.s > out/d-clang3.4-effect-of-unreachable.diff
GCC46 d.cpp -o out/d-gcc4.6.s
GCC46 d.cpp -o out/d-gcc4.6-use-unreachable.s -DUSE_UNREACHABLE
diff -u out/d-gcc4.6.s out/d-gcc4.6-use-unreachable.s > out/d-gcc4.6-effect-of-unreachable.diff
