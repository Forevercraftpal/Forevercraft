# Golem - Golem Smash Ability
# Slam the ground with devastating force like an Iron Golem

# Sound (iron golem attack)
playsound minecraft:entity.iron_golem.attack player @a ~ ~ ~ 1 0.6
playsound minecraft:entity.iron_golem.hurt player @a ~ ~ ~ 0.5 0.5

# Ground slam particles
particle explosion ~ ~ ~ 2 0.1 2 0.1 10 force
particle crit ~ ~ ~ 2 0.5 2 0.2 50 force
particle block{block_state:{Name:"minecraft:iron_block"}} ~ ~ ~ 1.5 0.3 1.5 0.1 30 force

# Damage and launch nearby enemies
execute as @e[type=#evercraft:hostile,distance=..6] at @s run function evercraft:artifacts/sets/golem/smash_hit

# Boost self
effect give @s strength 10 1 false
effect give @s resistance 5 1 false

tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Golem Smash!",color:"white"}]
