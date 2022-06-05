% HW2 using prolog to implement
% type "run." to start

truncate(X,N,Result):- X >= 0, Result is floor(10^N*X)/10^N, !.   %digit ctrl


:- use_module(library(csv)).
run:-
    csv_read_file("HW2data.csv", Rows, [functor(score), arity(8)]),
    maplist(assert, Rows), X is 1,
    calculate_score(X), halt.


calculate_score(10):- score(10,B,C,D,E,F,G,H),
  truncate(D*0.1+E*0.1+F*0.1+G*0.3+H*0.4, 2, Gra),
  grade_level(Gra, Lev),
  write(10), write('\t'), write(B), write('\t'), write(C), write('\t'),
  write(Gra), write('\t'), write(Lev), write('\t'),
  nl.

calculate_score(X):-
  Y is X, score(Y,B,C,D,E,F,G,H), 
  truncate(D*0.1+E*0.1+F*0.1+G*0.3+H*0.4, 2, Gra),
  grade_level(Gra, Lev),
  write(Y), write('\t'), write(B), write('\t'), write(C), write('\t'),
  write(Gra), write('\t'), write(Lev), write('\t'),
  Z is Y+1, nl,
  calculate_score(Z).

grade_level( X , 'A+' ) :- X >= 90.0, X <  101.0.
grade_level( X , 'B ' ) :- X >= 85.0, X <  90.0.
grade_level( X , 'A-' ) :- X >= 80.0, X <  85.0.
grade_level( X , 'B+' ) :- X >= 77.0, X <  80.0.
grade_level( X , 'B ' ) :- X >= 73.0, X <  77.0.
grade_level( X , 'B-' ) :- X >= 70.0, X <  73.0.
grade_level( X , 'C+' ) :- X >= 67.0, X <  70.0.
grade_level( X , 'C ' ) :- X >= 63.0, X <  67.0.
grade_level( X , 'C-' ) :- X >= 60.0, X <  63.0.
grade_level( X , 'D ' ) :- X >= 50.0, X <  60.0.
grade_level( X , 'E ' ) :- X >=  0.0, X <  50.0.
