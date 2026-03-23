# Dancer Flurry — Activation (shift+right-click trigger)
# Called from using_item advancement reward

# Revoke advancement immediately (allows re-trigger)
advancement revoke @s only evercraft:artifacts/dancer/flurry_trigger

# Must be active dancer
execute unless entity @s[tag=ec.dn_active] run return 0

# Must be dual-wielding
execute if score @s ec.dn_dual matches 0 run return 0

# Already in flurry — do nothing
execute if score @s ec.dn_flurry matches 1.. run return 0

# On cooldown — show remaining time and return
execute if score @s ec.dn_cd matches 1.. run return run title @s actionbar [{"text":"Flurry cooldown: ","color":"gray"},{"score":{"name":"@s","objective":"ec.dn_cd"},"color":"light_purple"},{"text":"s","color":"gray"}]

# === ACTIVATE FLURRY ===
# Set flurry timer (900 ticks = 45 seconds)
scoreboard players set @s ec.dn_flurry 900

# Set initial swing timer based on tier
execute if score @s ec.dn_tier matches 1 run scoreboard players set @s ec.dn_swing 20
execute if score @s ec.dn_tier matches 2 run scoreboard players set @s ec.dn_swing 16
execute if score @s ec.dn_tier matches 3 run scoreboard players set @s ec.dn_swing 14
execute if score @s ec.dn_tier matches 4 run scoreboard players set @s ec.dn_swing 12
execute if score @s ec.dn_tier matches 5 run scoreboard players set @s ec.dn_swing 10
execute if score @s ec.dn_tier matches 6 run scoreboard players set @s ec.dn_swing 8

# === SCALE BY ATTACK SPEED ===
# Formula: interval = base × reference_speed / actual_speed
# Dancer reference: 240 (effective 2.4 attack speed × 100)
execute store result score #aspd ec.temp run attribute @s attack_speed get 100
scoreboard players operation @s ec.dn_swing *= #240 ec.const
scoreboard players operation @s ec.dn_swing /= #aspd ec.temp
execute if score @s ec.dn_swing matches ..0 run scoreboard players set @s ec.dn_swing 1

# Apply effects (Strength I + Slowness I for 45s)
effect give @s strength 45 0 false
effect give @s slowness 45 0 false

# === VISUAL FEEDBACK ===
playsound minecraft:entity.breeze.charge player @s ~ ~ ~ 1 1.2
playsound minecraft:entity.breeze.inhale player @a[distance=..32] ~ ~ ~ 0.5 1.5
title @s actionbar {"text":"FLURRY!","color":"light_purple","bold":true}
particle minecraft:enchant ~ ~1 ~ 0.5 0.5 0.5 1 20
