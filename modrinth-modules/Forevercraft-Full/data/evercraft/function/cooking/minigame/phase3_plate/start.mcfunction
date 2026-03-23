# ============================================================
# Phase 3: PLATE — Start
# Runs as the player. Spawns wave bar + [Plate!] button.
# ec.ck_v1 = wave position (0-100, rising with sine modulation)
# ec.ck_v2 = wave step counter (for sine lookup)
# ec.ck_v3 = base rise rate denominator (rise 1 per N ticks)
# ============================================================

# Init variables
scoreboard players set @s ec.ck_v1 0
scoreboard players set @s ec.ck_v2 0
scoreboard players set @s ec.ck_timer 0

# Rise rate by tier (1 per N ticks — higher = slower, gives more time to react)
# Golden zone is at 62-78, must give player time to see and react to waves
scoreboard players set @s ec.ck_v3 5
execute if score @s ec.ck_tier matches 2 run scoreboard players set @s ec.ck_v3 4
execute if score @s ec.ck_tier matches 3 run scoreboard players set @s ec.ck_v3 3
execute if score @s ec.ck_tier matches 4 run scoreboard players set @s ec.ck_v3 3

# Session stamp
scoreboard players operation #gui_check ec.temp = @s adv.gui_session

# Spawn phase label
execute at @s rotated ~ 0 positioned ^ ^2.05 ^2.3 positioned ^0 ^0.55 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CK.MiniEl","CK.PlateLabel"],billboard:"center",text:[{"text":"Phase 3: ","color":"gray"},{"text":"PLATE","color":"#FFD700","bold":true}],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.473f,0.473f,0.473f]}}

# Spawn instruction
execute at @s rotated ~ 0 positioned ^ ^2.05 ^2.3 positioned ^0 ^0.45 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CK.MiniEl","CK.PlateHint"],billboard:"center",text:{"text":"Click [Plate!] when the bar enters the golden zone!","color":"gray","italic":true},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.243f,0.243f,0.243f]}}

# Spawn wave bar
execute at @s rotated ~ 0 positioned ^ ^2.05 ^2.3 positioned ^0 ^0.28 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CK.MiniEl","CK.PlateBar"],billboard:"center",text:{"text":"░░░░░░░░░░░░░░░░░░░░","color":"dark_gray"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.675f,0.675f,0.675f]}}

# Spawn [Plate!] button
execute at @s rotated ~ 0 positioned ^ ^2.05 ^2.3 positioned ^0 ^0.10 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CK.MiniEl","CK.PlateBtnText"],billboard:"center",text:{"text":"[ Plate! ]","color":"#FFD700","bold":true},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.473f,0.473f,0.473f]}}
execute at @s rotated ~ 0 positioned ^ ^2.07 ^2.3 positioned ^0 ^0.04 ^0 run summon interaction ~ ~ ~ {Tags:["CK.MiniEl","CK.PlateBtn"],width:0.35f,height:0.08f,response:1b}

# Spawn quality display
execute at @s rotated ~ 0 positioned ^ ^2.05 ^2.3 positioned ^0 ^-0.08 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CK.MiniEl","CK.PlateProgress"],billboard:"center",text:[{"text":"Doneness: ","color":"gray"},{"text":"0","color":"white"},{"text":"  Golden Zone: 62-78","color":"#FFD700"}],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.297f,0.297f,0.297f]}}

# Stamp new entities
execute as @e[type=text_display,tag=CK.MiniEl,distance=..8] unless score @s adv.gui_session matches 1.. run scoreboard players operation @s adv.gui_session = #gui_check ec.temp
execute as @e[type=interaction,tag=CK.MiniEl,distance=..8] unless score @s adv.gui_session matches 1.. run scoreboard players operation @s adv.gui_session = #gui_check ec.temp

# Sound
playsound minecraft:block.note_block.bell master @s ~ ~ ~ 0.5 0.8
