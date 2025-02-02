mov ecx, [some_ecx_value]
;Check for overflow.  Implementation is architecture and assembler-specific
;Example assuming 32-bit registers, using a compare and conditional jump.
cmp ecx, 0x7FFFFFFF ; Maximum value for ecx if ebx is 0
jge overflow_handler 

mov eax, [ebx+ecx*4]
jmp continue_execution

overflow_handler:
; Handle overflow appropriately (e.g., log an error, return an error code)
mov eax, -1 ; Indicate error
continue_execution:
; ...rest of the program