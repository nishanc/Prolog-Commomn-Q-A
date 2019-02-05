# Logic Programming
# Assignment

# -----------------------------------------------------------

1. (a) Consider the following clauses in a Prolog program.

```
son_of (saman, ravi, manori). % Saman is a son of Ravi and Manori.
son_of (kasun, ravi, manori).
son_of (amara, saman, amali).
son_of (sumith, kasun, sumana).
son_of (palitha, kasun, sumana).
son_of (sugath, shanaka, shalini).
son_of (jeewaka, shanaka, shalini).
son_of (prabath, lal, neela).
son_of (sahan, amara, nalini).
son_of (jeevan, kamal, ruwanthi).
son_of (mahesh, sumith, geetha).
son_of (sajith, sumith, geetha).
son_of (gihan, palitha, champa).
son_of (panduka, nihal, chandani).
daughter_of(shalini, ravi, manori). % Shalini is a daughter of Ravi and Manori.
daughter_of(neela, saman, amali).
daughter_of(praba, amara, nalini).
daughter_of(ruwani, kasun, sumana).
daughter_of(chandani, shanaka, shalini).
daughter_of(dilani, nihal, chandani).
daughter_of(nilushi, jeewaka, priyani).
Define the following relations:
(i) father_of (X,Y). % X is the father of Y
(ii) mother_of (X,Y). % X is the mother of Y
(iii) parent_of (X,Y). % X is a parent of Y
(iv) brother_of (X,Y). % X is a brother of Y
(v) sister_of (X,Y). % X is a sister of Y
(vi) grandparent_of(X,Y). % X is a grandparent of Y
(vii) grandgrandfather_of(X,Y). % X is a grand grandfather of Y
(viii) husband_of(X,Y). % X is the husband of Y
(ix) married_to(X,Y). % X is married to Y
(x) cousin_of (X,Y). % X is a cousin of Y
(xi) uncle_of (X,Y). % X is an uncle of Y
(xii) father_in_law(X,Y). % X is the farther-in-law of Y
(xiii) brother_in_law(X,Y). % X is the brother-in-law of Y
(xiv) son_in_law (X,Y). % X is the son-in-law of Y
```
```
(b) Using the knowledge base in part 1(a), formulate Prolog queries for the following
requests and questions.
(i) Find all the brothers and sisters of Ruwani.
(ii) Who is the grand mother of Suranga.
(iii) Find all descendants of Kasun.
(iv) List all the fathers who appear in the database.
(v) Find all the cousins of Kasun.
(vi) By using the husband_of relation find the husband of Priyani and the wife of
Sumith.
(vii) Who is the father-in-law of Champa?
```

2. (a) Define the relation,
    conc (L1,L2,L),

## where Lis the concatenation of the two lists L1 and L.

## Using the concrelation, define the following relations.

## (i) sublist(S,L) is true iff the list S occurs within the list L as its sub list.

```
(ii) shift(L1,L2) is true iffL2 in L1, shift rotationally by an element to the left.
For example,
|?_shift([1,2,3,4,5], L).
gives the result
L = [2,3,4,5,1].
```
## (iii) last(Item, List) is true iffItem is the last element of a list List.

```
(b) Define two predicates,
(i) evenlength(List)
(ii) oddlength(List),
so that they are true if their arguments in a list of even or odd length respectively.
For example, list [e,v,e,n] is even length and [o,d,d] is odd length.
```
3. (a) Define the relation,
    translateList(List1,List2)
       to translate a list of numbers between 0 and 9 to a list of the corresponding words.
       For example:
    |?_translateList([3,4,2,4],List2).
Gives the result,
List2=[three,four,two,four].

