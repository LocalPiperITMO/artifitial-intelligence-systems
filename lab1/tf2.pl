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
class_abilities(demoman, []).
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

% weapons (variations)
weapon(force-a-nature).
weapon(shortstop).
weapon(soda_popper).
weapon(baby_face_blaster).
weapon(backscatter).
weapon(winger).
weapon(pppp).
weapon(flying_guillotine).
weapon(bonk_atomic_punch).
weapon(crit_a_cola).
weapon(mad_milk).
weapon(sandman).
weapon(candy_cane).
weapon(boston_basher).
weapon(sun_on_a_stick).
weapon(fan_o_war).
weapon(atomizer).
weapon(wrap_assasin).

weapon(direct_hit).
weapon(black_box).
weapon(rocket_jumper).
weapon(liberty_launcher).
weapon(beggars_bazooka).
weapon(cow_mangler_5000).
weapon(air_strike).
weapon(reserve_shooter).
weapon(buff_banner).
weapon(gun_boats).
weapon(battallons_backup).
weapon(concheror).
weapon(mantreads).
weapon(righteous_bison).
weapon(base_jumper).
weapon(panic_attack).
weapon(equalizer).
weapon(pain_train).
weapon(half_zatoichi).
weapon(disciplinary_action).
weapon(market_gardener).
weapon(escape_plan).

weapon(backburner).
weapon(degreaser).
weapon(phlogistonator).
weapon(dragons_fury).
weapon(flare_gun).
weapon(detonator).
weapon(manmelter).
weapon(scorch_shot).
weapon(thermal_thruster).
weapon(gas_passer).
weapon(axtinguisher).
weapon(postal_pummeler).
weapon(homewrecker).
weapon(powerjack).
weapon(back_scratcher).
weapon(sharpened_volcano_fragment).
weapon(third_degree).
weapon(neon_annihilator).
weapon(hot_hand).

weapon(loch_n_load).
weapon(bootlegger).
weapon(loose_cannon).
weapon(iron_bomber).
weapon(scottish_resistance).
weapon(chargin_targe).
weapon(sticky_jumper).
weapon(splendid_screen).
weapon(tide_turner).
weapon(quickiebomb_launcher).
weapon(eyelander).
weapon(scotsmans_skullcutter).
weapon(claldheamh_mor).
weapon(persian_persuader).

weapon(natasha).
weapon(brass_beast).
weapon(tomislav).
weapon(huo_long_heater).
weapon(family_business).
weapon(sandwich).
weapon(dalokohs_bar).
weapon(buffalo_steak).
weapon(second_banana).
weapon(kgb).
weapon(gru).
weapon(warriors_spirit).
weapon(fists_of_steel).
weapon(eviction_notice).
weapon(holiday_punch).

weapon(frontier_justice).
weapon(widowmaker).
weapon(pomson_6000).
weapon(rescue_ranger).
weapon(wrangler).
weapon(short_circuit).
weapon(gunslinger).
weapon(southern_hospitality).
weapon(jag).
weapon(eureka_effect).

weapon(blutsauger).
weapon(crusaders_crossbow).
weapon(overdose).
weapon(kritzkrieg).
weapon(quick_fix).
weapon(vaccinator).
weapon(ubersaw).
weapon(vitasaw).
weapon(amputator).
weapon(solemn_vow).

weapon(huntsman).
weapon(sydney_sleeper).
weapon(bazaar_bargain).
weapon(machina).
weapon(hitmans_heatmaker).
weapon(classic).
weapon(cleaners_carbine).
weapon(jarate).
weapon(razorback).
weapon(cozy_camper).
weapon(dds).
weapon(shiv).
weapon(bushwacka).
weapon(shahanshah).

weapon(ambassador).
weapon(letranger).
weapon(enforcer).
weapon(diamondback).
weapon(yer).
weapon(kunai).
weapon(big_earner).
weapon(spycicle).
weapon(rtr).
weapon(cloak_and_dagger).
weapon(dead_ringer).

% weapon categories
category(primary, [scattergun, rocket_launcher, flamethrower, 
                  grenade_launcher, minigun, shotgun, syringe_gun, 
                  sniper_rifle, revolver,
                  force_a_nature, shortstop, soda_popper, baby_face_blaster, backscatter,
                  direct_hit, black_box, rocket_jumper, liberty_launcher, beggars_bazooka, cow_mangler_5000, air_strike,
                  backburner, degreaser, phlogistonator, dragons_fury,
                  loch_n_load, bootlegger, loose_cannon, base_jumper, iron_bomber,
                  natasha, brass_beast, tomislav, huo_long_heater,
                  panic_attack, frontier_justice, widowmaker, pomson_6000, rescue_ranger,
                  blutsauger, crusaders_crossbow, overdose,
                  huntsman, sydney_sleeper, bazaar_bargain, machina, hitmans_heatmaker, classic,
                  ambassador, letranger, enforcer, diamondback]).
