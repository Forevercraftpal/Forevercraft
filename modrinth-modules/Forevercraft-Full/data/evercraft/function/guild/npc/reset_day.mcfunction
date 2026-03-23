# Guild NPC — Reset daily refresh count
# @s = GuildNPC villager
# Only called when DayTime is near 0 (start of new day)

# Skip if already reset this day (use temp tag to prevent repeated resets)
execute if entity @s[tag=GuildNPC.day_reset] run return 0
tag @s add GuildNPC.day_reset

# Reset refresh_count to 0 on the guild marker
scoreboard players operation #Search ec.guild_id = @s ec.guild_id
execute store result storage evercraft:guild_npc proc.slot int 1 run scoreboard players get @s gnpc.slot
function evercraft:guild/npc/do_reset_day with storage evercraft:guild_npc proc
