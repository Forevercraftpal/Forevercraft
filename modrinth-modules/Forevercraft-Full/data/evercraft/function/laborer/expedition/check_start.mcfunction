# Check if IDLE laborer should start a new expedition
# Runs as: laborer villager entity. #lb_now = current gametime.

# If exp_start is 0, this is the first expedition — set timestamp and wait for next tick
execute if score @s ec.lb_exp_start matches 0 run scoreboard players operation @s ec.lb_exp_start = #lb_now ec.lb_temp
execute if score @s ec.lb_exp_start matches 0 run return 0

# Check if post-return cooldown has elapsed (5 minutes = 6000 ticks)
scoreboard players operation #lb_check ec.lb_temp = #lb_now ec.lb_temp
scoreboard players operation #lb_check ec.lb_temp -= @s ec.lb_exp_start
execute if score #lb_check ec.lb_temp matches ..5999 run return 0

# === START PREPARING ===
scoreboard players set @s ec.lb_state 1
execute store result score @s ec.lb_exp_start run time query gametime

# Calculate expedition quality and duration
function evercraft:laborer/expedition/calc_quality
function evercraft:laborer/expedition/calc_duration

# Visual: preparing particles
particle minecraft:dust{color:[1.0,0.8,0.2],scale:1.0} ~ ~1.5 ~ 0.3 0.3 0.3 0 5
