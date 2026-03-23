# Guild Menu — Spawn side panels for Noon Gathering (left) and Node Scatter (right)
# @s = player with menu open
# Uses player rotation (^) for horizontal offset so left/right follows facing direction

# ============================================================
# LEFT SIDE: Noon Gathering
# ============================================================

# Title — always shown
execute at @e[type=item_display,tag=ec.guild_menu_bg,distance=..5,limit=1] rotated as @s rotated ~ 0 positioned ^0.55 ^0 ^0 run summon text_display ~ ~0.28 ~ {brightness:{block:15,sky:15},shadow_radius:0f, Tags:["ec.guild_menu_el","ec.guild_page_el"], billboard:"center", text:[{text:"☀ ",color:"yellow"},{text:"Noon",color:"gold",bold:true}], background:1, shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.216f,0.216f,0.216f]} }
execute at @e[type=item_display,tag=ec.guild_menu_bg,distance=..5,limit=1] rotated as @s rotated ~ 0 positioned ^0.55 ^0 ^0 run summon text_display ~ ~0.21 ~ {brightness:{block:15,sky:15},shadow_radius:0f, Tags:["ec.guild_menu_el","ec.guild_page_el"], billboard:"center", text:[{text:"Gathering",color:"gold",bold:true}], background:1, shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.216f,0.216f,0.216f]} }

# --- INACTIVE state ---
execute unless score #ge_noon_active ec.var matches 1 at @e[type=item_display,tag=ec.guild_menu_bg,distance=..5,limit=1] rotated as @s rotated ~ 0 positioned ^0.55 ^0 ^0 run summon text_display ~ ~0.13 ~ {brightness:{block:15,sky:15},shadow_radius:0f, Tags:["ec.guild_menu_el","ec.guild_page_el"], billboard:"center", text:{text:"Not Active",color:"dark_gray",italic:true}, background:1, shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.176f,0.176f,0.176f]} }
execute unless score #ge_noon_active ec.var matches 1 at @e[type=item_display,tag=ec.guild_menu_bg,distance=..5,limit=1] rotated as @s rotated ~ 0 positioned ^0.55 ^0 ^0 run summon text_display ~ ~0.06 ~ {brightness:{block:15,sky:15},shadow_radius:0f, Tags:["ec.guild_menu_el","ec.guild_page_el"], billboard:"center", text:{text:"Daily at noon",color:"gray",italic:true}, background:1, shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.149f,0.149f,0.149f]} }

# --- ACTIVE state ---
# Timer calculation: ticks / 20 = seconds
execute if score #ge_noon_active ec.var matches 1 run scoreboard players operation #ev_noon_sec ec.temp = #ge_noon_timer ec.var
execute if score #ge_noon_active ec.var matches 1 run scoreboard players operation #ev_noon_sec ec.temp /= #20 ec.const
execute if score #ge_noon_active ec.var matches 1 run execute store result storage evercraft:guild noon_panel.seconds int 1 run scoreboard players get #ev_noon_sec ec.temp

execute if score #ge_noon_active ec.var matches 1 at @e[type=item_display,tag=ec.guild_menu_bg,distance=..5,limit=1] rotated as @s rotated ~ 0 positioned ^0.55 ^0 ^0 run summon text_display ~ ~0.13 ~ {brightness:{block:15,sky:15},shadow_radius:0f, Tags:["ec.guild_menu_el","ec.guild_page_el"], billboard:"center", text:{text:"✦ ACTIVE ✦",color:"green",bold:true}, background:1, shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.176f,0.176f,0.176f]} }
execute if score #ge_noon_active ec.var matches 1 run function evercraft:guild/gui/menu/spawn_noon_active_detail with storage evercraft:guild noon_panel

# ============================================================
# RIGHT SIDE: Node Scatter
# ============================================================

# Title — always shown
execute at @e[type=item_display,tag=ec.guild_menu_bg,distance=..5,limit=1] rotated as @s rotated ~ 0 positioned ^-0.55 ^0 ^0 run summon text_display ~ ~0.28 ~ {brightness:{block:15,sky:15},shadow_radius:0f, Tags:["ec.guild_menu_el","ec.guild_page_el"], billboard:"center", text:[{text:"✦ ",color:"aqua"},{text:"Node",color:"#E0B0FF",bold:true}], background:1, shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.216f,0.216f,0.216f]} }
execute at @e[type=item_display,tag=ec.guild_menu_bg,distance=..5,limit=1] rotated as @s rotated ~ 0 positioned ^-0.55 ^0 ^0 run summon text_display ~ ~0.21 ~ {brightness:{block:15,sky:15},shadow_radius:0f, Tags:["ec.guild_menu_el","ec.guild_page_el"], billboard:"center", text:[{text:"Scatter",color:"#E0B0FF",bold:true}], background:1, shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.216f,0.216f,0.216f]} }

# --- INACTIVE state ---
execute unless score #ge_scatter_active ec.var matches 1 at @e[type=item_display,tag=ec.guild_menu_bg,distance=..5,limit=1] rotated as @s rotated ~ 0 positioned ^-0.55 ^0 ^0 run summon text_display ~ ~0.13 ~ {brightness:{block:15,sky:15},shadow_radius:0f, Tags:["ec.guild_menu_el","ec.guild_page_el"], billboard:"center", text:{text:"Not Active",color:"dark_gray",italic:true}, background:1, shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.176f,0.176f,0.176f]} }
execute unless score #ge_scatter_active ec.var matches 1 at @e[type=item_display,tag=ec.guild_menu_bg,distance=..5,limit=1] rotated as @s rotated ~ 0 positioned ^-0.55 ^0 ^0 run summon text_display ~ ~0.06 ~ {brightness:{block:15,sky:15},shadow_radius:0f, Tags:["ec.guild_menu_el","ec.guild_page_el"], billboard:"center", text:{text:"Every 4 days",color:"gray",italic:true}, background:1, shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.149f,0.149f,0.149f]} }

# --- ACTIVE state ---
execute if score #ge_scatter_active ec.var matches 1 run scoreboard players operation #ev_scat_sec ec.temp = #ge_scatter_timer ec.var
execute if score #ge_scatter_active ec.var matches 1 run scoreboard players operation #ev_scat_sec ec.temp /= #20 ec.const
execute if score #ge_scatter_active ec.var matches 1 run execute store result storage evercraft:guild scatter_panel.seconds int 1 run scoreboard players get #ev_scat_sec ec.temp

execute if score #ge_scatter_active ec.var matches 1 at @e[type=item_display,tag=ec.guild_menu_bg,distance=..5,limit=1] rotated as @s rotated ~ 0 positioned ^-0.55 ^0 ^0 run summon text_display ~ ~0.13 ~ {brightness:{block:15,sky:15},shadow_radius:0f, Tags:["ec.guild_menu_el","ec.guild_page_el"], billboard:"center", text:{text:"✦ ACTIVE ✦",color:"green",bold:true}, background:1, shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.176f,0.176f,0.176f]} }
execute if score #ge_scatter_active ec.var matches 1 run function evercraft:guild/gui/menu/spawn_scatter_active_detail with storage evercraft:guild scatter_panel
