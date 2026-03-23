# Guild Menu — Refresh Info page content
# @s = player with menu open

# Kill existing page content
execute at @s run kill @e[type=text_display,tag=ec.guild_page_el,distance=..5]
execute at @s run kill @e[type=interaction,tag=ec.guild_page_el,distance=..5]

# Read guild data from marker
scoreboard players operation #Search ec.guild_id = @s ec.guild_id
execute positioned 0 -61 0 as @e[type=marker,tag=ec.guild,distance=..2,predicate=evercraft:guild/check_id,limit=1] run function evercraft:guild/gui/read_guild_data

# Get player's rank name
execute if score @s ec.guild_rank matches 1 run data modify storage evercraft:guild temp.rank_name set value "Associate"
execute if score @s ec.guild_rank matches 2 run data modify storage evercraft:guild temp.rank_name set value "Member"
execute if score @s ec.guild_rank matches 3 run data modify storage evercraft:guild temp.rank_name set value "Aide"
execute if score @s ec.guild_rank matches 4 run data modify storage evercraft:guild temp.rank_name set value "Representative"
execute if score @s ec.guild_rank matches 5 run data modify storage evercraft:guild temp.rank_name set value "Administrator"
execute if score @s ec.guild_rank matches 6 run data modify storage evercraft:guild temp.rank_name set value "Dedicated"
execute if score @s ec.guild_rank matches 7 run data modify storage evercraft:guild temp.rank_name set value "Valorous"

# Get player contribution
execute store result storage evercraft:guild temp.player_contrib int 1 run scoreboard players get @s ec.guild_contrib

# Update title with guild name
function evercraft:guild/gui/menu/set_title with storage evercraft:guild temp

# Spawn info rows (anchored to background entity)
function evercraft:guild/gui/menu/spawn_info_rows with storage evercraft:guild temp

# Spawn expedition display as page content (only on Guild tab)
# Anchored to bg entity to prevent drift when player moves
# Guildstone: below start button, above tabs
execute if score #expedition_activity ec.var matches 1.. unless entity @s[tag=ec.guild_remote_menu] at @e[type=item_display,tag=ec.guild_menu_bg,distance=..5,limit=1] positioned ~ ~-0.40 ~-0.02 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["ec.guild_menu_el","ec.guild_page_el","ec.guild_expedition_txt"],billboard:"center",text:{text:"",color:"gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.297f,0.297f,0.297f]}}
execute if score #expedition_activity ec.var matches 1.. unless entity @s[tag=ec.guild_remote_menu] at @e[type=item_display,tag=ec.guild_menu_bg,distance=..5,limit=1] positioned ~ ~-0.45 ~0.0 run summon interaction ~ ~ ~ {Tags:["ec.guild_menu_el","ec.guild_page_el","ec.guild_gexp_display_click"],width:0.6f,height:0.07f,response:1b}
# Codex: slightly lower position
execute if score #expedition_activity ec.var matches 1.. if entity @s[tag=ec.guild_remote_menu] at @e[type=item_display,tag=ec.guild_menu_bg,distance=..5,limit=1] positioned ~ ~-0.46 ~-0.02 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["ec.guild_menu_el","ec.guild_page_el","Adv.SectionContent","Adv.MenuElement","ec.guild_expedition_txt"],billboard:"center",text:{text:"",color:"gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.297f,0.297f,0.297f]}}
execute if score #expedition_activity ec.var matches 1.. if entity @s[tag=ec.guild_remote_menu] at @e[type=item_display,tag=ec.guild_menu_bg,distance=..5,limit=1] positioned ~ ~-0.50 ~0.0 run summon interaction ~ ~ ~ {Tags:["ec.guild_menu_el","ec.guild_page_el","Adv.SectionContent","Adv.MenuElement","ec.guild_gexp_display_click"],width:0.7f,height:0.08f,response:1b}

# Update expedition text via macro
execute at @s run function evercraft:guild/expedition/refresh_menu_display
