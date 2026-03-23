# Trial Anvil GUI — Toggle hard mode on/off
# Run as/at: the player

# Toggle using temp to avoid read-after-write
scoreboard players operation #tt_hard_prev ec.var = @s ec.tt_hard_mode
execute if score #tt_hard_prev ec.var matches 1 run scoreboard players set @s ec.tt_hard_mode 0
execute if score #tt_hard_prev ec.var matches 0 run scoreboard players set @s ec.tt_hard_mode 1

# Update display text
scoreboard players operation #gui_check ec.temp = @s adv.gui_session
execute if score @s ec.tt_hard_mode matches 1 as @e[type=text_display,tag=TT.HardText,distance=..7] if score @s adv.gui_session = #gui_check ec.temp run data modify entity @s text set value [{"text":"[\u2620] ","color":"red"},{"text":"HARD MODE: ON","color":"red","bold":true}]
execute unless score @s ec.tt_hard_mode matches 1 as @e[type=text_display,tag=TT.HardText,distance=..7] if score @s adv.gui_session = #gui_check ec.temp run data modify entity @s text set value [{"text":"[\u2620] ","color":"dark_gray"},{"text":"Hard Mode: Off","color":"gray"}]

playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1.2
execute if score @s ec.tt_hard_mode matches 1 run playsound minecraft:entity.wither.ambient master @s ~ ~ ~ 0.3 1.5
