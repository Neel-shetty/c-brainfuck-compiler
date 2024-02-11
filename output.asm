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

    add qword [pointer], 10
                          ;
    mov rax, [pointer];
    inc byte [rax];
    sub qword [pointer], 9
                          ;
    mov rax, [pointer];
    add byte [rax], 4
                          ;
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB24
                      ;
.LF24:
    mov rax, [pointer];
    dec byte [rax];
    add qword [pointer], 12
                          ;
    mov rax, [pointer];
    add byte [rax], 8
                          ;
    sub qword [pointer], 12
                          ;
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF24
                      ;
.LB24:
    add qword [pointer], 13
                          ;
    mov rax, [pointer];
    add byte [rax], 10
                          ;
    sub qword [pointer], 13
                          ;
    mov rax, [pointer];
    add byte [rax], 11
                          ;
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB106
                      ;
.LF106:
    add qword [pointer], 14
                          ;
    mov rax, [pointer];
    add byte [rax], 6
                          ;
    sub qword [pointer], 14
                          ;
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF106
                      ;
.LB106:
    add qword [pointer], 14
                          ;
    mov rax, 1;
    mov rdi, 1;
    mov rsi, [pointer];
    mov rdx, 1;
    syscall;
    sub qword [pointer], 14
                          ;
    mov rax, [pointer];
    add byte [rax], 8
                          ;
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB180
                      ;
.LF180:
    add qword [pointer], 14
                          ;
    mov rax, [pointer];
    add byte [rax], 6
                          ;
    sub qword [pointer], 14
                          ;
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF180
                      ;
.LB180:
    add qword [pointer], 14
                          ;
    mov rax, 1;
    mov rdi, 1;
    mov rsi, [pointer];
    mov rdx, 1;
    syscall;
    sub qword [pointer], 14
                          ;
    mov rax, [pointer];
    add byte [rax], 4
                          ;
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB250
                      ;
.LF250:
    add qword [pointer], 14
                          ;
    mov rax, [pointer];
    sub byte [rax], 4
                          ;
    sub qword [pointer], 14
                          ;
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF250
                      ;
.LB250:
    add qword [pointer], 14
                          ;
    mov rax, [pointer];
    dec byte [rax];
    mov rax, 1;
    mov rdi, 1;
    mov rsi, [pointer];
    mov rdx, 1;
    syscall;
    mov rax, [pointer];
    add byte [rax], 8
                          ;
    mov rax, 1;
    mov rdi, 1;
    mov rsi, [pointer];
    mov rdx, 1;
    syscall;
    mov rax, [pointer];
    add byte [rax], 5
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
    sub qword [pointer], 14
                          ;
    mov rax, [pointer];
    add byte [rax], 5
                          ;
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB344
                      ;
.LF344:
    add qword [pointer], 14
                          ;
    mov rax, [pointer];
    add byte [rax], 3
                          ;
    sub qword [pointer], 14
                          ;
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF344
                      ;
.LB344:
    add qword [pointer], 14
                          ;
    mov rax, 1;
    mov rdi, 1;
    mov rsi, [pointer];
    mov rdx, 1;
    syscall;
    sub qword [pointer], 14
                          ;
    mov rax, [pointer];
    add byte [rax], 6
                          ;
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB413
                      ;
.LF413:
    add qword [pointer], 14
                          ;
    mov rax, [pointer];
    sub byte [rax], 3
                          ;
    sub qword [pointer], 14
                          ;
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF413
                      ;
.LB413:
    add qword [pointer], 14
                          ;
    mov rax, 1;
    mov rdi, 1;
    mov rsi, [pointer];
    mov rdx, 1;
    syscall;
    mov rax, [pointer];
    add byte [rax], 8
                          ;
    mov rax, 1;
    mov rdi, 1;
    mov rsi, [pointer];
    mov rdx, 1;
    syscall;
    sub qword [pointer], 14
                          ;
    mov rax, [pointer];
    add byte [rax], 7
                          ;
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB492
                      ;
.LF492:
    add qword [pointer], 14
                          ;
    mov rax, [pointer];
    sub byte [rax], 11
                          ;
    sub qword [pointer], 14
                          ;
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF492
                      ;
.LB492:
    add qword [pointer], 14
                          ;
    mov rax, [pointer];
    add byte [rax], 2
                          ;
    mov rax, 1;
    mov rdi, 1;
    mov rsi, [pointer];
    mov rdx, 1;
    syscall;
    sub qword [pointer], 14
                          ;
    mov rax, [pointer];
    add byte [rax], 7
                          ;
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB572
                      ;
.LF572:
    add qword [pointer], 14
                          ;
    mov rax, [pointer];
    add byte [rax], 5
                          ;
    sub qword [pointer], 14
                          ;
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF572
                      ;
.LB572:
    add qword [pointer], 14
                          ;
    mov rax, 1;
    mov rdi, 1;
    mov rsi, [pointer];
    mov rdx, 1;
    syscall;
    sub qword [pointer], 14
                          ;
    mov rax, [pointer];
    add byte [rax], 6
                          ;
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB643
                      ;
.LF643:
    add qword [pointer], 14
                          ;
    mov rax, [pointer];
    add byte [rax], 5
                          ;
    sub qword [pointer], 14
                          ;
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF643
                      ;
.LB643:
    add qword [pointer], 14
                          ;
    mov rax, 1;
    mov rdi, 1;
    mov rsi, [pointer];
    mov rdx, 1;
    syscall;
    mov rax, [pointer];
    add byte [rax], 11
                          ;
    mov rax, 1;
    mov rdi, 1;
    mov rsi, [pointer];
    mov rdx, 1;
    syscall;
    mov rax, [pointer];
    sub byte [rax], 9
                          ;
    mov rax, 1;
    mov rdi, 1;
    mov rsi, [pointer];
    mov rdx, 1;
    syscall;
    sub qword [pointer], 14
                          ;
    mov rax, [pointer];
    add byte [rax], 6
                          ;
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB736
                      ;
.LF736:
    add qword [pointer], 14
                          ;
    mov rax, [pointer];
    add byte [rax], 3
                          ;
    sub qword [pointer], 14
                          ;
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF736
                      ;
.LB736:
    add qword [pointer], 14
                          ;
    mov rax, 1;
    mov rdi, 1;
    mov rsi, [pointer];
    mov rdx, 1;
    syscall;
    mov rax, [pointer];
    sub byte [rax], 9
                          ;
    mov rax, 1;
    mov rdi, 1;
    mov rsi, [pointer];
    mov rdx, 1;
    syscall;
    mov rax, [pointer];
    sub byte [rax], 11
                          ;
    mov rax, 1;
    mov rdi, 1;
    mov rsi, [pointer];
    mov rdx, 1;
    syscall;
    sub qword [pointer], 14
                          ;
    mov rax, [pointer];
    add byte [rax], 4
                          ;
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB825
                      ;
.LF825:
    add qword [pointer], 14
                          ;
    mov rax, [pointer];
    add byte [rax], 5
                          ;
    sub qword [pointer], 14
                          ;
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF825
                      ;
.LB825:
    add qword [pointer], 14
                          ;
    mov rax, [pointer];
    dec byte [rax];
    mov rax, 1;
    mov rdi, 1;
    mov rsi, [pointer];
    mov rdx, 1;
    syscall;
    mov rax, [pointer];
    sub byte [rax], 5
                          ;
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
    sub qword [pointer], 14
                          ;
    mov rax, [pointer];
    add byte [rax], 9
                          ;
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB910
                      ;
.LF910:
    add qword [pointer], 14
                          ;
    mov rax, [pointer];
    sub byte [rax], 9
                          ;
    sub qword [pointer], 14
                          ;
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF910
                      ;
.LB910:
    add qword [pointer], 14
                          ;
    mov rax, [pointer];
    dec byte [rax];
    mov rax, 1;
    mov rdi, 1;
    mov rsi, [pointer];
    mov rdx, 1;
    syscall;
    sub qword [pointer], 14
                          ;
    mov rax, [pointer];
    add byte [rax], 7
                          ;
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB987
                      ;
.LF987:
    add qword [pointer], 14
                          ;
    mov rax, [pointer];
    sub byte [rax], 3
                          ;
    sub qword [pointer], 14
                          ;
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF987
                      ;
.LB987:
    add qword [pointer], 14
                          ;
    mov rax, [pointer];
    dec byte [rax];
    mov rax, 1;
    mov rdi, 1;
    mov rsi, [pointer];
    mov rdx, 1;
    syscall;
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB1037
                      ;
.LF1037:
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF1037
                      ;
.LB1037:
    sub qword [pointer], 6
                          ;
    mov rax, [pointer];
    inc byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB1047
                      ;
