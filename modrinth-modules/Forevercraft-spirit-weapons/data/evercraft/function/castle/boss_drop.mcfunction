# Infinite Castle — Boss Kill Drop
# 10% chance to spawn a crate when killing a castle boss
# Run as: player who killed the boss

advancement revoke @s only evercraft:castle/killed_boss

# 10% chance for a crate — uses the same tier distribution as regular mob crates
execute if predicate {"condition":"minecraft:random_chance","chance":0.1} at @s run function evercraft:castle/boss_crate_roll

# Scaled XP: floor × 10 per boss kill
scoreboard players operation #xp_grant ec.var = #ic_floor ec.var
scoreboard players operation #xp_grant ec.var *= #10 ec.const
execute store result storage evercraft:temp xp int 1 run scoreboard players get #xp_grant ec.var
function evercraft:util/grant_xp with storage evercraft:temp
