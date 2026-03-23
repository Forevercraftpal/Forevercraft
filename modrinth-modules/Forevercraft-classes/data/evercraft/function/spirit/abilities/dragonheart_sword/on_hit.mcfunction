# Wyrmcleaver — On Hit Processing (Dragonfire passive)
# 15% chance to ignite target for 3 seconds (60 ticks)

advancement revoke @s only evercraft:spirit/dragonheart_sword/on_hit

# === 15% DRAGONFIRE PROC ===
execute store result score #temp ec.temp run random value 1..100
execute if score #temp ec.temp matches ..15 run function evercraft:spirit/abilities/dragonheart_sword/dragonfire_proc

# === KILL & PROGRESSION TRACKING ===
scoreboard players add @s ec.sp_kills 1
scoreboard players add @s ec.sp_shield_block 1
function evercraft:spirit/progression/track_on_hit
