concatenar([],L,L).
linearizar([X|[]],X).
concatenar([X|L1],L2,[X|L3]) :- concatenar(L1,L2,L3).
linearizar([X|[Y|L1]],L2) :- concatenar(X,Y,Z), linearizar([Z|L1],L2).