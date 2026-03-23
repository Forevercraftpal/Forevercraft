# Shield Tank — On Hit (runs as player who hit a mob with mainhand shield)
# Marks the hit mob with taunt, linking it to this player

# Revoke for re-detection
advancement revoke @s only evercraft:artifacts/shields/hit_with_shield

# Ensure shield is still in mainhand (safety check)
execute unless items entity @s weapon.mainhand minecraft:shield[custom_data~{tank:1b}] run return 0

# Assign player a unique tank ID if they don't have one yet
execute unless score @s ec.tk_id matches 1.. store result score @s ec.tk_id run random value 100000..999999

# Determine shield tier for taunt duration
function evercraft:artifacts/shields/taunt/set_tier

# Find the mob we just hit and mark it
execute at @s as @e[type=!player,distance=..5,limit=1,sort=nearest,nbt={HurtTime:10s}] run function evercraft:artifacts/shields/taunt/mark
