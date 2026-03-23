# ============================================================
# Phase 1: CHOP — Start
# Runs as the player. Spawns bar + [Chop!] button.
# ec.ck_v1 = marker position (0-100)
# ec.ck_v2 = marker direction (1=right, -1=left)
# ec.ck_v3 = marker speed (starts at 3)
# ec.ck_v4 = chops needed
# ec.ck_v5 = chops landed
# ============================================================

# Init variables
scoreboard players set @s ec.ck_v1 0
scoreboard players set @s ec.ck_v2 1
scoreboard players set @s ec.ck_v3 3
scoreboard players set @s ec.ck_v5 0
scoreboard players set @s ec.ck_timer 0

# Chops needed by tier
scoreboard players set @s ec.ck_v4 3
execute if score @s ec.ck_tier matches 2 run scoreboard players set @s ec.ck_v4 4
execute if score @s ec.ck_tier matches 3 run scoreboard players set @s ec.ck_v4 5
execute if score @s ec.ck_tier matches 4 run scoreboard players set @s ec.ck_v4 5

# Session stamp
scoreboard players operation #gui_check ec.temp = @s adv.gui_session

# Spawn phase label
execute at @s rotated ~ 0 positioned ^ ^2.05 ^2.3 positioned ^0 ^0.55 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CK.MiniEl","CK.ChopLabel"],billboard:"center",text:[{"text":"Phase 1: ","color":"gray"},{"text":"CHOP","color":"green","bold":true}],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.473f,0.473f,0.473f]}}

# Spawn instruction
execute at @s rotated ~ 0 positioned ^ ^2.05 ^2.3 positioned ^0 ^0.45 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CK.MiniEl","CK.ChopHint"],billboard:"center",text:{"text":"Click [Chop!] when the marker is in the green zone","color":"gray","italic":true},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.243f,0.243f,0.243f]}}

# Spawn the chop bar (will be updated each tick)
execute at @s rotated ~ 0 positioned ^ ^2.05 ^2.3 positioned ^0 ^0.28 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CK.MiniEl","CK.ChopBar"],billboard:"center",text:{"text":"░░░░░░░████░░░░░░░░","color":"white"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.675f,0.675f,0.675f]}}

# Spawn [Chop!] button
execute at @s rotated ~ 0 positioned ^ ^2.05 ^2.3 positioned ^0 ^0.10 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CK.MiniEl","CK.ChopBtnText"],billboard:"center",text:{"text":"[ Chop! ]","color":"green","bold":true},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.473f,0.473f,0.473f]}}
execute at @s rotated ~ 0 positioned ^ ^2.07 ^2.3 positioned ^0 ^0.04 ^0 run summon interaction ~ ~ ~ {Tags:["CK.MiniEl","CK.ChopBtn"],width:0.35f,height:0.08f,response:1b}

# Spawn quality + progress display
execute at @s rotated ~ 0 positioned ^ ^2.05 ^2.3 positioned ^0 ^-0.08 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CK.MiniEl","CK.ChopProgress"],billboard:"center",text:[{"text":"Chops: ","color":"gray"},{"text":"0","color":"yellow"},{"text":"/","color":"gray"},{"text":"3","color":"yellow"},{"text":"  Quality: ","color":"gray"},{"text":"0","color":"gold"}],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.297f,0.297f,0.297f]}}

# Stamp all new entities with session
execute as @e[type=text_display,tag=CK.MiniEl,distance=..8] unless score @s adv.gui_session matches 1.. run scoreboard players operation @s adv.gui_session = #gui_check ec.temp
execute as @e[type=interaction,tag=CK.MiniEl,distance=..8] unless score @s adv.gui_session matches 1.. run scoreboard players operation @s adv.gui_session = #gui_check ec.temp

# Sound
playsound minecraft:block.note_block.bell master @s ~ ~ ~ 0.5 1.5
