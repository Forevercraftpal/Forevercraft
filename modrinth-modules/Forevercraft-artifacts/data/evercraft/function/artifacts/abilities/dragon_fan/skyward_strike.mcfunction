# Skyward Strike - Launch mob up to 50 blocks in the air
# 20% chance on hit with Draconic Gale

# Find the recently hit entity (hurt_time:10s means just hit this tick)
execute at @s as @e[type=!player,distance=..6,limit=1,sort=nearest,nbt={HurtTime:10s}] run function evercraft:artifacts/abilities/dragon_fan/launch_target