.LF1047:
    add qword [pointer], 7
                          ;
    mov rax, 0;
    mov rdi, 0;
    mov rsi, [pointer];
    mov rdx, 1;
    syscall;
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB1056
                      ;
.LF1056:
    sub qword [pointer], 15
                          ;
    mov rax, [pointer];
    inc byte [rax];
    dec qword [pointer];
    mov rax, [pointer];
    inc byte [rax];
    add qword [pointer], 16
                          ;
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF1056
                      ;
.LB1056:
    sub qword [pointer], 15
                          ;
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB1108
                      ;
.LF1108:
    add qword [pointer], 15
                          ;
    mov rax, [pointer];
    inc byte [rax];
    sub qword [pointer], 15
                          ;
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF1108
                      ;
.LB1108:
    mov rax, [pointer];
    add byte [rax], 8
                          ;
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB1150
                      ;
.LF1150:
    dec qword [pointer];
    mov rax, [pointer];
    sub byte [rax], 4
                          ;
    inc qword [pointer];
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF1150
                      ;
.LB1150:
    dec qword [pointer];
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB1160
                      ;
.LF1160:
    inc qword [pointer];
    mov rax, [pointer];
    inc byte [rax];
    dec qword [pointer];
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF1160
                      ;
.LB1160:
    mov rax, [pointer];
    inc byte [rax];
    inc qword [pointer];
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB1168
                      ;
.LF1168:
    dec qword [pointer];
    mov rax, [pointer];
    dec byte [rax];
    inc qword [pointer];
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB1172
                      ;
.LF1172:
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF1172
                      ;
.LB1172:
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF1168
                      ;
.LB1168:
    dec qword [pointer];
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB1177
                      ;
.LF1177:
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB1178
                      ;
.LF1178:
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF1178
                      ;
.LB1178:
    inc qword [pointer];
    mov rax, [pointer];
    dec byte [rax];
    dec qword [pointer];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF1177
                      ;
.LB1177:
    inc qword [pointer];
    mov rax, [pointer];
    inc byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB1187
                      ;
.LF1187:
    mov rax, [pointer];
    dec byte [rax];
    add qword [pointer], 15
                          ;
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB1204
                      ;
.LF1204:
    sub qword [pointer], 15
                          ;
    mov rax, [pointer];
    inc byte [rax];
    dec qword [pointer];
    mov rax, [pointer];
    inc byte [rax];
    add qword [pointer], 16
                          ;
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF1204
                      ;
.LB1204:
    sub qword [pointer], 15
                          ;
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB1256
                      ;
.LF1256:
    add qword [pointer], 15
                          ;
    mov rax, [pointer];
    inc byte [rax];
    sub qword [pointer], 15
                          ;
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF1256
                      ;
.LB1256:
    mov rax, [pointer];
    add byte [rax], 11
                          ;
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB1301
                      ;
.LF1301:
    dec qword [pointer];
    mov rax, [pointer];
    sub byte [rax], 9
                          ;
    inc qword [pointer];
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF1301
                      ;
.LB1301:
    dec qword [pointer];
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB1316
                      ;
.LF1316:
    inc qword [pointer];
    mov rax, [pointer];
    inc byte [rax];
    dec qword [pointer];
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF1316
                      ;
.LB1316:
    mov rax, [pointer];
    inc byte [rax];
    inc qword [pointer];
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB1324
                      ;
.LF1324:
    dec qword [pointer];
    mov rax, [pointer];
    dec byte [rax];
    inc qword [pointer];
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB1328
                      ;
.LF1328:
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF1328
                      ;
.LB1328:
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF1324
                      ;
.LB1324:
    dec qword [pointer];
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB1333
                      ;
.LF1333:
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB1334
                      ;
.LF1334:
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF1334
                      ;
.LB1334:
    add qword [pointer], 15
                          ;
    mov rax, [pointer];
    add byte [rax], 10
                          ;
    mov rax, 1;
    mov rdi, 1;
    mov rsi, [pointer];
    mov rdx, 1;
    syscall;
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB1363
                      ;
.LF1363:
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF1363
                      ;
.LB1363:
    mov rax, [pointer];
    add byte [rax], 10
                          ;
    mov rax, 1;
    mov rdi, 1;
    mov rsi, [pointer];
    mov rdx, 1;
    syscall;
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB1377
                      ;
.LF1377:
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF1377
                      ;
.LB1377:
    dec qword [pointer];
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
    sub qword [pointer], 5
                          ;
    mov rax, [pointer];
    dec byte [rax];
    inc qword [pointer];
    mov rax, [pointer];
    dec byte [rax];
    sub qword [pointer], 9
                          ;
    mov rax, [pointer];
    dec byte [rax];
    dec qword [pointer];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF1333
                      ;
.LB1333:
    inc qword [pointer];
    mov rax, [pointer];
    inc byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB1405
                      ;
.LF1405:
    mov rax, [pointer];
    dec byte [rax];
    add qword [pointer], 15
                          ;
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB1422
                      ;
.LF1422:
    sub qword [pointer], 15
                          ;
    mov rax, [pointer];
    inc byte [rax];
    dec qword [pointer];
    mov rax, [pointer];
    inc byte [rax];
    add qword [pointer], 16
                          ;
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF1422
                      ;
.LB1422:
    sub qword [pointer], 15
                          ;
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB1474
                      ;
.LF1474:
    add qword [pointer], 15
                          ;
    mov rax, [pointer];
    inc byte [rax];
    sub qword [pointer], 15
                          ;
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF1474
                      ;
.LB1474:
    mov rax, [pointer];
    add byte [rax], 10
                          ;
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB1518
                      ;
.LF1518:
    dec qword [pointer];
    mov rax, [pointer];
    sub byte [rax], 6
                          ;
    inc qword [pointer];
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF1518
                      ;
.LB1518:
    mov rax, [pointer];
    dec byte [rax];
    dec qword [pointer];
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB1531
                      ;
.LF1531:
    inc qword [pointer];
    mov rax, [pointer];
    inc byte [rax];
    dec qword [pointer];
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF1531
                      ;
.LB1531:
    mov rax, [pointer];
    inc byte [rax];
    inc qword [pointer];
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB1539
                      ;
.LF1539:
    dec qword [pointer];
    mov rax, [pointer];
    dec byte [rax];
    inc qword [pointer];
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB1543
                      ;
.LF1543:
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF1543
                      ;
.LB1543:
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF1539
                      ;
.LB1539:
    dec qword [pointer];
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB1548
                      ;
.LF1548:
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB1549
                      ;
.LF1549:
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF1549
                      ;
.LB1549:
    add qword [pointer], 9
                          ;
    mov rax, [pointer];
    dec byte [rax];
    sub qword [pointer], 8
                          ;
    mov rax, [pointer];
    dec byte [rax];
    dec qword [pointer];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF1548
                      ;
.LB1548:
    inc qword [pointer];
    mov rax, [pointer];
    inc byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB1575
                      ;
.LF1575:
    mov rax, [pointer];
    dec byte [rax];
    add qword [pointer], 15
                          ;
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB1592
                      ;
.LF1592:
    sub qword [pointer], 15
                          ;
    mov rax, [pointer];
    inc byte [rax];
    dec qword [pointer];
    mov rax, [pointer];
    inc byte [rax];
    add qword [pointer], 16
                          ;
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF1592
                      ;
.LB1592:
    sub qword [pointer], 15
                          ;
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB1644
                      ;
.LF1644:
    add qword [pointer], 15
                          ;
    mov rax, [pointer];
    inc byte [rax];
    sub qword [pointer], 15
                          ;
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF1644
                      ;
.LB1644:
    mov rax, [pointer];
    add byte [rax], 7
                          ;
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB1685
                      ;
.LF1685:
    dec qword [pointer];
    mov rax, [pointer];
    sub byte [rax], 6
                          ;
    inc qword [pointer];
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF1685
                      ;
.LB1685:
    mov rax, [pointer];
    dec byte [rax];
    dec qword [pointer];
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB1698
                      ;
.LF1698:
    inc qword [pointer];
    mov rax, [pointer];
    inc byte [rax];
    dec qword [pointer];
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF1698
                      ;
.LB1698:
    mov rax, [pointer];
    inc byte [rax];
    inc qword [pointer];
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB1706
                      ;
.LF1706:
    dec qword [pointer];
    mov rax, [pointer];
    dec byte [rax];
    inc qword [pointer];
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB1710
                      ;
.LF1710:
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF1710
                      ;
.LB1710:
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF1706
                      ;
.LB1706:
    dec qword [pointer];
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB1715
                      ;
.LF1715:
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB1716
                      ;
