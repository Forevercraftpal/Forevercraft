# Night Terrors — Spawn the terror mob
# Run as warned player at player

# Clear warning state
tag @s remove ec.nt_warned

# Mark player as having active terror
scoreboard players set @s ec.nt_active 1
scoreboard players set @s ec.nt_ability_cd 10

# Assign unique owner ID for per-player entity tracking
scoreboard players add #nt_next_id ec.var 1
scoreboard players operation @s ec.nt_owner_id = #nt_next_id ec.var

# Find spawn position 30-50 blocks away using spreadplayers on a marker
summon marker ~ ~ ~ {Tags:["nt_spawn_marker"]}
execute as @e[type=marker,tag=nt_spawn_marker,limit=1] at @s run spreadplayers ~ ~ 30 50 false @s

# Select and spawn terror type at marker position
execute at @e[type=marker,tag=nt_spawn_marker,limit=1] run function evercraft:night_terrors/spawn/select_type

# Cleanup marker
kill @e[type=marker,tag=nt_spawn_marker]

# Copy owner ID to terror entity for per-player tracking
scoreboard players operation @e[tag=ec.night_terror,limit=1,sort=nearest] ec.nt_owner_id = @s ec.nt_owner_id

# Dramatic spawn effects at terror location
execute as @e[tag=ec.night_terror,limit=1,sort=nearest] at @s run particle dust{color:[0.5,0.0,0.0],scale:3.0} ~ ~1 ~ 1 2 1 0.1 100
execute as @e[tag=ec.night_terror,limit=1,sort=nearest] at @s run playsound minecraft:entity.wither.spawn hostile @a[distance=..64] ~ ~ ~ 0.4 1.5
execute as @e[tag=ec.night_terror,limit=1,sort=nearest] at @s run playsound minecraft:entity.lightning_bolt.thunder ambient @a[distance=..64] ~ ~ ~ 0.3 0.5

# Apply DR-based scaling
function evercraft:night_terrors/scale

# Title announcement
title @s subtitle {text:"A Night Terror has found you...",color:"dark_red",italic:true}
title @s title {text:"",color:"dark_red"}
