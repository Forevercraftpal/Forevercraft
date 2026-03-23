# Dragon Incarnate — Detect new equip
# Run as player who just equipped Dragon Fan in mainhand (not yet tagged ec.di_active)

tag @s add ec.di_active

# Initialize cooldowns if unset
execute unless score @s ec.di_burst_cd matches -2147483648.. run scoreboard players set @s ec.di_burst_cd 0

# Activation feedback
playsound minecraft:entity.ender_dragon.growl player @s ~ ~ ~ 0.6 1.5
title @s actionbar [{"text":"Dragon Incarnate","color":"#FF4400","bold":true},{"text":" — draconic power surges","color":"gold","bold":false}]
