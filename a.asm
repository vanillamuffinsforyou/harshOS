global main
extern printf, scanf, exit

section .bss
    p resb 4       ;initialising with 4 bits

section .text
main:

    push rbp           
    mov  rbp, rsp 
    sub rsp, 16 

    xor eax,eax         ;eax will have value zero
    lea rdi, [inputstring] ;first parameter
    call printf         ;calls the printf to print the dialogue

    xor eax,eax         ;eax will be zero
    lea rdi,[int1]       ; first parameter
    lea rsi,[p]         ;second parameter
    call scanf

    xor eax,eax         ;eax will have value zero
    lea rdi, [outint]   ;first parameter
    mov rsi, [p]        ;the number stored 
    call printf         ;calls the printf to print the number

    xor eax,eax         
    lea rdi,[str1]       
    lea rsi,[string] 
    call scanf        

    xor eax,eax         
    lea rdi, [outstring]   
    lea rsi, [string]        
    call printf         


    add rsp, 16 
    leave               ; mov rsp, rbp, pop rbp
    ret

section .data
    inputstring: db "Enter the number and string to be printed(line by line): ",0       ;input message
    outint: db "The number entered is: %d",10,0
    outstring: db "The entered string is: %s",10,0
    int1: db "%d",0
    str1: db "%s",0
    string times 100 db 0
