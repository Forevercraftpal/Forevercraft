# Guild Expedition — End (completion or timer expiry)
# @s = guild marker

# Read progress and goal
execute store result score #gexp_progress ec.temp run data get entity @s data.expedition.progress
execute store result score #gexp_goal ec.temp run data get entity @s data.expedition.goal

# Calculate completion percentage (0-100+, capped at 100)
scoreboard players operation #gexp_pct ec.temp = #gexp_progress ec.temp
scoreboard players operation #gexp_pct ec.temp *= #100 adv.temp
scoreboard players operation #gexp_pct ec.temp /= #gexp_goal ec.temp
execute if score #gexp_pct ec.temp matches 101.. run scoreboard players set #gexp_pct ec.temp 100

# Calculate rewards based on percentage
# Coins: pct * 5 / 100 (1-5 coins)
scoreboard players set #gexp_5 ec.temp 5
scoreboard players operation #gexp_coins ec.temp = #gexp_pct ec.temp
scoreboard players operation #gexp_coins ec.temp *= #gexp_5 ec.temp
scoreboard players operation #gexp_coins ec.temp /= #100 adv.temp
execute if score #gexp_coins ec.temp matches ..0 if score #gexp_pct ec.temp matches 1.. run scoreboard players set #gexp_coins ec.temp 1

# XP: pct * 5 (so 100% = 500 XP)
scoreboard players operation #gexp_xp ec.temp = #gexp_pct ec.temp
scoreboard players operation #gexp_xp ec.temp *= #gexp_5 ec.temp

# Determine crate tier
# 100% = rare, 50-99% = uncommon, 1-49% = common, 0% = none
scoreboard players set #gexp_crate_tier ec.temp 0
execute if score #gexp_pct ec.temp matches 1..49 run scoreboard players set #gexp_crate_tier ec.temp 1
execute if score #gexp_pct ec.temp matches 50..99 run scoreboard players set #gexp_crate_tier ec.temp 2
execute if score #gexp_pct ec.temp matches 100 run scoreboard players set #gexp_crate_tier ec.temp 3

# Get guild ID
execute store result score #Search ec.guild_id run data get entity @s data.id

# Give rewards to all online guild members
execute as @a[scores={ec.guild_id=1..}] if score @s ec.guild_id = #Search ec.guild_id run function evercraft:guild/expedition/reward/give_player

# Find and reward MVP
scoreboard players set #gexp_mvp_score ec.temp 0
tag @a remove ec.gexp_mvp
execute as @a[scores={ec.guild_id=1..}] if score @s ec.guild_id = #Search ec.guild_id run function evercraft:guild/expedition/reward/find_mvp
execute as @a[tag=ec.gexp_mvp,limit=1] run function evercraft:guild/expedition/reward/award_mvp

# Add guild XP based on percentage (pct * 5, so 100% = 500 guild XP)
scoreboard players operation #guild_xp_add ec.temp = #gexp_pct ec.temp
scoreboard players operation #guild_xp_add ec.temp *= #gexp_5 ec.temp
execute if score #guild_xp_add ec.temp matches 1.. as @a[scores={ec.guild_id=1..},limit=1] if score @s ec.guild_id = #Search ec.guild_id run function evercraft:guild/contribution/add_guild_xp

# Announce results
execute store result storage evercraft:expedition temp.guild_id int 1 run scoreboard players get #Search ec.guild_id
execute store result storage evercraft:expedition temp.progress int 1 run scoreboard players get #gexp_progress ec.temp
execute store result storage evercraft:expedition temp.goal int 1 run scoreboard players get #gexp_goal ec.temp
execute store result storage evercraft:expedition temp.pct int 1 run scoreboard players get #gexp_pct ec.temp
# Get biome name for announcement
execute store result score #gexp_biome_id ec.temp run data get entity @s data.expedition.target_biome
function evercraft:guild/expedition/get_biome_name
function evercraft:guild/expedition/announce_end with storage evercraft:expedition temp

# Set cooldown: 3 real-time days = 216000 gametime ticks
execute store result score #gexp_cd ec.temp run time query gametime
scoreboard players add #gexp_cd ec.temp 216000
execute store result entity @s data.expedition.cooldown_until int 1 run scoreboard players get #gexp_cd ec.temp

# Hide bossbar
function evercraft:guild/expedition/bossbar/hide

# Reset state
data modify entity @s data.expedition.state set value 0

# Clean up player scoreboards
scoreboard players set @a ec.gexp_contrib 0
scoreboard players set @a ec.gexp_kill_base 0
tag @a remove ec.gexp_voted
tag @a remove ec.gexp_mvp
