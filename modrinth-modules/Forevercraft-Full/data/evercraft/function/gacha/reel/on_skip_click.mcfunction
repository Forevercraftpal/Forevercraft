# Handle skip button click — runs as the interaction entity, at its position
data remove entity @s interaction
execute as @p[distance=..5,tag=ec.InFountain] at @s run function evercraft:gacha/reel/skip
