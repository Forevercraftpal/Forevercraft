# Guild Menu — Open GUI panel
# Run as the player who right-clicked the guild stone
# Guildstone has 7 tabs: Events, Donate, Warp, Guild, Members, Allies, Manage

# Already in menu? Close first
execute if entity @s[tag=ec.guild_in_menu] run function evercraft:guild/gui/menu/close

# Safety: kill any orphaned elements
execute at @s run kill @e[type=text_display,tag=ec.guild_menu_el,distance=..5]
execute at @s run kill @e[type=interaction,tag=ec.guild_menu_el,distance=..5]
execute at @s run kill @e[type=item_display,tag=ec.guild_menu_el,distance=..5]

# Must be in a guild
execute unless score @s ec.guild_id matches 1.. run tellraw @s [{text:"[Guild] ",color:"green"},{text:"You are not in a guild!",color:"red"}]
execute unless score @s ec.guild_id matches 1.. run return 0

# Disable the guild stone interaction entity so it can't be re-triggered
execute at @s run data modify entity @e[type=interaction,tag=ec.guildstone_interact,distance=..5,limit=1] height set value 0.0f

# Tag player as in menu
tag @s add ec.guild_in_menu
scoreboard players set @s ec.guild_page 1
scoreboard players set @s ec.guild_menu_time 0

# === SPAWN SHELL ===

# Background panel
execute rotated ~ 0 positioned ^ ^1.95 ^1.8 run summon item_display ~ ~ ~ { Tags:["ec.guild_menu_el","ec.guild_menu_bg"], billboard:"center", item:{id:"black_stained_glass_pane",count:1}, item_display:"fixed", transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,-0.02f],scale:[4.0f,2.8f,0.01f]} }

# Title (will be updated with guild name by refresh_info)
execute rotated ~ 0 positioned ^ ^2.75 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f, Tags:["ec.guild_menu_el","ec.guild_menu_title"], billboard:"center", text:{text:"Guild",color:"green",bold:true}, background:1, shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.608f,0.608f,0.608f]} }

# === NAV BUTTONS (7 tabs: Events, Donate, Warp, Guild, Members, Allies, Manage) ===
# Spacing: 0.36 step to match wider panel

# [Events] (page 6)
execute rotated ~ 0 positioned ^1.08 ^1.35 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f, Tags:["ec.guild_menu_el","ec.guild_nav_event_txt"], billboard:"center", text:{text:"Events",color:"gray"}, background:1, shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.297f,0.297f,0.297f]} }
execute rotated ~ 0 positioned ^1.08 ^1.25 ^1.8 run summon interaction ~ ~ ~ { Tags:["ec.guild_menu_el","ec.guild_nav_event"], width:0.28f, height:0.12f, response:1b }

# [Donate] (page 3)
execute rotated ~ 0 positioned ^0.72 ^1.35 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f, Tags:["ec.guild_menu_el","ec.guild_nav_donate_txt"], billboard:"center", text:{text:"Donate",color:"gray"}, background:1, shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.297f,0.297f,0.297f]} }
execute rotated ~ 0 positioned ^0.72 ^1.25 ^1.8 run summon interaction ~ ~ ~ { Tags:["ec.guild_menu_el","ec.guild_nav_donate"], width:0.28f, height:0.12f, response:1b }

# [Warp] (page 5)
execute rotated ~ 0 positioned ^0.36 ^1.35 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f, Tags:["ec.guild_menu_el","ec.guild_nav_warp_txt"], billboard:"center", text:{text:"Warp",color:"gray"}, background:1, shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.297f,0.297f,0.297f]} }
execute rotated ~ 0 positioned ^0.36 ^1.25 ^1.8 run summon interaction ~ ~ ~ { Tags:["ec.guild_menu_el","ec.guild_nav_warp"], width:0.28f, height:0.12f, response:1b }

# [Guild] — center, highlighted by default (page 1)
execute rotated ~ 0 positioned ^ ^1.35 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f, Tags:["ec.guild_menu_el","ec.guild_nav_info_txt"], billboard:"center", text:{text:"Guild",color:"white",bold:true}, background:1, shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.297f,0.297f,0.297f]} }
execute rotated ~ 0 positioned ^ ^1.25 ^1.8 run summon interaction ~ ~ ~ { Tags:["ec.guild_menu_el","ec.guild_nav_info"], width:0.28f, height:0.12f, response:1b }

# [Members] (page 2)
execute rotated ~ 0 positioned ^-0.36 ^1.35 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f, Tags:["ec.guild_menu_el","ec.guild_nav_members_txt"], billboard:"center", text:{text:"Members",color:"gray"}, background:1, shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.297f,0.297f,0.297f]} }
execute rotated ~ 0 positioned ^-0.36 ^1.25 ^1.8 run summon interaction ~ ~ ~ { Tags:["ec.guild_menu_el","ec.guild_nav_members"], width:0.28f, height:0.12f, response:1b }

# [Allies] (page 7)
execute rotated ~ 0 positioned ^-0.72 ^1.35 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f, Tags:["ec.guild_menu_el","ec.guild_nav_allies_txt"], billboard:"center", text:{text:"Allies",color:"gray"}, background:1, shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.297f,0.297f,0.297f]} }
execute rotated ~ 0 positioned ^-0.72 ^1.25 ^1.8 run summon interaction ~ ~ ~ { Tags:["ec.guild_menu_el","ec.guild_nav_allies"], width:0.28f, height:0.12f, response:1b }

# [Manage] (page 4)
execute rotated ~ 0 positioned ^-1.08 ^1.35 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f, Tags:["ec.guild_menu_el","ec.guild_nav_manage_txt"], billboard:"center", text:{text:"Manage",color:"gray"}, background:1, shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.297f,0.297f,0.297f]} }
execute rotated ~ 0 positioned ^-1.08 ^1.25 ^1.8 run summon interaction ~ ~ ~ { Tags:["ec.guild_menu_el","ec.guild_nav_manage"], width:0.28f, height:0.12f, response:1b }

# === CLOSE BUTTON ===
execute rotated ~ 0 positioned ^ ^1.13 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f, Tags:["ec.guild_menu_el","ec.guild_close_txt"], billboard:"center", text:[{text:"[ ",color:"dark_gray"},{text:"Close",color:"gray",bold:true},{text:" ]",color:"dark_gray"}], background:1, shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.405f,0.405f,0.405f]} }
execute rotated ~ 0 positioned ^ ^1.03 ^1.8 run summon interaction ~ ~ ~ { Tags:["ec.guild_menu_el","ec.guild_close_btn"], width:0.4f, height:0.12f, response:1b }

# Load guild info page by default
function evercraft:guild/gui/menu/refresh_info

# Sound

# Session isolation
scoreboard players add #gui_session ec.var 1
scoreboard players operation @s adv.gui_session = #gui_session ec.var
scoreboard players operation #gui_stamp ec.temp = @s adv.gui_session
execute as @e[type=text_display,tag=ec.guild_menu_el,distance=..5] unless score @s adv.gui_session matches 1.. run scoreboard players operation @s adv.gui_session = #gui_stamp ec.temp
execute as @e[type=item_display,tag=ec.guild_menu_el,distance=..5] unless score @s adv.gui_session matches 1.. run scoreboard players operation @s adv.gui_session = #gui_stamp ec.temp
execute as @e[type=interaction,tag=ec.guild_menu_el,distance=..5] unless score @s adv.gui_session matches 1.. run scoreboard players operation @s adv.gui_session = #gui_stamp ec.temp

playsound minecraft:block.amethyst_block.step master @s ~ ~ ~ 0.8 1.2
