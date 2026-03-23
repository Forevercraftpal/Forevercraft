$# Cookbook — Category click handler (macro, runs as interaction entity)
$data remove entity @s interaction
$scoreboard players set @p[tag=CF.InCodex,distance=..5] ec.cf_ck_cat $(cat)
$execute as @p[tag=CF.InCodex,distance=..5] at @s run function evercraft:craftforever/codex/hub/cookbook/open_detail
