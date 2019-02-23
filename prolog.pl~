sum-up-numbers-simple([], 0).

sum-up-numbers-simple([L | LRest], Result) :-
	number(L),
	sum-up-numbers-simple(LRest, LRestResult),
	Result is L + LRestResult.

sum-up-numbers-simple([L | LRest], LRestResult) :-
	not(number(L)),
	sum-up-numbers-simple(LRest, LRestResult).
