pertence(X, [X | _]).
pertence(X, [_ | Y]) :- pertence(X,Y).

intersection([X|Y],M,[X|Z]) :- 
	pertence(X,M), intersection(Y,M,Z).

intersection([X|Y],M,Z) :- 
	\+ pertence(X,M), intersection(Y,M,Z).
intersection([],M,[]).

intersecao(L1, L2, L3, L4) :-
	intersection(L1, L2, X),
	intersection(L2, L3, Y),
	intersection(X, Y, L4).


