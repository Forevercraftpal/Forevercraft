# Fishing Multi-Catch — Roll for extra fish
# 0.12% per level chance to spawn extra fish from vanilla loot table
# Level 1-9: up to 2, 10-19: up to 3, 20-24: up to 4, 25: up to 5

# Calculate chance: level * 12 / 100 (per 10000 roll = 0.12% per level, max 3%)
scoreboard players operation #chance adv.temp = @s adv.fishing
scoreboard players operation #chance adv.temp *= #12 adv.temp
scoreboard players operation #chance adv.temp /= #100 adv.temp

# Gathering synergy bonus: +2.5% (250/10000) when all three gathering trees >= 15
execute if score @s adv.syn_gather matches 1 run scoreboard players add #chance adv.temp 250

# Tempest Lip Ripper — Double Hook: +25% multi-catch chance (2500/10000) when held
execute if items entity @s weapon.mainhand fishing_rod[custom_data~{artifact:"mythical_anglers_lip_ripper"}] run scoreboard players add #chance adv.temp 2500

# Roll 1-10000
execute store result score #roll adv.temp run random value 1..10000
execute unless score #roll adv.temp <= #chance adv.temp run return 0

# Extra catch 1 (always if proc)
loot give @s loot minecraft:gameplay/fishing

# Extra catch 2 (level 10+)
execute if score @s adv.fishing matches 10.. store result score #roll adv.temp run random value 1..2
execute if score @s adv.fishing matches 10.. if score #roll adv.temp matches 1 run loot give @s loot minecraft:gameplay/fishing

# Extra catch 3 (level 20+)
execute if score @s adv.fishing matches 20.. store result score #roll adv.temp run random value 1..3
execute if score @s adv.fishing matches 20.. if score #roll adv.temp matches 1 run loot give @s loot minecraft:gameplay/fishing

# Extra catch 4 (level 25 only)
execute if score @s adv.fishing matches 25 store result score #roll adv.temp run random value 1..4
execute if score @s adv.fishing matches 25 if score #roll adv.temp matches 1 run loot give @s loot minecraft:gameplay/fishing

# Effects
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.5 1.5
title @s actionbar [{text:"🐟 Multi-catch!",color:"aqua"}]

# Achievement tracking
