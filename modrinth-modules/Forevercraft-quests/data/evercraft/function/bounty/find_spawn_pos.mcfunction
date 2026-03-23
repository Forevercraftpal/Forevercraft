# Bounty — Find valid spawn position 30-50 blocks from player
# Run as player at player

# Use spreadplayers on a marker to find safe surface position
summon marker ~ ~ ~ {Tags:["bnt_spawn_check"]}
execute as @e[type=marker,tag=bnt_spawn_check,limit=1] at @s run spreadplayers ~ ~ 30 50 false @s

# Spawn patron at marker location
execute at @e[type=marker,tag=bnt_spawn_check,limit=1] run function evercraft:bounty/spawn_patron

# Cleanup marker
kill @e[type=marker,tag=bnt_spawn_check]

# Mark as spawned
scoreboard players set @s ec.bnt_spawned 1

# Announce
tellraw @s [{text:"  ",color:"red",bold:true},{text:"Your bounty target has appeared!",color:"red"}]
playsound minecraft:entity.wither.spawn hostile @s ~ ~ ~ 0.3 1.5
title @s actionbar {text:"Bounty Target Spawned!",color:"red",bold:true}
