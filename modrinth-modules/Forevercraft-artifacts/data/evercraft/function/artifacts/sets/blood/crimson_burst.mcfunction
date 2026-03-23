# Blood - Crimson Burst Ability
# Sacrifice HP to deal massive AoE damage

# Sound
playsound minecraft:entity.warden.heartbeat player @a ~ ~ ~ 1 0.8
playsound minecraft:entity.player.hurt player @a ~ ~ ~ 0.5 0.5

# Blood explosion particles
particle dust{color:[0.6,0.0,0.0],scale:1.5} ~ ~1 ~ 2 1 2 0.1 100 force
particle damage_indicator ~ ~1 ~ 2 1 2 0.1 30 force

# Damage nearby enemies based on player's current health
execute as @e[type=#evercraft:hostile,distance=..7] at @s run function evercraft:artifacts/sets/blood/blood_damage

# Heal based on enemies hit
effect give @s instant_health 1 1
effect give @s regeneration 10 1 false

# Temporary power boost
effect give @s strength 10 2 false
effect give @s speed 10 1 false

tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Crimson Burst!",color:"dark_red"}]
