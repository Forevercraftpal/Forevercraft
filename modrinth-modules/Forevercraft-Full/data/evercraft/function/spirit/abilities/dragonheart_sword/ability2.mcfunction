# Wyrmcleaver — Dragonheart Strike (Sneak+Right-click, 15s CD = 300 ticks)
# Charge forward 8 blocks (spirit: 12) dealing damage along path
# 4 steps (1 per tick), 2 blocks each = 8 blocks total
# Path damage: 10 per step. Final slam: 15 damage + ignite 5s in 8-block cone

# Set cooldown
scoreboard players set @s ec.sp_cd2 300

# Begin charge — state machine: ec.sp_state tracks steps remaining
# Normal: 4 steps, Spirit: 6 steps (12 blocks)
execute if score @s ec.sp_tier matches 7 run scoreboard players set @s ec.sp_state 6
execute unless score @s ec.sp_tier matches 7 run scoreboard players set @s ec.sp_state 4

# Tag player as charging
tag @s add ec.sp_dh_charging

# SFX — Dragon roar
playsound minecraft:entity.ender_dragon.growl player @a ~ ~ ~ 1.0 0.8
playsound minecraft:entity.ravager.roar player @a ~ ~ ~ 0.6 1.2
playsound minecraft:item.firecharge.use player @a ~ ~ ~ 0.8 0.5

# Initial VFX
particle flame ~ ~1 ~ 0.5 0.5 0.5 0.15 25
particle dust{color:[1.0,0.3,0.0],scale:1.5} ~ ~1 ~ 0.5 0.5 0.5 0.1 15

title @s actionbar [{"text":"DRAGONHEART STRIKE!","color":"red","bold":true}]
