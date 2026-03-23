# Hollow Fangs — Thousand Cuts (Sneak+Right-click, 20s CD)
# 2-second channel, then 10 rapid strikes in 3-block frontal cone
# Each strike applies Bleed (1 heart/sec for 5 seconds, stacks to 5)

# Set cooldown (400 ticks = 20 seconds)
scoreboard players set @s ec.sp_cd2 400

# Begin channel phase (40 ticks = 2 seconds)
tag @s add ec.sp_thousand_cuts
scoreboard players set @s ec.sp_state 1
scoreboard players set @s ec.sp_timer 40

# Apply Slowness IV during channel
effect give @s slowness 3 3 true

# Feedback
playsound minecraft:entity.warden.tendril_clicks player @a ~ ~ ~ 1.0 2.0
title @s actionbar [{"text":"Channeling Thousand Cuts...","color":"gold","bold":true}]
