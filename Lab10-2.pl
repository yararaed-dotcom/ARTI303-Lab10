user(yara, 1234).
user(ali, pass99).
user(sara, hello).

login :- attempt(3).

attempt(0) :-
    write('Sorry, you exceeded the maximum number of attempts, try again later.'), nl.
attempt(N) :-
    N > 0,
    write('Username: '), read(U),
    write('Password: '), read(P),
    (   user(U, P)
    ->  write('Login Successful'), nl
    ;   write('Login Unsuccessful'), nl,
        N1 is N - 1,
        attempt(N1)
    ).
