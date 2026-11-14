:- discontiguous area/2, perimeter/2.

area(square(S), A) :- A is S * S.
perimeter(square(S), P) :- P is 4 * S.

area(rectangle(W, H), A) :- A is W * H.
perimeter(rectangle(W, H), P) :- P is 2 * (W + H).

area(triangle(B, H, _, _, _), A) :- A is 0.5 * B * H.
perimeter(triangle(_, _, X, Y, Z), P) :- P is X + Y + Z.

calc(Shape) :-
    area(Shape, A),
    perimeter(Shape, P),
    format("~w -> Area = ~w, Perimeter = ~w~n", [Shape, A, P]).
