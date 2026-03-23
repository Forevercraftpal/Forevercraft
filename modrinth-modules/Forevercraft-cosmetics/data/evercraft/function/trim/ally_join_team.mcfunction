# Join a nearby tagged entity to the player's current team
# Run as: player | Tag target entity with "join_my_team" before calling
# Ensures summoned allies (vex, guardian) share the player's team for friendly fire protection

# Default team
execute if entity @s[team=vex_allies] run team join vex_allies @e[tag=join_my_team,distance=..16,limit=1]

# Advantage cosmetic teams
execute if entity @s[team=adv.cosm_agility] run team join adv.cosm_agility @e[tag=join_my_team,distance=..16,limit=1]
execute if entity @s[team=adv.cosm_dexterity] run team join adv.cosm_dexterity @e[tag=join_my_team,distance=..16,limit=1]
execute if entity @s[team=adv.cosm_evasion] run team join adv.cosm_evasion @e[tag=join_my_team,distance=..16,limit=1]
execute if entity @s[team=adv.cosm_stealth] run team join adv.cosm_stealth @e[tag=join_my_team,distance=..16,limit=1]
execute if entity @s[team=adv.cosm_vitality] run team join adv.cosm_vitality @e[tag=join_my_team,distance=..16,limit=1]
execute if entity @s[team=adv.cosm_taskmaster] run team join adv.cosm_taskmaster @e[tag=join_my_team,distance=..16,limit=1]
execute if entity @s[team=adv.cosm_beastmaster] run team join adv.cosm_beastmaster @e[tag=join_my_team,distance=..16,limit=1]
execute if entity @s[team=adv.cosm_victorian] run team join adv.cosm_victorian @e[tag=join_my_team,distance=..16,limit=1]
execute if entity @s[team=adv.cosm_fishing] run team join adv.cosm_fishing @e[tag=join_my_team,distance=..16,limit=1]
execute if entity @s[team=adv.cosm_mining] run team join adv.cosm_mining @e[tag=join_my_team,distance=..16,limit=1]
execute if entity @s[team=adv.cosm_gathering] run team join adv.cosm_gathering @e[tag=join_my_team,distance=..16,limit=1]
execute if entity @s[team=adv.cosm_blacksmith] run team join adv.cosm_blacksmith @e[tag=join_my_team,distance=..16,limit=1]
execute if entity @s[team=adv.cosm_explorer] run team join adv.cosm_explorer @e[tag=join_my_team,distance=..16,limit=1]
execute if entity @s[team=adv.cosm_culinary] run team join adv.cosm_culinary @e[tag=join_my_team,distance=..16,limit=1]

# Crate cosmetic teams
execute if entity @s[team=adv.cc_dreamwalker] run team join adv.cc_dreamwalker @e[tag=join_my_team,distance=..16,limit=1]
execute if entity @s[team=adv.cc_stargazer] run team join adv.cc_stargazer @e[tag=join_my_team,distance=..16,limit=1]
execute if entity @s[team=adv.cc_ancient] run team join adv.cc_ancient @e[tag=join_my_team,distance=..16,limit=1]
execute if entity @s[team=adv.cc_moonblessed] run team join adv.cc_moonblessed @e[tag=join_my_team,distance=..16,limit=1]
execute if entity @s[team=adv.cc_nightborn] run team join adv.cc_nightborn @e[tag=join_my_team,distance=..16,limit=1]
execute if entity @s[team=adv.cc_sunforged] run team join adv.cc_sunforged @e[tag=join_my_team,distance=..16,limit=1]
execute if entity @s[team=adv.cc_eternal] run team join adv.cc_eternal @e[tag=join_my_team,distance=..16,limit=1]
execute if entity @s[team=adv.cc_stormchaser] run team join adv.cc_stormchaser @e[tag=join_my_team,distance=..16,limit=1]
execute if entity @s[team=adv.cc_frostbitten] run team join adv.cc_frostbitten @e[tag=join_my_team,distance=..16,limit=1]
execute if entity @s[team=adv.cc_flameheart] run team join adv.cc_flameheart @e[tag=join_my_team,distance=..16,limit=1]
execute if entity @s[team=adv.cc_tidecaller] run team join adv.cc_tidecaller @e[tag=join_my_team,distance=..16,limit=1]
execute if entity @s[team=adv.cc_earthshaker] run team join adv.cc_earthshaker @e[tag=join_my_team,distance=..16,limit=1]
execute if entity @s[team=adv.cc_voidtouched] run team join adv.cc_voidtouched @e[tag=join_my_team,distance=..16,limit=1]
execute if entity @s[team=adv.cc_wyrmborn] run team join adv.cc_wyrmborn @e[tag=join_my_team,distance=..16,limit=1]
execute if entity @s[team=adv.cc_undying] run team join adv.cc_undying @e[tag=join_my_team,distance=..16,limit=1]
execute if entity @s[team=adv.cc_spiritbound] run team join adv.cc_spiritbound @e[tag=join_my_team,distance=..16,limit=1]
execute if entity @s[team=adv.cc_dawnbringer] run team join adv.cc_dawnbringer @e[tag=join_my_team,distance=..16,limit=1]
execute if entity @s[team=adv.cc_forsaken] run team join adv.cc_forsaken @e[tag=join_my_team,distance=..16,limit=1]

