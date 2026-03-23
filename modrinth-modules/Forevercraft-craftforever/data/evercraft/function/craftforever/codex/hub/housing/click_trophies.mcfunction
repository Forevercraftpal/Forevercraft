# Housing — Click Trophy Gallery (runs as interaction entity)
data remove entity @s interaction
execute as @p[tag=CF.InCodex,distance=..5] at @s facing entity @e[type=marker,tag=CF.MenuAnchor,distance=..5,limit=1,sort=nearest] feet run function evercraft:craftforever/codex/hub/housing/open_trophies
