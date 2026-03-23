# Bounty — Spawn patron mob of correct tier at current position
# Uses #bnt_patron_tier from roll or ec.bnt_tier from player

# Summon base zombie (will be converted by patron system)
summon zombie ~ ~ ~ {Tags:["ec.bounty_target","ec.patron.processed"],CustomName:{text:"Bounty Target",color:"red",bold:true,italic:false},CustomNameVisible:1b,PersistenceRequired:1b}

# Copy owner ID to entity for per-player tracking
scoreboard players operation @e[tag=ec.bounty_target,limit=1,sort=nearest] ec.bnt_owner = @s ec.bnt_owner

# Apply tier-specific stats (scale_patron uses ec.bnt_tier scoreboard, no macro args needed)
function evercraft:bounty/scale_patron

# Bounty-specific visuals
effect give @e[tag=ec.bounty_target,limit=1,sort=nearest] minecraft:glowing infinite 0 true
effect give @e[tag=ec.bounty_target,limit=1,sort=nearest] minecraft:fire_resistance infinite 0 true
team join ec.bounty_target @e[tag=ec.bounty_target,limit=1,sort=nearest]

# Spawn effects
execute as @e[tag=ec.bounty_target,limit=1,sort=nearest] at @s run particle dust{color:[1.0,0.0,0.0],scale:2.5} ~ ~1 ~ 1 2 1 0.1 80
execute as @e[tag=ec.bounty_target,limit=1,sort=nearest] at @s run playsound minecraft:entity.ender_dragon.growl hostile @a[distance=..64] ~ ~ ~ 0.3 0.8
