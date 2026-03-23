# Trim Abilities Tick — Score-triggered & per-tick-sensitive only
# OPT: Passive aura effects (RIB wither, WILD speed/haste/tame, WARD resistance,
# SNOUT fire_res, DUNE biome, EYE glowing) moved to trim/tick_slow (1s schedule).
# Saves ~10 @a/@e selector evaluations per tick.

# Early exit if no players online
execute unless entity @a run return 0

# Ensure teamless players get vex_allies (don't overwrite title teams)
team join vex_allies @a[team=]

execute as @a[scores={trim_deaths=1..}] at @s run function evercraft:trim/update/update_trim_ability

execute as @a[scores={update_trim_ability=1..}] at @s run function evercraft:trim/update/update_trim_ability
scoreboard players enable @a[scores={update_trim_ability=1..}] update_trim_ability
scoreboard players reset @a[scores={update_trim_ability=1..}] update_trim_ability

# SILENCE - Full set: Sonic boom bow
execute as @a[tag=full_set_silence,scores={sonic_boom_shot=1..}] at @s if items entity @s weapon.mainhand bow[custom_data~{trim_abilities_sonic_boom:1b}] run function evercraft:trim/full_set/silence/on_shoot
scoreboard players set @a[scores={sonic_boom_shot=1..}] sonic_boom_shot 0

