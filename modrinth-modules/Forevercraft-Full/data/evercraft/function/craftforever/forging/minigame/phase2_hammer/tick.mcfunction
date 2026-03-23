# Phase 2: HAMMER — Per-tick

scoreboard players add @s ec.cf_timer 1

# Hide pattern dots after show time (60 ticks = 3 seconds, + rank/5 bonus)
scoreboard players set #cf_show_time ec.cf_temp 60
scoreboard players operation #cf_rank_bonus ec.cf_temp = @s ec.cf_rank
scoreboard players operation #cf_rank_bonus ec.cf_temp /= #cf_5 ec.cf_temp
scoreboard players operation #cf_show_time ec.cf_temp += #cf_rank_bonus ec.cf_temp

execute if score @s ec.cf_timer = #cf_show_time ec.cf_temp at @s run kill @e[type=text_display,tag=CF.PatDot,distance=..7]
execute if score @s ec.cf_timer = #cf_show_time ec.cf_temp at @s run data modify entity @e[type=text_display,tag=CF.PatternDisplay,distance=..7,limit=1] text set value {text:"Repeat the pattern!",color:"yellow"}

# Time limit: 400 ticks (20 seconds)
execute if score @s ec.cf_timer matches 400.. run function evercraft:craftforever/forging/minigame/phase2_hammer/timeout

# Check button clicks
scoreboard players operation #gui_check ec.temp = @s adv.gui_session

execute as @e[type=interaction,tag=CF.BtnRed,distance=..5] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run function evercraft:craftforever/forging/minigame/phase2_hammer/on_click_color {color:"1"}
execute as @e[type=interaction,tag=CF.BtnBlue,distance=..5] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run function evercraft:craftforever/forging/minigame/phase2_hammer/on_click_color {color:"2"}
execute as @e[type=interaction,tag=CF.BtnYellow,distance=..5] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run function evercraft:craftforever/forging/minigame/phase2_hammer/on_click_color {color:"3"}
execute as @e[type=interaction,tag=CF.BtnGreen,distance=..5] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run function evercraft:craftforever/forging/minigame/phase2_hammer/on_click_color {color:"4"}
