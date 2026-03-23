# Guild Menu — Refresh Allies page content
# @s = player with menu open

# Kill existing page content
execute at @s run kill @e[type=text_display,tag=ec.guild_page_el,distance=..5]
execute at @s run kill @e[type=interaction,tag=ec.guild_page_el,distance=..5]

# Header (anchored to bg entity so page doesn't shift when player rotates to click tabs)
execute at @e[type=item_display,tag=ec.guild_menu_bg,distance=..5,limit=1] positioned ^0 ^0.39 ^-0.02 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f, Tags:["ec.guild_menu_el","ec.guild_page_el"], billboard:"center", text:{text:"Allied Guilds",color:"green",bold:true}, background:1, shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.405f,0.405f,0.405f]} }

# Read alliances from player's guild marker
scoreboard players operation #Search ec.guild_id = @s ec.guild_id
execute positioned 0 -61 0 as @e[type=marker,tag=ec.guild,distance=..2,predicate=evercraft:guild/check_id,limit=1] run data modify storage evercraft:guild temp.allies_list set from entity @s data.alliances

# Check if empty
execute unless data storage evercraft:guild temp.allies_list[0] at @e[type=item_display,tag=ec.guild_menu_bg,distance=..5,limit=1] positioned ^0 ^0.07 ^-0.02 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f, Tags:["ec.guild_menu_el","ec.guild_page_el"], billboard:"center", text:{text:"No allies yet",color:"gray"}, background:1, shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.338f,0.338f,0.338f]} }

# Start spawning ally rows (recursive)
scoreboard players set #ally_row ec.temp 0
execute if data storage evercraft:guild temp.allies_list[0] run function evercraft:guild/gui/menu/spawn_ally_rows