.LF1716:
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF1716
                      ;
.LB1716:
    add qword [pointer], 16
                          ;
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB1735
                      ;
.LF1735:
    sub qword [pointer], 12
                          ;
    mov rax, [pointer];
    inc byte [rax];
    add qword [pointer], 12
                          ;
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF1735
                      ;
.LB1735:
    sub qword [pointer], 4
                          ;
    mov rax, [pointer];
    inc byte [rax];
    sub qword [pointer], 11
                          ;
    mov rax, [pointer];
    dec byte [rax];
    dec qword [pointer];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF1715
                      ;
.LB1715:
    inc qword [pointer];
    mov rax, [pointer];
    inc byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB1784
                      ;
.LF1784:
    mov rax, [pointer];
    dec byte [rax];
    add qword [pointer], 15
                          ;
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB1801
                      ;
.LF1801:
    sub qword [pointer], 15
                          ;
    mov rax, [pointer];
    inc byte [rax];
    dec qword [pointer];
    mov rax, [pointer];
    inc byte [rax];
    add qword [pointer], 16
                          ;
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF1801
                      ;
.LB1801:
    sub qword [pointer], 15
                          ;
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB1853
                      ;
.LF1853:
    add qword [pointer], 15
                          ;
    mov rax, [pointer];
    inc byte [rax];
    sub qword [pointer], 15
                          ;
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF1853
                      ;
.LB1853:
    mov rax, [pointer];
    add byte [rax], 9
                          ;
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB1896
                      ;
.LF1896:
    dec qword [pointer];
    mov rax, [pointer];
    sub byte [rax], 5
                          ;
    inc qword [pointer];
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF1896
                      ;
.LB1896:
    dec qword [pointer];
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB1907
                      ;
.LF1907:
    inc qword [pointer];
    mov rax, [pointer];
    inc byte [rax];
    dec qword [pointer];
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF1907
                      ;
.LB1907:
    mov rax, [pointer];
    inc byte [rax];
    inc qword [pointer];
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB1915
                      ;
.LF1915:
    dec qword [pointer];
    mov rax, [pointer];
    dec byte [rax];
    inc qword [pointer];
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB1919
                      ;
.LF1919:
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF1919
                      ;
.LB1919:
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF1915
                      ;
.LB1915:
    dec qword [pointer];
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB1924
                      ;
.LF1924:
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB1925
                      ;
.LF1925:
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF1925
                      ;
.LB1925:
    add qword [pointer], 16
                          ;
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB1944
                      ;
.LF1944:
    sub qword [pointer], 12
                          ;
    mov rax, [pointer];
    inc byte [rax];
    add qword [pointer], 12
                          ;
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF1944
                      ;
.LB1944:
    sub qword [pointer], 4
                          ;
    mov rax, [pointer];
    inc byte [rax];
    sub qword [pointer], 11
                          ;
    mov rax, [pointer];
    dec byte [rax];
    dec qword [pointer];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF1924
                      ;
.LB1924:
    inc qword [pointer];
    mov rax, [pointer];
    inc byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB1993
                      ;
.LF1993:
    mov rax, [pointer];
    dec byte [rax];
    add qword [pointer], 15
                          ;
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB2010
                      ;
.LF2010:
    sub qword [pointer], 15
                          ;
    mov rax, [pointer];
    inc byte [rax];
    dec qword [pointer];
    mov rax, [pointer];
    inc byte [rax];
    add qword [pointer], 16
                          ;
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF2010
                      ;
.LB2010:
    sub qword [pointer], 15
                          ;
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB2062
                      ;
.LF2062:
    add qword [pointer], 15
                          ;
    mov rax, [pointer];
    inc byte [rax];
    sub qword [pointer], 15
                          ;
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF2062
                      ;
.LB2062:
    mov rax, [pointer];
    add byte [rax], 7
                          ;
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB2103
                      ;
.LF2103:
    dec qword [pointer];
    mov rax, [pointer];
    sub byte [rax], 6
                          ;
    inc qword [pointer];
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF2103
                      ;
.LB2103:
    dec qword [pointer];
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB2115
                      ;
.LF2115:
    inc qword [pointer];
    mov rax, [pointer];
    inc byte [rax];
    dec qword [pointer];
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF2115
                      ;
.LB2115:
    mov rax, [pointer];
    inc byte [rax];
    inc qword [pointer];
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB2123
                      ;
.LF2123:
    dec qword [pointer];
    mov rax, [pointer];
    dec byte [rax];
    inc qword [pointer];
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB2127
                      ;
.LF2127:
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF2127
                      ;
.LB2127:
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF2123
                      ;
.LB2123:
    dec qword [pointer];
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB2132
                      ;
.LF2132:
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB2133
                      ;
.LF2133:
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF2133
                      ;
.LB2133:
    add qword [pointer], 16
                          ;
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB2152
                      ;
.LF2152:
    sub qword [pointer], 12
                          ;
    mov rax, [pointer];
    inc byte [rax];
    add qword [pointer], 12
                          ;
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF2152
                      ;
.LB2152:
    sub qword [pointer], 4
                          ;
    mov rax, [pointer];
    inc byte [rax];
    sub qword [pointer], 11
                          ;
    mov rax, [pointer];
    dec byte [rax];
    dec qword [pointer];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF2132
                      ;
.LB2132:
    inc qword [pointer];
    mov rax, [pointer];
    inc byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB2201
                      ;
.LF2201:
    mov rax, [pointer];
    dec byte [rax];
    add qword [pointer], 15
                          ;
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB2218
                      ;
.LF2218:
    sub qword [pointer], 15
                          ;
    mov rax, [pointer];
    inc byte [rax];
    dec qword [pointer];
    mov rax, [pointer];
    inc byte [rax];
    add qword [pointer], 16
                          ;
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF2218
                      ;
.LB2218:
    sub qword [pointer], 15
                          ;
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB2270
                      ;
.LF2270:
    add qword [pointer], 15
                          ;
    mov rax, [pointer];
    inc byte [rax];
    sub qword [pointer], 15
                          ;
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF2270
                      ;
.LB2270:
    mov rax, [pointer];
    add byte [rax], 6
                          ;
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB2310
                      ;
.LF2310:
    dec qword [pointer];
    mov rax, [pointer];
    sub byte [rax], 8
                          ;
    inc qword [pointer];
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF2310
                      ;
.LB2310:
    mov rax, [pointer];
    inc byte [rax];
    dec qword [pointer];
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB2325
                      ;
.LF2325:
    inc qword [pointer];
    mov rax, [pointer];
    inc byte [rax];
    dec qword [pointer];
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF2325
                      ;
.LB2325:
    mov rax, [pointer];
    inc byte [rax];
    inc qword [pointer];
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB2333
                      ;
.LF2333:
    dec qword [pointer];
    mov rax, [pointer];
    dec byte [rax];
    inc qword [pointer];
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB2337
                      ;
.LF2337:
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF2337
                      ;
.LB2337:
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF2333
                      ;
.LB2333:
    dec qword [pointer];
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB2342
                      ;
.LF2342:
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB2343
                      ;
.LF2343:
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF2343
                      ;
.LB2343:
    add qword [pointer], 16
                          ;
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB2362
                      ;
.LF2362:
    sub qword [pointer], 12
                          ;
    mov rax, [pointer];
    inc byte [rax];
    add qword [pointer], 12
                          ;
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF2362
                      ;
.LB2362:
    sub qword [pointer], 4
                          ;
    mov rax, [pointer];
    inc byte [rax];
    sub qword [pointer], 11
                          ;
    mov rax, [pointer];
    dec byte [rax];
    dec qword [pointer];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF2342
                      ;
.LB2342:
    inc qword [pointer];
    mov rax, [pointer];
    inc byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB2411
                      ;
.LF2411:
    mov rax, [pointer];
    dec byte [rax];
    add qword [pointer], 15
                          ;
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB2428
                      ;
.LF2428:
    sub qword [pointer], 15
                          ;
    mov rax, [pointer];
    inc byte [rax];
    dec qword [pointer];
    mov rax, [pointer];
    inc byte [rax];
    add qword [pointer], 16
                          ;
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF2428
                      ;
.LB2428:
    sub qword [pointer], 15
                          ;
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB2480
                      ;
.LF2480:
    add qword [pointer], 15
                          ;
    mov rax, [pointer];
    inc byte [rax];
    sub qword [pointer], 15
                          ;
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF2480
                      ;
.LB2480:
    mov rax, [pointer];
    add byte [rax], 6
                          ;
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB2520
                      ;
.LF2520:
    dec qword [pointer];
    mov rax, [pointer];
    sub byte [rax], 6
                          ;
    inc qword [pointer];
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF2520
                      ;
