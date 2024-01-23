load Lshift.hdl,
output-file Lshift.out,

output-list LorR%B1.1.1 in%B1.16.1 out%B1.16.1;

set in %B0101001001011011,
set LorR 0,
eval,
output;

set in %B1010101010101010,
set LorR 1,
eval,
output;

set in %B1001101101101101,
set LorR 0,
eval,
output;

set in %B0110010110010110,
set LorR 1,
eval,
output;
