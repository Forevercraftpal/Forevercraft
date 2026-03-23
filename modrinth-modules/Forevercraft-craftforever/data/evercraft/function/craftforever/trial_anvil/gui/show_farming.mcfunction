# Trial Anvil — Show Farming Trial tier selection
# Run as/at: the TT.InMenu player

# Kill existing content entities (keep background + title)
scoreboard players operation #gui_check ec.temp = @s adv.gui_session
execute as @e[type=text_display,tag=TT.CatText,distance=..7] if score @s adv.gui_session = #gui_check ec.temp run kill @s
execute as @e[type=interaction,tag=TT.MenuEl,distance=..7] if score @s adv.gui_session = #gui_check ec.temp if entity @s[tag=!TT.CloseBtn] run kill @s
execute as @e[type=text_display,tag=TT.Subtitle,distance=..7] if score @s adv.gui_session = #gui_check ec.temp run kill @s

# Update title
execute as @e[type=text_display,tag=TT.Title,distance=..7] if score @s adv.gui_session = #gui_check ec.temp run data modify entity @s text set value {"text":"\u2618 Farming Trials","color":"green","bold":true}

# Calculate next tier
scoreboard players operation @s ec.tt_tier = @s ec.tt_farm_best
scoreboard players add @s ec.tt_tier 1
execute if score @s ec.tt_tier matches 11.. run scoreboard players set @s ec.tt_tier 10

# Set type
scoreboard players set @s ec.tt_type 2

# Progress line
execute rotated ~ 0 positioned ^ ^2.8 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["TT.MenuEl","TT.TierInfo"],billboard:"center",text:{"text":"Loading...","color":"gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.473f,0.473f,0.473f]}}
execute store result storage evercraft:trials best int 1 run scoreboard players get @s ec.tt_farm_best
execute store result storage evercraft:trials next int 1 run scoreboard players get @s ec.tt_tier
function evercraft:craftforever/trial_anvil/gui/set_progress with storage evercraft:trials

# Tier description
execute rotated ~ 0 positioned ^ ^2.55 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["TT.MenuEl","TT.TierDesc"],billboard:"center",text:{"text":"","color":"gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.405f,0.405f,0.405f]}}
execute rotated ~ 0 positioned ^ ^2.4 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["TT.MenuEl","TT.TierDetails"],billboard:"center",text:{"text":"","color":"dark_gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.405f,0.405f,0.405f]}}
execute rotated ~ 0 positioned ^ ^2.2 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["TT.MenuEl","TT.TierReward"],billboard:"center",text:{"text":"","color":"yellow"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.405f,0.405f,0.405f]}}

# Fill descriptions
function evercraft:craftforever/trial_anvil/gui/set_farming_desc

# Session tag
execute as @e[type=text_display,tag=TT.MenuEl,distance=..5] unless score @s adv.gui_session matches 1.. run scoreboard players operation @s adv.gui_session = #gui_stamp ec.temp
execute as @e[type=interaction,tag=TT.MenuEl,distance=..5] unless score @s adv.gui_session matches 1.. run scoreboard players operation @s adv.gui_session = #gui_stamp ec.temp

# Start + Back buttons
execute rotated ~ 0 positioned ^ ^1.95 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["TT.MenuEl","TT.StartText"],billboard:"center",text:[{"text":"[ ","color":"dark_gray"},{"text":"Begin Trial","color":"green","bold":true},{"text":" ]","color":"dark_gray"}],background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.54f,0.54f,0.54f]}}
execute rotated ~ 0 positioned ^ ^1.9 ^1.8 run summon interaction ~ ~ ~ {Tags:["TT.MenuEl","TT.StartBtn"],width:0.5f,height:0.08f,response:1b}

execute rotated ~ 0 positioned ^ ^1.75 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["TT.MenuEl","TT.BackText"],billboard:"center",text:{"text":"< Back","color":"gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.405f,0.405f,0.405f]}}
execute rotated ~ 0 positioned ^ ^1.71 ^1.8 run summon interaction ~ ~ ~ {Tags:["TT.MenuEl","TT.BackBtn"],width:0.35f,height:0.06f,response:1b}

# Session tag again
scoreboard players operation #gui_stamp ec.temp = @s adv.gui_session
execute as @e[type=text_display,tag=TT.MenuEl,distance=..5] unless score @s adv.gui_session matches 1.. run scoreboard players operation @s adv.gui_session = #gui_stamp ec.temp
execute as @e[type=interaction,tag=TT.MenuEl,distance=..5] unless score @s adv.gui_session matches 1.. run scoreboard players operation @s adv.gui_session = #gui_stamp ec.temp

# Hard mode toggle + stats + daily
function evercraft:craftforever/trial_anvil/gui/spawn_trial_extras

playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1.2