.LB2520:
    mov rax, [pointer];
    dec byte [rax];
    dec qword [pointer];
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB2533
                      ;
.LF2533:
    inc qword [pointer];
    mov rax, [pointer];
    inc byte [rax];
    dec qword [pointer];
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF2533
                      ;
.LB2533:
    mov rax, [pointer];
    inc byte [rax];
    inc qword [pointer];
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB2541
                      ;
.LF2541:
    dec qword [pointer];
    mov rax, [pointer];
    dec byte [rax];
    inc qword [pointer];
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB2545
                      ;
.LF2545:
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF2545
                      ;
.LB2545:
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF2541
                      ;
.LB2541:
    dec qword [pointer];
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB2550
                      ;
.LF2550:
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB2551
                      ;
.LF2551:
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF2551
                      ;
.LB2551:
    add qword [pointer], 16
                          ;
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB2570
                      ;
.LF2570:
    sub qword [pointer], 12
                          ;
    mov rax, [pointer];
    inc byte [rax];
    add qword [pointer], 12
                          ;
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF2570
                      ;
.LB2570:
    sub qword [pointer], 4
                          ;
    mov rax, [pointer];
    inc byte [rax];
    sub qword [pointer], 11
                          ;
    mov rax, [pointer];
    dec byte [rax];
    dec qword [pointer];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF2550
                      ;
.LB2550:
    inc qword [pointer];
    mov rax, [pointer];
    inc byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB2619
                      ;
.LF2619:
    mov rax, [pointer];
    dec byte [rax];
    add qword [pointer], 15
                          ;
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB2636
                      ;
.LF2636:
    sub qword [pointer], 15
                          ;
    mov rax, [pointer];
    inc byte [rax];
    dec qword [pointer];
    mov rax, [pointer];
    inc byte [rax];
    add qword [pointer], 16
                          ;
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF2636
                      ;
.LB2636:
    sub qword [pointer], 15
                          ;
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB2688
                      ;
.LF2688:
    add qword [pointer], 15
                          ;
    mov rax, [pointer];
    inc byte [rax];
    sub qword [pointer], 15
                          ;
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF2688
                      ;
.LB2688:
    mov rax, [pointer];
    add byte [rax], 8
                          ;
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB2730
                      ;
.LF2730:
    dec qword [pointer];
    mov rax, [pointer];
    sub byte [rax], 12
                          ;
    inc qword [pointer];
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF2730
                      ;
.LB2730:
    mov rax, [pointer];
    add byte [rax], 2
                          ;
    dec qword [pointer];
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB2750
                      ;
.LF2750:
    inc qword [pointer];
    mov rax, [pointer];
    inc byte [rax];
    dec qword [pointer];
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF2750
                      ;
.LB2750:
    mov rax, [pointer];
    inc byte [rax];
    inc qword [pointer];
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB2758
                      ;
.LF2758:
    dec qword [pointer];
    mov rax, [pointer];
    dec byte [rax];
    inc qword [pointer];
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB2762
                      ;
.LF2762:
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF2762
                      ;
.LB2762:
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF2758
                      ;
.LB2758:
    dec qword [pointer];
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB2767
                      ;
.LF2767:
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB2768
                      ;
.LF2768:
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF2768
                      ;
.LB2768:
    add qword [pointer], 16
                          ;
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB2787
                      ;
.LF2787:
    sub qword [pointer], 12
                          ;
    mov rax, [pointer];
    inc byte [rax];
    add qword [pointer], 12
                          ;
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF2787
                      ;
.LB2787:
    sub qword [pointer], 4
                          ;
    mov rax, [pointer];
    inc byte [rax];
    sub qword [pointer], 11
                          ;
    mov rax, [pointer];
    dec byte [rax];
    dec qword [pointer];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF2767
                      ;
.LB2767:
    inc qword [pointer];
    mov rax, [pointer];
    inc byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB2836
                      ;
.LF2836:
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    add byte [rax], 8
                          ;
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB2846
                      ;
.LF2846:
    mov rax, [pointer];
    dec byte [rax];
    add qword [pointer], 15
                          ;
    mov rax, [pointer];
    sub byte [rax], 6
                          ;
    sub qword [pointer], 15
                          ;
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF2846
                      ;
.LB2846:
    add qword [pointer], 11
                          ;
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB2896
                      ;
.LF2896:
    sub qword [pointer], 11
                          ;
    mov rax, [pointer];
    inc byte [rax];
    dec qword [pointer];
    mov rax, [pointer];
    inc byte [rax];
    add qword [pointer], 12
                          ;
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF2896
                      ;
.LB2896:
    sub qword [pointer], 11
                          ;
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB2936
                      ;
.LF2936:
    add qword [pointer], 11
                          ;
    mov rax, [pointer];
    inc byte [rax];
    sub qword [pointer], 11
                          ;
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF2936
                      ;
.LB2936:
    mov rax, [pointer];
    inc byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB2963
                      ;
.LF2963:
    dec qword [pointer];
    mov rax, [pointer];
    dec byte [rax];
    inc qword [pointer];
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF2963
                      ;
.LB2963:
    mov rax, [pointer];
    inc byte [rax];
    dec qword [pointer];
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB2971
                      ;
.LF2971:
    inc qword [pointer];
    mov rax, [pointer];
    inc byte [rax];
    dec qword [pointer];
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF2971
                      ;
.LB2971:
    mov rax, [pointer];
    inc byte [rax];
    inc qword [pointer];
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB2979
                      ;
.LF2979:
    dec qword [pointer];
    mov rax, [pointer];
    dec byte [rax];
    inc qword [pointer];
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB2983
                      ;
.LF2983:
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF2983
                      ;
.LB2983:
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF2979
                      ;
.LB2979:
    dec qword [pointer];
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB2988
                      ;
.LF2988:
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB2989
                      ;
.LF2989:
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF2989
                      ;
.LB2989:
    add qword [pointer], 2
                          ;
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB2994
                      ;
.LF2994:
    dec qword [pointer];
    mov rax, [pointer];
    inc byte [rax];
    inc qword [pointer];
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF2994
                      ;
.LB2994:
    dec qword [pointer];
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB3001
                      ;
.LF3001:
    inc qword [pointer];
    mov rax, [pointer];
    add byte [rax], 10
                          ;
    dec qword [pointer];
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF3001
                      ;
.LB3001:
    add qword [pointer], 15
                          ;
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB3031
                      ;
.LF3031:
    sub qword [pointer], 14
                          ;
    mov rax, [pointer];
    inc byte [rax];
    add qword [pointer], 14
                          ;
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF3031
                      ;
.LB3031:
    sub qword [pointer], 15
                          ;
    mov rax, [pointer];
    dec byte [rax];
    dec qword [pointer];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF2988
                      ;
.LB2988:
    inc qword [pointer];
    mov rax, [pointer];
    inc byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB3083
                      ;
.LF3083:
    mov rax, [pointer];
    dec byte [rax];
    add qword [pointer], 11
                          ;
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB3096
                      ;
.LF3096:
    sub qword [pointer], 11
                          ;
    mov rax, [pointer];
    inc byte [rax];
    dec qword [pointer];
    mov rax, [pointer];
    inc byte [rax];
    add qword [pointer], 12
                          ;
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF3096
                      ;
.LB3096:
    sub qword [pointer], 11
                          ;
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB3136
                      ;
.LF3136:
    add qword [pointer], 11
                          ;
    mov rax, [pointer];
    inc byte [rax];
    sub qword [pointer], 11
                          ;
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF3136
                      ;
.LB3136:
    mov rax, [pointer];
    inc byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB3163
                      ;
.LF3163:
    dec qword [pointer];
    mov rax, [pointer];
    dec byte [rax];
    inc qword [pointer];
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF3163
                      ;
.LB3163:
    dec qword [pointer];
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB3170
                      ;
.LF3170:
    inc qword [pointer];
    mov rax, [pointer];
    inc byte [rax];
    dec qword [pointer];
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF3170
                      ;
.LB3170:
    mov rax, [pointer];
    inc byte [rax];
    inc qword [pointer];
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB3178
                      ;
.LF3178:
    dec qword [pointer];
    mov rax, [pointer];
    dec byte [rax];
    inc qword [pointer];
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB3182
                      ;
.LF3182:
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF3182
                      ;
.LB3182:
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF3178
                      ;
.LB3178:
    dec qword [pointer];
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB3187
                      ;
.LF3187:
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB3188
                      ;
.LF3188:
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF3188
                      ;
.LB3188:
    add qword [pointer], 3
                          ;
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB3194
                      ;
