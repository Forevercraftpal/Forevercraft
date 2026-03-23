# Guild Menu — Spawn supply tier selection (macro)
# $(supply_target_name)

# Header
$execute at @p[tag=ec.guild_supply_select,distance=..5] rotated ~ 0 positioned ^ ^2.27 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f, Tags:["ec.guild_menu_el","ec.guild_page_el"], billboard:"center", text:[{text:"Send supplies to ",color:"gray"},{text:"$(supply_target_name)",color:"gold"}], background:1, shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.338f,0.338f,0.338f]} }

# Tier 1: Rations (5 coins)
execute at @p[tag=ec.guild_supply_select,distance=..5] rotated ~ 0 positioned ^ ^2.09 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f, Tags:["ec.guild_menu_el","ec.guild_page_el"], billboard:"center", text:[{text:"[ ",color:"dark_gray"},{text:"Rations",color:"green",bold:true},{text:" ]",color:"dark_gray"},{text:" — 5 coins (food & potions)",color:"gray"}], background:1, shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.297f,0.297f,0.297f]} }
execute at @p[tag=ec.guild_supply_select,distance=..5] rotated ~ 0 positioned ^ ^2.01 ^1.8 run summon interaction ~ ~ ~ { Tags:["ec.guild_menu_el","ec.guild_page_el","ec.guild_supply_t1"], width:0.7f, height:0.10f, response:1b }

# Tier 2: Armaments (15 coins)
execute at @p[tag=ec.guild_supply_select,distance=..5] rotated ~ 0 positioned ^ ^1.93 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f, Tags:["ec.guild_menu_el","ec.guild_page_el"], billboard:"center", text:[{text:"[ ",color:"dark_gray"},{text:"Armaments",color:"yellow",bold:true},{text:" ]",color:"dark_gray"},{text:" — 15 coins (gear & tools)",color:"gray"}], background:1, shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.297f,0.297f,0.297f]} }
execute at @p[tag=ec.guild_supply_select,distance=..5] rotated ~ 0 positioned ^ ^1.85 ^1.8 run summon interaction ~ ~ ~ { Tags:["ec.guild_menu_el","ec.guild_page_el","ec.guild_supply_t2"], width:0.7f, height:0.10f, response:1b }

# Tier 3: War Chest (30 coins)
execute at @p[tag=ec.guild_supply_select,distance=..5] rotated ~ 0 positioned ^ ^1.77 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f, Tags:["ec.guild_menu_el","ec.guild_page_el"], billboard:"center", text:[{text:"[ ",color:"dark_gray"},{text:"War Chest",color:"light_purple",bold:true},{text:" ]",color:"dark_gray"},{text:" — 30 coins (rare materials)",color:"gray"}], background:1, shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.297f,0.297f,0.297f]} }
execute at @p[tag=ec.guild_supply_select,distance=..5] rotated ~ 0 positioned ^ ^1.69 ^1.8 run summon interaction ~ ~ ~ { Tags:["ec.guild_menu_el","ec.guild_page_el","ec.guild_supply_t3"], width:0.7f, height:0.10f, response:1b }

# Cancel button
execute at @p[tag=ec.guild_supply_select,distance=..5] rotated ~ 0 positioned ^ ^1.59 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f, Tags:["ec.guild_menu_el","ec.guild_page_el"], billboard:"center", text:[{text:"[ ",color:"dark_gray"},{text:"Cancel",color:"red"},{text:" ]",color:"dark_gray"}], background:1, shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.297f,0.297f,0.297f]} }
execute at @p[tag=ec.guild_supply_select,distance=..5] rotated ~ 0 positioned ^ ^1.51 ^1.8 run summon interaction ~ ~ ~ { Tags:["ec.guild_menu_el","ec.guild_page_el","ec.guild_supply_cancel"], width:0.3f, height:0.10f, response:1b }
