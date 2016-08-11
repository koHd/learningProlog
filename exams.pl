% noah\3

noah([], [], []).
noah([X | Xs], [Y | Ys], [X, Y | Zs]) :- noah(Xs, Ys, Zs).
	
% doublemember\2
% takes potential element and a list and is true when the element 
% appears (at least) twice in the list.
% e.g.
%	doublemember(a,[the,quick,brown,fox]).
%	no
%	doublemember(a,{}).
%	no
%	doublemember(a,[a]).
%	no
%	doublemember(a,[the,quick,a,brown,X,fox]).
%	X=a

doublemember(X, [Y | Ys]) :-
	X = Y,
	member(X, Ys);
	doublemember(X, Ys).
	
% sibling\3
% input: list of parent-child pairs, name1, name2
% output: true if the two are siblings
% e.g.
%	sibling([[fred,sam],[fred,sue]], sam, sue)
%	true
%	sibling([[fred,sam], [fred,sue]], sam, fred)
%	false

siblings([[P, X], [P, Y]], X, Y).
siblings([[P, X], [P, Y]], Y, X).
	
