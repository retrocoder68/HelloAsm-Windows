# Hello world app in x86_64 assembly (AT&T syntax) code for Windows

## Build
To build run `make`

## Test
To test run `make test`

## About choice of assembler
I started writing the assembly code using NASM. But after two days of having it throw "strange" error messages at me I started to look for alternatives.
I looked at Microsoft MASM before I choose NASM, and MASM has horrible syntax. In that sense NASM is a far better choice, but to me NASM seems rather buggy.
So in the end I decided to switch to good old Gnu AS. And I like the AT&T syntax better, mostly because that is what I am used to from the good old Amiga days. :-)

## Copyright
Copyright (C) 2023 Skywalker <j.karlsson@retrocoder.se>

