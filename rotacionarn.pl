concatenar([], L, L).
remover(_,[],[]).
diferentes([],X,X).
removerI(0,L,L).
removerI(_,[],[]).
rotacionarn(_,[],[]).
concatenar([X|L1], L2, [X|L3]) :- concatenar(L1, L2, L3).
remover(X,[X|List],Listsemx):- remover(X,List,Listsemx).
remover(X,[Y|List], [Y|Listsemx]):-  X \== Y, remover(X, List, Listsemx).
diferentes([X|L1],L2,Fim):- remover(X,L2,Aux),diferentes(L1,Aux,Fim).
removerI(X,[Y|List],Fim):- ((X > 0) -> removerI(X-1,List,Fim); concatenar([Y],List,Fim)).
rotacionarn(X,List,Fim):- removerI(X,List,Aux), diferentes(Aux,List,Aux2), concatenar(Aux,Aux2,Fim).