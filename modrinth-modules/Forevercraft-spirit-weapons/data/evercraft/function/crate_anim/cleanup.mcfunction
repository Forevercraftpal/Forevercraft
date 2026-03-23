# Cleanup crate animation entities
# Run as armor_stand with ec.crate_anim tag, at its position, when plot <= 0
# Animation is finished — reveal display, then persist until barrel is broken

# Scale up the crate head display (only matters on first call, harmless after)
execute unless entity @s[tag=ec.crate_done] run function evercraft:crate_anim/reveal_display
tag @s add ec.crate_done

# If barrel is gone (broken/collected), kill immediately
execute unless block ~ ~ ~ minecraft:barrel on passengers run kill @s
execute unless block ~ ~ ~ minecraft:barrel run kill @s
