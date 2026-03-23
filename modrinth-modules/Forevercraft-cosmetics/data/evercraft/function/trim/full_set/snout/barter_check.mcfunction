# Snout full set - Enhanced piglin bartering
# When a piglin near a full_set_snout player picks up gold, chance for bonus items

# Check for piglins that just picked up gold (they start bartering animation)
# 50% chance to give bonus item
execute at @a[tag=full_set_snout] as @e[type=piglin,distance=..8,nbt={brain:{memories:{"minecraft:admiring_item":{}}}}] at @s store result score @s trim_coin_flip run random value 1..2
execute at @a[tag=full_set_snout] as @e[type=piglin,distance=..8,scores={trim_coin_flip=1},nbt={brain:{memories:{"minecraft:admiring_item":{}}}}] at @s unless entity @s[tag=snout_bonus_given] run function evercraft:trim/full_set/snout/bonus_barter
execute at @a[tag=full_set_snout] as @e[type=piglin,distance=..8,nbt={brain:{memories:{"minecraft:admiring_item":{}}}}] run tag @s add snout_bonus_given

# Reset the bonus tag when piglin stops admiring
execute as @e[type=piglin,tag=snout_bonus_given,nbt=!{brain:{memories:{"minecraft:admiring_item":{}}}}] run tag @s remove snout_bonus_given
