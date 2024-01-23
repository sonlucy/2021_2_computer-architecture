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


// R0를 SCREEN으로 세팅
@SCREEN
D=A   //D에 SCREEN의 주소 담고
@R0
M=D  //그 주소값을 R0가 가지게
 
(KBD_LOOP)                  //////////////////////////////////////////////////////////////////////////////////

// 키보드 읽고 색(black/white) 세팅
@color
M=0      //color 기본값 0으로 해서 아무것도 안 눌렀을때 기본적으로 흰색 Screen이 나오게.
@KBD    //24576
D=M         
@ENDKBD
D;JEQ      //키보드가 안눌리면 ENDKBD로

////////////////////////////////////////////// 키보드가 눌렸으면
@0
D=A
D=D-1
@color
M=D     ////////검정색 나올 수 있게

(ENDKBD)
// @color = 0 or -1 (키가 눌렸냐 안눌렸냐에 따라)
@color                         //16
D=M    //D로부터 color 읽고

// Load the value in R0 to A
@R0
A=M  //키보드가 안눌릴경우 screen의 주소(16384) 담김
////////////
M=D  //16384주소부터
A=A+1  //1씩 증가해가며 
M=D    /D로 세팅(0)
A=A+1
M=D
A=A+1
M=D
////loop
// Bump A by 1 and write it to R0
A=A+1
D=A  /////////////
@R0
M=D          //RO= (A+1) . 16388주소가 담김


@SCREEN
D=A
@R0
M=D             //R0=@SCREEN



// R0-24575 <= 0, 즉 R0<= 24575
@24575                   //A=24576
D=A
@R0
D=M-D // (D=R0-24575)
@END
D;JLE    //사용가능한 메모리 범위이면 (END)로. .




(END)
@KBD_LOOP
0;JMP           //무조건 점프해서 loop반복

