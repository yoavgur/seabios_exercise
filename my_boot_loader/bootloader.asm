bits 16                        ; 16 bit since we're in real mode
org 0x7c00			           ; Lets the assembler know that we'll be loaded at 0x7c00

boot:
	mov si,msg
	mov ah,0x0e                ; When calling BIOS interrupt, 0x0e corresponds to writing a char to TTY

.loop:
	lodsb                      ; Load a byte from datasection:si into al and increment si
	or al,al                   ; Check if reached end of string
	jz halt                    ; Finish program if reached end
	int 0x10                   ; Call BIOS interrupt
	jmp .loop                  ; Handle next character

halt:
	hlt                        ; halt execution

msg     db  'Hello world!',0
times 510 - ($-$$) db 0        ; Pad until bootloader magic
dw 0xaa55                      ; Write bootloader magic