set T; #chiamate 
set P; #persone da chiamare

param C{T}; #costi
param D{P}; #q.ta richieste
param A{T,P}; #coperture unitarie

var x{T} >=0 integer;

#funzione obiettivo
minimize costi: sum{t in T} C[t]*x[t];

s.t. copro{p in P} : sum{t in T} A[t,p]*x[t] >= D[p];