category(secondary, [pistol, shotgun, stickybomb_launcher,
                      medigun, smg, sapper,
                      winger, pppp, flying_guillotine, bonk_atomic_punch, crit_a_cola, mad_milk,
                      reserve_shooter, buff_banner, gun_boats, battallons_backup, concheror, mantreads, righteous_bison, base_jumper, panic_attack,
                      flare_gun, detonator, manmelter, scorch_shot, thermal_thruster, gas_passer,
                      scottish_resistance, chargin_targe, sticky_jumper, splendid_screen, tide_turner, quickiebomb_launcher,
                      family_business, panic_attack, sandwich, dalokohs_bar, buffalo_steak, second_banana,
                      wrangler, short_circuit,
                      kritzkreig, quick_fix, vaccinator,
                      cleaners_carbine, jarate, razorback, cozy_camper, dds, rtr]).
category(melee, [bat, shovel, fire_axe, bottle, fists, wrench, bonesaw, kukri, knife,
                  sandman, candy_cane, boston_basher, sun_on_a_stick, fan_o_war, atomizer, wrap_assasin,
                  equalizer, pain_train, half_zatoichi, disciplinary_action, market_gardener, escape_plan,
                  axtinguisher, postal_pummeler, homewrecker, powerjack, back_scratcher, sharpened_volcano_fragment, third_degree, neon_annihilator, hot_hand,
                  eyelander, scotsmans_skullcutter, claidheamh_mor, persian_persuader,
                  kgb, gru, warriors_spirit, fists_of_steel, eviction_notice, holiday_punch,
                  gunslinger, southern_hospitality, jag, eureka_effect,
                  ubersaw, vitasaw, amputator, solemn_vow,
                  shiv, bushwacka, shahanshah,
                  yer, kunai, big_earner, spycicle]).
category(misc, [invisibility_watch, cloak_and_dagger, dead_ringer]).

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

