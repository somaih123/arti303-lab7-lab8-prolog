% Task 2: add_at_the_end(X, List, Result) puts X at the end of the list.
add_at_the_end(X, [], [X]).
add_at_the_end(X, [H|T], [H|R]) :- add_at_the_end(X, T, R).
