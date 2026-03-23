# Guidestone Menu — Previous page (within current view)
# Run as the interaction entity
data remove entity @s interaction

execute as @a[tag=ec.gs_in_menu,distance=..5,limit=1,sort=nearest] run scoreboard players remove @s ec.gs_page 1
execute as @a[tag=ec.gs_in_menu,distance=..5,limit=1,sort=nearest] if score @s ec.gs_page matches ..0 run scoreboard players set @s ec.gs_page 1

# Dispatch refresh based on current view
execute as @a[tag=ec.gs_in_menu,distance=..5,limit=1,sort=nearest] at @s if score @s ec.gs_view matches 1 run function evercraft:guidestone/menu/refresh
execute as @a[tag=ec.gs_in_menu,distance=..5,limit=1,sort=nearest] at @s if score @s ec.gs_view matches 2 run function evercraft:guidestone/menu/refresh_interdim
