# Dungeon Instance System — Mob Kill Drop
# 1% chance to spawn a mob crate when killing any dungeon mob
# Run as: player who killed the mob

advancement revoke @s only evercraft:dungeon/killed_mob

# 1% base chance for a mob crate
execute if predicate {"condition":"minecraft:random_chance","chance":0.01} at @s run function evercraft:mob_crates/spawn/common

# Scaled XP: (difficulty + 1) × 5 × floor per mob kill
# Easy=5, Normal=10, Hard=15, Brutal=20 — then × floor
scoreboard players operation #xp_grant ec.var = #dg_difficulty ec.var
scoreboard players add #xp_grant ec.var 1
scoreboard players operation #xp_grant ec.var *= #5 ec.const
scoreboard players operation #xp_grant ec.var *= #dg_floor ec.var
execute store result storage evercraft:temp xp int 1 run scoreboard players get #xp_grant ec.var
function evercraft:util/grant_xp with storage evercraft:temp
