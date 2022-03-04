This TM implementation is useful in executing programs written in a simplified assembly-like language.

There are just four instructions: L, Mx, My, and A operating on three registers x, y, and z each holding a nonnegative integer.

    i. 'L' instructions load a certain constant number represented in binary into register z. For example, the instruction L00000101 loads the integer 5 into register z. The number of bits may be arbitrary, but it may be assumed that it is the same for all load instructions in the program.

    ii. 'Mx' and 'My' instructions copy the value from z into x or y, respectively.

    iii. 'A' instructions add the values in registers x and y and store the result in register  z. The result is taken as mod 2^k, where k is the number of bits specified in the first load 'L' instruction. For example, adding 11111111 (255) to 00000001 (1) results in 00000000 (0).

The input will be a '^' followed by a list of instructions, each followed by a ':', such as
^L00000110:Mx:L00000111:My:A:Mx:L00001001:My:A:

    The above assembly program does the following:

        i. load the value 6 into z and move it into x.

        ii. load the value 7 into z and then move it to y.

        iii. add x and y and store the result (13) in z.

        iv. move the value in z (13) into x.

        v. load the value 9 into z and move it into y.

        vi. add x and y and store the result (22) in z.

HOW TO RUN:

    i. Go to an automata simulator (https://web.cs.ucdavis.edu/~doty/automata/).

    ii. Click on the 'TM' option and upload the file 'TM_assembly.tm'

    iii. Type a program input in the provided text box and then click on 'simulate' option.
