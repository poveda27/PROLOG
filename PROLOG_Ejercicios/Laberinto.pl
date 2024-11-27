conectado(1,2).
conectado(2,3).
conectado(3,4).
conectado(4,8).
conectado(8,12).
conectado(12,11).
conectado(11,10).
conectado(11,15).
conectado(10,9).
conectado(9,5).
conectado(15,19).
entrada(1).
salidad(19).
ruta(X,Y):- conectado(X,Y).
ruta(X,Y):- conectado(X,A),ruta(A,Y).
