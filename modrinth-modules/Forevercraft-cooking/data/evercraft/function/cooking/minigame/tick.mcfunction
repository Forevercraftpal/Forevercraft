# ============================================================
# Chef's Touch Minigame — Phase Dispatcher
# Runs as the player with CK.Cooking tag
# Routes to current phase's tick function
# ============================================================

# Safety: if no minigame entities nearby (disconnect/reload recovery), force-close
execute unless entity @e[type=text_display,tag=CK.MiniEl,distance=..10] unless entity @e[type=interaction,tag=CK.MiniEl,distance=..10] run return run function evercraft:cooking/gui/close

# Safety: if phase is 0 or invalid, clean up stuck state
execute unless score @s ec.ck_phase matches 1..3 run return run function evercraft:cooking/gui/close

execute if score @s ec.ck_phase matches 1 run function evercraft:cooking/minigame/phase1_chop/tick
execute if score @s ec.ck_phase matches 2 run function evercraft:cooking/minigame/phase2_simmer/tick
execute if score @s ec.ck_phase matches 3 run function evercraft:cooking/minigame/phase3_plate/tick
