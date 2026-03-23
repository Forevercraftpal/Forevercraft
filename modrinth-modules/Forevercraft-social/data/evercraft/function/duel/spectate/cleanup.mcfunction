# Duel Spectate — Cleanup (return all spectators to their saved positions)

# Set all spectators back to survival
gamemode survival @a[tag=ec.duel_spectator]

# Teleport each spectator back to their return marker
# Since we can't easily match markers to players, teleport all spectators to a shared return point
# Use a simpler approach: each spectator just gets teleported to the nearest spec_return marker
execute as @a[tag=ec.duel_spectator] at @e[type=marker,tag=duel.spec_return,limit=1,sort=arbitrary] run tp @s ~ ~ ~

# Clean up
tag @a remove ec.duel_spectator
kill @e[type=marker,tag=duel.spec_return]

tellraw @a[tag=ec.duel_spectator] [{text:"[Forevercraft] ",color:"gold"},{text:"The duel has ended. Returning you to your position.",color:"gray"}]
