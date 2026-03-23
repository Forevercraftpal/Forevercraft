# ============================================================
# Noon Gift Success — Villager gives a gift
# ============================================================

# Spawn gift item from loot table
loot give @s loot evercraft:quests/gifts/noon_gift

# Find nearest villager and make them wave
execute as @e[type=minecraft:villager,distance=..16,limit=1,sort=nearest] at @s run function evercraft:quests/reputation/villager_wave

# Effects
playsound minecraft:entity.villager.celebrate player @s ~ ~ ~ 1 1
particle heart ~ ~2 ~ 0.3 0.2 0.3 0.1 5

tellraw @s ["",{text:"[Noon Gift] ",color:"yellow"},{text:"A villager has given you a gift!",color:"gray"}]
