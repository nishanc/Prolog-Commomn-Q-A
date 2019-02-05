% -------------------------------------------------|
% ----------------Answers for Q8(a)----------------|
% -------------------------------------------------|
p(1).
p(2):-!.
p(3).

% Write all of Prolog’s answers to the following queries:

% ?-p(X).
% X = 1 ;
% X = 2.

% ?-p(X),p(Y).
% X = Y, Y = 1 ;
% X = 1,
% Y = 2 ;
% X = 2,
% Y = 1 ;
% X = Y, Y = 2.

% ?-p(X),!,p(Y).
% X = Y, Y = 1 ;
% X = 1,
% Y = 2.

% -------------------------------------------------|
% ----------------Answers for Q8(b)----------------|
% -------------------------------------------------|

% class(Number, positive) :- Number > 0.
% class(0, zero).
% class(Number, negative) :- Number < 0.

% This program examines whether the specified Number is positive, zero, or negative.
% Define the procedure in a more efficient way using cuts.

class(Number, positive) :- Number > 0, !.
class(0, zero) :- !.
class(Number, negative) :- Number < 0, !.

% -------------------------------------------------|
% ----------------Answers for Q8(c)----------------|
% -------------------------------------------------|

% With cut

split([], [], []).
split([HP | TL], [HP | TP], N):-HP >= 0,!,split(TL, TP, N).
split([HN | TL], P, [HN | TN]) :-HN < 0,!,split(TL, P, TN).

% Without cut

split([], [], []).
split([HP | TL], [HP | TP], N):-HP >= 0,split(TL, TP, N).
split([HN | TL], P, [HN | TN]):-HN < 0,split(TL, P, TN).
