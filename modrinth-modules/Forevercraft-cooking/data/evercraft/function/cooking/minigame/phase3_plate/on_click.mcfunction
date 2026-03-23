# Phase 3: PLATE — Click handler (runs as interaction)
data remove entity @s interaction
scoreboard players operation #gui_check ec.temp = @s adv.gui_session
execute as @a[tag=CK.Cooking,distance=..8] if score @s adv.gui_session = #gui_check ec.temp run function evercraft:cooking/minigame/phase3_plate/evaluate
