# Guidestone Menu — Next page (within current view)
# Run as the interaction entity
data remove entity @s interaction

execute as @a[tag=ec.gs_in_menu,distance=..5,limit=1,sort=nearest] run scoreboard players add @s ec.gs_page 1

# Cap at max pages — need filtered count, not total registry count
# For view 1: rebuild same-dim filtered list to get count
# For view 2: rebuild interdim filtered list to get count
# Default: use full registry count
execute as @a[tag=ec.gs_in_menu,distance=..5,limit=1,sort=nearest] at @s if score @s ec.gs_view matches 1 run function evercraft:guidestone/menu/count_filtered_local
execute as @a[tag=ec.gs_in_menu,distance=..5,limit=1,sort=nearest] at @s if score @s ec.gs_view matches 2 run function evercraft:guidestone/menu/count_filtered_interdim

# Cap page at max
scoreboard players add #gs_max ec.gs_temp 7
scoreboard players set #8 ec.gs_temp 8
scoreboard players operation #gs_max ec.gs_temp /= #8 ec.gs_temp
execute as @a[tag=ec.gs_in_menu,distance=..5,limit=1,sort=nearest] run scoreboard players operation @s ec.gs_page < #gs_max ec.gs_temp

# Dispatch refresh based on current view
execute as @a[tag=ec.gs_in_menu,distance=..5,limit=1,sort=nearest] at @s if score @s ec.gs_view matches 1 run function evercraft:guidestone/menu/refresh
execute as @a[tag=ec.gs_in_menu,distance=..5,limit=1,sort=nearest] at @s if score @s ec.gs_view matches 2 run function evercraft:guidestone/menu/refresh_interdim
