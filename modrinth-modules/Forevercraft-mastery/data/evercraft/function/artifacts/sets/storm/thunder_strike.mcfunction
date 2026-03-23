# Storm - Thunder Strike Ability
# Call down lightning on nearby enemies

# Sound
playsound minecraft:entity.lightning_bolt.thunder player @a ~ ~ ~ 1 0.8
playsound minecraft:entity.lightning_bolt.impact player @a ~ ~ ~ 1 1

# Strike lightning at nearby enemies (up to 5)
execute as @e[type=#evercraft:hostile,distance=..10,limit=5,sort=nearest] at @s run function evercraft:artifacts/sets/storm/lightning_hit

# Particles around player
particle electric_spark ~ ~1 ~ 1 1 1 0.1 50 force
particle explosion_emitter ~ ~2 ~

# Brief speed boost
effect give @s speed 5 2 false

tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Thunder Strike!",color:"yellow"}]
