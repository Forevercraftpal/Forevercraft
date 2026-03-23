# Guild Menu — Refresh Manage page content
# @s = player with menu open

# Kill existing page content
execute at @s run kill @e[type=text_display,tag=ec.guild_page_el,distance=..5]
execute at @s run kill @e[type=interaction,tag=ec.guild_page_el,distance=..5]

# Rank check — need Administrator (5+) for management options
execute unless score @s ec.guild_rank matches 5.. at @e[type=item_display,tag=ec.guild_menu_bg,distance=..5,limit=1] positioned ~ ~0.58 ~-0.02 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f, Tags:["ec.guild_menu_el","ec.guild_page_el"], billboard:"center", text:{text:"Administrator rank required for more options",color:"gray",italic:true}, background:1, shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.297f,0.297f,0.297f]} }
execute unless score @s ec.guild_rank matches 5.. run return 0

# === Invite Player button ===
execute at @e[type=item_display,tag=ec.guild_menu_bg,distance=..5,limit=1] positioned ~ ~0.58 ~-0.02 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f, Tags:["ec.guild_menu_el","ec.guild_page_el","ec.guild_manage_invite_txt"], billboard:"center", text:[{text:"[ ",color:"dark_green"},{text:"Invite Player",color:"green",bold:true},{text:" ]",color:"dark_green"}], background:1, shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.378f,0.378f,0.378f]} }
execute at @e[type=item_display,tag=ec.guild_menu_bg,distance=..5,limit=1] positioned ~ ~0.46 ~ run summon interaction ~ ~ ~ { Tags:["ec.guild_menu_el","ec.guild_page_el","Adv.MenuElement","ec.guild_manage_invite"], width:0.6f, height:0.12f, response:1b }

# === Vote to Kick button ===
execute at @e[type=item_display,tag=ec.guild_menu_bg,distance=..5,limit=1] positioned ~ ~0.40 ~-0.02 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f, Tags:["ec.guild_menu_el","ec.guild_page_el","ec.guild_manage_kick_txt"], billboard:"center", text:[{text:"[ ",color:"dark_red"},{text:"Vote to Kick",color:"red"},{text:" ]",color:"dark_red"}], background:1, shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.378f,0.378f,0.378f]} }
execute at @e[type=item_display,tag=ec.guild_menu_bg,distance=..5,limit=1] positioned ~ ~0.28 ~ run summon interaction ~ ~ ~ { Tags:["ec.guild_menu_el","ec.guild_page_el","Adv.MenuElement","ec.guild_manage_kick"], width:0.6f, height:0.12f, response:1b }

# === Leave Guild button ===
execute at @e[type=item_display,tag=ec.guild_menu_bg,distance=..5,limit=1] positioned ~ ~0.22 ~-0.02 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f, Tags:["ec.guild_menu_el","ec.guild_page_el","ec.guild_manage_leave_txt"], billboard:"center", text:[{text:"[ ",color:"dark_gray"},{text:"Leave Guild",color:"gray"},{text:" ]",color:"dark_gray"}], background:1, shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.378f,0.378f,0.378f]} }
execute at @e[type=item_display,tag=ec.guild_menu_bg,distance=..5,limit=1] positioned ~ ~0.10 ~ run summon interaction ~ ~ ~ { Tags:["ec.guild_menu_el","ec.guild_page_el","Adv.MenuElement","ec.guild_manage_leave"], width:0.5f, height:0.12f, response:1b }

# === Disband Guild button (Valorous only) ===
execute if score @s ec.guild_rank matches 7 at @e[type=item_display,tag=ec.guild_menu_bg,distance=..5,limit=1] positioned ~ ~0.04 ~-0.02 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f, Tags:["ec.guild_menu_el","ec.guild_page_el","ec.guild_manage_disband_txt"], billboard:"center", text:[{text:"[ ",color:"dark_red"},{text:"Disband Guild",color:"dark_red",bold:true},{text:" ]",color:"dark_red"}], background:1, shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.378f,0.378f,0.378f]} }
execute if score @s ec.guild_rank matches 7 at @e[type=item_display,tag=ec.guild_menu_bg,distance=..5,limit=1] positioned ~ ~-0.08 ~ run summon interaction ~ ~ ~ { Tags:["ec.guild_menu_el","ec.guild_page_el","Adv.MenuElement","ec.guild_manage_disband"], width:0.6f, height:0.12f, response:1b }
