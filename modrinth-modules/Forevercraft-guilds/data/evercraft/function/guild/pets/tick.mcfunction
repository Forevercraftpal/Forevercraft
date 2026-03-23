# ============================================================
# Guild Companion — Main tick (called from guild/tick, every 5s)
# Handles: wandering, interaction sync, interaction detection, cooldowns, passive RP
# ============================================================

# Process wandering for all guild companions
execute as @e[type=chicken, tag=GuildCompanion] at @s run function evercraft:guild/pets/wander

# Sync interaction entity positions to their paired chickens
execute as @e[type=chicken, tag=GuildCompanion] at @s run function evercraft:guild/pets/sync_interact

# Detect right-click on guild companion interaction entities
execute as @e[type=interaction, tag=GC.Interact] at @s if data entity @s interaction run function evercraft:guild/pets/on_interact

# Tick down per-companion cooldowns (guild tick = 5s = 100 ticks)
execute as @e[type=interaction, tag=GC.Interact] if score @s gc.petcd matches 1.. run scoreboard players remove @s gc.petcd 100
execute as @e[type=interaction, tag=GC.Interact] if score @s gc.feedcd matches 1.. run scoreboard players remove @s gc.feedcd 100

# Process passive RP for guild companions (gametime-based)
function evercraft:guild/pets/passive_rp
