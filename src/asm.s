global  _getIntVal
global  _setIntVal

section .text
_getIntVal:
    lea r9, [myInt] ; must use two lines, two registers to extract value not address?
    mov rax, [r9] ; second line?
    ret

_setIntVal:
    mov [myInt], rdi
    ret

section .data
myInt:
default rel
    dd 0x0000009