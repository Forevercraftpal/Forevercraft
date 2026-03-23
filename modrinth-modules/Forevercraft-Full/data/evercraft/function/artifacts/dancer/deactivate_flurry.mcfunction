# Dancer Flurry — Deactivation
# Called when flurry timer expires or player unequips

# Clear flurry-related effects
effect clear @s strength
effect clear @s slowness

# Start cooldown (45 seconds)
scoreboard players set @s ec.dn_cd 45

# Reset flurry timer
scoreboard players set @s ec.dn_flurry 0

# Feedback
title @s actionbar {"text":"Flurry ended","color":"gray","italic":true}
playsound minecraft:entity.breeze.death player @s ~ ~ ~ 0.5 1.2
