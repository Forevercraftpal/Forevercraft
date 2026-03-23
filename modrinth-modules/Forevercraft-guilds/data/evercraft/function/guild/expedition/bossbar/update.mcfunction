# Guild Expedition — Update bossbar value
# Input: #gexp_progress ec.temp = current progress

execute store result bossbar evercraft:guild_expedition value run scoreboard players get #gexp_progress ec.temp

# Ensure all current guild members can see it
bossbar set evercraft:guild_expedition players @a[scores={ec.guild_id=1..}]