.LF3194:
    sub qword [pointer], 2
                          ;
    mov rax, [pointer];
    inc byte [rax];
    add qword [pointer], 2
                          ;
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF3194
                      ;
.LB3194:
    sub qword [pointer], 2
                          ;
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB3204
                      ;
.LF3204:
    add qword [pointer], 2
                          ;
    mov rax, [pointer];
    add byte [rax], 10
                          ;
    sub qword [pointer], 2
                          ;
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF3204
                      ;
.LB3204:
    add qword [pointer], 15
                          ;
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB3236
                      ;
.LF3236:
    sub qword [pointer], 13
                          ;
    mov rax, [pointer];
    inc byte [rax];
    add qword [pointer], 13
                          ;
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF3236
                      ;
.LB3236:
    sub qword [pointer], 15
                          ;
    mov rax, [pointer];
    dec byte [rax];
    dec qword [pointer];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF3187
                      ;
.LB3187:
    inc qword [pointer];
    mov rax, [pointer];
    inc byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB3286
                      ;
.LF3286:
    mov rax, [pointer];
    dec byte [rax];
    add qword [pointer], 14
                          ;
    mov rax, [pointer];
    add byte [rax], 10
                          ;
    mov rax, 1;
    mov rdi, 1;
    mov rsi, [pointer];
    mov rdx, 1;
    syscall;
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB3313
                      ;
.LF3313:
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF3313
                      ;
.LB3313:
    sub qword [pointer], 5
                          ;
    mov rax, [pointer];
    inc byte [rax];
    sub qword [pointer], 9
                          ;
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF3286
                      ;
.LB3286:
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF3083
                      ;
.LB3083:
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF2836
                      ;
.LB2836:
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF2619
                      ;
.LB2619:
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF2411
                      ;
.LB2411:
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF2201
                      ;
.LB2201:
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF1993
                      ;
.LB1993:
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF1784
                      ;
.LB1784:
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF1575
                      ;
.LB1575:
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF1405
                      ;
.LB1405:
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF1187
                      ;
.LB1187:
    add qword [pointer], 8
                          ;
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF1047
                      ;
.LB1047:
    sub qword [pointer], 5
                          ;
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB3356
                      ;
.LF3356:
    sub qword [pointer], 3
                          ;
    mov rax, [pointer];
    inc byte [rax];
    dec qword [pointer];
    mov rax, [pointer];
    inc byte [rax];
    add qword [pointer], 4
                          ;
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF3356
                      ;
.LB3356:
    sub qword [pointer], 3
                          ;
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB3372
                      ;
.LF3372:
    add qword [pointer], 3
                          ;
    mov rax, [pointer];
    inc byte [rax];
    sub qword [pointer], 3
                          ;
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF3372
                      ;
.LB3372:
    mov rax, [pointer];
    add byte [rax], 7
                          ;
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB3389
                      ;
.LF3389:
    dec qword [pointer];
    mov rax, [pointer];
    sub byte [rax], 6
                          ;
    inc qword [pointer];
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF3389
                      ;
.LB3389:
    mov rax, [pointer];
    dec byte [rax];
    dec qword [pointer];
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB3402
                      ;
.LF3402:
    inc qword [pointer];
    mov rax, [pointer];
    inc byte [rax];
    dec qword [pointer];
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF3402
                      ;
.LB3402:
    mov rax, [pointer];
    inc byte [rax];
    inc qword [pointer];
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB3410
                      ;
.LF3410:
    dec qword [pointer];
    mov rax, [pointer];
    dec byte [rax];
    inc qword [pointer];
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB3414
                      ;
.LF3414:
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF3414
                      ;
.LB3414:
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF3410
                      ;
.LB3410:
    dec qword [pointer];
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB3419
                      ;
.LF3419:
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB3420
                      ;
.LF3420:
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF3420
                      ;
.LB3420:
    add qword [pointer], 2
                          ;
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB3425
                      ;
.LF3425:
    add qword [pointer], 9
                          ;
    mov rax, [pointer];
    inc byte [rax];
    sub qword [pointer], 9
                          ;
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF3425
                      ;
.LB3425:
    inc qword [pointer];
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB3448
                      ;
.LF3448:
    add qword [pointer], 8
                          ;
    mov rax, [pointer];
    inc byte [rax];
    sub qword [pointer], 8
                          ;
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF3448
                      ;
.LB3448:
    sub qword [pointer], 3
                          ;
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF3419
                      ;
.LB3419:
    add qword [pointer], 4
                          ;
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB3476
                      ;
.LF3476:
    sub qword [pointer], 3
                          ;
    mov rax, [pointer];
    inc byte [rax];
    dec qword [pointer];
    mov rax, [pointer];
    inc byte [rax];
    add qword [pointer], 4
                          ;
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF3476
                      ;
.LB3476:
    sub qword [pointer], 3
                          ;
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB3492
                      ;
.LF3492:
    add qword [pointer], 3
                          ;
    mov rax, [pointer];
    inc byte [rax];
    sub qword [pointer], 3
                          ;
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF3492
                      ;
.LB3492:
    mov rax, [pointer];
    add byte [rax], 7
                          ;
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB3509
                      ;
.LF3509:
    dec qword [pointer];
    mov rax, [pointer];
    sub byte [rax], 6
                          ;
    inc qword [pointer];
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF3509
                      ;
.LB3509:
    dec qword [pointer];
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB3521
                      ;
.LF3521:
    inc qword [pointer];
    mov rax, [pointer];
    inc byte [rax];
    dec qword [pointer];
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF3521
                      ;
.LB3521:
    mov rax, [pointer];
    inc byte [rax];
    inc qword [pointer];
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB3529
                      ;
.LF3529:
    dec qword [pointer];
    mov rax, [pointer];
    dec byte [rax];
    inc qword [pointer];
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB3533
                      ;
.LF3533:
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF3533
                      ;
.LB3533:
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF3529
                      ;
.LB3529:
    dec qword [pointer];
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB3538
                      ;
.LF3538:
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB3539
                      ;
.LF3539:
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF3539
                      ;
.LB3539:
    add qword [pointer], 2
                          ;
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB3544
                      ;
.LF3544:
    mov rax, [pointer];
    dec byte [rax];
    inc qword [pointer];
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB3547
                      ;
.LF3547:
    sub qword [pointer], 2
                          ;
    mov rax, [pointer];
    inc byte [rax];
    add qword [pointer], 10
                          ;
    mov rax, [pointer];
    inc byte [rax];
    sub qword [pointer], 8
                          ;
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF3547
                      ;
.LB3547:
    sub qword [pointer], 2
                          ;
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB3574
                      ;
.LF3574:
    add qword [pointer], 2
                          ;
    mov rax, [pointer];
    inc byte [rax];
    sub qword [pointer], 2
                          ;
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF3574
                      ;
.LB3574:
    inc qword [pointer];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF3544
                      ;
.LB3544:
    sub qword [pointer], 2
                          ;
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF3538
                      ;
.LB3538:
    add qword [pointer], 4
                          ;
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB3591
                      ;
.LF3591:
    sub qword [pointer], 3
                          ;
    mov rax, [pointer];
    inc byte [rax];
    dec qword [pointer];
    mov rax, [pointer];
    inc byte [rax];
    add qword [pointer], 4
                          ;
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF3591
                      ;
.LB3591:
    sub qword [pointer], 3
                          ;
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB3607
                      ;
.LF3607:
    add qword [pointer], 3
                          ;
    mov rax, [pointer];
    inc byte [rax];
    sub qword [pointer], 3
                          ;
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF3607
                      ;
.LB3607:
    mov rax, [pointer];
    add byte [rax], 9
                          ;
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB3626
                      ;
.LF3626:
    dec qword [pointer];
    mov rax, [pointer];
    sub byte [rax], 5
                          ;
    inc qword [pointer];
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF3626
                      ;
.LB3626:
    dec qword [pointer];
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB3637
                      ;
.LF3637:
    inc qword [pointer];
    mov rax, [pointer];
    inc byte [rax];
    dec qword [pointer];
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF3637
                      ;
.LB3637:
    mov rax, [pointer];
    inc byte [rax];
    inc qword [pointer];
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB3645
                      ;
.LF3645:
    dec qword [pointer];
    mov rax, [pointer];
    dec byte [rax];
    inc qword [pointer];
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB3649
                      ;
.LF3649:
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF3649
                      ;
.LB3649:
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF3645
                      ;
.LB3645:
    dec qword [pointer];
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB3654
                      ;
.LF3654:
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB3655
                      ;
.LF3655:
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF3655
                      ;
.LB3655:
    add qword [pointer], 2
                          ;
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB3660
                      ;
