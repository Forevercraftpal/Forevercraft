# Lamentor — Click handler (runs as interaction entity)
data remove entity @s interaction
execute as @p[tag=CF.InCodex,distance=..5] run function evercraft:craftforever/codex/hub/crafting_classes/info_lamentor
playsound minecraft:ui.button.click master @p[tag=CF.InCodex,distance=..5] ~ ~ ~ 0.5 1.2
