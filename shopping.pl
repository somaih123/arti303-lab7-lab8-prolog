% Shopping program: d = display all items, a = add an item, e = exit.
% The basket is a list that is passed from one menu call to the next.

shopping :- menu([coffee,milk,chocolate,apple,juice]).

menu(L) :-
    nl, write('** SHOPPING LIST **'), nl,
    write('d. display all items.'), nl,
    write('a. Add an item to the list.'), nl,
    write('e. exit.'), nl,
    write('ENTER YOUR CHOICE .'), nl,
    read(X),
    choice(X, L).

choice(d, L) :- display_items(L), menu(L).
choice(a, L) :-
    write('enter the item you want to add it'), nl,
    read(Item),
    add(Item, L, L1),
    write('The item has been added'), nl,
    menu(L1).
choice(e, _) :- fin.
choice(_, L) :- nl, write('Sorry, you chose the wrong option...'), nl, menu(L).

% display the items using recursion, stopping at the empty list
display_items([]).
display_items([H|T]) :- write(H), nl, display_items(T).

% To add X to the front of L, the answer is simply [X|L].
add(X, L, [X|L]).

fin :-
    nl, write('===< End >==='), nl.