```
(Hint: Use the following as an auxiliary relations:means(0,zero), means(1,one),
means(2,two),..., means(9,nine))
```
```
(b) Write predicates for the following:
(i) cutlast(L1,L2) which is true if L2 is L1 with the last element removed.
(1) Using the relation conc.
(2) Without using the relation conc.
(ii) trim(L1,N,L2) which is true if L2 contains the first N elements of L.
(1) Using the relation conc.
(2) Without using the relation conc.
```
4. (a) (i) Define the relation
    reverse(List, ReversedList)
       that reverses the given list.
    (ii) A list is palindrome if it reads the same in the forward and in the backward
       direction.For example [m, a, d, a, m].
    Define the relation,palindrome(List), with and without using reverse.

```
(b) Will the following matching operations succeed or fail? If succeed what are the
resulting instantiations of variables?
```
```
(i) point(A,B)=point(1,2).
```

```
(ii) point(A,B)=point(X,Y,Z).
(iii) point(2,2)=4.
(iv) +(2,D)=+(E,2).
(v) triangle(point(-1,0),P2,P3)= triangle(P1,point(1,0),point(0,y)).
```
```
(c) Consider the following program:
```
```
f(1,one).
f(s(1),two).
f(s(s(1)),three).
f(s(s(s(X))),N):-f(X,N).
```
```
How will prolog answer the following questions? Whenever several answers are
possible, give at least two.
```
```
(i) |?_f(s(1),A).
(ii) |?_f(s(s(1)),two).
(iii) |?_f(s(s(s(s(s(s(1)))))),C).
```
(iv) |?_f(D,three).

5. (a) The algorithm for Merge Sort is as follows, to sort a list L:
    1. Divide L into two lists A and B, of approximately equal length.
    2. Sort A and B giving SA and SB.
    3. Merge SA and SB giving sorted SL
    Using the above algorithm, define the predicate, msort(S, SL), where SL is the sorted
    list of list L.
(b) Draw the search tree for the query
|?_msort([6,1,3],A).
6. Assuming the operator definitions:
    :-op(400,xfx,likes).
    :-op(300,yfx,and).
    :-op(200,fy,a).

```
Then the following terms are syntactically legal objects.
```
```
Term 1=dulan likes mathematics and physics.
Term 2=dasun and maya likes mathematics and physics.
Term 3=dulan and dasun and maya likes mathematics and physics.
```
```
(a) How are these terms understood by Prolog?
(b) What are their principal functors? and what is their structure?
(c) What will be the answer to the following queries?
(i) |?_dasun and maya likes What.
(ii) |?_Who likes mathematics and physics.
```

7. (a) The following Prolog program defines the relation , count(N,X,L) , Which is true if and
    only if N is the number of terms in the list L, which have value less than X.

```
count(0,X,[]).
count(N,X,[H|T]):-H<X,count(P,X,T), N is P+1.
count(N,X,[H|T]):-H>=X,count(N,X,T).
```
```
Draw the search tree for the query |?_count(N,9,[8,6,10,5,12,3]).
```
```
(b) Consider the following Prolog program which calculates the mean of a given list of
integers.
```
```
sum([],0).
sum([H|T],Sum):-sum(T,TSum),Sum is TSum+H.
```
```
length([],0).
length([X|R],Length):-length(R,RLength),Length is RLength+1.
```
```
Mean(L,Mean):-sum(L,Sum),length(L,N),Mean is Sum/N.
```
```
Draw the search tree for the query
|?_mean([4,13,-18,9],Mean).
```
8. (a) Let a program be:
    p(1).
    p(2):-!.
    p(3).

```
Write all prolog answers to the following questions.
(i) |?_p(X).
(ii) |?_p(X),p(Y).
(iii) |?_p(X),!,p(Y).
```
```
(b) The following relation classified the number into three classes: positive, zero and
negative.
class(Number,positive):-Number>0.
class(0,zero).
class(Number,negative):-Number<0.
Define the procedure in a more efficient way using cuts.
```
```
(c) Define procedure split(Number,Positive,Negative) which splits a list of numbers into
two lists, positive ones(including zero) and negative ones.
```
```
For example,
|?_split([3,-9,0,5,-2],[3,0,5],[-9,-2]).
Yes.
```
Propose two versions:
(i) With a cut (ii) Without cut


