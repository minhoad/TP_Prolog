gerar(A,A,[A]).
gerar(X,Y,[X | L]) :- S is (X+1), gerar(S,Y,L).
%tentei separar com uma regra somaum mas não tem como devido a lazy evaluation