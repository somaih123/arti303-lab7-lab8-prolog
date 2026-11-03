% Task 1: deleteElement(X, List, Result) removes all occurrences of X.
% Base case: the empty list
deleteElement(_, [], []).
deleteElement(X, [X|T], R) :- deleteElement(X, T, R).
deleteElement(X, [Y|T], [Y|R]) :- X \= Y, deleteElement(X, T, R).
