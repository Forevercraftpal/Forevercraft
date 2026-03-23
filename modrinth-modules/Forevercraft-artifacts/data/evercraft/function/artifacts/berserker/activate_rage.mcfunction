# Berserker Rage — Activation (right-click trigger)
# Called from using_item advancement reward

# Revoke advancement immediately (allows re-trigger)
advancement revoke @s only evercraft:artifacts/berserker/rage_trigger

# Must be dual-wielding (berserker active)
execute unless entity @s[tag=ec.bk_active] run return 0

# Already raging — do nothing
execute if score @s ec.bk_rage matches 1.. run return 0

# On cooldown — show remaining time and return
execute if score @s ec.bk_cd matches 1.. run return run title @s actionbar [{"text":"Rage cooldown: ","color":"gray"},{"score":{"name":"@s","objective":"ec.bk_cd"},"color":"red"},{"text":"s","color":"gray"}]

# === ACTIVATE RAGE ===
# Set rage timer (200 ticks = 10 seconds)
scoreboard players set @s ec.bk_rage 200

# Set initial swing timer based on tier
execute if score @s ec.bk_tier matches 1 run scoreboard players set @s ec.bk_swing 24
execute if score @s ec.bk_tier matches 2 run scoreboard players set @s ec.bk_swing 20
execute if score @s ec.bk_tier matches 3 run scoreboard players set @s ec.bk_swing 16
execute if score @s ec.bk_tier matches 4 run scoreboard players set @s ec.bk_swing 14
execute if score @s ec.bk_tier matches 5 run scoreboard players set @s ec.bk_swing 12
execute if score @s ec.bk_tier matches 6 run scoreboard players set @s ec.bk_swing 10

# Apply effects
effect give @s strength 10 1 false
effect give @s regeneration 10 0 false

# === VISUAL FEEDBACK ===
playsound minecraft:entity.ravager.roar player @s ~ ~ ~ 1 0.8
playsound minecraft:entity.ender_dragon.growl player @a[distance=..32] ~ ~ ~ 0.5 1.5
title @s actionbar {"text":"BERSERKER RAGE!","color":"dark_red","bold":true}
particle minecraft:angry_villager ~ ~1 ~ 0.5 0.5 0.5 0 10
