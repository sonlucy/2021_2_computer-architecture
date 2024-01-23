load findcarry.hdl,
output-file findcarry.out,

output-list a%B1.16.1 b%B1.16.1 out%B1.1.1;

set a %B0101001001011011,
set b %B1010010010110001,
//set LorR 0,
eval,
output;

set a %B1010101010101010,
set b %B1010010010110001,
//set LorR 1,
eval,
output;

set a %B1001101101101101,
set b %B1010010010110001,
//set LorR 0,
eval,
output;

set a %B0110010110010110,
set b %B1010010010110001,
//set LorR 1,
eval,
output;