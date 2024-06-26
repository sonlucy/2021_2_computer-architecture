// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/02/ALU.tst

load newALU.hdl,
output-file newALU.out,

output-list zx%B1.1.1 nx%B1.1.1 zy%B1.1.1 ny%B1.1.1 f%B1.1.1 no%B1.1.1 
	CTRL%B1.2.1 shiftsel%B1.1.1  AorS%B1.1.1 
 	x%B1.16.1 y%B1.16.1 out%B1.16.1 zr%B1.1.1 ng%B1.1.1;

set x %B0000000000000000,  // x = 0
set y %B1111111111111111;  // y = -1

// Compute 0
set AorS 0, 
set zx 1,
set nx 0,
set zy 1,
set ny 0,
set f  1,
set no 0,
eval,
output;

// Compute 1
set AorS 0, 
set zx 1, 
set nx 1,
set zy 1,
set ny 1,
set f  1,
set no 1,
eval,
output;

// Compute -1
set AorS 0, 
set zx 1, 
set nx 1,
set zy 1,
set ny 0,
set f  1,
set no 0,
eval,
output;

// Compute x
set zx 0,
set nx 0,
set zy 1,
set ny 1,
set f  0,
set no 0,
eval,
output;

// Compute y
set AorS 0, 
set zx 1, 
set nx 1,
set zy 0,
set ny 0,
set f  0,
set no 0,
eval,
output;

// Compute !x
set zx 0,
set nx 0,
set zy 1,
set ny 1,
set f  0,
set no 1,
eval,
output;

// Compute !y
set AorS 0,
set zx 1, 
set nx 1,
set zy 0,
set ny 0,
set f  0,
set no 1,
eval,
output;

// Compute -x
set zx 0,
set nx 0,
set zy 1,
set ny 1,
set f  1,
set no 1,
eval,
output;

// Compute -y
set AorS 0, 
set zx 1, 
set nx 1,
set zy 0,
set ny 0,
set f  1,
set no 1,
eval,
output;

// Compute x + 1
set zx 0,
set nx 1,
set zy 1,
set ny 1,
set f  1,
set no 1,
eval,
output;

// Compute y + 1
set AorS 0, 
set zx 1, 
set nx 1,
set zy 0,
set ny 1,
set f  1,
set no 1,
eval,
output;

// Compute x - 1
set AorS 0,
set zx 0,
set nx 0,
set zy 1,
set ny 1,
set f  1,
set no 0,
eval,
output;

// Compute y - 1
set AorS 0, set zx 1, 
set nx 1,
set zy 0,
set ny 0,
set f  1,
set no 0,
eval,
output;

// Compute x + y
set AorS 0,
set zx 0,
set nx 0,
set zy 0,
set ny 0,
set f  1,
set no 0,
eval,
output;

// Compute x - y
set AorS 0,
set zx 0,
set nx 1,
set zy 0,
set ny 0,
set f  1,
set no 1,
eval,
output;

// Compute y - x
set AorS 0,
set zx 0,
set nx 0,
set zy 0,
set ny 1,
set f  1,
set no 1,
eval,
output;

// Compute x & y
set AorS 0,
set zx 0,
set nx 0,
set zy 0,
set ny 0,
set f  0,
set no 0,
eval,
output;

// Compute x | y
set AorS 0,
set zx 0,
set nx 1,
set zy 0,
set ny 1,
set f  0,
set no 1,
eval,
output;

//Compute Ashift x-left
set AorS 1,
set CTRL %B00,
set shiftsel 0,
eval,
output;

//Compute Ashift x-right
set AorS 1,
set CTRL %B00,
set shiftsel 1,
eval,
output;

//Compute Rshift x-left
set AorS 1,
set CTRL %B01,
set shiftsel 0,
eval,
output;

//Compute Rshift x-right
set AorS 1,
set CTRL %B01,
set shiftsel 1,
eval,
output;

//Compute Lshift x-left
set AorS 1,
set CTRL %B10,
set shiftsel 0,
eval,
output;

//Compute Lshift x-right
set AorS 1,
set CTRL %B10,
set shiftsel 1,
eval,
output;

//Compute Cshift x-left
set AorS 1,
set CTRL %B11,
set shiftsel 0,
eval,
output;

//Compute Cshift x-right
set AorS 1,
set CTRL %B11,
set shiftsel 1,
eval,
output;

set x %B000000000010001,  // x = 17
set y %B000000000000011;  // y =  3

// Compute 0
set AorS 0, 
set zx 1, 
set nx 0,
set zy 1,
set ny 0,
set f  1,
set no 0,
eval,
output;

