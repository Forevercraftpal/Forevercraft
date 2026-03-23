# Guild Menu — Spawn weekly leaderboard rows (always at top of Events page)
# Macro: $(top1_name) $(top1_score) $(top2_name) $(top2_score) $(top3_name) $(top3_score) $(days_left)
# Anchored to bg entity — compact layout

# Header: "Weekly Contribution"
execute at @e[type=item_display,tag=ec.guild_menu_bg,distance=..5,limit=1] positioned ~ ~0.68 ~-0.02 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f, Tags:["ec.guild_menu_el","ec.guild_page_el"], billboard:"center", text:[{text:"Weekly Contribution ✦",color:"gold",bold:true}], background:1, shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.297f,0.297f,0.297f]} }

# Days remaining
$execute at @e[type=item_display,tag=ec.guild_menu_bg,distance=..5,limit=1] positioned ~ ~0.60 ~-0.02 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f, Tags:["ec.guild_menu_el","ec.guild_page_el"], billboard:"center", text:[{text:"$(days_left) days remaining",color:"gray",italic:true}], background:1, shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.243f,0.243f,0.243f]} }

# 1st place
$execute at @e[type=item_display,tag=ec.guild_menu_bg,distance=..5,limit=1] positioned ~ ~0.51 ~-0.02 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f, Tags:["ec.guild_menu_el","ec.guild_page_el"], billboard:"center", text:[{text:"1. ",color:"yellow",bold:true},$(top1_name),{text:" — $(top1_score) pts",color:"gray"}], background:1, shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.243f,0.243f,0.243f]} }

# 2nd place
$execute at @e[type=item_display,tag=ec.guild_menu_bg,distance=..5,limit=1] positioned ~ ~0.43 ~-0.02 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f, Tags:["ec.guild_menu_el","ec.guild_page_el"], billboard:"center", text:[{text:"2. ",color:"white",bold:true},$(top2_name),{text:" — $(top2_score) pts",color:"gray"}], background:1, shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.243f,0.243f,0.243f]} }

# 3rd place
$execute at @e[type=item_display,tag=ec.guild_menu_bg,distance=..5,limit=1] positioned ~ ~0.35 ~-0.02 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f, Tags:["ec.guild_menu_el","ec.guild_page_el"], billboard:"center", text:[{text:"3. ",color:"#cd7f32",bold:true},$(top3_name),{text:" — $(top3_score) pts",color:"gray"}], background:1, shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.243f,0.243f,0.243f]} }
