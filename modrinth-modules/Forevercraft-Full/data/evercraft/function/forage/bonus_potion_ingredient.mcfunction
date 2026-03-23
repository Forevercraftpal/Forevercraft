# Forage + Potions: Grant a random potion ingredient
# Run as @s = player

execute store result score #pi_roll ec.temp run random value 1..8
execute if score #pi_roll ec.temp matches 1 run give @s glow_berries 2
execute if score #pi_roll ec.temp matches 2 run give @s spider_eye 1
execute if score #pi_roll ec.temp matches 3 run give @s ghast_tear 1
execute if score #pi_roll ec.temp matches 4 run give @s blaze_powder 1
execute if score #pi_roll ec.temp matches 5 run give @s magma_cream 1
execute if score #pi_roll ec.temp matches 6 run give @s rabbit_foot 1
execute if score #pi_roll ec.temp matches 7 run give @s phantom_membrane 1
execute if score #pi_roll ec.temp matches 8 run give @s nether_wart 2
