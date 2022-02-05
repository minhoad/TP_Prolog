remover(_,[],[]).
remover(X,[X|List],Listsemx):- remover(X,List,Listsemx).
remover(X,[Y|List], [Y|Listsemx]):-  X \== Y, remover(X, List, Listsemx).