# Boss title teams — Hollow King
execute if entity @s[team=wb.t_hk1] run team join wb.t_hk1 @e[tag=join_my_team,distance=..16,limit=1]
execute if entity @s[team=wb.t_hk2] run team join wb.t_hk2 @e[tag=join_my_team,distance=..16,limit=1]
execute if entity @s[team=wb.t_hk3] run team join wb.t_hk3 @e[tag=join_my_team,distance=..16,limit=1]
execute if entity @s[team=wb.t_hk4] run team join wb.t_hk4 @e[tag=join_my_team,distance=..16,limit=1]
# Verdant Warden
execute if entity @s[team=wb.t_vw1] run team join wb.t_vw1 @e[tag=join_my_team,distance=..16,limit=1]
execute if entity @s[team=wb.t_vw2] run team join wb.t_vw2 @e[tag=join_my_team,distance=..16,limit=1]
execute if entity @s[team=wb.t_vw3] run team join wb.t_vw3 @e[tag=join_my_team,distance=..16,limit=1]
execute if entity @s[team=wb.t_vw4] run team join wb.t_vw4 @e[tag=join_my_team,distance=..16,limit=1]
# Stormforged
execute if entity @s[team=wb.t_sf1] run team join wb.t_sf1 @e[tag=join_my_team,distance=..16,limit=1]
execute if entity @s[team=wb.t_sf2] run team join wb.t_sf2 @e[tag=join_my_team,distance=..16,limit=1]
execute if entity @s[team=wb.t_sf3] run team join wb.t_sf3 @e[tag=join_my_team,distance=..16,limit=1]
execute if entity @s[team=wb.t_sf4] run team join wb.t_sf4 @e[tag=join_my_team,distance=..16,limit=1]
# Tidecaller
execute if entity @s[team=wb.t_tc1] run team join wb.t_tc1 @e[tag=join_my_team,distance=..16,limit=1]
execute if entity @s[team=wb.t_tc2] run team join wb.t_tc2 @e[tag=join_my_team,distance=..16,limit=1]
execute if entity @s[team=wb.t_tc3] run team join wb.t_tc3 @e[tag=join_my_team,distance=..16,limit=1]
execute if entity @s[team=wb.t_tc4] run team join wb.t_tc4 @e[tag=join_my_team,distance=..16,limit=1]
# Earthshaker
execute if entity @s[team=wb.t_es1] run team join wb.t_es1 @e[tag=join_my_team,distance=..16,limit=1]
execute if entity @s[team=wb.t_es2] run team join wb.t_es2 @e[tag=join_my_team,distance=..16,limit=1]
execute if entity @s[team=wb.t_es3] run team join wb.t_es3 @e[tag=join_my_team,distance=..16,limit=1]
execute if entity @s[team=wb.t_es4] run team join wb.t_es4 @e[tag=join_my_team,distance=..16,limit=1]
# Nightmare
execute if entity @s[team=wb.t_nm1] run team join wb.t_nm1 @e[tag=join_my_team,distance=..16,limit=1]
execute if entity @s[team=wb.t_nm2] run team join wb.t_nm2 @e[tag=join_my_team,distance=..16,limit=1]
execute if entity @s[team=wb.t_nm3] run team join wb.t_nm3 @e[tag=join_my_team,distance=..16,limit=1]
execute if entity @s[team=wb.t_nm4] run team join wb.t_nm4 @e[tag=join_my_team,distance=..16,limit=1]
# Infernal Titan
execute if entity @s[team=wb.t_it1] run team join wb.t_it1 @e[tag=join_my_team,distance=..16,limit=1]
execute if entity @s[team=wb.t_it2] run team join wb.t_it2 @e[tag=join_my_team,distance=..16,limit=1]
execute if entity @s[team=wb.t_it3] run team join wb.t_it3 @e[tag=join_my_team,distance=..16,limit=1]
execute if entity @s[team=wb.t_it4] run team join wb.t_it4 @e[tag=join_my_team,distance=..16,limit=1]
# Soul Warden
execute if entity @s[team=wb.t_sw1] run team join wb.t_sw1 @e[tag=join_my_team,distance=..16,limit=1]
execute if entity @s[team=wb.t_sw2] run team join wb.t_sw2 @e[tag=join_my_team,distance=..16,limit=1]
execute if entity @s[team=wb.t_sw3] run team join wb.t_sw3 @e[tag=join_my_team,distance=..16,limit=1]
execute if entity @s[team=wb.t_sw4] run team join wb.t_sw4 @e[tag=join_my_team,distance=..16,limit=1]
# Crimson Behemoth
execute if entity @s[team=wb.t_cb1] run team join wb.t_cb1 @e[tag=join_my_team,distance=..16,limit=1]
execute if entity @s[team=wb.t_cb2] run team join wb.t_cb2 @e[tag=join_my_team,distance=..16,limit=1]
execute if entity @s[team=wb.t_cb3] run team join wb.t_cb3 @e[tag=join_my_team,distance=..16,limit=1]
execute if entity @s[team=wb.t_cb4] run team join wb.t_cb4 @e[tag=join_my_team,distance=..16,limit=1]
# Void Sovereign
execute if entity @s[team=wb.t_vs1] run team join wb.t_vs1 @e[tag=join_my_team,distance=..16,limit=1]
execute if entity @s[team=wb.t_vs2] run team join wb.t_vs2 @e[tag=join_my_team,distance=..16,limit=1]
execute if entity @s[team=wb.t_vs3] run team join wb.t_vs3 @e[tag=join_my_team,distance=..16,limit=1]
execute if entity @s[team=wb.t_vs4] run team join wb.t_vs4 @e[tag=join_my_team,distance=..16,limit=1]
# Ender Architect
execute if entity @s[team=wb.t_ea1] run team join wb.t_ea1 @e[tag=join_my_team,distance=..16,limit=1]
execute if entity @s[team=wb.t_ea2] run team join wb.t_ea2 @e[tag=join_my_team,distance=..16,limit=1]
execute if entity @s[team=wb.t_ea3] run team join wb.t_ea3 @e[tag=join_my_team,distance=..16,limit=1]
execute if entity @s[team=wb.t_ea4] run team join wb.t_ea4 @e[tag=join_my_team,distance=..16,limit=1]
# World Boss Champion
execute if entity @s[team=wb.t_champ] run team join wb.t_champ @e[tag=join_my_team,distance=..16,limit=1]

# Fallback: player has no team at all
execute if entity @s[team=] run team join vex_allies @e[tag=join_my_team,distance=..16,limit=1]

# Clean up tag
tag @e[tag=join_my_team,distance=..16,limit=1] remove join_my_team
