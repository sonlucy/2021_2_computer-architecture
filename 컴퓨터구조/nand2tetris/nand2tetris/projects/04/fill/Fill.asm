// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

// Put your code here.


// R0�� SCREEN���� ����
@SCREEN
D=A   //D�� SCREEN�� �ּ� ���
@R0
M=D  //�� �ּҰ��� R0�� ������
 
(KBD_LOOP)                  //////////////////////////////////////////////////////////////////////////////////

// Ű���� �а� ��(black/white) ����
@color
M=0      //color �⺻�� 0���� �ؼ� �ƹ��͵� �� �������� �⺻������ ��� Screen�� ������.
@KBD    //24576
D=M         
@ENDKBD
D;JEQ      //Ű���尡 �ȴ����� ENDKBD��

////////////////////////////////////////////// Ű���尡 ��������
@0
D=A
D=D-1
@color
M=D     ////////������ ���� �� �ְ�

(ENDKBD)
// @color = 0 or -1 (Ű�� ���ȳ� �ȴ��ȳĿ� ����)
@color                         //16
D=M    //D�κ��� color �а�

// Load the value in R0 to A
@R0
A=M  //Ű���尡 �ȴ������ screen�� �ּ�(16384) ���
////////////
M=D  //16384�ּҺ���
A=A+1  //1�� �����ذ��� 
M=D    /D�� ����(0)
A=A+1
M=D
A=A+1
M=D
////loop
// Bump A by 1 and write it to R0
A=A+1
D=A  /////////////
@R0
M=D          //RO= (A+1) . 16388�ּҰ� ���


@SCREEN
D=A
@R0
M=D             //R0=@SCREEN



// R0-24575 <= 0, �� R0<= 24575
@24575                   //A=24576
D=A
@R0
D=M-D // (D=R0-24575)
@END
D;JLE    //��밡���� �޸� �����̸� (END)��. .




(END)
@KBD_LOOP
0;JMP           //������ �����ؼ� loop�ݺ�

