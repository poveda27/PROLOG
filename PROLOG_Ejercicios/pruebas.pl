padrede('juan', 'maria').
padrede('pablo', 'juan').
hermanode(X, Y) :-  padrede(Z, X), padrede(Z, Y).
familiarde(A,B) :- padrede(A,B);hermanode(A,B).