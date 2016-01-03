interleave([], [], []).
interleave(Xs, [], Xs).
interleave([], Ys, Ys).
interleave([X|Xs], [Y|Ys], [X, Y | Zs]) :- 
    interleave(Xs, Ys, Zs).
