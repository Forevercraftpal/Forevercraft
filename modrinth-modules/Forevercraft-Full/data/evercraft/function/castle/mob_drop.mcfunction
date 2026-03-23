# Infinite Castle — Mob Kill Drop
# Run as: player who killed the mob
# 1% chance for immediate crate (same as dungeon) + 5% chance for crate coin

advancement revoke @s only evercraft:castle/killed_mob

# 1% chance for an immediate mob crate (same tier roll as dungeons)
execute store result score #ic_crate_roll ec.var run random value 1..100
execute if score #ic_crate_roll ec.var matches 1 at @s run function evercraft:castle/boss_crate_roll

# 5% chance for a crate coin (tallied at end of run)
execute store result score #ic_coin_roll ec.var run random value 1..20
execute if score #ic_coin_roll ec.var matches 1 run scoreboard players add @s ic.coins 1
execute if score #ic_coin_roll ec.var matches 1 run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.5 1.5
execute if score #ic_coin_roll ec.var matches 1 run tellraw @s [{text:"  ✦ ",color:"gold"},{text:"+1 Crate Coin",color:"yellow"},{text:" collected!",color:"gray"}]

# Scaled XP: floor × 2 per mob kill
scoreboard players operation #xp_grant ec.var = #ic_floor ec.var
scoreboard players operation #xp_grant ec.var *= #2 ec.const
execute store result storage evercraft:temp xp int 1 run scoreboard players get #xp_grant ec.var
function evercraft:util/grant_xp with storage evercraft:temp
