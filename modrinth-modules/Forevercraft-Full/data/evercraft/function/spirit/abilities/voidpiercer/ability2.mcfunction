# Voidpiercer — Phase Shot (Sneak+Right-click, 20s CD = 400 ticks)
# Enter phased state: Invisibility 3s + Resistance V 3s
# Fire homing bolts during phase (3 bolts normal, 5 spirit)

# Set cooldown
scoreboard players set @s ec.sp_cd2 400

# Apply phase effects (3 seconds)
effect give @s invisibility 3 0 false
effect give @s resistance 3 4 false
effect give @s speed 3 1 false

# Set phase state
tag @s add ec.sp_phase_active
scoreboard players set @s ec.sp_state 1

# Set phase timer (60 ticks = 3 seconds)
scoreboard players set @s ec.sp_timer 60

# Set bolt count: 3 normal, 5 spirit
execute if score @s ec.sp_tier matches 7 run scoreboard players set @s ec.sp_charges 5
execute unless score @s ec.sp_tier matches 7 run scoreboard players set @s ec.sp_charges 3

# VFX + SFX
playsound minecraft:entity.enderman.teleport player @a ~ ~ ~ 1.0 1.8
playsound minecraft:entity.illusioner.prepare_blindness player @a ~ ~ ~ 0.8 1.2
particle reverse_portal ~ ~1 ~ 0.5 1.0 0.5 0.5 40
particle witch ~ ~1 ~ 0.3 0.5 0.3 0.2 15

title @s actionbar [{"text":"PHASE SHOT!","color":"dark_aqua","bold":true}]
