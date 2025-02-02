# Integer Overflow in Assembly Memory Access

This repository demonstrates a common error in assembly programming: integer overflow during memory address calculation.  The `bug.asm` file contains the erroneous code, while `bugSolution.asm` provides a corrected version.  The overflow occurs when the value of `ecx` is sufficiently large to cause an arithmetic overflow when multiplied by 4 and added to `ebx`.  The resulting invalid memory address leads to unpredictable program behavior.

The solution involves checking the value of `ecx` before performing the calculation to ensure it does not cause an overflow.  This can be done through range checks or using larger integer types if available within the assembly language being used.