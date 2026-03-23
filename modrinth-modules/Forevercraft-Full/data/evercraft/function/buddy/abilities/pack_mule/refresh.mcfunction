# Pack Mule — Refresh slot displays
# @s = player with mule menu open

execute store result storage evercraft:buddy mule_temp.pid int 1 run scoreboard players get @s companion.id
function evercraft:buddy/abilities/pack_mule/refresh_slots with storage evercraft:buddy mule_temp
