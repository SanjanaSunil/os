loop:                     ; Define a 'loop' label 
       jmp loop              

times 510-($-$$) db 0     ; Continue filling with zeroes (db 0) until the 510th byte   

dw 0xaa55                 ; Remaining 2 bytes is 0xaa55 indicating it is a boot sector to BIOS
