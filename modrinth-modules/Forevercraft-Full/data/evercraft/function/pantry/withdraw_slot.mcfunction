# Pantry — Withdraw single slot to player (macro)
# Args: pid, slot
# Summons item entity with stored data, teleports to player for pickup

# Summon dummy item entity
execute at @s run summon item ~ ~1 ~ {Tags:["ec.pantry_tmp"],PickupDelay:0,Item:{id:"minecraft:stone",count:1}}

# Copy stored item NBT onto the entity
$data modify entity @e[type=item,tag=ec.pantry_tmp,limit=1] Item set from storage evercraft:pantry bags.$(pid).$(slot).item

# Teleport to player for instant pickup
tp @e[type=item,tag=ec.pantry_tmp] @s
tag @e[type=item,tag=ec.pantry_tmp] remove ec.pantry_tmp

# Clear the slot from storage
$data modify storage evercraft:pantry bags.$(pid).$(slot) set value {}
