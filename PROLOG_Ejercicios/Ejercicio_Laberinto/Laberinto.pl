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
conectado(5,6).
conectado(6,7).
conectado(9,13).
conectado(13,17).
conectado(17,18).
conectado(18,14).
conectado(19,20).
conectado(20,16).
ruta(X,Y):- conectado(X,Y).
ruta(X,Y):- conectado(X,A),ruta(A,Y).
