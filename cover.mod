set I; #risorse
set J; #domande

param C{I}; #costi
param D{J}; #q.ta richieste
param A{I,J}; #coperture unitarie

var x{I} >=0;

#funzione obiettivo
minimize costi: sum{i in I} C[i]*x[i];

s.t. copro{j in J} : sum{i in I} A[i,j]*x[i] >= D[j];
