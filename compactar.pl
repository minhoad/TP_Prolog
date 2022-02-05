compactar([],[]).
compactar([VAR],[[1,VAR]]).
compactar([VAR,VAR|Aux], [[Aux2,VAR]|L]) :- compactar([VAR|Aux], [[X, VAR]|L]), Aux2 is (X+1).
compactar([VAR,VER|A], [[1, VAR], [X, VER]|L]) :- compactar([VER|A], [[X, VER]|L]), (VAR \== VER).