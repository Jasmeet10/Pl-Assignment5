% Question-1

maxodd([],0).
maxodd([X],X).
maxodd([X,_|Xs], Res) :-
	maxodd(Xs, Res1),
	(   
      X > Res1 -> Res is X;
      Res is Res1
    ).
	
% Question-2
deletekth(K,N,[],[]).
deletekth(K,N,[H|T],Res2):-(   N==1 ->  deletekth(K,K,T,L1), Res2 = L1
                           ;   
                           N > 1 ->  N1 is N-1, deletekth(K,N1,T,L2), Res2 = [H|L2]).

deleteNList(N,[],[]).
deleteNList(1,_,[]).
deleteNList(N,L,Res):-
    deletekth(N,N,L,Res1),
    Res = Res1.
	

% Question-3

replace_first([],X,Y,[]).
replace_first([X|Xs],K,N,L):-
	X == K -> L=[N|Xs];
	replace_first(Xs,K,N,L1),
	L = [X|L1].
	

