# Soul Protection — Death Save
# Triggers when player health drops below 2 hearts with Soul Protection in inventory
# Heals player, applies protective buffs, sets 3-minute cooldown

# Heal to 10 HP (5 hearts)
effect give @s instant_health 1 1 false

# Protective buffs (totem-like save)
effect give @s absorption 5 3 false
effect give @s resistance 5 1 false
effect give @s fire_resistance 5 0 false

# Totem-like visual feedback
particle totem_of_undying ~ ~1 ~ 0.5 1 0.5 0.5 50
playsound minecraft:item.totem.use player @s ~ ~ ~ 1 1

# Set 3 minute cooldown (3600 ticks)
scoreboard players set @s ec.cd_soul 3600

# Actionbar notification
title @s actionbar {"text":"Soul Shield activated!","color":"gold","bold":true}
