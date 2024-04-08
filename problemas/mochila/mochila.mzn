int: N = 8;
set of int: OBJ = 1..N;
int: capacity;
array[int] of int: WEIGHTS = [3,7,4,1,5,4,2,3];
array[int] of int: VALUES = [4,7,5,1,4,3,5,1];
array[1..N] of var 0..1: e; 

constraint sum(i in OBJ)(WEIGHTS[i] * e[i]) <= capacity;
solve maximize sum(i in OBJ)(VALUES[i] * e[i]);


output ["VALUES = ", show(VALUES), "\n"];
output ["WEIGHTS = ", show(WEIGHTS), "\n"];
output ["e = ", show(e), "\n"];
output ["maximo = ", show(sum(i in OBJ)(VALUES[i] * e[i])), "\n"];