.LF3660:
    add qword [pointer], 9
                          ;
    mov rax, [pointer];
    inc byte [rax];
    sub qword [pointer], 9
                          ;
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF3660
                      ;
.LB3660:
    inc qword [pointer];
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB3683
                      ;
.LF3683:
    mov rax, [pointer];
    dec byte [rax];
    add qword [pointer], 8
                          ;
    mov rax, [pointer];
    dec byte [rax];
    sub qword [pointer], 8
                          ;
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF3683
                      ;
.LB3683:
    sub qword [pointer], 3
                          ;
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF3654
                      ;
.LB3654:
    add qword [pointer], 4
                          ;
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB3711
                      ;
.LF3711:
    sub qword [pointer], 3
                          ;
    mov rax, [pointer];
    inc byte [rax];
    dec qword [pointer];
    mov rax, [pointer];
    inc byte [rax];
    add qword [pointer], 4
                          ;
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF3711
                      ;
.LB3711:
    sub qword [pointer], 3
                          ;
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB3727
                      ;
.LF3727:
    add qword [pointer], 3
                          ;
    mov rax, [pointer];
    inc byte [rax];
    sub qword [pointer], 3
                          ;
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF3727
                      ;
.LB3727:
    mov rax, [pointer];
    add byte [rax], 6
                          ;
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB3743
                      ;
.LF3743:
    dec qword [pointer];
    mov rax, [pointer];
    sub byte [rax], 8
                          ;
    inc qword [pointer];
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF3743
                      ;
.LB3743:
    mov rax, [pointer];
    inc byte [rax];
    dec qword [pointer];
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB3758
                      ;
.LF3758:
    inc qword [pointer];
    mov rax, [pointer];
    inc byte [rax];
    dec qword [pointer];
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF3758
                      ;
.LB3758:
    mov rax, [pointer];
    inc byte [rax];
    inc qword [pointer];
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB3766
                      ;
.LF3766:
    dec qword [pointer];
    mov rax, [pointer];
    dec byte [rax];
    inc qword [pointer];
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB3770
                      ;
.LF3770:
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF3770
                      ;
.LB3770:
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF3766
                      ;
.LB3766:
    dec qword [pointer];
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB3775
                      ;
.LF3775:
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB3776
                      ;
.LF3776:
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF3776
                      ;
.LB3776:
    add qword [pointer], 3
                          ;
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB3782
                      ;
.LF3782:
    sub qword [pointer], 2
                          ;
    mov rax, [pointer];
    inc byte [rax];
    add qword [pointer], 8
                          ;
    mov rax, [pointer];
    inc byte [rax];
    sub qword [pointer], 6
                          ;
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF3782
                      ;
.LB3782:
    sub qword [pointer], 2
                          ;
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB3805
                      ;
.LF3805:
    add qword [pointer], 2
                          ;
    mov rax, [pointer];
    inc byte [rax];
    sub qword [pointer], 2
                          ;
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF3805
                      ;
.LB3805:
    inc qword [pointer];
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB3814
                      ;
.LF3814:
    mov rax, [pointer];
    dec byte [rax];
    add qword [pointer], 7
                          ;
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB3824
                      ;
.LF3824:
    sub qword [pointer], 8
                          ;
    mov rax, [pointer];
    inc byte [rax];
    dec qword [pointer];
    mov rax, [pointer];
    inc byte [rax];
    add qword [pointer], 9
                          ;
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF3824
                      ;
.LB3824:
    sub qword [pointer], 8
                          ;
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB3855
                      ;
.LF3855:
    add qword [pointer], 8
                          ;
    mov rax, [pointer];
    inc byte [rax];
    sub qword [pointer], 8
                          ;
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF3855
                      ;
.LB3855:
    dec qword [pointer];
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB3876
                      ;
.LF3876:
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB3877
                      ;
.LF3877:
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF3877
                      ;
.LB3877:
    inc qword [pointer];
    mov rax, [pointer];
    dec byte [rax];
    dec qword [pointer];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF3876
                      ;
.LB3876:
    inc qword [pointer];
    mov rax, [pointer];
    inc byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB3886
                      ;
.LF3886:
    mov rax, [pointer];
    dec byte [rax];
    dec qword [pointer];
    mov rax, [pointer];
    inc byte [rax];
    inc qword [pointer];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF3886
                      ;
.LB3886:
    dec qword [pointer];
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB3893
                      ;
.LF3893:
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB3894
                      ;
.LF3894:
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF3894
                      ;
.LB3894:
    add qword [pointer], 3
                          ;
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB3900
                      ;
.LF3900:
    sub qword [pointer], 2
                          ;
    mov rax, [pointer];
    inc byte [rax];
    add qword [pointer], 8
                          ;
    mov rax, [pointer];
    inc byte [rax];
    sub qword [pointer], 6
                          ;
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF3900
                      ;
.LB3900:
    sub qword [pointer], 2
                          ;
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB3923
                      ;
.LF3923:
    add qword [pointer], 2
                          ;
    mov rax, [pointer];
    inc byte [rax];
    sub qword [pointer], 2
                          ;
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF3923
                      ;
.LB3923:
    add qword [pointer], 10
                          ;
    mov rax, [pointer];
    inc byte [rax];
    sub qword [pointer], 11
                          ;
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF3893
                      ;
.LB3893:
    add qword [pointer], 2
                          ;
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF3814
                      ;
.LB3814:
    sub qword [pointer], 2
                          ;
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF3775
                      ;
.LB3775:
    add qword [pointer], 4
                          ;
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB3964
                      ;
.LF3964:
    sub qword [pointer], 3
                          ;
    mov rax, [pointer];
    inc byte [rax];
    dec qword [pointer];
    mov rax, [pointer];
    inc byte [rax];
    add qword [pointer], 4
                          ;
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF3964
                      ;
.LB3964:
    sub qword [pointer], 3
                          ;
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB3980
                      ;
.LF3980:
    add qword [pointer], 3
                          ;
    mov rax, [pointer];
    inc byte [rax];
    sub qword [pointer], 3
                          ;
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF3980
                      ;
.LB3980:
    mov rax, [pointer];
    add byte [rax], 6
                          ;
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB3996
                      ;
.LF3996:
    dec qword [pointer];
    mov rax, [pointer];
    sub byte [rax], 6
                          ;
    inc qword [pointer];
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF3996
                      ;
.LB3996:
    mov rax, [pointer];
    dec byte [rax];
    dec qword [pointer];
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB4009
                      ;
.LF4009:
    inc qword [pointer];
    mov rax, [pointer];
    inc byte [rax];
    dec qword [pointer];
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF4009
                      ;
.LB4009:
    mov rax, [pointer];
    inc byte [rax];
    inc qword [pointer];
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB4017
                      ;
.LF4017:
    dec qword [pointer];
    mov rax, [pointer];
    dec byte [rax];
    inc qword [pointer];
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB4021
                      ;
.LF4021:
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF4021
                      ;
.LB4021:
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF4017
                      ;
.LB4017:
    dec qword [pointer];
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB4026
                      ;
.LF4026:
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB4027
                      ;
.LF4027:
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF4027
                      ;
.LB4027:
    add qword [pointer], 3
                          ;
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB4033
                      ;
.LF4033:
    sub qword [pointer], 2
                          ;
    mov rax, [pointer];
    inc byte [rax];
    add qword [pointer], 8
                          ;
    mov rax, [pointer];
    inc byte [rax];
    sub qword [pointer], 6
                          ;
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF4033
                      ;
.LB4033:
    sub qword [pointer], 2
                          ;
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB4056
                      ;
.LF4056:
    add qword [pointer], 2
                          ;
    mov rax, [pointer];
    inc byte [rax];
    sub qword [pointer], 2
                          ;
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF4056
                      ;
.LB4056:
    inc qword [pointer];
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB4065
                      ;
.LF4065:
    mov rax, [pointer];
    dec byte [rax];
    add qword [pointer], 7
                          ;
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB4075
                      ;
.LF4075:
    sub qword [pointer], 8
                          ;
    mov rax, [pointer];
    inc byte [rax];
    dec qword [pointer];
    mov rax, [pointer];
    inc byte [rax];
    add qword [pointer], 9
                          ;
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF4075
                      ;
.LB4075:
    sub qword [pointer], 8
                          ;
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB4106
                      ;
.LF4106:
    add qword [pointer], 8
                          ;
    mov rax, [pointer];
    inc byte [rax];
    sub qword [pointer], 8
                          ;
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF4106
                      ;
.LB4106:
    dec qword [pointer];
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB4127
                      ;
.LF4127:
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB4128
                      ;
.LF4128:
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF4128
                      ;
