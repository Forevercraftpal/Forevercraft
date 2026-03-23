# Heartwood Mastery — "Living Forest" (90s CD)
# Fell ALL trees within 12-block radius simultaneously

scoreboard players set @s ec.st_cd 1800

title @s actionbar [{"text":"Living Forest","color":"dark_green","bold":true}]
playsound minecraft:entity.ender_dragon.growl master @s ~ ~ ~ 0.3 0.8
playsound minecraft:block.azalea_leaves.break master @s ~ ~ ~ 1 0.5

# Destroy all logs in 12-block radius
execute store result score #st_trees ec.var run fill ~-12 ~-1 ~-12 ~12 ~25 ~12 air replace #minecraft:logs

# Give player logs based on how many were destroyed
execute if score #st_trees ec.var matches 1..64 run give @s oak_log 64
execute if score #st_trees ec.var matches 65..128 run give @s oak_log 64
execute if score #st_trees ec.var matches 65..128 run give @s oak_log 64
execute if score #st_trees ec.var matches 129.. run give @s oak_log 64
execute if score #st_trees ec.var matches 129.. run give @s oak_log 64
execute if score #st_trees ec.var matches 129.. run give @s oak_log 64

# Destroy all leaves in same area
fill ~-12 ~-1 ~-12 ~12 ~30 ~12 air replace #minecraft:leaves

# Auto-replant saplings on exposed dirt/grass
execute positioned ~-10 ~-1 ~-10 if block ~ ~ ~ grass_block if block ~ ~1 ~ air run setblock ~ ~1 ~ oak_sapling
execute positioned ~-5 ~-1 ~-5 if block ~ ~ ~ grass_block if block ~ ~1 ~ air run setblock ~ ~1 ~ oak_sapling
execute positioned ~ ~-1 ~ if block ~ ~ ~ grass_block if block ~ ~1 ~ air run setblock ~ ~1 ~ oak_sapling
execute positioned ~5 ~-1 ~5 if block ~ ~ ~ grass_block if block ~ ~1 ~ air run setblock ~ ~1 ~ oak_sapling
execute positioned ~10 ~-1 ~10 if block ~ ~ ~ grass_block if block ~ ~1 ~ air run setblock ~ ~1 ~ oak_sapling
execute positioned ~-5 ~-1 ~5 if block ~ ~ ~ grass_block if block ~ ~1 ~ air run setblock ~ ~1 ~ oak_sapling
execute positioned ~5 ~-1 ~-5 if block ~ ~ ~ grass_block if block ~ ~1 ~ air run setblock ~ ~1 ~ oak_sapling
execute positioned ~-10 ~-1 ~10 if block ~ ~ ~ grass_block if block ~ ~1 ~ air run setblock ~ ~1 ~ oak_sapling
execute positioned ~10 ~-1 ~-10 if block ~ ~ ~ grass_block if block ~ ~1 ~ air run setblock ~ ~1 ~ oak_sapling

# Big VFX
particle minecraft:composter ~ ~5 ~ 10 5 10 0.5 100
particle minecraft:sweep_attack ~ ~3 ~ 5 2 5 0.1 20

# Grant crafting affinity XP: 100 for mastery use
function evercraft:craft_affinity/grant {class_id:2, delta:100}
