# Heartwood — Start tree felling from this log position

scoreboard players set #st_tree_size ec.var 0

# Mark starting log
summon marker ~ ~ ~ {Tags:["ec_st_timber","ec_st_timber_start"]}

# Recursive search for connected logs
execute at @e[type=marker,tag=ec_st_timber_start,limit=1] run function evercraft:craftforever/spirit_tools/heartwood/fell_search

# Destroy all marked logs + drop loot
execute at @e[type=marker,tag=ec_st_timber] run loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
execute at @e[type=marker,tag=ec_st_timber] run setblock ~ ~ ~ air

# Auto-replant: find lowest timber marker (tree base) and place sapling
execute as @e[type=marker,tag=ec_st_timber,sort=nearest,limit=1] at @s positioned ~ ~-1 ~ if block ~ ~ ~ dirt run setblock ~ ~1 ~ oak_sapling
execute as @e[type=marker,tag=ec_st_timber,sort=nearest,limit=1] at @s positioned ~ ~-1 ~ if block ~ ~ ~ grass_block run setblock ~ ~1 ~ oak_sapling
execute as @e[type=marker,tag=ec_st_timber,sort=nearest,limit=1] at @s positioned ~ ~-1 ~ if block ~ ~ ~ podzol run setblock ~ ~1 ~ oak_sapling

# Instant leaf decay: destroy leaves in radius of felled tree
execute at @e[type=marker,tag=ec_st_timber_start,limit=1] run fill ~-4 ~-1 ~-4 ~4 ~20 ~4 air replace #minecraft:leaves

# Cleanup
kill @e[type=marker,tag=ec_st_timber]

# Effects
playsound minecraft:block.wood.break master @p ~ ~ ~ 1 0.6
playsound minecraft:entity.player.attack.sweep master @p ~ ~ ~ 0.5 1.0
particle minecraft:sweep_attack ~ ~3 ~ 1 2 1 0.1 10
particle minecraft:composter ~ ~5 ~ 3 3 3 0.3 20
