# Phase 2: SIMMER — Evaluate zone time
# Runs as the player. Scores quality based on % of time in zone.

# Calculate percentage: (zone_time * 100) / duration
scoreboard players operation #ck_pct ec.temp = @s ec.ck_v3
scoreboard players operation #ck_pct ec.temp *= #100 adv.temp
scoreboard players operation #ck_pct ec.temp /= @s ec.ck_v4

# Award quality by percentage band
# <25% = +0, 25-49% = +1, 50-74% = +2, 75-89% = +3, 90%+ = +4
execute if score #ck_pct ec.temp matches 25..49 run scoreboard players add @s ec.ck_quality 1
execute if score #ck_pct ec.temp matches 50..74 run scoreboard players add @s ec.ck_quality 2
execute if score #ck_pct ec.temp matches 75..89 run scoreboard players add @s ec.ck_quality 3
execute if score #ck_pct ec.temp matches 90.. run scoreboard players add @s ec.ck_quality 4

# Feedback
execute if score #ck_pct ec.temp matches ..24 run tellraw @s [{text:"  ","color":"white"},{"text":"Burnt! ","color":"red"},{"text":"(+0 quality)","color":"gray"}]
execute if score #ck_pct ec.temp matches 25..49 run tellraw @s [{text:"  ","color":"white"},{"text":"Uneven heat. ","color":"yellow"},{"text":"(+1 quality)","color":"gray"}]
execute if score #ck_pct ec.temp matches 50..74 run tellraw @s [{text:"  ","color":"white"},{"text":"Good simmer! ","color":"green"},{"text":"(+2 quality)","color":"yellow"}]
execute if score #ck_pct ec.temp matches 75..89 run tellraw @s [{text:"  ","color":"white"},{"text":"Great control! ","color":"aqua"},{"text":"(+3 quality)","color":"yellow"}]
execute if score #ck_pct ec.temp matches 90.. run tellraw @s [{text:"  ","color":"white"},{"text":"PERFECT SIMMER! ","color":"gold","bold":true},{"text":"(+4 quality)","color":"yellow"}]

# Kill phase 2 entities
scoreboard players operation #gui_check ec.temp = @s adv.gui_session
execute as @e[type=text_display,tag=CK.MiniEl,distance=..8] if score @s adv.gui_session = #gui_check ec.temp run kill @s
execute as @e[type=interaction,tag=CK.MiniEl,distance=..8] if score @s adv.gui_session = #gui_check ec.temp run kill @s

# Feedback
tellraw @s [{text:"[Chef's Touch] ",color:"gold"},{"text":"Simmering complete!","color":"#FF6B00"}]
playsound minecraft:block.note_block.bell master @s ~ ~ ~ 0.5 1.8

# Advance to Phase 3
scoreboard players set @s ec.ck_phase 3
scoreboard players set @s ec.ck_timer 0
function evercraft:cooking/minigame/phase3_plate/start