# RIB - Fire aspect (full set) — per-tick: hurt_time NBT detection
execute as @a[tag=full_set_rib] at @s as @e[type=#minecraft:hostile,distance=..5,nbt={HurtTime:10s}] run data merge entity @s {Fire:60s}

# SPIRE - Single piece: when attacked, attacker gets weakness
execute as @a[tag=single_spire,scores={spire_damage=1..}] at @s run effect give @e[type=#minecraft:hostile,distance=..8,limit=1,sort=nearest] weakness 5 1 false

# SILENCE - Single piece: Slowness 4 and glowing to attacker
# OPT: 2 @a scans → 1 per-player function
execute as @a[tag=single_silence,scores={spire_damage=1..}] at @s run function evercraft:trim/single/silence/on_hit

# SILENCE - Warden Prevention (skip boss wardens: dungeon + rift)
execute if entity @e[type=warden,tag=!dg.mob,tag=!RIFT.Mob,limit=1] as @a[tag=single_silence] at @s as @e[type=warden,tag=!dg.mob,tag=!RIFT.Mob,distance=..48] run function evercraft:trim/single/silence/prevent_warden

# VEX - Full set: spawn ally vex on attack (must be BEFORE single to use score first)
execute as @a[tag=full_set_vex,scores={vex_attack=1..}] at @s run function evercraft:trim/full_set/vex/try_spawn

# VEX - Single piece: evoker fangs on attack
execute as @a[tag=single_vex,scores={vex_attack=1..}] at @s run function evercraft:trim/single/vex/try_fangs

# WILD - Single piece: slowness on attack (must be BEFORE vex_attack reset)
execute as @a[tag=single_wild,scores={vex_attack=1..}] at @s run effect give @e[type=#minecraft:hostile,distance=..5,limit=1,sort=nearest] slowness 3 1 false

# BOLT - Full set: 10% lightning strike on attack (must be BEFORE vex_attack reset)
execute as @a[tag=full_set_bolt,scores={vex_attack=1..}] at @s run function evercraft:trim/full_set/bolt/try_lightning

# Reset vex_attack score (only once, after ALL attack-triggered checks)
execute as @a[scores={vex_attack=1..}] run scoreboard players set @s vex_attack 0

# VEX ALLIES - Make them attack nearby hostile mobs (with cooldown)
scoreboard players add #vex_cooldown_timer trim_flag 1
execute if score #vex_cooldown_timer trim_flag matches 10.. run scoreboard players set #vex_cooldown_timer trim_flag 0
execute if entity @e[type=vex,tag=vex_ally,limit=1] run function evercraft:trim/full_set/vex/ally_tick

# WILD - Full set: spawn wolf pack ability (trigger-based, needs per-tick)
execute as @a[tag=full_set_wild,scores={wild_wolves=1..}] at @s run function evercraft:trim/full_set/wild/spawn_wolves
scoreboard players enable @a[scores={wild_wolves=1..}] wild_wolves
scoreboard players set @a[scores={wild_wolves=1..}] wild_wolves 0

# WILD - Wolf pack combat AI and lifecycle (only runs if wolves exist)
execute if entity @e[type=wolf,tag=wild_guardian,limit=1] run function evercraft:trim/full_set/wild/wolf_tick

# Reset damage taken scoreboard
scoreboard players set @a[scores={spire_damage=1..}] spire_damage 0

execute as @a[tag=single_wild,scores={panda_genes=1..}] at @s run function evercraft:trim/single/wild/panda
scoreboard players enable @a[scores={panda_genes=1..}] panda_genes
scoreboard players set @a[scores={panda_genes=1..}] panda_genes 0

execute as @a[tag=single_wayfinder,scores={find_way=1..}] at @s run function evercraft:trim/single/wayfinder/find1
scoreboard players enable @a[scores={find_way=1..}] find_way
scoreboard players set @a[scores={find_way=1..}] find_way 0

# RAISER - Villager restock moved to scheduled function (every 20 ticks instead of every tick)
# Schedule is started in load.mcfunction

execute as @a[scores={get_bundle=1..}] if entity @s[tag=single_shaper] run give @s bundle
scoreboard players enable @a[scores={get_bundle=1..}] get_bundle
scoreboard players reset @a[scores={get_bundle=1..}] get_bundle

# FLOW - Horse management (OPT: gate entire block on horse existence)
# OPT: root_vehicle NBT checks only every 20 ticks (1s delay on despawn is fine)
execute if entity @e[type=horse,tag=full_set_flow_wind_ball,limit=1] run function evercraft:trim/full_set/flow/tick

# SENTRY - Summon iron golems
execute as @a[tag=single_sentry,scores={pillager_summon=1..}] at @s run function evercraft:trim/single/sentry/patrol
scoreboard players set @a[scores={pillager_summon=1..}] pillager_summon 0

# SENTRY - Iron golems one-shot creepers (OPTIMIZED: uses tag-based tracking)
execute if entity @e[type=iron_golem,tag=sentry_trim,limit=1] run function evercraft:trim/single/sentry/golem_creeper_handler

# EYE - Teleport when using spyglass
execute as @a[tag=full_set_eye,scores={eye_teleport=1..}] at @s if items entity @s weapon.mainhand spyglass[custom_data~{trim_abilities_eye_teleport:1b}] run function evercraft:trim/full_set/eye/teleport
execute as @a[tag=full_set_eye,scores={eye_teleport=1..}] at @s if items entity @s weapon.offhand spyglass[custom_data~{trim_abilities_eye_teleport:1b}] run function evercraft:trim/full_set/eye/teleport
scoreboard players set @a[scores={eye_teleport=1..}] eye_teleport 0

# EYE glowing aura moved to trim/tick_slow (1s schedule)

# COAST - Full set: Remove temporary looting enchant from previous tick's kill
execute as @a[tag=full_set_coast_got_looting] run function evercraft:trim/full_set/coast/looting_remove

# COAST - Full set: Water dash ability (trigger command: /trigger water_dash)
execute as @a[tag=full_set_coast,scores={water_dash=1..}] at @s run function evercraft:trim/full_set/coast/water_dash
scoreboard players enable @a[scores={water_dash=1..}] water_dash
scoreboard players set @a[scores={water_dash=1..}] water_dash 0

# TIDE - Full set: Summon Guardian ally (trigger command: /trigger summon_guardian)
execute as @a[tag=full_set_tide,scores={summon_guardian=1..}] at @s run function evercraft:trim/full_set/tide/summon_guardian
scoreboard players enable @a[scores={summon_guardian=1..}] summon_guardian
scoreboard players set @a[scores={summon_guardian=1..}] summon_guardian 0

# TIDE - Guardian ally management (only if guardians exist)
execute if entity @e[type=guardian,tag=tide_guardian_ally,limit=1] as @e[type=guardian,tag=tide_guardian_ally] at @s run function evercraft:trim/full_set/tide/guardian_tick

execute as @a[tag=full_set_spire,scores={spire_damage=1..}] at @s run function evercraft:trim/full_set/spire/on_hit
