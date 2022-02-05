soma([],0).
nelementos([],0).
medio([],0).
nelementos([_|L],S):- nelementos(L,A), S is (A+1).
soma([X|L], S):- soma(L,S1), S is (X+S1). % slide 
medio(L, S):- soma(L,X), nelementos(L,Y), S is float(X/Y).
