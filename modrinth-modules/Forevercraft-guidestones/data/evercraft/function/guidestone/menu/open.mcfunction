# Guidestone Menu — Open the network browser
# Run as the player at their position

# Already in menu? Close first (also kills any orphaned elements)
execute if entity @s[tag=ec.gs_in_menu] run function evercraft:guidestone/menu/close

# Safety: kill any orphaned menu elements from a previous session (crash, relog, etc.)
execute at @s run kill @e[type=text_display,tag=ec.gs_menu_el,distance=..5]
execute at @s run kill @e[type=interaction,tag=ec.gs_menu_el,distance=..5]
execute at @s run kill @e[type=item_display,tag=ec.gs_menu_el,distance=..5]

# Store how many guidestones exist
execute store result score @s ec.gs_temp run data get storage evercraft:guidestone registry

# If no guidestones registered, tell the player
execute if score @s ec.gs_temp matches 0 run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"No Guidestones have been registered yet!",color:"yellow"}]
execute if score @s ec.gs_temp matches 0 run return 0

# Disable the guidestone interaction entity so it can't be re-triggered
execute at @s run data modify entity @e[type=interaction,tag=ec.gs_interact,distance=..5,limit=1] height set value 0.0f

# Tag player as in menu, set initial view and page
tag @s add ec.gs_in_menu
scoreboard players set @s ec.gs_page 1
scoreboard players set @s ec.gs_view 1
scoreboard players set @s ec.gs_menu_time 0

# Guild stone context: if is_guild_stone was set by open_teleport, start on View 4
# Otherwise, clear it (prevents stale context from previous sessions)
execute unless data storage evercraft:guidestone {menu_ctx:{is_guild_stone:1b}} run data modify storage evercraft:guidestone menu_ctx.is_guild_stone set value 0b
execute if data storage evercraft:guidestone {menu_ctx:{is_guild_stone:1b}} run scoreboard players set @s ec.gs_view 4

# Store current guidestone context for menu use
# For remote Portal Dial sessions (ec.gs_remote_menu), menu_ctx is already set — skip marker lookups
execute unless entity @s[tag=ec.gs_remote_menu] run data modify storage evercraft:guidestone menu_ctx.dim set value "minecraft:overworld"
execute unless entity @s[tag=ec.gs_remote_menu] if dimension minecraft:the_nether run data modify storage evercraft:guidestone menu_ctx.dim set value "minecraft:the_nether"
execute unless entity @s[tag=ec.gs_remote_menu] if dimension minecraft:the_end run data modify storage evercraft:guidestone menu_ctx.dim set value "minecraft:the_end"
# Primed status — determines if interdimensional view is accessible
execute unless entity @s[tag=ec.gs_remote_menu] store success storage evercraft:guidestone menu_ctx.primed byte 1 run data get entity @e[type=marker,tag=ec.gs_registered,distance=..5,limit=1,sort=nearest] data.primed
execute unless entity @s[tag=ec.gs_remote_menu] if data entity @e[type=marker,tag=ec.gs_registered,distance=..5,limit=1,sort=nearest] {data:{primed:1b}} run data modify storage evercraft:guidestone menu_ctx.primed set value 1b
execute unless entity @s[tag=ec.gs_remote_menu] unless data entity @e[type=marker,tag=ec.gs_registered,distance=..5,limit=1,sort=nearest] {data:{primed:1b}} run data modify storage evercraft:guidestone menu_ctx.primed set value 0b
# Source ID — used to exclude the current guidestone from the destination list
execute unless entity @s[tag=ec.gs_remote_menu] store result storage evercraft:guidestone menu_ctx.source_id int 1 run scoreboard players get @e[type=marker,tag=ec.gs_registered,distance=..5,limit=1,sort=nearest] ec.gs_id

# Spawn background (solid dark panel — same as Advantage GUI for accessibility)
execute rotated ~ 0 positioned ^ ^1.95 ^1.8 run summon item_display ~ ~ ~ { Tags:["ec.gs_menu_el","ec.gs_menu_bg"], billboard:"center", item:{id:"black_stained_glass_pane",count:1}, item_display:"fixed", transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,-0.02f],scale:[3.4f,2.6f,0.01f]} }

