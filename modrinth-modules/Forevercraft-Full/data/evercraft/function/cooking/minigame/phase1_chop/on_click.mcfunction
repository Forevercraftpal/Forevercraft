# Phase 1: CHOP — Click handler
# Runs as the interaction entity

data remove entity @s interaction

# Route to player for evaluation
scoreboard players operation #gui_check ec.temp = @s adv.gui_session
execute as @a[tag=CK.Cooking,distance=..8] if score @s adv.gui_session = #gui_check ec.temp run function evercraft:cooking/minigame/phase1_chop/evaluate
