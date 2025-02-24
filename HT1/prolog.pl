% Hechos

padre(ignacio, aran).
padre(gilberto, ignacio).
padre(gilberto, luis).
padre(luis, juan).
madre(marvel, aran).
madre(lourdes, juan).
madre(carmen, ignacio).
madre(carmen, luis).

casado(carmen, gilberto).
casado(ignacio, marvel).
casado(luis, lourdes).


% Regla 1: Un abuelo es el padre de un padre o madre
abuelo(X, Y) :- padre(X, P), padre(P, Y).
abuelo(X, Y) :- padre(X, P), madre(P, Y).

% Regla 2: Una abuela es la madre de un padre o madre
abuela(X, Y) :- madre(X, M), padre(M, Y).
abuela(X, Y) :- madre(X, M), madre(M, Y).


% Regla 3: Un hijo es alguien cuyo padre o madre es Y
hijo(X, Y) :- padre(Y, X).
hijo(X, Y) :- madre(Y, X).

% Regla para suegro
suegro(X, Y) :- casado(Z, Y), padre(X, Z).

% Regla para suegra
suegra(X, Y) :- casado(Z, Y), madre(X, Z).

