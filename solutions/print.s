.section .data
msg:    .ascii "Hallo von GAS!\n"   #Meine Nachricht
len = . - msg                    #Länge der Nachricht

.section .text
.global _start
_start:
    movl $4, %eax        # Schreiben-Aufruf
    movl $1, %ebx        # Auf Bildschirm ausgeben
    movl $msg, %ecx      # Zeige auf Nachricht
    movl $len, %edx      # Länge der Nachricht
    int $0x80            # Systemaufruf ausführen

    movl $1, %eax        # sys_exit - Programm beenden
    movl $0, %ebx        # Status 0 (erfolgreich) - Kein Fehler
    int $0x80            # Systemaufruf ausführen - Beende
