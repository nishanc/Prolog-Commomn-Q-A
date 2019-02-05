% ---------------------------------------------------|
% ----------------Answers for Q5(a)------------------|
% ---------------------------------------------------|
msort([],[]).
msort([A],[A]).
msort([A,B|R],S):-split([A,B|R],L1,L2),msort(L1,S1),msort(L2,S2),merge(S1,S2,S).

split([],[],[]).
split([A],[A],[]).
split([A,B|R],[A|Ra],[B|Rb]):-split(R,Ra,Rb).

merge(A,[],A).
merge([],B,B).
merge([A|Ra],[B|Rb],[A|M]):-A=<B, merge(Ra,[B|Rb],M).
merge([A|Ra],[B|Rb],[B|M]):-A>B, merge([A|Ra],Rb,M).