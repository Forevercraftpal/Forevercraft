# Apply Essence of the Wise Wanderer
advancement revoke @s only evercraft:professions/berries/use_wise_wanderer

# Find nearest villager within 6 blocks (the one clicked)
execute at @s as @e[type=minecraft:villager,distance=..6,sort=nearest,limit=1] run function evercraft:professions/berries/convert_to_wise_wanderer

# Clear the berry
clear @s minecraft:glow_berries[custom_data~{essence_berry:"wise_wanderer"}] 1

# Sound effect
playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 1.2