# Spawn title (view-dependent, starts as "Local Network")
execute rotated ~ 0 positioned ^ ^2.45 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f, Tags:["ec.gs_menu_el","ec.gs_menu_title"], billboard:"center", text:[{text:"\u2726 ",color:"dark_purple"},{text:"Local Network",color:"light_purple",bold:true},{text:" \u2726",color:"dark_purple"}], background:1, shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.608f,0.608f,0.608f]} }

# Spawn view navigation arrows (shared shell — always visible)
# Left arrow (previous view)
execute rotated ~ 0 positioned ^0.7 ^2.45 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f, Tags:["ec.gs_menu_el","ec.gs_view_nav_left_txt"], billboard:"center", text:{text:"<",color:"gray",bold:true}, background:1, shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.473f,0.473f,0.473f]} }
execute rotated ~ 0 positioned ^ ^2.35 ^1.8 positioned ^0.7 ^0 ^0 run summon interaction ~ ~ ~ { Tags:["ec.gs_menu_el","ec.gs_view_nav_left"], width:0.2f, height:0.12f, response:1b }

# Right arrow (next view)
execute rotated ~ 0 positioned ^-0.7 ^2.45 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f, Tags:["ec.gs_menu_el","ec.gs_view_nav_right_txt"], billboard:"center", text:{text:">",color:"gray",bold:true}, background:1, shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.473f,0.473f,0.473f]} }
execute rotated ~ 0 positioned ^ ^2.35 ^1.8 positioned ^-0.7 ^0 ^0 run summon interaction ~ ~ ~ { Tags:["ec.gs_menu_el","ec.gs_view_nav_right"], width:0.2f, height:0.12f, response:1b }

# Spawn [Close] button (shared shell — always visible at bottom)
execute rotated ~ 0 positioned ^ ^0.95 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f, Tags:["ec.gs_menu_el","ec.gs_close_txt"], billboard:"center", text:[{text:"[ ",color:"dark_gray"},{text:"Close",color:"gray",bold:true},{text:" ]",color:"dark_gray"}], background:1, shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.405f,0.405f,0.405f]} }
execute rotated ~ 0 positioned ^ ^0.85 ^1.8 run summon interaction ~ ~ ~ { Tags:["ec.gs_menu_el","ec.gs_close_btn"], width:0.4f, height:0.12f, response:1b }

# Populate the destination list based on initial view
execute if score @s ec.gs_view matches 1 run function evercraft:guidestone/menu/refresh
execute if score @s ec.gs_view matches 4 at @s run function evercraft:guidestone/menu/refresh_guild
# Update title if starting on View 4
execute if score @s ec.gs_view matches 4 at @s as @e[type=text_display,tag=ec.gs_menu_title,distance=..5,limit=1] run data modify entity @s text set value [{text:"\u2726 ",color:"dark_purple"},{text:"Guild Network",color:"dark_purple",bold:true},{text:" \u2726",color:"dark_purple"}]

# Sound

# Session isolation
scoreboard players add #gui_session ec.var 1
scoreboard players operation @s adv.gui_session = #gui_session ec.var
scoreboard players operation #gui_stamp ec.temp = @s adv.gui_session
execute as @e[type=text_display,tag=ec.gs_menu_el,distance=..5] unless score @s adv.gui_session matches 1.. run scoreboard players operation @s adv.gui_session = #gui_stamp ec.temp
execute as @e[type=item_display,tag=ec.gs_menu_el,distance=..5] unless score @s adv.gui_session matches 1.. run scoreboard players operation @s adv.gui_session = #gui_stamp ec.temp
execute as @e[type=interaction,tag=ec.gs_menu_el,distance=..5] unless score @s adv.gui_session matches 1.. run scoreboard players operation @s adv.gui_session = #gui_stamp ec.temp

playsound minecraft:block.amethyst_block.step master @s ~ ~ ~ 0.8 1.2
