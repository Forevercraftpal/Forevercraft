# Wishing Star consumed — Open artifact selection codex
# Triggered by advancement: evercraft:gacha/consume_wishing_star

# Revoke advancement so it can fire again
advancement revoke @s only evercraft:gacha/consume_wishing_star

# Mark player as having an active Wishing Star selection
tag @s add ec.wishing_star_active

# Effects
playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1 1.5
particle minecraft:end_rod ~ ~1.5 ~ 0.5 1 0.5 0.05 30 force @s

# Open the codex — setup_codex will auto-enter artifact section
function evercraft:codex/hub/open
