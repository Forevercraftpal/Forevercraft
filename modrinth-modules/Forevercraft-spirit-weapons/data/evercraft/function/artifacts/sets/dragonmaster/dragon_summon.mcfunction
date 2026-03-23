# Dragonmaster - Dragon Summon ability (called on horn use)
# Check cooldown
execute if score @s ec.dragon_cd matches 1.. run tellraw @s [{text:"[Dragonmaster] ",color:"light_purple"},{text:"Dragon Horn is on cooldown!",color:"gray"}]
execute if score @s ec.dragon_cd matches 1.. run return 0

# Check if still wearing 4pc
execute unless entity @s[tag=dragonmaster_4pc] run tellraw @s [{text:"[Dragonmaster] ",color:"light_purple"},{text:"Requires 4pc Dragonmaster set!",color:"gray"}]
execute unless entity @s[tag=dragonmaster_4pc] run return 0

# Set 60 second cooldown (1200 ticks)
scoreboard players set @s ec.dragon_cd 1200

# Dragon summon effects
tellraw @s [{text:"[Dragonmaster] ",color:"light_purple"},{text:"The ancient dragon answers your call!",color:"gold",italic:true}]

# Massive fire and lightning AoE around nearby enemies
execute at @s run playsound minecraft:entity.ender_dragon.growl hostile @a ~ ~ ~ 2 0.6
execute at @s run playsound minecraft:entity.ender_dragon.flap hostile @a ~ ~ ~ 1 0.8
execute at @s run particle dragon_breath ~ ~2 ~ 3 1 3 0.05 100
execute at @s run particle flame ~ ~1 ~ 4 1 4 0.1 80

# Damage and ignite nearby hostile mobs
execute at @s as @e[type=#evercraft:hostile,distance=..8] at @s run damage @s 12 minecraft:dragon_breath
execute at @s as @e[type=#evercraft:hostile,distance=..8] at @s run data merge entity @s {Fire:100s}
execute at @s run particle large_smoke ~ ~1 ~ 3 1 3 0.05 40

# Lightning strikes on up to 3 nearby enemies
execute at @s at @e[type=#evercraft:hostile,distance=..8,limit=3,sort=nearest] run summon lightning_bolt ~ ~ ~
