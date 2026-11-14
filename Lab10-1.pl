area(square(S), A) :- A is S * S.
area(rectangle(W, H), A) :- A is W * H.
area(triangle(B, H, _, _, _), A) :- A is 0.5 * B * H.

perimeter(square(S), P) :- P is 4 * S.
perimeter(rectangle(W, H), P) :- P is 2 * (W + H).
perimeter(triangle(_, _, X, Y, Z), P) :- P is X + Y + Z.

calc(Shape) :-
    area(Shape, A),
    perimeter(Shape, P),
    write('Area = '), write(A), nl,
    write('Perimeter = '), write(P), nl.
