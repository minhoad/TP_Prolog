adjacente(X,Y,[X,Y|_]).
adjacente(X,Y,[Aux|List]):- Aux\==X , adjacente(X,Y,List).
