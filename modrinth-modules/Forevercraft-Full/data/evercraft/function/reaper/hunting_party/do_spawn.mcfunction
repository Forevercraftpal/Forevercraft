# Reaper — Spawn Hunting Party
# Run as villain player at player

# Mark active
scoreboard players set @s rp.hunt_active 1
execute store result score @s rp.hunt_last run time query gametime

# Assign unique owner ID
scoreboard players add #rp_next_id ec.var 1
scoreboard players operation @s rp.hunt_owner = #rp_next_id ec.var

# Find spawn position 15-25 blocks away using marker + spreadplayers
summon marker ~ ~ ~ {Tags:["rp.spawn_marker"]}
execute as @e[type=marker,tag=rp.spawn_marker,limit=1] at @s run spreadplayers ~ ~ 15 25 false @s

# Select tier based on infamy
execute if score @s rp.infamy matches 1000..2000 at @e[type=marker,tag=rp.spawn_marker,limit=1] run function evercraft:reaper/hunting_party/spawn/tier1
execute if score @s rp.infamy matches 2001..3500 at @e[type=marker,tag=rp.spawn_marker,limit=1] run function evercraft:reaper/hunting_party/spawn/tier2
execute if score @s rp.infamy matches 3501.. at @e[type=marker,tag=rp.spawn_marker,limit=1] run function evercraft:reaper/hunting_party/spawn/tier3

# Cleanup marker
kill @e[type=marker,tag=rp.spawn_marker]

# Copy owner ID to all spawned hunters (unowned ones from this batch)
execute as @e[tag=rp.hunter,tag=rp.fresh_spawn] run scoreboard players operation @s rp.hunt_owner = @p[scores={rp.hunt_active=1},sort=nearest] rp.hunt_owner
tag @e[tag=rp.fresh_spawn] remove rp.fresh_spawn

# Apply DR-based scaling
function evercraft:reaper/hunting_party/scale

# Spawn VFX
execute as @e[tag=rp.hunter,limit=1,sort=nearest] at @s run particle dust{color:[0.2,0.6,0.8],scale:2.0} ~ ~1 ~ 1 2 1 0.1 60
execute as @e[tag=rp.hunter,limit=1,sort=nearest] at @s run playsound minecraft:entity.illusioner.prepare_mirror hostile @a[distance=..64] ~ ~ ~ 0.6 0.8

# Warning
title @s subtitle {text:"Bounty hunters are closing in...",color:"dark_aqua",italic:true}
title @s title {text:"",color:"dark_aqua"}
tellraw @s [{text:"  ",color:"dark_gray"},{text:"⚠ ",color:"dark_aqua"},{text:"A hunting party has found you! Prepare to fight!",color:"dark_aqua"}]
