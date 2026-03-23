# Guild NPC Members — 5s Tick
# Called from guild/tick when at least one GuildNPC exists
# Handles: trade refresh, passive contribution, wander containment

# Get current gametime once
execute store result score #gnpc_now ec.temp run time query gametime

# Process each guild NPC
execute as @e[type=minecraft:villager,tag=GuildNPC] at @s run function evercraft:guild/npc/process_npc

# Day reset: if visual_time wrapped past 0 (new day), reset refresh counts
# Check if we're in the first 5 seconds of the day (0-100 ticks of DayTime)
execute store result score #gnpc_daytime ec.temp run time query daytime
execute if score #gnpc_daytime ec.temp matches ..100 as @e[type=minecraft:villager,tag=GuildNPC] run function evercraft:guild/npc/reset_day
# Clear the day_reset tag once past the reset window so it can trigger again next day
execute if score #gnpc_daytime ec.temp matches 200.. run tag @e[type=minecraft:villager,tag=GuildNPC.day_reset] remove GuildNPC.day_reset
