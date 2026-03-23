# Dungeon i16 — Post-emergence anger hit for The Deep One
# Scheduled 140t after spawn to catch warden right after emergence animation completes
# The tick_active 1s re-anger loop keeps it angry after this initial hit

execute as @e[type=warden,tag=dg.mob,limit=1] at @s run damage @s 0.01 minecraft:player_attack by @a[tag=dg.player,sort=nearest,limit=1,gamemode=!spectator]
