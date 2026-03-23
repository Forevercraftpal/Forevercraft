# Trade Trial — Crash/disconnect recovery
# Player reconnected while in a trial — clean up gracefully
# Run as: the player with ec.tt_player tag who just reconnected

tellraw @s [{"text":"[Trial Anvil] ","color":"gold"},{"text":"Your trial was interrupted. Returning you safely.","color":"gray"}]
function evercraft:craftforever/trials/cleanup_player
