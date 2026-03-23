# Guidestone Menu — Place a single interdimensional row at the correct Y position
# Macro args: row (0-7), name (string)
# Run as the player in menu
# Same positioning as place_row but calls place_row_exec_interdim for dim-labeled text
# Anchored to background entity for alignment

$data modify storage evercraft:guidestone row_display.name set value '$(name)'
$scoreboard players set #gs_placing ec.gs_temp $(row)

# Spawn text + interaction at correct row position (anchored to background entity)
execute if score #gs_placing ec.gs_temp matches 0 at @e[type=item_display,tag=ec.gs_menu_bg,distance=..5,limit=1] positioned ~ ~0.35 ~-0.02 run function evercraft:guidestone/menu/place_row_exec_interdim
execute if score #gs_placing ec.gs_temp matches 1 at @e[type=item_display,tag=ec.gs_menu_bg,distance=..5,limit=1] positioned ~ ~0.25 ~-0.02 run function evercraft:guidestone/menu/place_row_exec_interdim
execute if score #gs_placing ec.gs_temp matches 2 at @e[type=item_display,tag=ec.gs_menu_bg,distance=..5,limit=1] positioned ~ ~0.15 ~-0.02 run function evercraft:guidestone/menu/place_row_exec_interdim
execute if score #gs_placing ec.gs_temp matches 3 at @e[type=item_display,tag=ec.gs_menu_bg,distance=..5,limit=1] positioned ~ ~0.05 ~-0.02 run function evercraft:guidestone/menu/place_row_exec_interdim
execute if score #gs_placing ec.gs_temp matches 4 at @e[type=item_display,tag=ec.gs_menu_bg,distance=..5,limit=1] positioned ~ ~-0.05 ~-0.02 run function evercraft:guidestone/menu/place_row_exec_interdim
execute if score #gs_placing ec.gs_temp matches 5 at @e[type=item_display,tag=ec.gs_menu_bg,distance=..5,limit=1] positioned ~ ~-0.15 ~-0.02 run function evercraft:guidestone/menu/place_row_exec_interdim
execute if score #gs_placing ec.gs_temp matches 6 at @e[type=item_display,tag=ec.gs_menu_bg,distance=..5,limit=1] positioned ~ ~-0.25 ~-0.02 run function evercraft:guidestone/menu/place_row_exec_interdim
execute if score #gs_placing ec.gs_temp matches 7 at @e[type=item_display,tag=ec.gs_menu_bg,distance=..5,limit=1] positioned ~ ~-0.35 ~-0.02 run function evercraft:guidestone/menu/place_row_exec_interdim
