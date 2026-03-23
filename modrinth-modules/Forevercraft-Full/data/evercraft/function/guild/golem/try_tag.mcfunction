# Guild — Try to tag a snow golem as a guild zone defender
# Run as: untagged snow_golem near a guild stone, at golem position
# Tags ec.gs_golem if nearest player is in their guild zone + copies guild ID

# Nearest player must be in their guild zone (they built this golem)
execute if entity @a[scores={ec.guild_in_zone=1},distance=..10,limit=1] run tag @s add ec.gs_golem

# Copy guild ID from the builder to the golem for damage lookup
execute if entity @s[tag=ec.gs_golem] run scoreboard players operation @s ec.guild_id = @a[scores={ec.guild_in_zone=1},distance=..10,limit=1,sort=nearest] ec.guild_id
