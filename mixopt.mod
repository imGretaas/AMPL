#leggo il modello generale del mix ottimo di produzione

#definisco i parametri

#definisco l'insieme dei prodotti
set Prodotti;
set Risorse;

#P = profitto, Q= quantita'
param P {Prodotti};
param Q {Risorse};

#A quantita' di risorsa j necessaria per la produzione di un'unita' del bene i 
param A {Prodotti, Risorse};

param maxNumProd; #parametro che non dipende da niente perche' e' un numero


#var x {Prodotti} >= 0 integer , <= maxNumProd; se voglio un valore generale. Ad esempio i telecomandi, voglio un numero x massimo di telecomandi
var x {i in Prodotti} >= 0 integer , <= maxNumProd[i]; #per variabili intere, altrimenti, senza integer, vale per modelli continui R

#funzione obiettivo
maximize resa: sum{i in Prodotti} P[i] * x[i];

#inserisco i vincoli

s.t. dispon{j in Risorse}:sum{i in Prodotti} A[i,j]*x[i]<=Q[j];