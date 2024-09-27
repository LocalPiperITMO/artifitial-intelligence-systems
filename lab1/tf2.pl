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

% weapons (stock)
weapon(scattergun).
weapon(pistol).
weapon(bat).
weapon(rocket_launcher).
weapon(shotgun).
weapon(shovel).
weapon(flamethrower).
weapon(fire_axe).
weapon(grenade_launcher).
weapon(stickybomb_launcher).
weapon(bottle).
weapon(minigun).
weapon(fists).
weapon(wrench).
weapon(syringe_gun).
weapon(medigun).
weapon(bonesaw).
weapon(sniper_rifle).
weapon(smg).
weapon(kukri).
weapon(revolver).
weapon(sapper).
weapon(knife).
weapon(invisibility_watch).

% weapon categories
category(primary, [scattergun, rocket_launcher, flamethrower, 
                  grenade_launcher, minigun, shotgun, syringe_gun, 
                  sniper_rifle, revolver]).
category(secondary, [pistol, shotgun, stickybomb_launcher,
                      medigun, smg, sapper]).
category(melee, [bat, shovel, fire_axe, bottle, fists, wrench, bonesaw, kukri, knife]).
category(misc, [invisibility_watch]).

has_category(Weapon, Category) :-
    category(Category, Weapons),
    member(Weapon, Weapons).
