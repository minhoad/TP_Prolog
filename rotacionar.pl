concatenar([],L,L).
rotacionar([],[]).
concatenar([X|L1],L2,[X|L3]) :- concatenar(L1,L2,L3).
rotacionar([X|Z],L) :- concatenar(Z,[X],L).
