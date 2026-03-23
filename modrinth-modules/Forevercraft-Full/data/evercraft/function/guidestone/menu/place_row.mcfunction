# Guidestone Menu — Place a single row at the correct Y position
# Macro args: row (0-7), name (string)
# Run as the player in menu

# Anchor rows to the background entity so they stay aligned even if player turns
# Background Y=center of panel; rows at Y offsets from background
# Z offset -0.02 brings text slightly in front of the background panel

# Use row number to calculate Y position
# We store the name to temp storage for the nested position commands
$data modify storage evercraft:guidestone row_display.name set value '$(name)'
$scoreboard players set #gs_placing ec.gs_temp $(row)

# Spawn text + interaction at correct row position (anchored to background entity)
execute if score #gs_placing ec.gs_temp matches 0 at @e[type=item_display,tag=ec.gs_menu_bg,distance=..5,limit=1] positioned ~ ~0.35 ~-0.02 run function evercraft:guidestone/menu/place_row_exec
execute if score #gs_placing ec.gs_temp matches 1 at @e[type=item_display,tag=ec.gs_menu_bg,distance=..5,limit=1] positioned ~ ~0.25 ~-0.02 run function evercraft:guidestone/menu/place_row_exec
execute if score #gs_placing ec.gs_temp matches 2 at @e[type=item_display,tag=ec.gs_menu_bg,distance=..5,limit=1] positioned ~ ~0.15 ~-0.02 run function evercraft:guidestone/menu/place_row_exec
execute if score #gs_placing ec.gs_temp matches 3 at @e[type=item_display,tag=ec.gs_menu_bg,distance=..5,limit=1] positioned ~ ~0.05 ~-0.02 run function evercraft:guidestone/menu/place_row_exec
execute if score #gs_placing ec.gs_temp matches 4 at @e[type=item_display,tag=ec.gs_menu_bg,distance=..5,limit=1] positioned ~ ~-0.05 ~-0.02 run function evercraft:guidestone/menu/place_row_exec
execute if score #gs_placing ec.gs_temp matches 5 at @e[type=item_display,tag=ec.gs_menu_bg,distance=..5,limit=1] positioned ~ ~-0.15 ~-0.02 run function evercraft:guidestone/menu/place_row_exec
execute if score #gs_placing ec.gs_temp matches 6 at @e[type=item_display,tag=ec.gs_menu_bg,distance=..5,limit=1] positioned ~ ~-0.25 ~-0.02 run function evercraft:guidestone/menu/place_row_exec
execute if score #gs_placing ec.gs_temp matches 7 at @e[type=item_display,tag=ec.gs_menu_bg,distance=..5,limit=1] positioned ~ ~-0.35 ~-0.02 run function evercraft:guidestone/menu/place_row_exec
