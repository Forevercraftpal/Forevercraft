# Buddy Ability — Last Stand (Tier 3+)
# When buddy would die, instead goes invulnerable for 5 seconds + teleports to player
# If buddy dies again during cooldown, it really dies
# @s = the buddy entity that is about to die

# Check if Last Stand is on cooldown (real death)
execute if score #bd_ls_owner ec.temp matches 1.. as @a if score @s companion.id = #bd_ls_owner ec.temp if score @s ec.bd_last_cd matches 1.. run return fail

# Find the owner player
execute as @a if score @s ec.bd_tier matches 3.. at @s if entity @e[tag=ec.bd_buddy,type=#evercraft:tameable_companions,distance=..64,limit=1,nbt={Health:0.0f}] run function evercraft:buddy/abilities/last_stand/activate
