# Void Architect — Re-aim Projectile Toward Nearest Player
# Called as the projectile entity, at projectile position

# Face nearest participant
execute facing entity @a[tag=ec.rd_participant,sort=nearest,limit=1] eyes run tp @s ~ ~ ~ ~ ~

# Apply forward motion (^ ^ ^0.5 = 0.5 blocks/tick forward)
# Use Motion tag with facing direction
execute facing entity @a[tag=ec.rd_participant,sort=nearest,limit=1] eyes positioned as @s run summon marker ~ ~ ~ {Tags:["ec.rd_temp"]}
# Simplified: just apply motion toward player via tp with motion
# The snowball entity moves naturally — we just re-orient it

# Particle trail
particle minecraft:end_rod ~ ~ ~ 0.1 0.1 0.1 0.01 1
