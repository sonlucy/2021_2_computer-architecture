// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/05/CPU.tst

load newCPU.hdl,
output-file newCPU.out,

output-list time%S0.4.0 inM%B0.16.0 instruction%B0.16.0 reset%B2.1.2 outM%D1.6.0 writeM%B3.1.3 addressM%D0.5.0 pc%D0.5.0 DRegister[]%D1.6.1;



set instruction %B0011000000111001, // @12345
tick, output, tock, output;

set instruction %B1110110000010000, // D=A
tick, output, tock, output;

set instruction %B1000000000001001, // right Ashift
tick, output, tock, output;


set instruction %B1010000000001001, // right Rshift
tick, output, tock, output;


set instruction %B1100000000001001, // right Lshift
tick, output, tock, output;


set instruction %B1110000000001001, // C shift
tick, output, tock, output;