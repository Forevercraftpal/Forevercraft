# Guild Menu — Refresh Members page content
# @s = player with menu open

# Clear detail view mode if active
tag @s remove ec.gm_detail_view

# Kill existing page content
execute at @s run kill @e[type=text_display,tag=ec.guild_page_el,distance=..5]
execute at @s run kill @e[type=interaction,tag=ec.guild_page_el,distance=..5]

# Ensure page is at least 1
execute unless score @s ec.gm_page matches 1.. run scoreboard players set @s ec.gm_page 1

# Header row
execute at @e[type=item_display,tag=ec.guild_menu_bg,distance=..5,limit=1] positioned ~ ~0.54 ~-0.02 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f, Tags:["ec.guild_menu_el","ec.guild_page_el"], billboard:"center", text:{text:"Guild Roster",color:"green",bold:true}, background:1, shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.405f,0.405f,0.405f]} }

# Reset row counter (counts ALL entries — players + NPCs)
scoreboard players set #guild_row ec.temp 0
# Track how many rows were displayed on this page
scoreboard players set #guild_displayed ec.temp 0

# Compute skip count: (page - 1) * 6
scoreboard players operation #guild_skip ec.temp = @s ec.gm_page
scoreboard players remove #guild_skip ec.temp 1
scoreboard players operation #guild_skip ec.temp *= #6 ec.const

# Tag self as viewer so members can find the background
tag @s add ec.guild_viewer

# Iterate online guild members (players first)
execute as @a[scores={ec.guild_id=1..}] if score @s ec.guild_id = @p[tag=ec.guild_viewer] ec.guild_id run function evercraft:guild/gui/menu/add_member_row

# Iterate guild NPCs from guild marker storage
# Clear stale data first (data modify set from does nothing if source is missing — old guilds)
data modify storage evercraft:guild temp.npcs set value []
scoreboard players operation #Search ec.guild_id = @s ec.guild_id
execute positioned 0 -61 0 run data modify storage evercraft:guild temp.npcs set from entity @e[type=marker,tag=ec.guild,distance=..2,predicate=evercraft:guild/check_id,limit=1] data.GuildNPCs
function evercraft:guild/gui/menu/add_npc_row

# Count total entries (players + NPCs) for page info
scoreboard players operation #guild_total_members ec.temp = #guild_row ec.temp

tag @s remove ec.guild_viewer

# If no entries displayed on this page
execute if score #guild_displayed ec.temp matches 0 at @e[type=item_display,tag=ec.guild_menu_bg,distance=..5,limit=1] positioned ~ ~0.36 ~-0.02 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f, Tags:["ec.guild_menu_el","ec.guild_page_el"], billboard:"center", text:{text:"No members online",color:"gray",italic:true}, background:1, shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.338f,0.338f,0.338f]} }

# === PAGINATION NAV (< Page X/Y >) ===
# Calculate max page (6 per page)
scoreboard players set #gm_max_page ec.temp 1
execute if score #guild_total_members ec.temp matches 7.. run scoreboard players set #gm_max_page ec.temp 2
execute if score #guild_total_members ec.temp matches 13.. run scoreboard players set #gm_max_page ec.temp 3
execute if score #guild_total_members ec.temp matches 19.. run scoreboard players set #gm_max_page ec.temp 4
execute if score #guild_total_members ec.temp matches 25.. run scoreboard players set #gm_max_page ec.temp 5
execute if score #guild_total_members ec.temp matches 31.. run scoreboard players set #gm_max_page ec.temp 6

# Only show nav if more than 1 page
execute if score #gm_max_page ec.temp matches 2.. at @e[type=item_display,tag=ec.guild_menu_bg,distance=..5,limit=1] run function evercraft:guild/gui/menu/spawn_member_nav