.LB4128:
    inc qword [pointer];
    mov rax, [pointer];
    dec byte [rax];
    dec qword [pointer];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF4127
                      ;
.LB4127:
    inc qword [pointer];
    mov rax, [pointer];
    inc byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB4137
                      ;
.LF4137:
    mov rax, [pointer];
    dec byte [rax];
    dec qword [pointer];
    mov rax, [pointer];
    inc byte [rax];
    inc qword [pointer];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF4137
                      ;
.LB4137:
    dec qword [pointer];
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB4144
                      ;
.LF4144:
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB4145
                      ;
.LF4145:
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF4145
                      ;
.LB4145:
    add qword [pointer], 3
                          ;
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB4151
                      ;
.LF4151:
    sub qword [pointer], 2
                          ;
    mov rax, [pointer];
    inc byte [rax];
    add qword [pointer], 8
                          ;
    mov rax, [pointer];
    inc byte [rax];
    sub qword [pointer], 6
                          ;
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF4151
                      ;
.LB4151:
    sub qword [pointer], 2
                          ;
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB4174
                      ;
.LF4174:
    add qword [pointer], 2
                          ;
    mov rax, [pointer];
    inc byte [rax];
    sub qword [pointer], 2
                          ;
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF4174
                      ;
.LB4174:
    dec qword [pointer];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF4144
                      ;
.LB4144:
    add qword [pointer], 2
                          ;
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF4065
                      ;
.LB4065:
    inc qword [pointer];
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB4188
                      ;
.LF4188:
    add qword [pointer], 8
                          ;
    mov rax, [pointer];
    inc byte [rax];
    sub qword [pointer], 8
                          ;
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF4188
                      ;
.LB4188:
    add qword [pointer], 6
                          ;
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB4214
                      ;
.LF4214:
    add qword [pointer], 2
                          ;
    mov rax, [pointer];
    dec byte [rax];
    sub qword [pointer], 2
                          ;
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF4214
                      ;
.LB4214:
    sub qword [pointer], 9
                          ;
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF4026
                      ;
.LB4026:
    add qword [pointer], 4
                          ;
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB4236
                      ;
.LF4236:
    sub qword [pointer], 3
                          ;
    mov rax, [pointer];
    inc byte [rax];
    dec qword [pointer];
    mov rax, [pointer];
    inc byte [rax];
    add qword [pointer], 4
                          ;
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF4236
                      ;
.LB4236:
    sub qword [pointer], 3
                          ;
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB4252
                      ;
.LF4252:
    add qword [pointer], 3
                          ;
    mov rax, [pointer];
    inc byte [rax];
    sub qword [pointer], 3
                          ;
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF4252
                      ;
.LB4252:
    mov rax, [pointer];
    add byte [rax], 8
                          ;
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB4270
                      ;
.LF4270:
    dec qword [pointer];
    mov rax, [pointer];
    sub byte [rax], 12
                          ;
    inc qword [pointer];
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF4270
                      ;
.LB4270:
    mov rax, [pointer];
    add byte [rax], 2
                          ;
    dec qword [pointer];
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB4290
                      ;
.LF4290:
    inc qword [pointer];
    mov rax, [pointer];
    inc byte [rax];
    dec qword [pointer];
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF4290
                      ;
.LB4290:
    mov rax, [pointer];
    inc byte [rax];
    inc qword [pointer];
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB4298
                      ;
.LF4298:
    dec qword [pointer];
    mov rax, [pointer];
    dec byte [rax];
    inc qword [pointer];
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB4302
                      ;
.LF4302:
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF4302
                      ;
.LB4302:
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF4298
                      ;
.LB4298:
    dec qword [pointer];
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB4307
                      ;
.LF4307:
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB4308
                      ;
.LF4308:
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF4308
                      ;
.LB4308:
    add qword [pointer], 11
                          ;
    mov rax, [pointer];
    inc byte [rax];
    sub qword [pointer], 8
                          ;
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB4331
                      ;
.LF4331:
    add qword [pointer], 8
                          ;
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB4340
                      ;
.LF4340:
    sub qword [pointer], 9
                          ;
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB4350
                      ;
.LF4350:
    dec qword [pointer];
    mov rax, [pointer];
    inc byte [rax];
    dec qword [pointer];
    mov rax, [pointer];
    inc byte [rax];
    add qword [pointer], 2
                          ;
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF4350
                      ;
.LB4350:
    dec qword [pointer];
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB4360
                      ;
.LF4360:
    inc qword [pointer];
    mov rax, [pointer];
    inc byte [rax];
    dec qword [pointer];
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF4360
                      ;
.LB4360:
    add qword [pointer], 10
                          ;
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF4340
                      ;
.LB4340:
    sub qword [pointer], 11
                          ;
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB4389
                      ;
.LF4389:
    add qword [pointer], 11
                          ;
    mov rax, [pointer];
    inc byte [rax];
    sub qword [pointer], 11
                          ;
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF4389
                      ;
.LB4389:
    add qword [pointer], 3
                          ;
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF4331
                      ;
.LB4331:
    sub qword [pointer], 3
                          ;
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF4307
                      ;
.LB4307:
    add qword [pointer], 10
                          ;
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB4434
                      ;
.LF4434:
    sub qword [pointer], 9
                          ;
    mov rax, [pointer];
    inc byte [rax];
    dec qword [pointer];
    mov rax, [pointer];
    inc byte [rax];
    add qword [pointer], 10
                          ;
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF4434
                      ;
.LB4434:
    sub qword [pointer], 9
                          ;
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB4468
                      ;
.LF4468:
    add qword [pointer], 9
                          ;
    mov rax, [pointer];
    inc byte [rax];
    sub qword [pointer], 9
                          ;
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF4468
                      ;
.LB4468:
    dec qword [pointer];
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB4491
                      ;
.LF4491:
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB4492
                      ;
.LF4492:
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF4492
                      ;
.LB4492:
    add qword [pointer], 13
                          ;
    mov rax, 1;
    mov rdi, 1;
    mov rsi, [pointer];
    mov rdx, 1;
    syscall;
    sub qword [pointer], 7
                          ;
    mov rax, [pointer];
    add byte [rax], 10
                          ;
    add qword [pointer], 5
                          ;
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB4531
                      ;
.LF4531:
    sub qword [pointer], 10
                          ;
    mov rax, [pointer];
    inc byte [rax];
    add qword [pointer], 16
                          ;
    mov rax, [pointer];
    inc byte [rax];
    sub qword [pointer], 6
                          ;
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF4531
                      ;
.LB4531:
    sub qword [pointer], 10
                          ;
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB4578
                      ;
.LF4578:
    add qword [pointer], 10
                          ;
    mov rax, [pointer];
    inc byte [rax];
    sub qword [pointer], 10
                          ;
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF4578
                      ;
.LB4578:
    add qword [pointer], 16
                          ;
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB4618
                      ;
.LF4618:
    mov rax, [pointer];
    dec byte [rax];
    sub qword [pointer], 11
                          ;
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB4632
                      ;
.LF4632:
    sub qword [pointer], 5
                          ;
    mov rax, [pointer];
    inc byte [rax];
    dec qword [pointer];
    mov rax, [pointer];
    inc byte [rax];
    add qword [pointer], 6
                          ;
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF4632
                      ;
.LB4632:
    sub qword [pointer], 5
                          ;
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB4654
                      ;
.LF4654:
    add qword [pointer], 5
                          ;
    mov rax, [pointer];
    inc byte [rax];
    sub qword [pointer], 5
                          ;
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF4654
                      ;
.LB4654:
    dec qword [pointer];
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB4669
                      ;
.LF4669:
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB4670
                      ;
.LF4670:
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF4670
                      ;
.LB4670:
    inc qword [pointer];
    mov rax, [pointer];
    dec byte [rax];
    dec qword [pointer];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF4669
                      ;
.LB4669:
    inc qword [pointer];
    mov rax, [pointer];
    inc byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB4679
                      ;
.LF4679:
    mov rax, [pointer];
    dec byte [rax];
    add qword [pointer], 6
                          ;
    mov rax, [pointer];
    inc byte [rax];
    dec qword [pointer];
    mov rax, [pointer];
    add byte [rax], 10
                          ;
    sub qword [pointer], 5
                          ;
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF4679
                      ;
.LB4679:
    add qword [pointer], 16
                          ;
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF4618
                      ;
.LB4618:
    sub qword [pointer], 16
                          ;
    mov rax, [pointer];
    add byte [rax], 10
                          ;
    add qword [pointer], 5
                          ;
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB4753
                      ;
.LF4753:
    mov rax, [pointer];
    dec byte [rax];
    sub qword [pointer], 5
                          ;
    mov rax, [pointer];
    dec byte [rax];
    add qword [pointer], 5
                          ;
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF4753
                      ;
