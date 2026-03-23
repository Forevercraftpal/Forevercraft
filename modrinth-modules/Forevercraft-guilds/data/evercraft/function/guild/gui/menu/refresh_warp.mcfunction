# Guild Menu — Refresh Warp page
# @s = player with menu open

# Kill existing page content
execute at @s run kill @e[type=text_display,tag=ec.guild_page_el,distance=..5]
execute at @s run kill @e[type=interaction,tag=ec.guild_page_el,distance=..5]

# Initialize warp page to 1 if not set
execute unless score @s ec.guild_warp_pg matches 1.. run scoreboard players set @s ec.guild_warp_pg 1

# Copy guidestone registry to working list
data modify storage evercraft:guild warp.working set from storage evercraft:guidestone registry
data modify storage evercraft:guild warp.filtered set value []

# Store guild_id for filter macro
execute store result storage evercraft:guild warp.filter_ctx.guild_id int 1 run scoreboard players get @s ec.guild_id

# Exclude current guild stone from results (find nearest guildstone marker's gs_id)
scoreboard players set #guild_warp_src ec.temp 0
execute at @s as @e[type=marker,tag=ec.guildstone,tag=ec.gs_registered,distance=..5,limit=1] store result score #guild_warp_src ec.temp run scoreboard players get @s ec.gs_id

# Remove source from working list by skipping it in filter
execute store result storage evercraft:guild warp.filter_ctx.source_id int 1 run scoreboard players get #guild_warp_src ec.temp

# Run recursive filter
function evercraft:guild/gui/menu/warp/filter with storage evercraft:guild warp.filter_ctx

# Get total filtered count
execute store result score #guild_warp_total ec.temp run data get storage evercraft:guild warp.filtered

# If no destinations, show message
execute if score #guild_warp_total ec.temp matches 0 at @e[type=item_display,tag=ec.guild_menu_bg,distance=..5,limit=1] positioned ~ ~0.32 ~-0.02 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f, Tags:["ec.guild_menu_el","ec.guild_page_el"], billboard:"center", text:{text:"No warp destinations available.",color:"gray",italic:true}, background:1, shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.338f,0.338f,0.338f]} }
execute if score #guild_warp_total ec.temp matches 0 run return 0

# Copy filtered to display list
data modify storage evercraft:guild warp.display set from storage evercraft:guild warp.filtered

# Calculate page offset: (page-1)*6
scoreboard players operation #guild_warp_idx ec.temp = @s ec.guild_warp_pg
scoreboard players remove #guild_warp_idx ec.temp 1
scoreboard players set #6 ec.temp 6
scoreboard players operation #guild_warp_idx ec.temp *= #6 ec.temp

# Spawn up to 6 rows starting from offset
scoreboard players set #guild_warp_row ec.temp 0
function evercraft:guild/gui/menu/warp/spawn_rows

# Page navigation if more than 6 total
execute if score #guild_warp_total ec.temp matches 7.. run function evercraft:guild/gui/menu/warp/spawn_nav
