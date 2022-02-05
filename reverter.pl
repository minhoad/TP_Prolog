concatenar([],L,L).
reverter([],[]).
concatenar([X|L1],L2,[X|L3]) :- concatenar(L1,L2,L3).
reverter([X|Z],L) :- reverter(Z,L2), concatenar(L2,[X],L).
