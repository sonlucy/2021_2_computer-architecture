// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.



@R2
M=0  //�ʱ�ȭ

(LOOP)

@R0
D=M
@END
D;JEQ    // R0 = 0�̸� (END)�� �����ؼ� LOOP ����ǰ�.

@R2
D=M

@R1
D=D+M      //R1�� ��� �������ϱ� R1�� �����ִ�. R2+=R1.  R1 * n(loop���� Ƚ��. ��, �ʱ� R0��)


// ���������� ��������� ���� (R2�� ����)
@R2
M=D          //R2= R0 * R1

// R0=R0-1
@R0
M=M-1  //R0�� 1�� �M. (�׷��� R0=0�̵Ǹ� LOOP�� �����.)



@LOOP
0;JMP

(END)
@END
0;JMP
