# === CRAFTING AFFINITY — GIVE CRAFTING CRATE ===
# Gives a crafting crate: materials + Forever Coins + XP
# Run as player

# Announce
tellraw @s ["",{"text":"  ★ ","color":"gold"},{"text":"Crafting Crate!","color":"gold","bold":true},{"text":" Your affinity reveals a hidden cache.","color":"gray"}]
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1.5
playsound minecraft:block.amethyst_block.chime master @s ~ ~ ~ 0.5 1.2

# === FOREVER COINS (20% chance, 2 coins — same rate as other crates) ===
execute store result score #fc_roll ec.temp run random value 1..5
execute if score #fc_roll ec.temp matches 1 run scoreboard players add @s ec.coins 2
execute if score #fc_roll ec.temp matches 1 run tellraw @s ["",{"text":"    ","color":"gray"},{"text":"+2 Forever Coins","color":"#E0B0FF"}]

# === MATERIALS (class-appropriate, random) ===
# Roll type: 1=ores/ingots, 2=wood/crops, 3=misc valuables
execute store result score #mat_roll ec.temp run random value 1..6
execute if score #mat_roll ec.temp matches 1 run give @s iron_ingot 8
execute if score #mat_roll ec.temp matches 1 run tellraw @s ["",{"text":"    ","color":"gray"},{"text":"+8 Iron Ingots","color":"white"}]
execute if score #mat_roll ec.temp matches 2 run give @s gold_ingot 4
execute if score #mat_roll ec.temp matches 2 run tellraw @s ["",{"text":"    ","color":"gray"},{"text":"+4 Gold Ingots","color":"gold"}]
execute if score #mat_roll ec.temp matches 3 run give @s diamond 2
execute if score #mat_roll ec.temp matches 3 run tellraw @s ["",{"text":"    ","color":"gray"},{"text":"+2 Diamonds","color":"aqua"}]
execute if score #mat_roll ec.temp matches 4 run give @s emerald 6
execute if score #mat_roll ec.temp matches 4 run tellraw @s ["",{"text":"    ","color":"gray"},{"text":"+6 Emeralds","color":"green"}]
execute if score #mat_roll ec.temp matches 5 run give @s lapis_lazuli 12
execute if score #mat_roll ec.temp matches 5 run tellraw @s ["",{"text":"    ","color":"gray"},{"text":"+12 Lapis Lazuli","color":"blue"}]
execute if score #mat_roll ec.temp matches 6 run give @s copper_ingot 16
execute if score #mat_roll ec.temp matches 6 run tellraw @s ["",{"text":"    ","color":"gray"},{"text":"+16 Copper Ingots","color":"#B87333"}]

# === BONUS XP ===
execute at @s run summon experience_orb ~ ~1 ~ {Value:100s}

# === BONUS: 10% chance of Awakening Stone ===
execute store result score #stone_roll ec.temp run random value 1..10
execute if score #stone_roll ec.temp matches 1 run loot give @s loot evercraft:weapon_mastery/stones/common_stone
execute if score #stone_roll ec.temp matches 1 run tellraw @s ["",{"text":"    ","color":"gray"},{"text":"+1 Awakening Stone!","color":"light_purple"}]

# VFX
execute at @s run particle minecraft:happy_villager ~ ~1 ~ 0.5 0.5 0.5 0.1 15
