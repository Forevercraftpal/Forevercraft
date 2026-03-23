# Earthsong — Unlimited Vein Mine (no cap!)
# Adapted from Journey Pickaxe vein_start but with NO size limit

# Reset counter
scoreboard players set #st_vein_size ec.var 0

# Raycast to find target ore
execute anchored eyes positioned ^ ^ ^0.5 run function evercraft:craftforever/spirit_tools/earthsong/vein_raycast

# If we found an ore marker, start the vein search from there
execute if entity @e[type=marker,tag=ec_st_vein_target,limit=1] at @e[type=marker,tag=ec_st_vein_target,limit=1] run summon marker ~ ~ ~ {Tags:["ec_st_vein_ore"]}
execute if entity @e[type=marker,tag=ec_st_vein_target,limit=1] at @e[type=marker,tag=ec_st_vein_target,limit=1] run function evercraft:craftforever/spirit_tools/earthsong/vein_search

# Destroy all marked ores with proper drops
execute at @e[type=marker,tag=ec_st_vein_ore] run loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
execute at @e[type=marker,tag=ec_st_vein_ore] run setblock ~ ~ ~ air

# Cleanup markers
kill @e[type=marker,tag=ec_st_vein_ore]
kill @e[type=marker,tag=ec_st_vein_target]

# Effects
playsound minecraft:block.amethyst_block.break master @s ~ ~ ~ 1 0.6
playsound minecraft:entity.player.attack.sweep master @s ~ ~ ~ 0.5 1.2
particle minecraft:enchant ~ ~1 ~ 1 1 1 0.5 30
