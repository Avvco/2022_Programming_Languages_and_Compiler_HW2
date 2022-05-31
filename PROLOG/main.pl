% 把他們的成雞放入knowledge base
% start -> run
% 先研究python的檔案處理
:- use_module(library(csv)).
import:-
    csv_read_file('HW2data.csv', Data, [functor(table), arity(8)]),
    maplist(assert, Data).

%已完成 成績計算
/*start:-
  read_score(X) ,
  grade_level(X,R),
  write('Your grade is '),
  write(R),
  nl.

read_score(X) :-
  write('please enter your score: '),
  read(X),
  number(X).

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
*/