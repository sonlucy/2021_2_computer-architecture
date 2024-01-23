load newALU.hdl,
output-file newALU1.out,

output-list CTRL%B1.1.1 CTRL1%B1.1.1 shiftsel%B1.1.1  AorS%B1.1.1 
 	x%B1.16.1 y%B1.16.1 out%B1.16.1;

set x %B1001101010001010,  // x = 0
set y %B1111111111111111;  // y = -1


//Compute Ashift x-left
set AorS 1,
set CTRL 0,
set CTRL1 0,
set shiftsel 0,
eval,
output;

//Compute Ashift x-right
set AorS 1,
set CTRL 0,
set CTRL1 0,
set shiftsel 1,
eval,
output;

//Compute Rshift x-left
set AorS 1,
set CTRL 1,
set CTRL1 0,
set shiftsel 0,
eval,
output;

//Compute Rshift x-right
set AorS 1,
set CTRL 1,
set CTRL1 0,
set shiftsel 1,
eval,
output;

//Compute Lshift x-left
set AorS 1,
set CTRL 0,
set CTRL1 1,
set shiftsel 0,
eval,
output;

//Compute Lshift x-right
set AorS 1,
set CTRL 0,
set CTRL1 1,
set shiftsel 1,
eval,
output;

//Xor16
set CTRL 1,
set CTRL1 1,
set AorS 1,
eval,
output;
