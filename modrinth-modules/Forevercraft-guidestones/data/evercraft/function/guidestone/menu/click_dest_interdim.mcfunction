# Guidestone Menu — Click a destination slot (View 2: Interdimensional)
# Macro arg: slot (0-7)
# Run as the interaction entity

# Clear interaction data
data remove entity @s interaction

# Calculate which filtered index was clicked: (page-1)*8 + slot
$scoreboard players set #gs_click ec.gs_temp $(slot)
execute as @a[tag=ec.gs_in_menu,distance=..5,limit=1,sort=nearest] run scoreboard players operation #gs_page_off ec.gs_temp = @s ec.gs_page
scoreboard players remove #gs_page_off ec.gs_temp 1
scoreboard players set #8 ec.gs_temp 8
scoreboard players operation #gs_page_off ec.gs_temp *= #8 ec.gs_temp
scoreboard players operation #gs_click ec.gs_temp += #gs_page_off ec.gs_temp

# Rebuild the filtered interdimensional list
data modify storage evercraft:guidestone working set from storage evercraft:guidestone registry
data modify storage evercraft:guidestone filtered set value []
data modify storage evercraft:guidestone dim_arg set value {}
data modify storage evercraft:guidestone dim_arg.dim set from storage evercraft:guidestone menu_ctx.dim
function evercraft:guidestone/menu/filter_interdim with storage evercraft:guidestone dim_arg

# Skip to the right index in the filtered list
data modify storage evercraft:guidestone tp_working set from storage evercraft:guidestone filtered
scoreboard players operation #gs_skip ec.gs_temp = #gs_click ec.gs_temp
function evercraft:guidestone/menu/skip_to_entry

# Now tp_target has the right entry — teleport the player
execute as @a[tag=ec.gs_in_menu,distance=..5,limit=1,sort=nearest] run function evercraft:guidestone/teleport with storage evercraft:guidestone tp_target
