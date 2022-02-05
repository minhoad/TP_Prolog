nelementos([], 0).
nelementos([_|L],S):- nelementos(L,A), S is (A+1).
