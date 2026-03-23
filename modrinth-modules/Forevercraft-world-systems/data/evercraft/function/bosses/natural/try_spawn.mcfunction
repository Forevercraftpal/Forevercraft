# World Boss — Natural Spawn Attempt
# Called as a random online player

# Safety: clear stale engagement tags from previous fights
tag @a remove wb.participant
tag @a remove wb.last_hit
advancement revoke @a only evercraft:bosses/damage/dealt

# Tag this player for the announcement
tag @s add wb.summoner
tag @s add wb.natural_spawn

# Summon a temp marker at the player's position for spreadplayers
execute at @s run summon marker ~ ~ ~ {Tags:["wb.temp_spawn"]}

# Spread the marker 100-120 blocks away from the player on the surface
execute at @s unless dimension minecraft:the_nether run spreadplayers ~ ~ 100 120 false @e[type=marker,tag=wb.temp_spawn,limit=1]

# Nether: use 'under 100' to avoid resolving to the bedrock ceiling at Y=127
execute at @s if dimension minecraft:the_nether run spreadplayers ~ ~ 100 120 under 100 false @e[type=marker,tag=wb.temp_spawn,limit=1]

# Validate nether spawns are not on the bedrock roof (kill marker if Y > 120)
execute if dimension minecraft:the_nether as @e[type=marker,tag=wb.temp_spawn,limit=1] at @s positioned ~ 120 ~ if entity @s[dy=200] run kill @s
execute if dimension minecraft:the_nether unless entity @e[type=marker,tag=wb.temp_spawn] run return 0

# Validate: marker must be 20+ blocks from ALL players (retries up to 5 times)
scoreboard players set #wb_spawn_tries ec.var 5
function evercraft:bosses/summon/validate_spawn_pos

# Hearthstone protection: abort if spawn point is within 64 blocks of any home
execute at @e[type=marker,tag=wb.temp_spawn,limit=1] if entity @e[type=marker,tag=HS.Marker,distance=..64] run return run function evercraft:bosses/natural/abort_near_home

# Spawn boss normally (as the player, at player pos — boss appears 5 blocks ahead)
# The existing pick functions handle all setup, scaling, bossbar, etc.
execute at @s if dimension minecraft:overworld run function evercraft:bosses/summon/pick_overworld
execute at @s if dimension minecraft:the_nether run function evercraft:bosses/summon/pick_nether
execute at @s if dimension minecraft:the_end run function evercraft:bosses/summon/pick_end

# Now teleport the boss AND minions to the marker's surface location (100-120 blocks away)
execute at @e[type=marker,tag=wb.temp_spawn,limit=1] run tp @e[type=!player,tag=wb.boss,limit=1] ~ ~ ~
execute at @e[type=!player,tag=wb.boss,limit=1] run tp @e[tag=wb.minion] ~ ~ ~

# Kill temp marker
kill @e[type=marker,tag=wb.temp_spawn]

# Update natural spawn cooldown to current gametime
execute store result score #wb_natural_cd ec.var run time query gametime

# Clean up natural_spawn tag after announcement has been sent (5s buffer)
schedule function evercraft:bosses/natural/clear_tags 5s