% weapon-provided abilities (variations)
weapon_abilities(shortstop, [quick_reload, push]).
weapon_abilities(soda_popper, [quick_reload, infinite_jump]).
weapon_abilities(baby_face_blaster, [acceleration]).
weapon_abilities(backscatter, [minicrit_on_backshot]).
weapon_abilities(force_a_nature, [quick_reload, knockback]).
weapon_abilities(winger, [increased_jump]).
weapon_abilities(pppp, [lifesteal, low_damage]).
weapon_abilities(flying_guillotine, [throwable, bleeding]).
weapon_abilities(bonk_atomic_punch, [temporary_invincibility]).
weapon_abilities(crit_a_cola, [minicrits]).
weapon_abilities(mad_milk, [lifesteal]).
weapon_abilities(sandman, [stun, low_damage]).
weapon_abilities(candy_cane, [lifesteal]).
weapon_abilities(boston_basher, [self-damage, bleeding]).
weapon_abilities(sun_on_a_stick, [lifesteal, fire_damage]).
weapon_abilities(fan_o_war, [low_damage, death_mark]).
weapon_abilities(atomizer, [triple_jump, low_damage]).
weapon_abilities(wrap_assasin, [silent, bleeding]).
weapon_abilities(direct_hit, [minicrits, high_damage, projectiles]).
weapon_abilities(black_box, [lifesteal, projectiles, blast_damage]).
weapon_abilities(rocket_jumper, [no_damage]).
weapon_abilities(liberty_launcher, [minicrits, knockback, low_damage, projectiles, blast_damage]).
weapon_abilities(beggars_bazooka, [accumulation, projectiles, blast_damage]).
weapon_abilities(cow_mangler_5000, [infinite_ammo, overcharge, projectiles, damage_to_buildings, blast_damage, fire_damage]).
weapon_abilities(air_strike, [carpet_bomber, blast_damage]).
weapon_abilities(reserve_shooter, [faster_draw, minicrits]).
weapon_abilities(buff_banner, [team_damage_boost]).
weapon_abilities(gun_boats, [reduced_explosive_damage]).
weapon_abilities(battallons_backup, [team_resistance_boost]).
weapon_abilities(concheror, [team_speed_and_health_boost]).
weapon_abilities(mantreads, [explosive_jump_reduction, air_control]).
weapon_abilities(righteous_bison, [infinite_ammo, armor_penetration, low_damage]).
weapon_abilities(base_jumper, [no_damage, flight, air_control]).
weapon_abilities(panic_attack, [burst_shot]).
weapon_abilities(equalizer, [high_damage]).
weapon_abilities(pain_train, [capture_rate]).
weapon_abilities(half_zatoichi, [lifesteal, force_melee]).
weapon_abilities(disciplinary_action, [speed_boost]).
weapon_abilities(market_gardener, [minicrits]).
weapon_abilities(escape_plan, [speed_boost]).
weapon_abilities(backburner, [fire_damage, airblast, minicrit_on_backshot]).
weapon_abilities(degreaser, [fire_damage, airblast, faster_draw]).
weapon_abilities(phlogistonator, [fire_damage, crits]).
weapon_abilities(dragons_fury, [fire_damage, airblast, fireball]).
weapon_abilities(flare_gun, [fire_damage, crits]).
weapon_abilities(detonator, [fire_damage, minicrits, remote_detonation]).
weapon_abilities(manmelter, [fire_damage]).
weapon_abilities(scorch_shot, [fire_damage, blast_damage]).
weapon_abilities(thermal_thruster, [flight, knockback]).
weapon_abilities(gas_passer, [ingition]).
weapon_abilities(axtinguisher, [minicrits]).
weapon_abilities(postal_pummeler, []).
weapon_abilities(homewrecker, [unsap]).
weapon_abilities(powerjack, [speed, lifesteal]).
weapon_abilities(back_scratcher, [high_damage]).
weapon_abilities(sharpened_volcano_fragment, [fire_damage]).
weapon_abilities(third_degree, [chaining]).
weapon_abilities(neon_annihilator, [crits]).
weapon_abilities(hot_hand, [acceleration, fire_damage]).
weapon_abilities(loch_n_load, [damage_to_buildings, projectiles]).
weapon_abilities(bootlegger, [boots]).
weapon_abilities(loose_cannon, [minicrits, knockback, remote_detonation, projectiles]).
weapon_abilities(iron_bomber, [projectiles, no_roll, blast_damage]).
weapon_abilities(scottish_resistance, [projectiles, blast_damage, remote_detonation]).
weapon_abilities(chargin_targe, [charge, slam, crits]).
weapon_abilities(sticky_jumper, [no_damage]).
weapon_abilities(splendid_screen, [charge, slam, crits]).
weapon_abilities(tide_turner, [charge, charge_control, minicrits]).
weapon_abilities(quickiebomb_launcher, [remote_detonation, blast_damage, projectiles]).
weapon_abilities(eyelander, [heads, speed]).
weapon_abilities(scotsmans_skullcutter, [high_damage]).
weapon_abilities(claidheamh_mor, [increased_charge_time, charge_control]).
weapon_abilities(persian_persuader, [charge_recharge]).
weapon_abilities(natasha, [slow]).
weapon_abilities(brass_beast, [high_damage]).
weapon_abilities(tomislav, [silent]).
weapon_abilities(huo_long_heater, [fire_damage]).
weapon_abilities(family_business, [high_damage, burst_shot]).
weapon_abilities(sandwich, [heal]).
weapon_abilities(dalokohs_bar, [increase_max_hp, heal]).
weapon_abilities(buffalo_steak, [minicrits, force_melee]).
weapon_abilities(second_banana, [heal]).
weapon_abilities(kgb, [crits, high_damage]).
weapon_abilities(gru, [speed]).
weapon_abilities(warriors_spirit, [high_damage]).
weapon_abilities(fists_of_steel, [damage_resistance]).
weapon_abilities(eviction_notice, [speed]).
weapon_abilities(holiday_punch, [stun]).
weapon_abilities(frontier_justice, [crits, burst_shot]).
weapon_abilities(widowmaker, [burst_shot, infinite_ammo, no_reload]).
weapon_abilities(pomson_6000, [projectiles]).
weapon_abilities(rescue_ranger, [repair, projectiles]).
weapon_abilities(wrangler, [manual_control]).
weapon_abilities(short_circuit, [projectile_destruction]).
weapon_abilities(gunslinger, [mini_sentry, construction_speed]).
weapon_abilities(southern_hospitality, [bleeding]).
weapon_abilities(jag, [construction_speed]).
weapon_abilities(eureka_effect, [teleport]).
weapon_abilities(blutsauger, [lifesteal, low_damage]).
weapon_abilities(crusaders_crossbow, [heal]).
weapon_abilities(overdose, [speed_boost]).
weapon_abilities(kritzkrieg, [crits]).
weapon_abilities(quick_fix, [faster_healing]).
weapon_abilities(vaccinator, [blast_resistance, fire_resistance, bullet_resistance]).
weapon_abilities(ubersaw, [faster_charge_rate]).
weapon_abilities(vitasaw, [faster_charge_rate]).
weapon_abilities(amputator, [heal]).
weapon_abilities(solemn_vow, [show_health]).
weapon_abilities(huntsman, [charged_shot, projectiles]).
weapon_abilities(sydney_sleeper, [charged_shot, minicrits, zoom, death_mark]).
weapon_abilities(bazaar_bargain, [charged_shot, zoom]).
weapon_abilities(machina, [high_damage, zoom, charged_shot]).
weapon_abilities(hitmans_heatmaker, [zoom, charged_shot]).
weapon_abilities(classic, [charged_shot]).
weapon_abilities(cleaners_carbine, [low_damage]).
weapon_abilities(jarate, [death_mark]).
weapon_abilities(razorback, [backstab_resistance]).
weapon_abilities(cozy_camper, [heal]).
weapon_abilities(dds, [fire_resistance]).
weapon_abilities(shiv, [bleeding]).
weapon_abilities(bushwacka, [crits]).
weapon_abilities(shahanshah, [high_damage]).
weapon_abilities(ambassador, [headshot]).
weapon_abilities(letranger, [longer_invisibility]).
weapon_abilities(enforcer, [high_damage]).
weapon_abilities(diamondback, [crits]).
weapon_abilities(yer, [silent, autocloak]).
weapon_abilities(kunai, [lifesteal]).
weapon_abilities(big_earner, [acceleration]).
weapon_abilities(spycicle, [fire_resistance]).
weapon_abilities(rtr, [revert]).
weapon_abilities(cloak_and_dagger, [infinite_invisibility]).
weapon_abilities(dead_ringer, [fake_death, invisibility]).

