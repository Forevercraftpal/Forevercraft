# Guild Menu — Spawn expedition rows (below weekly leaderboard, no competition)
# Macro: $(biome) $(activity) $(progress) $(goal) $(pct) $(minutes) $(contrib)
# Anchored to bg entity — leaderboard ends at ~+0.25

# Row 1: Title — "Biome Expedition"
execute at @e[type=item_display,tag=ec.guild_menu_bg,distance=..5,limit=1] positioned ~ ~0.24 ~-0.02 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f, Tags:["ec.guild_menu_el","ec.guild_page_el"], billboard:"center", text:[{text:"Biome Expedition",color:"gold",bold:true}], background:1, shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.20f,0.20f,0.20f]} }

# Row 2: Biome + Activity
$execute at @e[type=item_display,tag=ec.guild_menu_bg,distance=..5,limit=1] positioned ~ ~0.15 ~-0.02 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f, Tags:["ec.guild_menu_el","ec.guild_page_el"], billboard:"center", text:[{text:"$(biome)",color:"aqua"},{text:" — ",color:"dark_gray"},{text:"$(activity)",color:"yellow"}], background:1, shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.23f,0.23f,0.23f]} }

# Row 3: Progress — "Progress: X/500 (XX%)"
$execute at @e[type=item_display,tag=ec.guild_menu_bg,distance=..5,limit=1] positioned ~ ~0.07 ~-0.02 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f, Tags:["ec.guild_menu_el","ec.guild_page_el","ec.guild_gexp_ev_progress"], billboard:"center", text:[{text:"Progress: ",color:"gray"},{text:"$(progress)",color:"green"},{text:"/$(goal)",color:"dark_green"},{text:" ($(pct)%)",color:"yellow"}], background:1, shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.23f,0.23f,0.23f]} }

# Row 4: Time remaining + contribution on same row
$execute at @e[type=item_display,tag=ec.guild_menu_bg,distance=..5,limit=1] positioned ~ ~-0.01 ~-0.02 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f, Tags:["ec.guild_menu_el","ec.guild_page_el","ec.guild_gexp_ev_timer"], billboard:"center", text:[{text:"$(minutes)m left",color:"gold"},{text:" | ",color:"dark_gray"},{text:"You: $(contrib) pts",color:"light_purple"}], background:1, shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.23f,0.23f,0.23f]} }
