# Prestige Mining P2: Ore Doubling — 10% chance for bonus ore on block mine
# Called from treasure/tick_player when a block mine is detected and P2 is active

execute store result score #ore_roll adv.temp run random value 1..100
execute unless score #ore_roll adv.temp matches 1..10 run return 0

# Rolled successfully — give a random ore drop
# Distribution: Iron 40%, Copper 25%, Gold 15%, Lapis 10%, Diamond 7%, Emerald 3%
execute store result score #ore_type adv.temp run random value 1..100
execute if score #ore_type adv.temp matches 1..40 run give @s raw_iron 1
execute if score #ore_type adv.temp matches 41..65 run give @s raw_copper 3
execute if score #ore_type adv.temp matches 66..80 run give @s raw_gold 1
execute if score #ore_type adv.temp matches 81..90 run give @s lapis_lazuli 2
execute if score #ore_type adv.temp matches 91..97 run give @s diamond 1
execute if score #ore_type adv.temp matches 98..100 run give @s emerald 1

# Feedback
playsound minecraft:block.amethyst_block.chime master @s ~ ~ ~ 0.8 1.2
title @s actionbar [{text:"⛏ Ore Doubled!",color:"aqua"}]
