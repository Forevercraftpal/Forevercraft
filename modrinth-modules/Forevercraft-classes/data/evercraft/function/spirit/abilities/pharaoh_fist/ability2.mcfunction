# Pharaoh's Fist — Titan Breaker (Sneak+Right-click, 20s CD)
# 1.5s windup (30 ticks; spirit: 20 ticks)
# Slowness III during windup
# After: 100 damage to nearest, launch 15 blocks back, Glowing

# Set cooldown
scoreboard players set @s ec.sp_cd2 400

# Begin windup
tag @s add ec.sp_charging

# Set windup timer: 30 ticks (1.5s) normal, 20 ticks (1s) spirit
execute if score @s ec.sp_tier matches 7 run scoreboard players set @s ec.sp_state 20
execute unless score @s ec.sp_tier matches 7 run scoreboard players set @s ec.sp_state 30

# Slow player during windup
effect give @s slowness 2 2 false

# Windup VFX + SFX
playsound minecraft:entity.warden.sonic_charge player @a ~ ~ ~ 0.6 1.5
particle dust{color:[1.0,0.8,0.0],scale:2.0} ~ ~1 ~ 0.4 0.6 0.4 0.01 10

title @s actionbar [{"text":"Charging Titan Breaker...","color":"gold","italic":true}]
