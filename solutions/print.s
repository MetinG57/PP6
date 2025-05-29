.section .data
msg:    .ascii "Hallo von GAS!\n"
len = . - msg

.section .text
.global _start
_start:
    movl $4, %eax        # sys_write
    movl $1, %ebx        # stdout (File Descriptor 1)
    movl $msg, %ecx      # Adresse der Nachricht
    movl $len, %edx      # Länge der Nachricht
    int $0x80            # Systemaufruf ausführen

    movl $1, %eax        # sys_exit
    movl $0, %ebx        # Status 0 (erfolgreich)
    int $0x80            # Systemaufruf ausführen
