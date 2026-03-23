# Phase 3: QUENCH — Button clicked (runs as interaction entity)
data remove entity @s interaction
scoreboard players operation #gui_check ec.temp = @s adv.gui_session
execute as @a[tag=CF.Forging,distance=..7] if score @s adv.gui_session = #gui_check ec.temp at @s run function evercraft:craftforever/forging/minigame/phase3_quench/click
