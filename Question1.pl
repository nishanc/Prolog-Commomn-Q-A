son_of(saman, ravi, manori). % Saman is a son of Ravi and Manori.
son_of(kasun, ravi, manori).
son_of(amara, saman, amali).
son_of(sumith, kasun, sumana).
son_of(palitha, kasun, sumana).
son_of(sugath, shanaka, shalini).
son_of(jeewaka, shanaka, shalini).
son_of(prabath, lal, neela).
son_of(sahan, amara, nalini).
son_of(jeevan, kamal, ruwanthi).
son_of(mahesh, sumith, geetha).
son_of(sajith, sumith, geetha).
son_of(gihan, palitha, champa).
son_of(panduka, nihal, chandani).
daughter_of(shalini, ravi, manori). % Shalini is a daughter of Ravi and Manori.
daughter_of(neela, saman, amali).
daughter_of(praba, amara, nalini).
daughter_of(ruwani, kasun, sumana).
daughter_of(chandani, shanaka, shalini).
daughter_of(dilani, nihal, chandani).
daughter_of(nilushi, jeewaka, priyani).
% -------------------------------------------------|
% --------------Definitions for Q1(a)--------------|
% -------------------------------------------------|
father_of(X,Y):-son_of(Y,X,_);daughter_of(Y,X,_).
mother_of(X,Y):-son_of(Y,_,X);daughter_of(Y,_,X).
parent_of(X,Y):-father_of(X,Y);mother_of(X,Y).
brother_of(X,Y):-son_of(X,A,B),(son_of(Y,A,B);daughter_of(Y,A,B)),not(X=Y).
sister_of(X,Y):-daughter_of(X,A,B),(son_of(Y,A,B);daughter_of(Y,A,B)),not(X=Y).
grandparent_of(X,Y):-parent_of(X,Z),parent_of(Z,Y).
grandgrandfather_of(X,Y):-father_of(X,A),parent_of(A,B),parent_of(B,Y).
husband_of(X,Y):-father_of(X,Z),mother_of(Y,Z).
married_to(X,Y):-parent_of(X,Z),parent_of(Y,Z),not(X=Y).
%cousin_of(X,Y):-grandparent_of(Z,X),grandparent_of(Z,Y),not(X=Y).
cousin_of(X,Y):-parent_of(A,X),parent_of(B,Y),(brother_of(A,B);sister_of(A,B)).
uncle_of(X,Y):-parent_of(Z,Y),brother_of(X,Z).
father_in_law(X,Y):-married_to(Y,Z),father_of(X,Z).
brother_in_law(X,Y):-married_to(Y,Z),brother_of(X,Z).
son_in_law(X,Y):-(daughter_of(Z,Y,_);daughter_of(Z,_,Y)),married_to(X,Z).
% -------------------------------------------------|
% ----------------Queries for Q1(b)----------------|
% -------------------------------------------------|
% brother_of(X,ruwani);sister_of(X,ruwani).
        % X = sumith ;
        % X = palitha ;
% mother_of(X,Y),parent_of(Y,suranga).
% parent_of(kasun,X);grandparent_of(kasun,X).
%       OR introduce a recursive rule as follows and ask query "descend(X,kasun)."
%       descend(X,Y):-parent_of(Y,X).
%       descend(X,Y):-parent_of(Y,Z),descend(X,Z).
        % X = sumith ;
        % X = palitha ;
        % X = ruwani ;
        % X = mahesh ;
        % X = sajith ;
        % X = gihan ;
% father_of(X,_).
        % X = ravi ;
        % X = shanaka ;
        % X = lal ;
        % X = amara ;
        % X = kamal ;
        % X = sumith ;
        % X = palitha ;
        % X = saman ;
        % X = kasun ;
        % X = nihal ;
        % X = jeewaka.
% cousin_of(X,kasun).
% husband_of(X,priyani);husband_of(sumith,Y).
        % X = jeewaka ;
        % Y = geetha ;
% father_in_law(X,champa).
        % X = kasun ;