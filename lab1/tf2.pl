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

% roles
role(offence, [scout, soldier, pyro]).
role(defence, [demoman, heavy, engineer]).
role(support, [medic, sniper, spy]).

has_role(Class, Role) :-
    role(Role, Classes),
    member(Class, Classes).

% class-provided abilities
class_abilities(scout, [speed, double_jump]).
class_abilities(soldier, [rocket_jump]).
class_abilities(pyro, [fire_resistance]).
class_abilities(heavy, [slow, big_hp]).
class_abilities(engineer, [build_sentry, build_dispencer, build_teleport]).
class_abilities(medic, [heal]).
class_abilities(sniper, [headshot]).
class_abilities(spy, [disguise, backstab]).

has_ability(Class, Ability) :-
    class_abilities(Class, Abilities),
    member(Ability, Abilities).
