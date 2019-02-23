% FUNCTION 1 - sum-up-numbers-simple

% sub function that counts the number of non-number elements
% in a list
list-chars([], 0).
list-chars([X|Xs], N) :-
    (   number(X)
    ->  list-chars(Xs, N)
    ;   list-chars(Xs, N0),
        succ(N0, N)
    ).

% The recursive cases of the function.
sum-up-numbers-simple([], 0).  % empty list case

sum-up-numbers-simple([L | LRest], Result) :-  % element is a number case
	number(L),
	sum-up-numbers-simple(LRest, LRestResult),
	Result is L + LRestResult.

sum-up-numbers-simple([L | LRest], LRestResult) :-  % element is not a number case
	\+(number(L)),
	sum-up-numbers-simple(LRest, LRestResult).

sum-up-numbers-simple([L | LRest], 0) :-  % the list is all non-number elements case
        length([L | LRest], N),
	list-chars([L | LRest], M),
	M == N.

% FUNCTION 2 - sum-up-numbers-general

% Makes the nested list into a flat list
my-flatten([],[]).

my-flatten(X,[X]) :-
        \+(is_list(X)).

my-flatten([X|Xs],Zs) :-
        my-flatten(X,Y),
        my-flatten(Xs,Ys),
        append(Y,Ys,Zs).

% sums-up the new flat list using sum-simple
sum-up-numbers-general([],0).

sum-up-numbers-general([L|Ls], Result) :-
        my-flatten([L|Ls],FlatL),
        sum-up-numbers-simple(FlatL, Result).

% FUNCTION 4 - commom-unique-elements

% sub function for finding the unique elements using flatten list.
common-uni-flat([], _, []).

common-uni-flat([H1|T1], L2, [H1|Res]) :-
    member(H1, L2),
    common-uni-flat(T1, L2, Res).

common-uni-flat([_|T1], L2, Res) :-
    common-uni-flat(T1, L2, Res).

% flattens the list and finds the unicque ones.

common-unique-elements([], _, []).
common-unique-elements(_, [], []).

common-unique-elements(L1, L2, Res) :-
    my-flatten(L1,FlatL1),
    my-flatten(L2,FlatL2),
    common-uni-flat(FlatL1,FlatL2, Res).





















