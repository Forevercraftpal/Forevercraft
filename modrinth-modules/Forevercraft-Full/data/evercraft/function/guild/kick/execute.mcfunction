# Guild Kick — Majority reached, kick the target
# @s = any guild member (all share the same kick_target score)

# Find the target player by companion.id match
scoreboard players operation #Search companion.id = @s ec.guild_kick_target
execute as @a[scores={ec.guild_id=1..}] if score @s companion.id = #Search companion.id run function evercraft:guild/kick/do_kick

# Clear vote state for all guild members
execute as @a[scores={ec.guild_kick_cd=1..}] run scoreboard players set @s ec.guild_kick_cd 0
execute as @a[scores={ec.guild_kick_cd=1..}] run scoreboard players set @s ec.guild_kick_target 0
execute as @a[scores={ec.guild_kick_cd=1..}] run scoreboard players set @s ec.guild_kick_yes 0
execute as @a[scores={ec.guild_kick_cd=1..}] run scoreboard players set @s ec.guild_kick_no 0
execute as @a[scores={ec.guild_kick_cd=1..}] run scoreboard players set @s ec.guild_kick_need 0
