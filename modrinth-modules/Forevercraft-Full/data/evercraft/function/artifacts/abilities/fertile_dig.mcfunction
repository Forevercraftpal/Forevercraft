# Fertile Dig — Living Vines Shovel
# On hit: Heal + saturation
advancement revoke @s only evercraft:artifacts/abilities/fertile_dig_trigger
effect give @s regeneration 3 1 false
effect give @s saturation 1 0 false
execute at @s run particle happy_villager ~ ~1 ~ 0.5 0.5 0.5 0 10
playsound minecraft:block.moss.place player @s ~ ~ ~ 0.8 1

# Achievement tracking
scoreboard players add @s ach.weapon_abilities 1
