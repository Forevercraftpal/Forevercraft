# Guidestone Menu — View Navigation: Previous view (left arrow)
# Run as the interaction entity

# Clear interaction data
data remove entity @s interaction

# Switch view as the player
execute as @a[tag=ec.gs_in_menu,distance=..5,limit=1,sort=nearest] at @s run function evercraft:guidestone/menu/switch_view {operation:"remove"}
