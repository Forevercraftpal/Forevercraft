# Cookbook — Nav prev (runs as interaction entity)
data remove entity @s interaction
execute as @p[tag=CF.InCodex,distance=..5] if score @s ec.cf_ck_page matches 1 run scoreboard players set @s ec.cf_ck_page 0
execute as @p[tag=CF.InCodex,distance=..5] at @s run function evercraft:craftforever/codex/hub/cookbook/refresh_overview
