# 5% chance (1 in 20) to spawn a custom profession companion
execute store result score #wt_roll bestiary.technical run random value 1..20
execute unless score #wt_roll bestiary.technical matches 1 run return fail

# Summon a villager companion near the trader
summon villager ~2 ~ ~1 {Tags:["ec.wt_companion"],CustomNameVisible:1b,Xp:1}

# Safe position check for the companion
execute as @e[type=villager,tag=ec.wt_companion,tag=!more_professions_verified,sort=nearest,limit=1] at @s unless block ~ ~ ~ #minecraft:replaceable run spreadplayers ~ ~ 0 3 false @s

# Apply a random custom profession
execute as @e[type=villager,tag=ec.wt_companion,tag=!more_professions_verified,sort=nearest,limit=1] run function evercraft:mobs/wandering_trader/companion/assign_profession

# Tag the trader as having a companion
tag @s add ec.wt_has_companion

# Start the companion despawn check loop
schedule function evercraft:mobs/wandering_trader/companion/tick 5s replace

# Announce the companion
tellraw @a[distance=..64] [{bold:false,color:"#75A7FF",italic:false,text:"▊ "},{bold:false,color:"#E8C94A",italic:false,text:"A traveling merchant has joined the caravan!"}]
