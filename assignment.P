%Question1
maxodd([],0).
maxodd([X],X).
maxodd([X,_|Xs], Res) :-
	maxodd(Xs, Res1),
	(   
      X > Res1 -> Res is X;
      Res is Res1
    ).

%Question3
replace_first([],X,Y,[]).
replace_first([X|Xs],T,N,L):-
	X == T -> L=[N|Xs];
	replace_first(Xs,T,N,L1),
	L = [X|L1].   