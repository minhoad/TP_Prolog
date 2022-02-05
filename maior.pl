maior([X],X).
maior([X|L], S):- maior(L,A), ((A > X) -> S = A ; S = X).
