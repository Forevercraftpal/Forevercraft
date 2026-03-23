# Cookbook — Nav next (runs as interaction entity)
data remove entity @s interaction
execute as @p[tag=CF.InCodex,distance=..5] if score @s ec.cf_ck_page matches 0 run scoreboard players set @s ec.cf_ck_page 1
execute as @p[tag=CF.InCodex,distance=..5] at @s run function evercraft:craftforever/codex/hub/cookbook/refresh_overview
