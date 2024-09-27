% classes
class(scout).
class(soldier).
class(pyro).
class(demoman).
class(heavy).
class(engineer).
class(medic).
class(sniper).
class(spy).

role(offence, [scout, soldier, pyro]).
role(defence, [demoman, heavy, engineer]).
role(support, [medic, sniper, spy]).

has_role(Class, Role) :-
    role(Role, Classes),
    member(Class, Classes).
