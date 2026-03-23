# World Boss — Abort natural spawn (too close to a hearthstone)
# Cleans up temp marker and tags without resetting cooldown timer,
# so the system retries on the next 30-tick cycle

kill @e[type=marker,tag=wb.temp_spawn]
tag @s remove wb.summoner
tag @s remove wb.natural_spawn
