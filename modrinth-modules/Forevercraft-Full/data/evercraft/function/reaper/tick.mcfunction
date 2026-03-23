# Reaper System — 60-second self-scheduling tick
# Deed detection → Decay → Effects → Spawn checks

# Reschedule first for loop continuity
schedule function evercraft:reaper/tick 60s

# Early exit if no players
execute unless entity @a run return 0

# 1. Deed detection (delta-check vanilla stat scoreboards)
execute as @a run function evercraft:reaper/deeds/check

# 2. Decay both axes toward 0 (~12 pts per 60s = 5000 in 7 in-game days)
execute as @a[scores={rp.infamy=1..}] run scoreboard players remove @s rp.infamy 12
execute as @a[scores={rp.infamy=..-1}] run scoreboard players set @s rp.infamy 0
execute as @a[scores={rp.renown=1..}] run scoreboard players remove @s rp.renown 12
execute as @a[scores={rp.renown=..-1}] run scoreboard players set @s rp.renown 0

# 3. Recalculate tier + apply passive effects
execute as @a at @s run function evercraft:reaper/effects/apply

# 4. Hunting party spawn check (infamy >= 1000, no active hunt)
execute as @a[scores={rp.infamy=1000..,rp.hunt_active=0},gamemode=!spectator,gamemode=!creative] at @s if dimension minecraft:overworld run function evercraft:reaper/hunting_party/check_spawn

# 5. Bandit spawn check (renown >= 1000, no active bandits)
execute as @a[scores={rp.renown=1000..,rp.band_active=0},gamemode=!spectator,gamemode=!creative] at @s if dimension minecraft:overworld run function evercraft:reaper/bandits/check_spawn

# 6. Active combat ticks (existence-gated — zero cost when no spawned mobs)
execute if entity @e[tag=rp.hunter,limit=1] run function evercraft:reaper/hunting_party/active_tick
execute if entity @e[tag=rp.bandit,limit=1] run function evercraft:reaper/bandits/active_tick
