# Guild Menu — Noon Gathering active detail (left side panel)
# Macro: $(seconds)

# Timer
$execute at @e[type=item_display,tag=ec.guild_menu_bg,distance=..5,limit=1] rotated as @s rotated ~ 0 positioned ^0.55 ^0 ^0 run summon text_display ~ ~0.06 ~ {brightness:{block:15,sky:15},shadow_radius:0f, Tags:["ec.guild_menu_el","ec.guild_page_el"], billboard:"center", text:[{text:"$(seconds)s left",color:"yellow"}], background:1, shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.162f,0.162f,0.162f]} }

# How to participate
execute at @e[type=item_display,tag=ec.guild_menu_bg,distance=..5,limit=1] rotated as @s rotated ~ 0 positioned ^0.55 ^0 ^0 run summon text_display ~ ~-0.02 ~ {brightness:{block:15,sky:15},shadow_radius:0f, Tags:["ec.guild_menu_el","ec.guild_page_el"], billboard:"center", text:{text:"Stay near guildstone",color:"gray",italic:true}, background:1, shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.10f,0.10f,0.10f]} }
execute at @e[type=item_display,tag=ec.guild_menu_bg,distance=..5,limit=1] rotated as @s rotated ~ 0 positioned ^0.55 ^0 ^0 run summon text_display ~ ~-0.08 ~ {brightness:{block:15,sky:15},shadow_radius:0f, Tags:["ec.guild_menu_el","ec.guild_page_el"], billboard:"center", text:{text:"for 90s to qualify",color:"gray",italic:true}, background:1, shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.10f,0.10f,0.10f]} }

# Rewards header
execute at @e[type=item_display,tag=ec.guild_menu_bg,distance=..5,limit=1] rotated as @s rotated ~ 0 positioned ^0.55 ^0 ^0 run summon text_display ~ ~-0.16 ~ {brightness:{block:15,sky:15},shadow_radius:0f, Tags:["ec.guild_menu_el","ec.guild_page_el"], billboard:"center", text:{text:"— Rewards —",color:"gold"}, background:1, shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.149f,0.149f,0.149f]} }

# Reward: XP
execute at @e[type=item_display,tag=ec.guild_menu_bg,distance=..5,limit=1] rotated as @s rotated ~ 0 positioned ^0.55 ^0 ^0 run summon text_display ~ ~-0.23 ~ {brightness:{block:15,sky:15},shadow_radius:0f, Tags:["ec.guild_menu_el","ec.guild_page_el"], billboard:"center", text:[{text:"+7 ",color:"green"},{text:"Levels XP",color:"gray"}], background:1, shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.10f,0.10f,0.10f]} }

# Reward: Coin
execute at @e[type=item_display,tag=ec.guild_menu_bg,distance=..5,limit=1] rotated as @s rotated ~ 0 positioned ^0.55 ^0 ^0 run summon text_display ~ ~-0.29 ~ {brightness:{block:15,sky:15},shadow_radius:0f, Tags:["ec.guild_menu_el","ec.guild_page_el"], billboard:"center", text:[{text:"+1 ",color:"#E0B0FF"},{text:"Forever Coin",color:"gray"}], background:1, shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.10f,0.10f,0.10f]} }
