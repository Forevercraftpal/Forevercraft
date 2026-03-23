# Toggle cooking mode (runs as player)
# 0 = Quick Cook, 1 = Chef's Touch

# Flip the mode (store old value in temp to avoid double-flip)
scoreboard players operation #ck_old_mode ec.temp = @s ec.ck_mode
execute if score #ck_old_mode ec.temp matches 0 run scoreboard players set @s ec.ck_mode 1
execute if score #ck_old_mode ec.temp matches 1 run scoreboard players set @s ec.ck_mode 0

# Update mode subtitle display
scoreboard players operation #gui_check ec.temp = @s adv.gui_session
execute if score @s ec.ck_mode matches 0 as @e[type=text_display,tag=CK.ModeText,distance=..5,limit=1] if score @s adv.gui_session = #gui_check ec.temp run data modify entity @s text set value [{"text":"[ ","color":"gray"},{"text":"Quick Cook","color":"green"},{"text":" ]","color":"gray"}]
execute if score @s ec.ck_mode matches 1 as @e[type=text_display,tag=CK.ModeText,distance=..5,limit=1] if score @s adv.gui_session = #gui_check ec.temp run data modify entity @s text set value [{"text":"[ ","color":"gray"},{"text":"Chef's Touch","color":"gold","bold":true},{"text":" ]","color":"gray"}]
