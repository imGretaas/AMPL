set I; #definisco l'insieme

param T>=0;
param A{I,I}; #i in I, j in I

var x{I};

minimize numCup : sum{i in I} x[i];

s.t. copri{i in I} : 
		sum{j in I : A[i,j]<=T} x[j] >= 1;
		#utilizzo i parametri non variabili, 
		#poiche' i parametri sono noti al modello