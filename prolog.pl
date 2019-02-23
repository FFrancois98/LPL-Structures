list_chars([], 0).
list_chars([X|Xs], N) :-
    (   number(X)
    ->  list_chars(Xs, N)
    ;   list_chars(Xs, N0),
        succ(N0, N)
    ).


sum-up-numbers-simple([], 0).

sum-up-numbers-simple([L | LRest], Result) :-
	number(L),
	sum-up-numbers-simple(LRest, LRestResult),
	Result is L + LRestResult.

sum-up-numbers-simple([L | LRest], LRestResult) :-
	not(number(L)),
	sum-up-numbers-simple(LRest, LRestResult).

sum-up-numbers-simple([L | LRest], 0) :-
        length([L | LRest], N),
	list_chars([L | LRest], M),
	M == N.
