# Reaper — Spawn Bandits
# Run as peacemonger player at player

# Mark active
scoreboard players set @s rp.band_active 1
execute store result score @s rp.band_last run time query gametime

# Assign unique owner ID
scoreboard players add #rp_next_id ec.var 1
scoreboard players operation @s rp.band_owner = #rp_next_id ec.var

# Find spawn position 15-25 blocks away
summon marker ~ ~ ~ {Tags:["rp.spawn_marker"]}
execute as @e[type=marker,tag=rp.spawn_marker,limit=1] at @s run spreadplayers ~ ~ 15 25 false @s

# Select tier based on renown
execute if score @s rp.renown matches 1000..2000 at @e[type=marker,tag=rp.spawn_marker,limit=1] run function evercraft:reaper/bandits/spawn/tier1
execute if score @s rp.renown matches 2001..3500 at @e[type=marker,tag=rp.spawn_marker,limit=1] run function evercraft:reaper/bandits/spawn/tier2
execute if score @s rp.renown matches 3501.. at @e[type=marker,tag=rp.spawn_marker,limit=1] run function evercraft:reaper/bandits/spawn/tier3

# Cleanup marker
kill @e[type=marker,tag=rp.spawn_marker]

# Copy owner ID to spawned bandits
execute as @e[tag=rp.bandit,tag=rp.fresh_spawn] run scoreboard players operation @s rp.band_owner = @p[scores={rp.band_active=1},sort=nearest] rp.band_owner
tag @e[tag=rp.fresh_spawn] remove rp.fresh_spawn

# Apply DR-based scaling (reuse same scale logic)
function evercraft:reaper/bandits/scale

# Spawn VFX
execute as @e[tag=rp.bandit,limit=1,sort=nearest] at @s run particle dust{color:[0.6,0.1,0.1],scale:2.0} ~ ~1 ~ 1 2 1 0.1 60
execute as @e[tag=rp.bandit,limit=1,sort=nearest] at @s run playsound minecraft:entity.ravager.roar hostile @a[distance=..64] ~ ~ ~ 0.5 0.9

# Warning
title @s subtitle {text:"Bandits are closing in on your riches...",color:"dark_red",italic:true}
title @s title {text:"",color:"dark_red"}
tellraw @s [{text:"  ",color:"dark_gray"},{text:"⚠ ",color:"dark_red"},{text:"Bandits have ambushed you! Guard your belongings!",color:"dark_red"}]
