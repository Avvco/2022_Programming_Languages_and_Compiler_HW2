% 把他們的成雞放入knowledge base
% start -> run
% Score = HW1 * 0.1 + HW2 * 0.1 + HW3 * 0.1 + Midterm * 0.3 + Final * 0.4
% bug: 第3筆跟第9筆無法輸出
truncate(X,N,Result):- X >= 0, Result is floor(10^N*X)/10^N, !.   %digit ctrl

:- use_module(library(csv)).
import:-
    csv_read_file("HW2data.csv", Rows, [functor(score), arity(8)]),
    maplist(assert, Rows).

readscore(10):- score(10,B,C,D,E,F,G,H),
  truncate(D*0.1+E*0.1+F*0.1+G*0.3+H*0.4, 2, Gra), truncate(D*0.1+E*0.1+F*0.1+G*0.3+H*0.4, 0, Gra1),
  grade_level(integer(Gra1), Lev),
  write(10), write('\t'), write(B), write('\t'), write(C), write('\t'), write(D), write('\t'),
  write(E), write('\t'), write(F), write('\t'), write(G), write('\t'), write(H), write('\t'), 
  write(Gra), write('\t'), write(Lev), write('\t'),
  nl.

readscore(X):-
  Y is X, score(Y,B,C,D,E,F,G,H), 
  truncate(D*0.1+E*0.1+F*0.1+G*0.3+H*0.4, 2, Gra), truncate(D*0.1+E*0.1+F*0.1+G*0.3+H*0.4, 0, Gra1),
  grade_level(integer(Gra1), Lev),
  write(Y), write('\t'), write(B), write('\t'), write(C), write('\t'), write(D), write('\t'),
  write(E), write('\t'), write(F), write('\t'), write(G), write('\t'), write(H), write('\t'),
  write(Gra), write('\t'), write(Lev), write('\t'),
  Z is Y+1, nl,
  readscore(Z).
% write(Gra), write('\t'), 
grade_level( X , 'A+' ) :- X >= 90, X <  101.
grade_level( X , 'B ' ) :- X >= 85, X <  90.
grade_level( X , 'A-' ) :- X >= 80, X <  84.
grade_level( X , 'B+' ) :- X >= 77, X <  79.
grade_level( X , 'B ' ) :- X >= 73, X <  76.
grade_level( X , 'B-' ) :- X >= 70, X <  72.
grade_level( X , 'C+' ) :- X >= 67, X <  69.
grade_level( X , 'C ' ) :- X >= 63, X <  66.
grade_level( X , 'C-' ) :- X >= 60, X <  62.
grade_level( X , 'D ' ) :- X >= 50, X <  59.
grade_level( X , 'E ' ) :- X >= 0 , X <  49.
