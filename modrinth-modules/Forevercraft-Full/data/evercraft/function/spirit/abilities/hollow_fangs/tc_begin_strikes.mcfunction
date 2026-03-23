# Thousand Cuts — Begin Strike Phase
# Transition from channel to rapid strikes

scoreboard players set @s ec.sp_state 2

# 10 strikes over 20 ticks (1 per 2 ticks), Spirit tier: 15 strikes over 30 ticks
execute if score @s ec.sp_tier matches 7 run scoreboard players set @s ec.sp_timer 30
execute unless score @s ec.sp_tier matches 7 run scoreboard players set @s ec.sp_timer 20

# Clear slowness (channel done)
effect clear @s slowness

# Sound
playsound minecraft:entity.player.attack.sweep player @a ~ ~ ~ 1.0 1.8
title @s actionbar [{"text":"THOUSAND CUTS!","color":"dark_purple","bold":true}]
