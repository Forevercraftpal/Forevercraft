# Guidestone Menu — Refresh destination list (View 1: Local / Same-Dimension)
# Run as the player with menu open
# Reads registry from storage, filters to same dimension, displays entries for current page (8 per page)

# Kill existing slot elements
execute at @s run kill @e[type=text_display,tag=ec.gs_slot_el,distance=..5]
execute at @s run kill @e[type=interaction,tag=ec.gs_slot_el,distance=..5]

# Copy registry to working list and filter to same dimension only
data modify storage evercraft:guidestone working set from storage evercraft:guidestone registry
data modify storage evercraft:guidestone filtered set value []
data modify storage evercraft:guidestone dim_arg set value {}
data modify storage evercraft:guidestone dim_arg.dim set from storage evercraft:guidestone menu_ctx.dim
function evercraft:guidestone/menu/filter_same_dim with storage evercraft:guidestone dim_arg

# Use filtered list for display
data modify storage evercraft:guidestone working set from storage evercraft:guidestone filtered

# Get total filtered count
execute store result score #gs_total ec.gs_temp run data get storage evercraft:guidestone working

# If no same-dimension destinations, show message (anchored to background)
execute if score #gs_total ec.gs_temp matches 0 at @e[type=item_display,tag=ec.gs_menu_bg,distance=..5,limit=1] positioned ~ ~0.10 ~-0.02 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f, Tags:["ec.gs_menu_el","ec.gs_slot_el"], billboard:"center", text:{text:"No other guidestones in this dimension.",color:"gray",italic:true}, background:1, shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.338f,0.338f,0.338f]} }

# Calculate page offset: (page-1)*8
scoreboard players operation #gs_offset ec.gs_temp = @s ec.gs_page
scoreboard players remove #gs_offset ec.gs_temp 1
scoreboard players set #8 ec.gs_temp 8
scoreboard players operation #gs_offset ec.gs_temp *= #8 ec.gs_temp

# Display up to 8 entries starting from offset
# We use a loop via recursive function
scoreboard players set #gs_row ec.gs_temp 0
scoreboard players operation #gs_idx ec.gs_temp = #gs_offset ec.gs_temp
function evercraft:guidestone/menu/spawn_row

# Spawn page nav if more than 8 total
execute if score #gs_total ec.gs_temp matches 9.. run function evercraft:guidestone/menu/spawn_nav

# Spawn prime key icon (bottom-right corner) — always clickable
# Primed: light purple diamond. Not primed: gray diamond.
# Clicking when already primed shows a notification; clicking when not primed triggers absorb.
execute if data storage evercraft:guidestone {menu_ctx:{primed:1b}} at @e[type=item_display,tag=ec.gs_menu_bg,distance=..5,limit=1] positioned ~-0.6 ~-0.48 ~-0.02 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f, Tags:["ec.gs_menu_el","ec.gs_slot_el","ec.gs_prime_txt"], billboard:"center", text:{text:"\u2756",color:"light_purple"}, background:1, shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.405f,0.405f,0.405f]} }
execute unless data storage evercraft:guidestone {menu_ctx:{primed:1b}} at @e[type=item_display,tag=ec.gs_menu_bg,distance=..5,limit=1] positioned ~-0.6 ~-0.48 ~-0.02 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f, Tags:["ec.gs_menu_el","ec.gs_slot_el","ec.gs_prime_txt"], billboard:"center", text:{text:"\u2756",color:"dark_gray"}, background:1, shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.405f,0.405f,0.405f]} }
execute at @e[type=item_display,tag=ec.gs_menu_bg,distance=..5,limit=1] positioned ~-0.6 ~-0.60 ~ run summon interaction ~ ~ ~ { Tags:["ec.gs_menu_el","ec.gs_slot_el","ec.gs_prime_btn"], width:0.2f, height:0.12f, response:1b }
