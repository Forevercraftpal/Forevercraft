# World Events — Check Spontaneous Event Conditions
# Called every 60s when no event is active
# Cooldowns are checked here to avoid omen warnings for events that can't start

# Store current gametime for cooldown checks
execute store result score #we_now ec.temp run time query gametime

# === Starfall Convergence (ID 1) ===
# New Moon (phase 4) + night (13000-23000) + avg DR >= 15.0 (150 x10) + 2+ players + off cooldown
scoreboard players operation #we_cd_check ec.temp = #we_now ec.temp
scoreboard players operation #we_cd_check ec.temp -= #we_starfall_cd ec.var
execute if score #we_cd_check ec.temp matches 0.. if score #moon_phase ec.var matches 4 if score #visual_time ec.var matches 13000..23000 if score #we_avg_dr ec.var matches 150.. if score #we_player_count ec.var matches 2.. run scoreboard players set #we_omen_id ec.var 1
execute if score #we_omen_id ec.var matches 1.. run return run function evercraft:omens/world_events/begin

# === Abyssal Tremor (ID 3) ===
# Full Moon (phase 0) + night + any player below Y=-48 + off cooldown
scoreboard players operation #we_cd_check ec.temp = #we_now ec.temp
scoreboard players operation #we_cd_check ec.temp -= #we_abyssal_cd ec.var
execute if score #we_cd_check ec.temp matches 0.. if score #moon_phase ec.var matches 0 if score #visual_time ec.var matches 13000..23000 if entity @a[y=-64,dy=16] run scoreboard players set #we_omen_id ec.var 3
execute if score #we_omen_id ec.var matches 1.. run return run function evercraft:omens/world_events/begin

# === Aurora Bloom (ID 4) ===
# Dawn (time 0-1000) + last night was Full Moon (current phase=1) + off cooldown
scoreboard players operation #we_cd_check ec.temp = #we_now ec.temp
scoreboard players operation #we_cd_check ec.temp -= #we_aurora_cd ec.var
execute if score #we_cd_check ec.temp matches 0.. if score #visual_time ec.var matches 0..1000 if score #moon_phase ec.var matches 1 run scoreboard players set #we_omen_id ec.var 4
execute if score #we_omen_id ec.var matches 1.. run return run function evercraft:omens/world_events/begin

# === Rift Echo (ID 5) ===
# 3+ Dimensional Rift calendar events + New Moon (phase 4) + night + off cooldown
scoreboard players operation #we_cd_check ec.temp = #we_now ec.temp
scoreboard players operation #we_cd_check ec.temp -= #we_rift_echo_cd ec.var
execute if score #we_cd_check ec.temp matches 0.. if score #cal_rift_count ec.var matches 3.. if score #moon_phase ec.var matches 4 if score #visual_time ec.var matches 13000..23000 run scoreboard players set #we_omen_id ec.var 5
execute if score #we_omen_id ec.var matches 1.. run function evercraft:omens/world_events/begin

# Note: The Dreaming (ID 2) is triggered from dreams/check.mcfunction, not here