.LB4753:
    sub qword [pointer], 5
                          ;
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB4772
                      ;
.LF4772:
    mov rax, [pointer];
    dec byte [rax];
    add qword [pointer], 5
                          ;
    mov rax, [pointer];
    inc byte [rax];
    sub qword [pointer], 5
                          ;
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF4772
                      ;
.LB4772:
    add qword [pointer], 6
                          ;
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB4792
                      ;
.LF4792:
    mov rax, [pointer];
    dec byte [rax];
    add qword [pointer], 10
                          ;
    mov rax, [pointer];
    inc byte [rax];
    sub qword [pointer], 10
                          ;
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF4792
                      ;
.LB4792:
    mov rax, [pointer];
    add byte [rax], 10
                          ;
    add qword [pointer], 10
                          ;
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB4836
                      ;
.LF4836:
    mov rax, [pointer];
    dec byte [rax];
    sub qword [pointer], 10
                          ;
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB4849
                      ;
.LF4849:
    sub qword [pointer], 6
                          ;
    mov rax, [pointer];
    inc byte [rax];
    dec qword [pointer];
    mov rax, [pointer];
    inc byte [rax];
    add qword [pointer], 7
                          ;
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF4849
                      ;
.LB4849:
    sub qword [pointer], 6
                          ;
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB4874
                      ;
.LF4874:
    add qword [pointer], 6
                          ;
    mov rax, [pointer];
    inc byte [rax];
    sub qword [pointer], 6
                          ;
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF4874
                      ;
.LB4874:
    dec qword [pointer];
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB4891
                      ;
.LF4891:
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB4892
                      ;
.LF4892:
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF4892
                      ;
.LB4892:
    inc qword [pointer];
    mov rax, [pointer];
    dec byte [rax];
    dec qword [pointer];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF4891
                      ;
.LB4891:
    inc qword [pointer];
    mov rax, [pointer];
    inc byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB4901
                      ;
.LF4901:
    mov rax, [pointer];
    dec byte [rax];
    add qword [pointer], 7
                          ;
    mov rax, [pointer];
    inc byte [rax];
    dec qword [pointer];
    mov rax, [pointer];
    add byte [rax], 10
                          ;
    sub qword [pointer], 6
                          ;
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF4901
                      ;
.LB4901:
    add qword [pointer], 16
                          ;
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF4836
                      ;
.LB4836:
    sub qword [pointer], 16
                          ;
    mov rax, [pointer];
    add byte [rax], 10
                          ;
    add qword [pointer], 6
                          ;
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB4978
                      ;
.LF4978:
    mov rax, [pointer];
    dec byte [rax];
    sub qword [pointer], 6
                          ;
    mov rax, [pointer];
    dec byte [rax];
    add qword [pointer], 6
                          ;
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF4978
                      ;
.LB4978:
    sub qword [pointer], 6
                          ;
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB5000
                      ;
.LF5000:
    mov rax, [pointer];
    dec byte [rax];
    add qword [pointer], 6
                          ;
    mov rax, [pointer];
    inc byte [rax];
    sub qword [pointer], 6
                          ;
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF5000
                      ;
.LB5000:
    add qword [pointer], 6
                          ;
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB5022
                      ;
.LF5022:
    sub qword [pointer], 6
                          ;
    mov rax, [pointer];
    inc byte [rax];
    add qword [pointer], 4
                          ;
    mov rax, [pointer];
    inc byte [rax];
    add qword [pointer], 2
                          ;
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF5022
                      ;
.LB5022:
    sub qword [pointer], 6
                          ;
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB5045
                      ;
.LF5045:
    add qword [pointer], 6
                          ;
    mov rax, [pointer];
    inc byte [rax];
    sub qword [pointer], 6
                          ;
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF5045
                      ;
.LB5045:
    add qword [pointer], 7
                          ;
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB5068
                      ;
.LF5068:
    sub qword [pointer], 7
                          ;
    mov rax, [pointer];
    inc byte [rax];
    add qword [pointer], 4
                          ;
    mov rax, [pointer];
    inc byte [rax];
    add qword [pointer], 3
                          ;
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF5068
                      ;
.LB5068:
    sub qword [pointer], 7
                          ;
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB5094
                      ;
.LF5094:
    add qword [pointer], 7
                          ;
    mov rax, [pointer];
    inc byte [rax];
    sub qword [pointer], 7
                          ;
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF5094
                      ;
.LB5094:
    add qword [pointer], 7
                          ;
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB5119
                      ;
.LF5119:
    sub qword [pointer], 7
                          ;
    mov rax, [pointer];
    inc byte [rax];
    dec qword [pointer];
    mov rax, [pointer];
    inc byte [rax];
    add qword [pointer], 8
                          ;
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF5119
                      ;
.LB5119:
    sub qword [pointer], 7
                          ;
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB5147
                      ;
.LF5147:
    add qword [pointer], 7
                          ;
    mov rax, [pointer];
    inc byte [rax];
    sub qword [pointer], 7
                          ;
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF5147
                      ;
.LB5147:
    dec qword [pointer];
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB5166
                      ;
.LF5166:
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB5167
                      ;
.LF5167:
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF5167
                      ;
.LB5167:
    inc qword [pointer];
    mov rax, [pointer];
    add byte [rax], 8
                          ;
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB5179
                      ;
.LF5179:
    mov rax, [pointer];
    dec byte [rax];
    add qword [pointer], 7
                          ;
    mov rax, [pointer];
    add byte [rax], 6
                          ;
    sub qword [pointer], 7
                          ;
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF5179
                      ;
.LB5179:
    add qword [pointer], 7
                          ;
    mov rax, 1;
    mov rdi, 1;
    mov rsi, [pointer];
    mov rdx, 1;
    syscall;
    sub qword [pointer], 8
                          ;
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF5166
                      ;
.LB5166:
    add qword [pointer], 5
                          ;
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB5224
                      ;
.LF5224:
    sub qword [pointer], 4
                          ;
    mov rax, [pointer];
    inc byte [rax];
    dec qword [pointer];
    mov rax, [pointer];
    inc byte [rax];
    add qword [pointer], 5
                          ;
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF5224
                      ;
.LB5224:
    sub qword [pointer], 4
                          ;
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB5243
                      ;
.LF5243:
    add qword [pointer], 4
                          ;
    mov rax, [pointer];
    inc byte [rax];
    sub qword [pointer], 4
                          ;
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF5243
                      ;
.LB5243:
    dec qword [pointer];
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB5256
                      ;
.LF5256:
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB5257
                      ;
.LF5257:
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF5257
                      ;
.LB5257:
    inc qword [pointer];
    mov rax, [pointer];
    add byte [rax], 8
                          ;
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB5269
                      ;
.LF5269:
    mov rax, [pointer];
    dec byte [rax];
    add qword [pointer], 6
                          ;
    mov rax, [pointer];
    add byte [rax], 6
                          ;
    sub qword [pointer], 6
                          ;
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF5269
                      ;
.LB5269:
    add qword [pointer], 6
                          ;
    mov rax, 1;
    mov rdi, 1;
    mov rsi, [pointer];
    mov rdx, 1;
    syscall;
    sub qword [pointer], 7
                          ;
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF5256
                      ;
.LB5256:
    inc qword [pointer];
    mov rax, [pointer];
    add byte [rax], 8
                          ;
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB5314
                      ;
.LF5314:
    mov rax, [pointer];
    dec byte [rax];
    add qword [pointer], 5
                          ;
    mov rax, [pointer];
    add byte [rax], 6
                          ;
    sub qword [pointer], 5
                          ;
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF5314
                      ;
.LB5314:
    add qword [pointer], 5
                          ;
    mov rax, 1;
    mov rdi, 1;
    mov rsi, [pointer];
    mov rdx, 1;
    syscall;
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB5339
                      ;
.LF5339:
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF5339
                      ;
.LB5339:
    inc qword [pointer];
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB5343
                      ;
.LF5343:
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF5343
                      ;
.LB5343:
    inc qword [pointer];
    mov rax, [pointer];
    cmp byte [rax], 0;
    je .LB5347
                      ;
.LF5347:
    mov rax, [pointer];
    dec byte [rax];
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF5347
                      ;
.LB5347:
    sub qword [pointer], 8
                          ;
    mov rax, [pointer];
    cmp byte [rax], 0;
    jne .LF4491
                      ;
.LB4491:

    mov rax, 12;
    mov rdi, tape;
    syscall;

    mov rax, 60;
    xor rdi, rdi;
    syscall;

section .data
tape: dq 0;
pointer: dq 0;
