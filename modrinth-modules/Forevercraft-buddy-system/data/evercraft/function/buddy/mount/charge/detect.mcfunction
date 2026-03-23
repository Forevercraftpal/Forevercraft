# Mount Charge — Detect (speed > 12 blocks/sec)
# @s = player riding at charge speed

# Skip if on cooldown
execute if score @s ec.bd_charge_cd matches 1.. run return fail

# Set charging flag
scoreboard players set @s ec.bd_charging 1

# Check for hostile mobs within 2 blocks of the mount
execute as @e[type=#evercraft:hostile,distance=..3,limit=3,sort=nearest] run function evercraft:buddy/mount/charge/hit
