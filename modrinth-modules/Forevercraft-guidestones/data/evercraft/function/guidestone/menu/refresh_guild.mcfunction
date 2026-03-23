# Guidestone Menu — Refresh destination list (View 4: Guild Network)
# Run as the player with menu open
# Shows guild members' hearthstones + guild stones of the same guild

# Kill existing slot elements
execute at @s run kill @e[type=text_display,tag=ec.gs_slot_el,distance=..5]
execute at @s run kill @e[type=interaction,tag=ec.gs_slot_el,distance=..5]

# Copy registry to working list and filter to guild entries
data modify storage evercraft:guidestone working set from storage evercraft:guidestone registry
data modify storage evercraft:guidestone filtered set value []

# Store guild_id in menu_ctx for filter (already set by open_teleport or switch_view)
execute unless data storage evercraft:guidestone menu_ctx.guild_id run execute store result storage evercraft:guidestone menu_ctx.guild_id int 1 run scoreboard players get @s ec.guild_id

# Filter: keep only guild members' hearthstones and matching guild stones
function evercraft:guidestone/menu/filter_guild with storage evercraft:guidestone menu_ctx

# Use filtered list for display
data modify storage evercraft:guidestone working set from storage evercraft:guidestone filtered

# Get total filtered count
execute store result score #gs_total ec.gs_temp run data get storage evercraft:guidestone working

# If no guild destinations, show message
execute if score #gs_total ec.gs_temp matches 0 at @e[type=item_display,tag=ec.gs_menu_bg,distance=..5,limit=1] positioned ~ ~0.10 ~-0.02 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f, Tags:["ec.gs_menu_el","ec.gs_slot_el"], billboard:"center", text:{text:"No guild member homes found.",color:"gray",italic:true}, background:1, shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.338f,0.338f,0.338f]} }

# Calculate page offset: (page-1)*8
scoreboard players operation #gs_offset ec.gs_temp = @s ec.gs_page
scoreboard players remove #gs_offset ec.gs_temp 1
scoreboard players set #8 ec.gs_temp 8
scoreboard players operation #gs_offset ec.gs_temp *= #8 ec.gs_temp

# Display up to 8 entries starting from offset
scoreboard players set #gs_row ec.gs_temp 0
scoreboard players operation #gs_idx ec.gs_temp = #gs_offset ec.gs_temp
function evercraft:guidestone/menu/spawn_row

# Spawn page nav if more than 8 total
execute if score #gs_total ec.gs_temp matches 9.. run function evercraft:guidestone/menu/spawn_nav
