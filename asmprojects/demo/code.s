.intel_syntax
.org 0x100
.global main

# DATA HERE
myString: .asciz "Hello World!"

.include "../BODY/data.s"
.section .text

main: 
    lea %eax, myString # eax will hold our address
    printLoop:
       put_char [%eax] # I made this macro, see the data.s file
       inc %eax
       cmpb [%eax], 0 
       jne printLoop
    ret
