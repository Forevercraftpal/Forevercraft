# Buddy Ability — Battle Cry (Tier 1+)
# When player takes damage, buddy gives Speed I for 5 seconds
# Detected via HurtTime on player (10s when just hit)
# 15-second cooldown

# Check cooldown
execute if score @s ec.bd_cry_cd matches 1.. run return fail

# Check if player was recently hit (HurtTime = 10s means just took damage)
execute unless data entity @s {HurtTime:10s} run return fail

# Must have buddy within 16 blocks
execute unless entity @e[tag=ec.bd_buddy,type=#evercraft:tameable_companions,distance=..16,limit=1] run return fail

# Apply Speed I for 5 seconds
effect give @s speed 5 0 true

# Set cooldown (15 seconds)
scoreboard players set @s ec.bd_cry_cd 15

# Visual feedback
execute as @e[tag=ec.bd_buddy,type=#evercraft:tameable_companions,distance=..16,limit=1] at @s run particle minecraft:angry_villager ~ ~0.8 ~ 0.2 0.2 0.2 0 3
