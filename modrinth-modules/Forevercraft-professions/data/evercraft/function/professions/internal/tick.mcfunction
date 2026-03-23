# Profession tick — fix offers for custom profession villagers
# Item frame + fletching table detection REMOVED — berries are now the profession selection method
# Interval: 1s (OPT Session 76 — was 4t, villager trades don't need 200ms refresh)

# Gate: skip if no players online
execute unless entity @a run return run schedule function evercraft:professions/internal/tick 1s replace

# Grace period: legacy villagers (Xp:0) without job_site get 5 seconds before wipe
# Grace threshold changed from 25 (25*4t=5s) to 5 (5*1s=5s) to maintain same duration
# OPT: Single @e pass instead of 2 deep Brain NBT scans on all villagers
execute as @e[type=minecraft:villager,tag=more_professions_verified,tag=!GuildNPC] run function evercraft:professions/internal/check_grace
execute as @e[type=minecraft:villager,tag=more_professions_verified,tag=!GuildNPC,scores={mp.grace=5..}] run function evercraft:professions/wipe

# OPT: trades_dirty flag — only rewrite trades periodically as safety net
# New/unset villagers get immediate setup (limit=5 per tick to avoid spike)
# Existing ones refresh every 120s (trades don't change frequently)

# First-time setup: villagers without ec.trades_set tag get trades written (limit 5 to smooth load)
execute as @e[type=minecraft:villager,tag=more_professions_verified,tag=!GuildNPC,tag=!ec.trades_set,limit=5] at @s unless entity @a[distance=..6] run function evercraft:professions/fix_offers

# Periodic refresh: remove tag every 120s to force re-setup (acts as restock)
# OPT: Was 30s — extended to 120s since villager trades rarely need refresh
scoreboard players add #prof_refresh ec.var 1
execute if score #prof_refresh ec.var matches 120.. run tag @e[type=minecraft:villager,tag=ec.trades_set] remove ec.trades_set
execute if score #prof_refresh ec.var matches 120.. run scoreboard players set #prof_refresh ec.var 0

schedule function evercraft:professions/internal/tick 1s replace
