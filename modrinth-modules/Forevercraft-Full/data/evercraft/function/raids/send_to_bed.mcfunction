# Spirit Raids — Send to Bed Spawn
# Called as the player who has SpawnX data

execute store result storage evercraft:raids bed.x int 1 run data get entity @s SpawnX
execute store result storage evercraft:raids bed.y int 1 run data get entity @s SpawnY
execute store result storage evercraft:raids bed.z int 1 run data get entity @s SpawnZ
function evercraft:raids/do_teleport with storage evercraft:raids bed
