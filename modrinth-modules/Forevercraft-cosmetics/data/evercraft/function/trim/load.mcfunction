scoreboard objectives add update_trim_ability trigger
scoreboard objectives add compare_armor1 dummy
scoreboard objectives add compare_armor2 dummy
scoreboard objectives add compare_armor3 dummy
scoreboard objectives add trim_deaths deathCount
scoreboard objectives add pickaxe_slot dummy
scoreboard objectives add trim_math1 dummy
scoreboard objectives add trim_motion1 dummy
scoreboard objectives add trim_motion1_spire dummy
scoreboard objectives add pillager_summon minecraft.used:minecraft.goat_horn
scoreboard objectives add trim_coin_flip dummy
scoreboard objectives add panda_genes trigger
scoreboard objectives add locate_test dummy
scoreboard objectives add find_way trigger
scoreboard objectives add trim_daytime dummy
scoreboard objectives add get_bundle trigger
scoreboard objectives add trial_pot_broken mined:decorated_pot
scoreboard objectives add trim_flow_slot dummy
scoreboard objectives add trim_bolt_slot dummy
scoreboard objectives add trim_flag dummy
scoreboard objectives add sonic_boom_shot minecraft.used:minecraft.bow
scoreboard objectives add spire_damage minecraft.custom:minecraft.damage_taken
scoreboard objectives add vex_attack minecraft.custom:minecraft.damage_dealt
scoreboard objectives add eye_teleport minecraft.used:minecraft.spyglass
scoreboard objectives add water_dash trigger
scoreboard objectives add summon_guardian trigger
scoreboard objectives add tide_guardian_age dummy
scoreboard objectives add wild_wolves trigger
scoreboard objectives add wild_wolf_age dummy

# Create vex allies team (prevents vex from attacking players)
team add vex_allies
team modify vex_allies friendlyFire true

# Add teamless players to vex_allies (don't overwrite title teams)
team join vex_allies @a[team=]

# Vex ally lifespan timer
scoreboard objectives add vex_ally_age dummy

execute as @a at @s run function evercraft:trim/update/update_trim_ability

# Start scheduled functions
schedule function evercraft:trim/single/raiser/restock_scheduled 20t
schedule function evercraft:trim/tick_slow 1s
