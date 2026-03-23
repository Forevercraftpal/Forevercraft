# Celestial - Meteor Strike Ability
# Call down meteors from the sky

# Sound
playsound minecraft:entity.firework_rocket.blast player @a ~ ~ ~ 1 0.5
playsound minecraft:entity.generic.explode player @a ~ ~ ~ 0.8 1.2

# Visual effects - falling stars
particle end_rod ~ ~10 ~ 2 5 2 0.1 100 force
particle explosion_emitter ~ ~5 ~
particle explosion ~ ~ ~ 2 1 2 0.1 10 force

# Damage enemies in area
execute as @e[type=#evercraft:hostile,distance=..8] at @s run function evercraft:artifacts/sets/celestial/meteor_hit

# Levitate self briefly (star power)
effect give @s slow_falling 5 0 false
effect give @s levitation 1 2 false

tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Meteor Strike!",color:"white"}]
