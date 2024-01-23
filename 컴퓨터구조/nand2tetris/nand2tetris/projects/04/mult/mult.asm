// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.



@R2
M=0  //초기화

(LOOP)

@R0
D=M
@END
D;JEQ    // R0 = 0이면 (END)로 점프해서 LOOP 종료되게.

@R2
D=M

@R1
D=D+M      //R1이 계속 더해지니까 R1배 곱해주는. R2+=R1.  R1 * n(loop도는 횟수. 즉, 초기 R0값)


// 마지막값을 결과값으로 저장 (R2에 저장)
@R2
M=D          //R2= R0 * R1

// R0=R0-1
@R0
M=M-1  //R0을 1씩 뻄. (그러다 R0=0이되면 LOOP이 종료됨.)



@LOOP
0;JMP

(END)
@END
0;JMP
