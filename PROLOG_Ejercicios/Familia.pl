padre('tywin','cersei').
padre('tywin','jaime').
padre('tywin','tyrion').
padre('jeanne','cersei').
padre('jeanne','jaime').
padre('jeanne','tyrion').
padre('cersei','tommen').
padre('cersei','mycella').
padre('cersei','joffrey').
padre('roberth','tommen').
padre('roberth','joffrey').
padre('roberth','mycella').
padre('tyrion','anderz').
padre('tyrion','calorina').
padre('clara','anderz').
padre('clara','calorina').
hijo(X,Y):- padre(Y,X).
hermano(X,Y):- padre(A,X),padre(A,Y).
abuelo(X,Y):- padre(Y,A), padre(A,X).
primo(X,Y):- hermano(A,B),padre(A,X),padre(B,Y).
tio(X,Y):- padre(A,X),hermano(A,Y).
nieto(X,Y):- abuelo(Y,X).
sobrino(X,Y):- tio(Y,X).
familia(X,Y):- padre(X,Y); hijo(X,Y); hermano(X,Y); abuelo(X,Y);
primo(X,Y); tio(X,Y) ; nieto(X,Y); sobrino(X,Y); casado(X,Y); suegro(X,Y).
casado(X,Y):- padre(X,A),padre(Y,A).
suegro(X,Y):- padre(Y,A),casado(A,X).