# Trial Anvil GUI — Spawn Hard Mode toggle + Stats line + Daily indicator
# Run as/at: the TT.InMenu player (called from each show_* function)

# Hard mode toggle button (between Start and Back)
execute if score @s ec.tt_hard_mode matches 1 rotated ~ 0 positioned ^ ^1.85 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["TT.MenuEl","TT.HardText"],billboard:"center",text:[{"text":"[\u2620] ","color":"red"},{"text":"HARD MODE: ON","color":"red","bold":true}],background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.3f,0.3f,0.3f]}}
execute unless score @s ec.tt_hard_mode matches 1 rotated ~ 0 positioned ^ ^1.85 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["TT.MenuEl","TT.HardText"],billboard:"center",text:[{"text":"[\u2620] ","color":"dark_gray"},{"text":"Hard Mode: Off","color":"gray"}],background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.3f,0.3f,0.3f]}}
execute rotated ~ 0 positioned ^ ^1.83 ^1.8 run summon interaction ~ ~ ~ {Tags:["TT.MenuEl","TT.HardBtn"],width:0.5f,height:0.05f,response:1b}

# Completion stats line
execute store result storage evercraft:trials completions int 1 run scoreboard players get @s ec.tt_completed
execute store result storage evercraft:trials masteries int 1 run scoreboard players get @s ec.tt_mastery
function evercraft:craftforever/trial_anvil/gui/show_stats with storage evercraft:trials

# Daily challenge indicator (if not yet done today)
execute unless score @s ec.tt_daily_done matches 1 run function evercraft:craftforever/trial_anvil/gui/show_daily_indicator
