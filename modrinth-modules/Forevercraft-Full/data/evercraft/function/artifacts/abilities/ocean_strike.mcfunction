# Ocean Strike — Prismarine Gauntlet (Mythical Dancer) + Tidal Rush Enhancement
# Base: Grants Conduit Power (10s) + 3 drown damage to target on hit
# Enhancement: 5 hits in rain/water = tidal wave AoE (3 drown damage + Slowness II to all within 6b)

advancement revoke @s only evercraft:artifacts/abilities/ocean_strike_trigger

# Grant Conduit Power to player (10s)
effect give @s conduit_power 10 0 false

# Deal 3 drowning damage to target
execute at @s as @e[type=!player,distance=..5,limit=1,sort=nearest,nbt={HurtTime:10s}] run damage @s 3 minecraft:drown

# Visual + audio
execute at @s run particle bubble ~ ~1 ~ 0.5 0.5 0.5 0.1 20
execute at @s run particle rain ~ ~2 ~ 0.5 0.3 0.5 1 15
playsound minecraft:entity.dolphin.splash player @s ~ ~ ~ 0.8 1.2

# === Tidal Rush: Track hits in rain or water ===
execute if predicate evercraft:is_raining run scoreboard players add @s ec.tidal_hits 1
execute if predicate evercraft:in_water run scoreboard players add @s ec.tidal_hits 1
# Cap double-counting (rain + water at same time)
execute if predicate evercraft:is_raining if predicate evercraft:in_water run scoreboard players remove @s ec.tidal_hits 1

# At 5+ hits: Tidal Wave
execute if score @s ec.tidal_hits matches 5.. at @s as @e[type=!player,type=!item,distance=..6] run damage @s 3 minecraft:drown
execute if score @s ec.tidal_hits matches 5.. at @s as @e[type=!player,type=!item,distance=..6] run effect give @s slowness 3 1 false
execute if score @s ec.tidal_hits matches 5.. run title @s actionbar {text:"Tidal Rush!",color:"#1E90FF",bold:true}
execute if score @s ec.tidal_hits matches 5.. at @s run particle bubble ~ ~1 ~ 2 1 2 0.3 40
execute if score @s ec.tidal_hits matches 5.. at @s run particle rain ~ ~3 ~ 2 1 2 1 30
execute if score @s ec.tidal_hits matches 5.. run playsound minecraft:entity.generic.splash player @a[distance=..16] ~ ~ ~ 1 0.6
execute if score @s ec.tidal_hits matches 5.. run scoreboard players set @s ec.tidal_hits 0

# Achievement tracking
scoreboard players add @s ach.weapon_abilities 1
