% Artifact relationships and facts
artifact_period(royal_crown, konbaung_dynasty).
artifact_period(tapestry, nineteenth_century).
artifact_period(buddha_statue, pagan_period).

% Historical periods and their relationships
period_year(konbaung_dynasty, 1752, 1885).
period_year(pagan_period, 849, 1297).
period_year(nineteenth_century, 1801, 1900).

% Cultural significance rules
cultural_significance(X, royal) :- artifact_period(X, konbaung_dynasty).
cultural_significance(X, religious) :- artifact_period(X, pagan_period).

% Material relationships
made_of(royal_crown, gold).
made_of(buddha_statue, bronze).
made_of(tapestry, silk).