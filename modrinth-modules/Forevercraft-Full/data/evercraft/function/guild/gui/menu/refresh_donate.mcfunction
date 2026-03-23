# Guild Menu — Refresh Donate page content
# @s = player with menu open

# Kill existing page content
execute at @s run kill @e[type=text_display,tag=ec.guild_page_el,distance=..5]
execute at @s run kill @e[type=interaction,tag=ec.guild_page_el,distance=..5]

# Activity title — show what expedition is boosted today
execute at @e[type=item_display,tag=ec.guild_menu_bg,distance=..5,limit=1] positioned ~ ~0.46 ~-0.02 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f, Tags:["ec.guild_menu_el","ec.guild_page_el"], billboard:"center", text:{text:"Hold expedition supplies",color:"gray"}, background:1, shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.338f,0.338f,0.338f]} }

execute at @e[type=item_display,tag=ec.guild_menu_bg,distance=..5,limit=1] positioned ~ ~0.34 ~-0.02 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f, Tags:["ec.guild_menu_el","ec.guild_page_el"], billboard:"center", text:{text:"and click the button below",color:"gray"}, background:1, shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.338f,0.338f,0.338f]} }

# Donate button
execute at @e[type=item_display,tag=ec.guild_menu_bg,distance=..5,limit=1] positioned ~ ~0.16 ~-0.02 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f, Tags:["ec.guild_menu_el","ec.guild_page_el","ec.guild_donate_txt"], billboard:"center", text:[{text:"[ ",color:"dark_green"},{text:"Donate",color:"green",bold:true},{text:" ]",color:"dark_green"}], background:1, shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.473f,0.473f,0.473f]} }
execute at @e[type=item_display,tag=ec.guild_menu_bg,distance=..5,limit=1] positioned ~ ~0.04 ~ run summon interaction ~ ~ ~ { Tags:["ec.guild_menu_el","ec.guild_page_el","ec.guild_donate_btn"], width:0.45f, height:0.12f, response:1b }

# Dispatch to activity-specific rate display
execute if score #expedition_activity ec.var matches 1 run function evercraft:guild/gui/menu/donate_rates_1
execute if score #expedition_activity ec.var matches 2 run function evercraft:guild/gui/menu/donate_rates_2
execute if score #expedition_activity ec.var matches 3 run function evercraft:guild/gui/menu/donate_rates_3
execute if score #expedition_activity ec.var matches 4 run function evercraft:guild/gui/menu/donate_rates_4
execute if score #expedition_activity ec.var matches 5 run function evercraft:guild/gui/menu/donate_rates_5
execute if score #expedition_activity ec.var matches 7 run function evercraft:guild/gui/menu/donate_rates_7
execute if score #expedition_activity ec.var matches 8 run function evercraft:guild/gui/menu/donate_rates_8
execute if score #expedition_activity ec.var matches 9 run function evercraft:guild/gui/menu/donate_rates_9
execute if score #expedition_activity ec.var matches 10 run function evercraft:guild/gui/menu/donate_rates_10
execute if score #expedition_activity ec.var matches 11 run function evercraft:guild/gui/menu/donate_rates_11
execute if score #expedition_activity ec.var matches 12 run function evercraft:guild/gui/menu/donate_rates_12
execute if score #expedition_activity ec.var matches 13 run function evercraft:guild/gui/menu/donate_rates_13
