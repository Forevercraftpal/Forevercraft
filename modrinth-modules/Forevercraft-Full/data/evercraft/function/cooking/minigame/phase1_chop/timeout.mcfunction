# Phase 1: CHOP — Timeout (25 seconds)
# Force end phase with whatever chops landed

tellraw @s [{text:"[Chef's Touch] ",color:"gold"},{"text":"Time's up!","color":"red"}]

# Kill phase 1 entities and advance
function evercraft:cooking/minigame/phase1_chop/complete
