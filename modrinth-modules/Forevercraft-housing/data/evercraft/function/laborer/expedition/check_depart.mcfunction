# Check if PREPARING laborer should depart (30 seconds after preparing started)
# Runs as: laborer villager entity. #lb_now = current gametime.

scoreboard players operation #lb_check ec.lb_temp = #lb_now ec.lb_temp
scoreboard players operation #lb_check ec.lb_temp -= @s ec.lb_exp_start
execute if score #lb_check ec.lb_temp matches ..599 run return 0

# === DEPART ON EXPEDITION ===
scoreboard players set @s ec.lb_state 2

# Record actual expedition start time (for duration calculation)
execute store result score @s ec.lb_exp_start run time query gametime

# Make laborer invisible (on expedition)
effect give @s invisibility infinite 0 true
data modify entity @s Silent set value 1b

# Preparing particles burst
particle minecraft:portal ~ ~1 ~ 0.5 0.5 0.5 0.5 30
playsound minecraft:entity.enderman.teleport master @a[distance=..16] ~ ~ ~ 0.5 1.2
