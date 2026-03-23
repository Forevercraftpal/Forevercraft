# Rift Echo — Post-emergence anger hit
# Scheduled 140t after spawn to catch warden right after emergence animation completes
# Without this, warden finishes emerging with no anger target and immediately digs back down

execute as @e[tag=RIFT.Boss,limit=1] at @s run damage @s 0.01 minecraft:player_attack by @a[sort=nearest,limit=1,gamemode=!spectator]
