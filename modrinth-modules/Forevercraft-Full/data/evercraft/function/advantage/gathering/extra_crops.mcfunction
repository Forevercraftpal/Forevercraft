# Gathering — Roll for extra crop drops
# 0.12% per level chance for bonus crops
# Level 1-9: +1, 10-19: up to +2, 20-24: up to +3, 25: up to +4

# Prestige P1: Green Thumb — auto-replant on harvest
execute if score @s adv.pa_gath1 matches 1 at @s run function evercraft:advantage/prestige/abilities/green_thumb

# Prestige P3: Harvest Lord — crop vein mine on harvest
execute if score @s adv.pa_gath3 matches 1 at @s run function evercraft:advantage/prestige/abilities/crop_vein_mine

# Skip if no gathering level
execute unless score @s adv.gathering matches 1.. run return 0

# Calculate chance: level * 12 / 100 (per 10000 roll = 0.12% per level, max 3%)
scoreboard players operation #chance adv.temp = @s adv.gathering
scoreboard players operation #chance adv.temp *= #12 adv.temp
scoreboard players operation #chance adv.temp /= #100 adv.temp

# Gathering synergy bonus: +2.5% (250/10000) when all three gathering trees >= 15
execute if score @s adv.syn_gather matches 1 run scoreboard players add #chance adv.temp 250

# Roll 1-10000
execute store result score #roll adv.temp run random value 1..10000
execute unless score #roll adv.temp <= #chance adv.temp run return 0

# Give extra wheat as a generic crop reward (replaces with context-specific later)
give @s minecraft:wheat 1

# Extra +1 (level 10+)
execute if score @s adv.gathering matches 10.. store result score #roll adv.temp run random value 1..2
execute if score @s adv.gathering matches 10.. if score #roll adv.temp matches 1 run give @s minecraft:wheat 1

# Extra +1 (level 20+)
execute if score @s adv.gathering matches 20.. store result score #roll adv.temp run random value 1..3
execute if score @s adv.gathering matches 20.. if score #roll adv.temp matches 1 run give @s minecraft:wheat 1

# Extra +1 (level 25 only)
execute if score @s adv.gathering matches 25 store result score #roll adv.temp run random value 1..4
execute if score @s adv.gathering matches 25 if score #roll adv.temp matches 1 run give @s minecraft:wheat 1

# Party Combo: Shared Fortunes — Gathering proc gives nearby Mining partners bonus XP
execute if score @s ec.party_id matches 1.. at @s run function evercraft:party/combos/shared_fortunes

# Effects
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.3 1.8
title @s actionbar [{text:"🌾 Bonus harvest!",color:"green"}]
