global _start

section .text
_start:
    mov rax, 12;
    mov rdi, 0;
    syscall;

    mov [tape], rax;
    mov [pointer], rax;

    add rax, 30000;
    add rdi, rax
    mov rax, 12;
    syscall;

    inc qword [pointer];
    mov rax, [pointer];
    add byte [rax], 8
                          ;
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB9
                      ;
.LF9:
    dec qword [pointer];
    mov rax, [pointer];
    add byte [rax], 9
                          ;
    inc qword [pointer];
    mov rax, [pointer];
    dec byte [rax];
    dec qword [pointer];
    mov rax, 1;
    mov rdi, 1;
    mov rsi, [pointer];
    mov rdx, 1;
    syscall;
    inc qword [pointer];
    mov rax, [pointer];
    add byte [rax], 4
                          ;
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB30
                      ;
.LF30:
    dec qword [pointer];
    mov rax, [pointer];
    add byte [rax], 7
                          ;
    inc qword [pointer];
    mov rax, [pointer];
    dec byte [rax];
    dec qword [pointer];
    mov rax, [pointer];
    inc byte [rax];
    mov rax, 1;
    mov rdi, 1;
    mov rsi, [pointer];
    mov rdx, 1;
    syscall;
    mov rax, [pointer];
    add byte [rax], 7
                          ;
    mov rax, 1;
    mov rdi, 1;
    mov rsi, [pointer];
    mov rdx, 1;
    syscall;
    mov rax, 1;
    mov rdi, 1;
    mov rsi, [pointer];
    mov rdx, 1;
    syscall;
    mov rax, [pointer];
    add byte [rax], 3
                          ;
    mov rax, 1;
    mov rdi, 1;
    mov rsi, [pointer];
    mov rdx, 1;
    syscall;
    add qword [pointer], 2
                          ;
    mov rax, [pointer];
    add byte [rax], 6
                          ;
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB66
                      ;
.LF66:
    dec qword [pointer];
    mov rax, [pointer];
    add byte [rax], 7
                          ;
    inc qword [pointer];
    mov rax, [pointer];
    dec byte [rax];
    dec qword [pointer];
    mov rax, [pointer];
    add byte [rax], 2
                          ;
    mov rax, 1;
    mov rdi, 1;
    mov rsi, [pointer];
    mov rdx, 1;
    syscall;
    mov rax, [pointer];
    sub byte [rax], 12
                          ;
    mov rax, 1;
    mov rdi, 1;
    mov rsi, [pointer];
    mov rdx, 1;
    syscall;
    inc qword [pointer];
    mov rax, [pointer];
    add byte [rax], 6
                          ;
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB102
                      ;
.LF102:
    dec qword [pointer];
    mov rax, [pointer];
    add byte [rax], 9
                          ;
    inc qword [pointer];
    mov rax, [pointer];
    dec byte [rax];
    dec qword [pointer];
    mov rax, [pointer];
    inc byte [rax];
    mov rax, 1;
    mov rdi, 1;
    mov rsi, [pointer];
    mov rdx, 1;
    syscall;
    dec qword [pointer];
    mov rax, 1;
    mov rdi, 1;
    mov rsi, [pointer];
    mov rdx, 1;
    syscall;
    mov rax, [pointer];
    add byte [rax], 3
                          ;
    mov rax, 1;
    mov rdi, 1;
    mov rsi, [pointer];
    mov rdx, 1;
    syscall;
    mov rax, [pointer];
    sub byte [rax], 6
                          ;
    mov rax, 1;
    mov rdi, 1;
    mov rsi, [pointer];
    mov rdx, 1;
    syscall;
    mov rax, [pointer];
    sub byte [rax], 8
                          ;
    mov rax, 1;
    mov rdi, 1;
    mov rsi, [pointer];
    mov rdx, 1;
    syscall;
    add qword [pointer], 3
                          ;
    mov rax, [pointer];
    add byte [rax], 4
                          ;
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB148
                      ;
.LF148:
    dec qword [pointer];
    mov rax, [pointer];
    add byte [rax], 8
                          ;
    inc qword [pointer];
    mov rax, [pointer];
    dec byte [rax];
    dec qword [pointer];
    mov rax, [pointer];
    inc byte [rax];
    mov rax, 1;
    mov rdi, 1;
    mov rsi, [pointer];
    mov rdx, 1;
    syscall;
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF148
                      ;
.LB148:
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF102
                      ;
.LB102:
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF66
                      ;
.LB66:
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF30
                      ;
.LB30:
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF9
                      ;
.LB9:

    mov rax, 12;
    mov rdi, tape;
    syscall;

    mov rax, 60;
    xor rdi, rdi;
    syscall;

section .data
tape: dq 0;
pointer: dq 0;
