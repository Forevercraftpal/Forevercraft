# Give bonus barter item - 50% chance to get the gold back or extra item
execute store result score @s trim_coin_flip run random value 1..2

# 50% chance: return the gold ingot
execute if score @s trim_coin_flip matches 1 run summon item ~ ~0.5 ~ {Item:{id:"minecraft:gold_ingot",count:1},PickupDelay:10s}

# 50% chance: give extra random barter item
execute if score @s trim_coin_flip matches 2 run loot spawn ~ ~0.5 ~ loot minecraft:gameplay/piglin_bartering

particle minecraft:happy_villager ~ ~1 ~ 0.3 0.3 0.3 0.1 10 force
playsound minecraft:entity.piglin.admiring_item player @a[distance=..8] ~ ~ ~ 0.5 1.5