has_weapon_ability(Weapon, Ability) :-
    weapon_abilities(Weapon, Abilities),
    member(Ability, Abilities).

% class weapons including additional weapons per class
class_weapons(scout, [
    scattergun, pistol, bat,
    force_a_nature, shortstop, soda_popper, baby_face_blaster,
    backscatter, winger, pppp, flying_guillotine, 
    bonk_atomic_punch, crit_a_cola, mad_milk, sandman,
    candy_cane, boston_basher, sun_on_a_stick, fan_o_war,
    atomizer, wrap_assasin
]).

class_weapons(soldier, [
    rocket_launcher, shotgun, shovel,
    direct_hit, black_box, rocket_jumper, liberty_launcher,
    beggars_bazooka, cow_mangler_5000, air_strike,
    reserve_shooter, buff_banner, gun_boats,
    battallons_backup, concheror, mantreads,
    righteous_bison, base_jumper, panic_attack,
    equalizer, pain_train, half_zatoichi,
    disciplinary_action, market_gardener, escape_plan
]).

class_weapons(pyro, [
    flamethrower, shotgun, fire_axe,
    backburner, degreaser, phlogistonator, dragons_fury,
    flare_gun, detonator, manmelter,
    scorch_shot, thermal_thruster, gas_passer, 
    reserve_shooter, panic_attack,
    axtinguisher, postal_pummeler, homewrecker,
    powerjack, back_scratcher, sharpened_volcano_fragment,
    third_degree, neon_annihilator, hot_hand
]).

class_weapons(demoman, [
    grenade_launcher, stickybomb_launcher, bottle,
    loch_n_load, bootlegger, loose_cannon, base_jumper,
    iron_bomber, scottish_resistance, chargin_targe, 
    sticky_jumper, splendid_screen, tide_turner,
    quickiebomb_launcher, eyelander, scotsmans_skullcutter,
    claidheamh_mor, persian_persuader, pain_train, half_zatoichi
]).

class_weapons(heavy, [
    minigun, shotgun, fists,
    natasha, brass_beast, tomislav,
    huo_long_heater, family_business, panic_attack, 
    sandwich, dalokohs_bar, buffalo_steak, 
    second_banana, kgb, gru,
    warriors_spirit, fists_of_steel, eviction_notice,
    holiday_punch
]).

