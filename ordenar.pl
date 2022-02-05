concatenar([],L,L).
maior([X],X).
remover(_,[],[]).
ordenar([],[]).
ordenar([A],[A]).
concatenar([X|L1],L2,[X|L3]) :- concatenar(L1,L2,L3).
maior([X|L], S):- maior(L,A), ((A > X) -> S = A ; S = X).
remover(X,[X|List],Listsemx):- remover(X,List,Listsemx).
remover(X,[Y|List], [Y|Listsemx]):-  X \== Y, remover(X, List, Listsemx).
ordenar(X,L) :- maior(X,I), remover(I,X,J), ordenar(J,K), concatenar(K,[I],L).
