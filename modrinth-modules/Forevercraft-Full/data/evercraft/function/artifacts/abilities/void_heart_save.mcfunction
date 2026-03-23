# Void Heart — Void Recall
# Triggers when player health drops below 3 hearts with Void Heart in inventory
# Teleports player to world spawn, heals, applies protective buffs, sets 5-minute cooldown

# Heal to 10 HP (5 hearts)
effect give @s instant_health 1 1 false

# Protective buffs — Slow Falling ensures safe landing after teleport
effect give @s absorption 5 1 false
effect give @s resistance 5 3 false
effect give @s slow_falling 10 0 false

# Teleport to world spawn — spreadplayers with wider range finds a safe surface block
execute in minecraft:overworld run spreadplayers 0 0 3 16 false @s

# Void visual feedback (at new position)
particle reverse_portal ~ ~1 ~ 0.5 1 0.5 0.1 40
particle portal ~ ~1 ~ 0.5 1 0.5 0.5 30
playsound minecraft:entity.enderman.teleport player @s ~ ~ ~ 1 0.8
playsound minecraft:block.respawn_anchor.deplete player @s ~ ~ ~ 1 1

# Set 5 minute cooldown (6000 ticks)
scoreboard players set @s ec.cd_void 6000

# Actionbar notification
title @s actionbar {"text":"Void Recall activated!","color":"dark_purple","bold":true}
