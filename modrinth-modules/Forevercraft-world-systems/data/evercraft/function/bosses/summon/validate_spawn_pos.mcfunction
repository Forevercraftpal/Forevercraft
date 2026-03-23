# World Boss — Validate spawn marker is far enough from all players
# Ensures wb.temp_spawn marker is at least 20 blocks from ALL players
# @s = summoner player (used as spreadplayers center for retries)
# #wb_spawn_tries ec.var = remaining retry attempts (set before first call)

# No tries left — proceed with current position (best effort)
execute if score #wb_spawn_tries ec.var matches ..0 run return 0

# Position is valid: no player within 20 blocks of marker
execute at @e[type=marker,tag=wb.temp_spawn,limit=1] unless entity @a[distance=..19] run return 1

# Too close to a player — re-spread and retry
scoreboard players remove #wb_spawn_tries ec.var 1
execute at @s run spreadplayers ~ ~ 28 40 false @e[type=marker,tag=wb.temp_spawn,limit=1]
function evercraft:bosses/summon/validate_spawn_pos
