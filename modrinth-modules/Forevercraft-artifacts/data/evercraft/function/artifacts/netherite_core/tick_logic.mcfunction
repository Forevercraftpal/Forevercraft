# Ancient Netherite Core - Logic (called from tick when gate passes)

# When sneaking with core and has blocks - consume them
execute as @a if predicate evercraft:is_sneaking if items entity @s weapon.mainhand minecraft:stick[custom_data~{ancient_netherite_core:1b}] if items entity @s inventory.* minecraft:netherite_block run function evercraft:artifacts/netherite_core/consume_block

# When sneaking with core but NO blocks left - show completion message (only once via tag)
execute as @a if predicate evercraft:is_sneaking if items entity @s weapon.mainhand minecraft:stick[custom_data~{ancient_netherite_core:1b}] unless items entity @s inventory.* minecraft:netherite_block if entity @s[tag=nc_absorbing] run function evercraft:artifacts/netherite_core/absorb_complete

# Add absorbing tag when actively consuming
execute as @a if predicate evercraft:is_sneaking if items entity @s weapon.mainhand minecraft:stick[custom_data~{ancient_netherite_core:1b}] if items entity @s inventory.* minecraft:netherite_block run tag @s add nc_absorbing

# Interrupted - stopped sneaking while absorbing
execute as @a[tag=nc_absorbing] unless predicate evercraft:is_sneaking run function evercraft:artifacts/netherite_core/absorb_interrupted

# Interrupted - switched away from core while absorbing
execute as @a[tag=nc_absorbing] unless items entity @s weapon.mainhand minecraft:stick[custom_data~{ancient_netherite_core:1b}] run function evercraft:artifacts/netherite_core/absorb_interrupted
