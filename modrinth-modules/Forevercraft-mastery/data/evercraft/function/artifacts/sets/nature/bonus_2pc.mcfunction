# Nature 2-Piece Bonus: Poison immunity + Regeneration aura
# The forest's blessing protects you

# Tag player as having 2pc bonus
execute unless entity @s[tag=nature_2pc] run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Nature 2pc: ",color:"green"},{text:"Poison immunity + Regen aura",color:"gray"}]
tag @s add nature_2pc

# Clear poison and give regeneration (skip if harmonize is handling 2+ sources)
effect clear @s poison
execute unless score @s ec.h_regen matches 2.. run effect give @s regeneration 3 0 false

# Heal nearby friendly mobs and players (small regeneration)
execute as @a[distance=0.1..5] run effect give @s regeneration 2 0 false
