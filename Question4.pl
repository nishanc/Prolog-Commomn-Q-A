% ---------------------------------------------------|
% ----------------Answers for Q4(a)(i)---------------|
% ---------------------------------------------------|
conc([],L,L).
conc([Head|L1],L2,[Head|L]):-conc(L1,L2,L).
reverse([],[]).
reverse([H|T], ReversedList):-reverse(T, List), conc(List, [H], ReversedList).
% ---------------------------------------------------|
% ----------------Answers for Q4(a)(ii)--------------|
% ---------------------------------------------------|
palindrome([]).
palindrome([_]).
palindrome(List):-conc([H|T], [H], List),palindrome(T).
% ---------------------------------------------------|
% ----------------Answers for Q4(b)(i)---------------|
% ---------------------------------------------------|
% ?- point(A,B)=point(1,2).
% A = 1,
% B = 2.
% ---------------------------------------------------|
% ----------------Answers for Q4(b)(ii)--------------|
% ---------------------------------------------------|
% ?- point(A,B)=point(X,Y,Z).
% false.
% ---------------------------------------------------|
% ----------------Answers for Q4(b)(iii)-------------|
% ---------------------------------------------------|
% ?- point(2,2)=4.
% false.
% ---------------------------------------------------|
% ----------------Answers for Q4(b)(iv)--------------|
% ---------------------------------------------------|
% ?- +(2,D)=+(E,2).
% ERROR: Syntax error: Operator expected
% ERROR: +(2,D
% ERROR: ** here **
% ERROR: )=+(E,2) .
% ---------------------------------------------------|
% ----------------Answers for Q4(b)(v)---------------|
% ---------------------------------------------------|
% ?- triangle(point(-1,0),P2,P3)= triangle(P1,point(1,0),point(0,y)).
% P2 = point(1, 0),
% P3 = point(0, y),
% P1 = point(-1, 0).
% ---------------------------------------------------|
% ----------------Answers for Q4(C)(i)---------------|
% ---------------------------------------------------|
f(1,one).
f(s(1),two).
f(s(s(1)),three).
f(s(s(s(X))),N):-f(X,N).

% ?- f(s(1),A).
% A = two.
% ---------------------------------------------------|
% ----------------Answers for Q4(C)(ii)--------------|
% ---------------------------------------------------|
% ?- f(s(s(1)),two).
% false.
% ---------------------------------------------------|
% ----------------Answers for Q4(C)(iii)-------------|
% ---------------------------------------------------|
% ?- f(s(s(s(s(s(s(1)))))),C).
% C = one.
% ---------------------------------------------------|
% ----------------Answers for Q4(C)(iv)--------------|
% ---------------------------------------------------|
% ?- f(D,three).
% D = s(s(1)) ;
% D = s(s(s(s(s(1))))) ;
% D = s(s(s(s(s(s(s(s(1)))))))) ;
% D = s(s(s(s(s(s(s(s(s(s(...)))))))))) ;