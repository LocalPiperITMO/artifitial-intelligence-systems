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

% weapon-provided abilities
weapon_abilities(scattergun, [burst_shot]).
weapon_abilities(pistol, [low_damage]).
weapon_abilities(bat, [low_damage]).
weapon_abilities(rocket_launcher, [blast_damage, projectiles]).
weapon_abilities(shotgun, [burst_shot]).
weapon_abilities(flamethrower, [fire_damage, airblast]).
weapon_abilities(grenade_launcher, [blast_damage, projectiles]).
weapon_abilities(stickybomb_launcher, [blast_damage, projectiles, remote_detonation]).
weapon_abilities(minigun, [high_speed]).
weapon_abilities(wrench, [repair, unsap]).
weapon_abilities(syringe_gun, [low_damage]).
weapon_abilities(medigun, [ubercharge]).
weapon_abilities(sniper_rifle, [zoom, charged_shot]).
weapon_abilities(smg, [low_damage]).
weapon_abilities(sapper, [sap]).
weapon_abilities(invisibility_watch, [invisibility]).

has_weapon_ability(Weapon, Ability) :-
    weapon_abilities(Weapon, Abilities),
    member(Ability, Abilities).
