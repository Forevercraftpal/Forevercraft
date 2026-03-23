# Thousand Cuts — End
# Clean up tags and state

tag @s remove ec.sp_thousand_cuts
scoreboard players set @s ec.sp_state 0
scoreboard players set @s ec.sp_timer 0

# Final burst
playsound minecraft:entity.firework_rocket.blast player @a ~ ~ ~ 1.0 1.5
particle dust{color:[0.6,0.0,0.6],scale:1.2} ~ ~1 ~ 1.0 0.5 1.0 0.1 30

title @s actionbar [{"text":"Thousand Cuts complete","color":"light_purple"}]
