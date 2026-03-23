# Guild Menu — Spawn event info rows (macro)
# $(guild_a_name) $(guild_b_name) $(type)
# Anchored to bg entity — positioned below weekly leaderboard

# Row 1: Guild names
$execute at @e[type=item_display,tag=ec.guild_menu_bg,distance=..5,limit=1] positioned ~ ~0.24 ~-0.02 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f, Tags:["ec.guild_menu_el","ec.guild_page_el"], billboard:"center", text:{text:"$(guild_a_name) vs $(guild_b_name)",color:"gold"}, background:1, shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.20f,0.20f,0.20f]} }

# Row 2: Activity name + [?] button
execute at @e[type=item_display,tag=ec.guild_menu_bg,distance=..5,limit=1] positioned ~ ~0.15 ~-0.02 run function evercraft:guild/gui/menu/spawn_event_activity with storage evercraft:guild temp

# Row 3: Guild A score (tagged for live updates)
$execute at @e[type=item_display,tag=ec.guild_menu_bg,distance=..5,limit=1] positioned ~ ~0.07 ~-0.02 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f, Tags:["ec.guild_menu_el","ec.guild_page_el","ec.guild_ev_score_a"], billboard:"center", text:[{text:"$(guild_a_name)",color:"gold"},{text:": ",color:"gray"},{score:{name:"#gd_score_a",objective:"ec.var"},color:"yellow"}], background:1, shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.243f,0.243f,0.243f]} }

# Row 4: Guild B score (tagged for live updates)
$execute at @e[type=item_display,tag=ec.guild_menu_bg,distance=..5,limit=1] positioned ~ ~-0.01 ~-0.02 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f, Tags:["ec.guild_menu_el","ec.guild_page_el","ec.guild_ev_score_b"], billboard:"center", text:[{text:"$(guild_b_name)",color:"gold"},{text:": ",color:"gray"},{score:{name:"#gd_score_b",objective:"ec.var"},color:"yellow"}], background:1, shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.243f,0.243f,0.243f]} }

# Row 5: Status line (winning/losing/tie) — tagged for live updates
execute at @e[type=item_display,tag=ec.guild_menu_bg,distance=..5,limit=1] positioned ~ ~-0.09 ~-0.02 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f, Tags:["ec.guild_menu_el","ec.guild_page_el","ec.guild_ev_status"], billboard:"center", text:{text:"...",color:"gray"}, background:1, shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.23f,0.23f,0.23f]} }

# Update status line immediately
function evercraft:guild/gui/menu/update_event_scores
