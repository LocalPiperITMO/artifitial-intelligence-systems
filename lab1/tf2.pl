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

% combined_abilities/2 predicate
combined_abilities(Class, Abilities) :-
    % get class-provided abilities
    class_abilities(Class, ClassAbilities),
    % get all weapons the class has
    class_weapons(Class, Weapons),
    % collect all weapon-provided abilities
    findall(WeaponAbilities, (member(Weapon, Weapons), weapon_abilities(Weapon, WeaponAbilities)), WeaponAbilitiesList),
    % flatten the list of weapon abilities
    flatten(WeaponAbilitiesList, FlattenedWeaponAbilities),
    % combine class and weapon abilities
    append(ClassAbilities, FlattenedWeaponAbilities, AllAbilities),
    % remove duplicates
    list_to_set(AllAbilities, Abilities).
