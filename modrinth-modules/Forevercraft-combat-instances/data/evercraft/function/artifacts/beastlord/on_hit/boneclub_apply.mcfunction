# Boneclub — Apply knockback effect to hit target
# Runs as the hurt entity

# Stagger effect (simulates heavy knockback)
effect give @s slowness 1 1 true

# Bonus impact damage
damage @s 1 minecraft:mob_attack

# Visual: bone dust burst
execute at @s run particle item{item:{id:"minecraft:bone"}} ~ ~0.5 ~ 0.3 0.3 0.3 0.1 8

# Sound: heavy impact
execute at @s run playsound minecraft:entity.skeleton.hurt player @a ~ ~ ~ 0.6 0.6
