# Guidestone Menu — Refresh destination list (View 2: Interdimensional)
# Run as the player with menu open
# Shows primed destinations in OTHER dimensions

# Kill existing slot elements
execute at @s run kill @e[type=text_display,tag=ec.gs_slot_el,distance=..5]
execute at @s run kill @e[type=interaction,tag=ec.gs_slot_el,distance=..5]

# Copy registry to working list and filter to cross-dim + primed
data modify storage evercraft:guidestone working set from storage evercraft:guidestone registry
data modify storage evercraft:guidestone filtered set value []
data modify storage evercraft:guidestone dim_arg set value {}
data modify storage evercraft:guidestone dim_arg.dim set from storage evercraft:guidestone menu_ctx.dim
function evercraft:guidestone/menu/filter_interdim with storage evercraft:guidestone dim_arg

# Use filtered list for display
data modify storage evercraft:guidestone working set from storage evercraft:guidestone filtered

# Get total filtered count
execute store result score #gs_total ec.gs_temp run data get storage evercraft:guidestone working

# If no interdimensional destinations, show message (anchored to background)
execute if score #gs_total ec.gs_temp matches 0 at @e[type=item_display,tag=ec.gs_menu_bg,distance=..5,limit=1] positioned ~ ~0.10 ~-0.02 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f, Tags:["ec.gs_menu_el","ec.gs_slot_el"], billboard:"center", text:{text:"No primed guidestones in other dimensions.",color:"gray",italic:true}, background:1, shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.338f,0.338f,0.338f]} }
execute if score #gs_total ec.gs_temp matches 0 run return 0

# Calculate page offset: (page-1)*8
scoreboard players operation #gs_offset ec.gs_temp = @s ec.gs_page
scoreboard players remove #gs_offset ec.gs_temp 1
scoreboard players set #8 ec.gs_temp 8
scoreboard players operation #gs_offset ec.gs_temp *= #8 ec.gs_temp

# Display up to 8 entries starting from offset (uses interdim row spawner with dim labels)
scoreboard players set #gs_row ec.gs_temp 0
scoreboard players operation #gs_idx ec.gs_temp = #gs_offset ec.gs_temp
function evercraft:guidestone/menu/spawn_row_interdim

# Spawn page nav if more than 8 total
execute if score #gs_total ec.gs_temp matches 9.. run function evercraft:guidestone/menu/spawn_nav
