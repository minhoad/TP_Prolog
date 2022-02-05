ultimo([X],X).
ultimo([_|L], U):- ultimo(L,A), U is A.