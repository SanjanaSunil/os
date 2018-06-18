; NASM
 
loop:                     ; Define a 'loop' label 
       jmp loop              

times 510-($-$$) db 0     ; Continue filling with zeroes (db 0) until the 510th byte
			  ; $ refers to current address of statement 
			  ; $$ refers to address of start of section
		          ; ($-$$) is the current position of section
			  ; 510-($-$$) fills with 510 minus size of previous code
			  ; db 0 is define byte 0
	                  ; times repeats the instruction  

dw 0xaa55                 ; Remaining 2 bytes is 0xaa55 indicating it is a boot sector to BIOS
