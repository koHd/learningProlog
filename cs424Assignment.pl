interleave([], [], []).
interleave(Xs, [], Xs).
interleave([], Ys, Ys).
interleave([X|Xs], [Y|Ys], [X, Y | Zs]) :- 
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
