# Guild Menu — Spawn expedition rows (below leaderboard + competition)
# Macro: $(biome) $(activity) $(progress) $(goal) $(pct) $(minutes) $(contrib)
# Anchored to bg entity — competition ends at ~-0.19

# Row 1: Title — "Biome Expedition"
execute at @e[type=item_display,tag=ec.guild_menu_bg,distance=..5,limit=1] positioned ~ ~-0.20 ~-0.02 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f, Tags:["ec.guild_menu_el","ec.guild_page_el"], billboard:"center", text:[{text:"Biome Expedition",color:"gold",bold:true}], background:1, shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.243f,0.243f,0.243f]} }

# Row 2: Biome + Progress combined (compact)
$execute at @e[type=item_display,tag=ec.guild_menu_bg,distance=..5,limit=1] positioned ~ ~-0.28 ~-0.02 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f, Tags:["ec.guild_menu_el","ec.guild_page_el"], billboard:"center", text:[{text:"$(biome)",color:"aqua"},{text:" — $(progress)/$(goal) ($(pct)%)",color:"green"},{text:" | $(minutes)m",color:"gold"}], background:1, shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.216f,0.216f,0.216f]} }
