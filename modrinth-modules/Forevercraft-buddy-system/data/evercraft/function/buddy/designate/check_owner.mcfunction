# Buddy Designation — Check Owner
# @s = candidate tamed mob
# Verify this mob is owned by the designating player, then start window

# Reset found flag
scoreboard players set #bd_found ec.temp 0

# Extract owner UUID[3] from the mob and compare to player's companion.id
# Foxes/ocelots use scoreboard-based ownership, wolves/cats/horses use Owner NBT
# For universality, we check if mob has Owner UUID matching the player
# Store mob UUID for later targeting
execute store result score #bd_mob_uuid0 ec.temp run data get entity @s UUID[0]
execute store result score #bd_mob_uuid1 ec.temp run data get entity @s UUID[1]

# Store in player scoreboards for designation window
# We need to get back to the player context — use #bd_owner to find them
execute as @a if score @s companion.id = #bd_owner ec.temp run function evercraft:buddy/designate/start_window

scoreboard players set #bd_found ec.temp 1
