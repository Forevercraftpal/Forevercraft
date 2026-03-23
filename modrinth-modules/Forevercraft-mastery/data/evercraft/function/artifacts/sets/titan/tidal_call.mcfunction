# Tempest - Tidal Call ability (called on horn use)
# Check cooldown
execute if score @s ec.tidal_cd matches 1.. run tellraw @s [{text:"[Tempest] ",color:"light_purple"},{text:"Tidal Horn is on cooldown!",color:"gray"}]
execute if score @s ec.tidal_cd matches 1.. run return 0
# Check if still wearing 4pc
execute unless entity @s[tag=titan_4pc] run tellraw @s [{text:"[Tempest] ",color:"light_purple"},{text:"Requires 4pc Tempest set!",color:"gray"}]
execute unless entity @s[tag=titan_4pc] run return 0
# Set 90 second cooldown (1800 ticks)
scoreboard players set @s ec.tidal_cd 1800
# Tidal Call effects
tellraw @s [{text:"[Tempest] ",color:"light_purple"},{text:"The ocean's blessing flows through you and your allies!",color:"aqua",italic:true}]
# Apply Luck V (level 4) to all nearby players for 3 minutes (3600 ticks)
execute at @s as @a[distance=..16] run effect give @s luck 3600 4 false
execute at @s as @a[distance=..16] run tellraw @s [{text:"[Tempest] ",color:"light_purple"},{text:"You have been blessed with Luck of the Sea V!",color:"aqua"}]
# Sound and particle effects
execute at @s run playsound minecraft:entity.elder_guardian.curse hostile @a ~ ~ ~ 2 0.6
execute at @s run playsound minecraft:entity.elder_guardian.ambient hostile @a ~ ~ ~ 1 0.8
execute at @s run particle bubble_pop ~ ~2 ~ 3 1 3 0.05 100
execute at @s run particle bubble ~ ~1 ~ 4 1 4 0.1 80
execute at @s run particle dolphin ~ ~1 ~ 3 1 3 0.05 40
