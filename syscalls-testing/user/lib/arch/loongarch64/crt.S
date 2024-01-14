.section .text.entry
.globl _start
_start:
    add.d $a0, $zero, $sp
    bl __start_main
