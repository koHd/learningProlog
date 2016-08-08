interleave([], [], []).
interleave([X], [Y], [X, Y]).
interleave([X | Xs], [Y | Ys], [X , Y | Zs]) :- 
	interleave(Xs, Ys, Zs).

male(paddy).
male(shane).
male(neil).
male(paul).
male(patrick).

female(bridget).
female(margaret).
female(kathleen).

parent(paddy, shane).
parent(bridget, shane).

parent(paul, neil).
parent(margaret, neil).

parent(patrick, paddy).
parent(kathleen, paddy).

parent(patrick, paul).
parent(kathleen, paul).

grandparent(X, Z) :- 
    parent(Y, Z), 
    parent(X, Y).

grandfather(X, Y) :-
    grandparent(X, Y), male(X).

grandmother(X, Y) :-
    grandparent(X, Y), female(X).

cousin(X, Y) :- 
    (grandfather(Z, X); grandmother(Z, X)),
    (grandfather(Z, Y); grandmother(Z, X)),
    not((parent(W, X), parent(W, Y))),
    dif(X, Y).

%%% under which circumstances will your relation cliam that siblings are cousins?
%%%     it shouldn't occur since X and Y should not have a common parent.
%%% under which circumstances will your relation claim a person is their own cousin?
%%%     it shoudn't occur since X and Y cannot be the same.