// Compute 1
set AorS 0, 
set zx 1, 
set nx 1,
set zy 1,
set ny 1,
set f  1,
set no 1,
eval,
output;

// Compute -1
set AorS 0, 
set zx 1, 
set nx 1,
set zy 1,
set ny 0,
set f  1,
set no 0,
eval,
output;

// Compute x
set AorS 0,
set zx 0,
set nx 0,
set zy 1,
set ny 1,
set f  0,
set no 0,
eval,
output;

// Compute y
set AorS 0, 
set zx 1, 
set nx 1,
set zy 0,
set ny 0,
set f  0,
set no 0,
eval,
output;

// Compute !x
set AorS 0,
set zx 0,
set nx 0,
set zy 1,
set ny 1,
set f  0,
set no 1,
eval,
output;

// Compute !y
set AorS 0, 
set zx 1, 
set nx 1,
set zy 0,
set ny 0,
set f  0,
set no 1,
eval,
output;

// Compute -x
set AorS 0,
set zx 0,
set nx 0,
set zy 1,
set ny 1,
set f  1,
set no 1,
eval,
output;

// Compute -y
set AorS 0, 
set zx 1, 
set nx 1,
set zy 0,
set ny 0,
set f  1,
set no 1,
eval,
output;

// Compute x + 1
set AorS 0,
set zx 0,
set nx 1,
set zy 1,
set ny 1,
set f  1,
set no 1,
eval,
output;

// Compute y + 1
set AorS 0, 
set zx 1, 
set nx 1,
set zy 0,
set ny 1,
set f  1,
set no 1,
eval,
output;

// Compute x - 1
set zx 0,
set nx 0,
set zy 1,
set ny 1,
set f  1,
set no 0,
eval,
output;

// Compute y - 1
set AorS 0, 
set zx 1, 
set nx 1,
set zy 0,
set ny 0,
set f  1,
set no 0,
eval,
output;

// Compute x + y
set AorS 0,
set zx 0,
set nx 0,
set zy 0,
set ny 0,
set f  1,
set no 0,
eval,
output;

// Compute x - y
set AorS 0,
set zx 0,
set nx 1,
set zy 0,
set ny 0,
set f  1,
set no 1,
eval,
output;

// Compute y - x
set AorS 0,
set zx 0,
set nx 0,
set zy 0,
set ny 1,
set f  1,
set no 1,
eval,
output;

// Compute x & y
set AorS 0,
set zx 0,
set nx 0,
set zy 0,
set ny 0,
set f  0,
set no 0,
eval,
output;

// Compute x | y
set AorS 0,
set zx 0,
set nx 1,
set zy 0,
set ny 1,
set f  0,
set no 1,
eval,
output;

//Compute Ashift x-left
set AorS 1,
set CTRL %B00,
set shiftsel 0,
eval,
output;

//Compute Ashift x-right
set AorS 1,
set CTRL %B00,
set shiftsel 1,
eval,
output;

//Compute Rshift x-left
set AorS 1,
set CTRL %B01,
set shiftsel 0,
eval,
output;

//Compute Rshift x-right
set AorS 1,
set CTRL %B01,
set shiftsel 1,
eval,
output;

//Compute Lshift x-left
set AorS 1,
set CTRL %B10,
set shiftsel 0,
eval,
output;

//Compute Lshift x-right
set AorS 1,
set CTRL %B10,
set shiftsel 1,
eval,
output;

//Compute Cshift x-left
set AorS 1,
set CTRL %B11,
set shiftsel 0,
eval,
output;

//Compute Cshift x-right
set AorS 1,
set CTRL %B11,
set shiftsel 1,
eval,
output;

//shift

set x %B1001101010001010,  // x = 0
set y %B1111111111111111;  // y = -1


//Compute Ashift x-left
set AorS 1,
set CTRL %B00,
set shiftsel 0,
eval,
output;

//Compute Ashift x-right
set AorS 1,
set CTRL %B00,
set shiftsel 1,
eval,
output;

//Compute Rshift x-left
set AorS 1,
set CTRL %B01,
set shiftsel 0,
eval,
output;

//Compute Rshift x-right
set AorS 1,
set CTRL %B01,
set shiftsel 1,
eval,
output;

//Compute Lshift x-left
set AorS 1,
set CTRL %B10,
set shiftsel 0,
eval,
output;

//Compute Lshift x-right
set AorS 1,
set CTRL %B10,
set shiftsel 1,
eval,
output;

//Compute Cshift x-left
set AorS 1,
set CTRL %B11,
set shiftsel 0,
eval,
output;

//Compute Cshift x-right
set AorS 1,
set CTRL %B11,
set shiftsel 1,
eval,
output;