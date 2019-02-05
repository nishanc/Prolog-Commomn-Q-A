% -------------------------------------------------|
% ----------------Answers for Q2(a)----------------|
% -------------------------------------------------|
conc([],L,L).
conc([Head|L1],L2,[Head|L]):-conc(L1,L2,L).
sublist(S,L):-conc(_,L2,L),conc(S,_,L2).
shift([X|L1],L2):-conc(L1,[X],L2).
last(Item,List):-conc(_,[Item],List).
% -------------------------------------------------|
% ----------------Answers for Q2(b)----------------|
% -------------------------------------------------|
evenlength([]).
evenlength([_,_|L]) :- evenlength(L).
oddlength([_]).
oddlength([_,_,_]).
oddlength([_,_|L]) :- oddlength(L).