# Called by advancement when player casts Eye of Ender fishing rod
advancement revoke @s only evercraft:trim/eye_use

# Kill the bobber we just created
kill @e[type=fishing_bobber,distance=..10,limit=1,sort=nearest]

# Teleport if we have full set
execute if entity @s[tag=full_set_eye] run function evercraft:trim/full_set/eye/teleport