class_weapons(engineer, [
    shotgun, pistol, wrench, panic_attack,
    frontier_justice, widowmaker, pomson_6000,
    rescue_ranger, wrangler, short_circuit, 
    gunslinger, southern_hospitality, jag,
    eureka_effect
]).

class_weapons(medic, [
    syringe_gun, medigun, bonesaw,
    blutsauger, crusaders_crossbow, overdose,
    kritzkreig, quick_fix, vaccinator,
    ubersaw, vitasaw, amputator,
    solemn_vow
]).

class_weapons(sniper, [
    sniper_rifle, smg, kukri,
    huntsman, sydney_sleeper, bazaar_bargain,
    machina, hitmans_heatmaker, classic,
    cleaners_carbine, jarate, razorback,
    cozy_camper, dds
]).

class_weapons(spy, [
    revolver, sapper, knife, invisibility_watch,
    ambassador, letranger, enforcer, diamondback,
    yer, kunai, big_earner,
    spycicle, rtr, cloak_and_dagger,
    dead_ringer
]).

has_weapon(Class, Weapon) :-
    class_weapons(Class, Weapons),
    member(Weapon, Weapons).

% Check if a weapon is primary, secondary, melee, or misc based on the category
is_primary(Weapon) :- has_category(Weapon, primary).
is_secondary(Weapon) :- has_category(Weapon, secondary).
is_melee(Weapon) :- has_category(Weapon, melee).
is_misc(Weapon) :- has_category(Weapon, misc).

% chosen_abilities/4 predicate
chosen_abilities(Class, Primary, Secondary, Melee, Misc, Abilities) :-
    % Check if the class is Spy
    (Class = spy -> 
        (is_primary(Primary), is_secondary(Secondary),
         is_melee(Melee), is_misc(Misc)); 
        (is_primary(Primary), is_secondary(Secondary), 
         is_melee(Melee), Misc = none)),  % If not a spy, Misc should be none
    % Check if the class can use the provided weapons
    has_weapon(Class, Primary),
    has_weapon(Class, Secondary),
    has_weapon(Class, Melee),
    (Class = spy -> has_weapon(Class, Misc) ; true),
    % Get class-provided abilities
    class_abilities(Class, ClassAbilities),
    % Get weapon abilities
    findall(Ability, (member(Weapon, [Primary, Secondary, Melee, Misc]), 
                       Weapon \= none,
                       has_weapon_ability(Weapon, Ability)), WeaponAbilities),
    % Combine the abilities and remove duplicates
    append(ClassAbilities, WeaponAbilities, AllAbilities),
    list_to_set(AllAbilities, Abilities).

% find_valid_loadout/3 - Generates a valid loadout for a given class
find_valid_loadout(Class, Abilities, Loadout) :-
    findall(Primary, (has_weapon(Class, Primary), is_primary(Primary)), Primaries),
    findall(Secondary, (has_weapon(Class, Secondary), is_secondary(Secondary)), Secondaries),
    findall(Melee, (has_weapon(Class, Melee), is_melee(Melee)), Melees),
    
    (Class = spy -> findall(Misc, (has_weapon(Class, Misc), is_misc(Misc)), Miscs) ; Miscs = [none]),
    
    Primaries \= [], Secondaries \= [], Melees \= [],
    
    member(Primary, Primaries),
    member(Secondary, Secondaries),
    member(Melee, Melees),
    member(Misc, Miscs),

    Loadout = (Primary, Secondary, Melee, Misc),
    
    class_abilities(Class, ClassAbilities),
    findall(Ability, (member(Weapon, [Primary, Secondary, Melee, Misc]),
                       Weapon \= none,
                       has_weapon_ability(Weapon, Ability)), WeaponAbilities),
    
    append(ClassAbilities, WeaponAbilities, AllAbilities),
    list_to_set(AllAbilities, UniqueAbilities),
    
    subset(Abilities, UniqueAbilities).

% find_classes_by_abilities/3 - Finds all loadouts for a specified class and given abilities
find_classes_by_abilities(Class, Abilities, Result) :-
    \+ var(Class), % force to specify class
    findall(Loadout, find_valid_loadout(Class, Abilities, Loadout), Results),
    (Results \= [] -> 
        Result = Results 
    ; 
        false
    ).

% find_loadouts_by_abilities/2 - Finds all loadouts for any class matching the abilities
find_loadouts_by_abilities(Abilities, Result) :-
    findall(Class-Loadout, (class(Class), find_classes_by_abilities(Class, Abilities, Loadout)), Results),
    (Results \= [] -> 
        Result = Results 
    ; 
        false
    ).
