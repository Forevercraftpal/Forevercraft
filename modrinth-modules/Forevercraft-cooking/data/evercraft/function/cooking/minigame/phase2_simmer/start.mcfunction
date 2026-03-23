# ============================================================
# Phase 2: SIMMER — Start
# Runs as the player. Spawns temp gauge + [Stoke] + [Cool] buttons.
# ec.ck_v1 = temperature (0-100), starts at 50 (middle)
# ec.ck_v2 = drift direction (1=up, -1=down)
# ec.ck_v3 = zone_time (ticks spent in simmer zone 40-60)
# ec.ck_v4 = total duration (ticks)
# ec.ck_v5 = button cooldown
# ============================================================

# Init variables
scoreboard players set @s ec.ck_v1 50
scoreboard players set @s ec.ck_v2 1
scoreboard players set @s ec.ck_v3 0
scoreboard players set @s ec.ck_v5 0
scoreboard players set @s ec.ck_timer 0

# Duration by tier
scoreboard players set @s ec.ck_v4 160
execute if score @s ec.ck_tier matches 2 run scoreboard players set @s ec.ck_v4 200
execute if score @s ec.ck_tier matches 3 run scoreboard players set @s ec.ck_v4 240
execute if score @s ec.ck_tier matches 4 run scoreboard players set @s ec.ck_v4 300

# Session stamp
scoreboard players operation #gui_check ec.temp = @s adv.gui_session

# Spawn phase label
execute at @s rotated ~ 0 positioned ^ ^2.05 ^2.3 positioned ^0 ^0.55 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CK.MiniEl","CK.SimmLabel"],billboard:"center",text:[{"text":"Phase 2: ","color":"gray"},{"text":"SIMMER","color":"#FF6B00","bold":true}],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.473f,0.473f,0.473f]}}

# Spawn instruction
execute at @s rotated ~ 0 positioned ^ ^2.05 ^2.3 positioned ^0 ^0.45 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CK.MiniEl","CK.SimmHint"],billboard:"center",text:{"text":"Keep temperature in the green zone!","color":"gray","italic":true},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.243f,0.243f,0.243f]}}

# Spawn temperature bar
execute at @s rotated ~ 0 positioned ^ ^2.05 ^2.3 positioned ^0 ^0.28 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CK.MiniEl","CK.SimmBar"],billboard:"center",text:{"text":"░░░░░░░░████░░░░░░░░","color":"white"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.675f,0.675f,0.675f]}}

# Spawn [Stoke] button (left)
execute at @s rotated ~ 0 positioned ^ ^2.05 ^2.3 positioned ^0.3 ^0.10 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CK.MiniEl","CK.StokeBtnText"],billboard:"center",text:{"text":"[ Stoke ]","color":"#FF6B00","bold":true},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.405f,0.405f,0.405f]}}
execute at @s rotated ~ 0 positioned ^ ^2.07 ^2.3 positioned ^0.3 ^0.04 ^0 run summon interaction ~ ~ ~ {Tags:["CK.MiniEl","CK.StokeBtn"],width:0.3f,height:0.08f,response:1b}

# Spawn [Cool] button (right)
execute at @s rotated ~ 0 positioned ^ ^2.05 ^2.3 positioned ^-0.3 ^0.10 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CK.MiniEl","CK.CoolBtnText"],billboard:"center",text:{"text":"[ Cool ]","color":"aqua","bold":true},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.405f,0.405f,0.405f]}}
execute at @s rotated ~ 0 positioned ^ ^2.07 ^2.3 positioned ^-0.3 ^0.04 ^0 run summon interaction ~ ~ ~ {Tags:["CK.MiniEl","CK.CoolBtn"],width:0.3f,height:0.08f,response:1b}

# Spawn progress display
execute at @s rotated ~ 0 positioned ^ ^2.05 ^2.3 positioned ^0 ^-0.08 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CK.MiniEl","CK.SimmProgress"],billboard:"center",text:[{"text":"Temp: ","color":"gray"},{"text":"50","color":"green"},{"text":"  Zone: ","color":"gray"},{"text":"0%","color":"yellow"}],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.297f,0.297f,0.297f]}}

# Stamp new entities
execute as @e[type=text_display,tag=CK.MiniEl,distance=..8] unless score @s adv.gui_session matches 1.. run scoreboard players operation @s adv.gui_session = #gui_check ec.temp
execute as @e[type=interaction,tag=CK.MiniEl,distance=..8] unless score @s adv.gui_session matches 1.. run scoreboard players operation @s adv.gui_session = #gui_check ec.temp

# Sound
playsound minecraft:block.note_block.bell master @s ~ ~ ~ 0.5 1.2
