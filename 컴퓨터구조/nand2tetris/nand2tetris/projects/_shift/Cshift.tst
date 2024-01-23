load Cshift.hdl,
output-file Cshift.out,

output-list x%B1.16.1 y%B1.16.1 out%B1.16.1;

set x %B0101001001011011,
set y %B1010010010110001,
//set LorR 0,
eval,
output;

set x %B1010101010101010,
set y %B1010010010110001,
//set LorR 1,
eval,
output;

set x %B1001101101101101,
set y %B1010010010110001,
//set LorR 0,
eval,
output;

set x %B0110010110010110,
set y %B1010010010110001,
//set LorR 1,
eval,
output;