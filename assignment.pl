%Question1
maxodd([],0).
maxodd([X],X).
maxodd([X,_|Xs], Res) :-
	maxodd(Xs, Res1),
	(   
      X > Res1 -> Res is X;
      Res is Res1
    ).
    
%Question2
deleteNList(N,L,Res) :- 
	deleteNList(N,1,L,Res).

deleteNList(_,_,[],[]).
deleteNList(N,N,[_|T],T1) :- !, deleteNList(N,1,T,T1).
deleteNList(X,N,[H|T],[H|T1]) :- N<X, N1 is N+1, deleteNList(X,N1,T,T1).

%Question3
replace_first([],X,Y,[]).
replace_first([X|Xs],T,N,L):-
	X == T -> L=[N|Xs];
	replace_first(Xs,T,N,L1),
	L = [X|L1].   
