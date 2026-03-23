# ============================================================
# Guild Diplomacy — Start Competition or Pillage Event
# Uses #gd_vote_guild_a, #gd_vote_guild_b, #gd_vote_type ec.var
# ============================================================

# Roll random activity (1-10)
execute store result score #gd_event_activity ec.var run random value 1..10

# Realm News daily counter
scoreboard players add #news_conflicts ec.var 1

# Set global event state
scoreboard players set #gd_event_active ec.var 1
scoreboard players operation #gd_event_guild_a ec.var = #gd_vote_guild_a ec.var
scoreboard players operation #gd_event_guild_b ec.var = #gd_vote_guild_b ec.var

# Event type: vote_type 2=competition, 3=pillage → event_type 1=competition, 2=pillage
execute if score #gd_vote_type ec.var matches 2 run scoreboard players set #gd_event_type ec.var 1
execute if score #gd_vote_type ec.var matches 3 run scoreboard players set #gd_event_type ec.var 2

# Calculate end time: gametime + 72000 (1 in-game day at slow DayTime)
execute store result score #gd_event_end ec.var run time query gametime
scoreboard players add #gd_event_end ec.var 72000

# Initialize scores
scoreboard players set #gd_score_a ec.var 0
scoreboard players set #gd_score_b ec.var 0

# Store to storage for macro access
execute store result storage evercraft:guild event.guild_a int 1 run scoreboard players get #gd_event_guild_a ec.var
execute store result storage evercraft:guild event.guild_b int 1 run scoreboard players get #gd_event_guild_b ec.var
execute store result storage evercraft:guild event.activity int 1 run scoreboard players get #gd_event_activity ec.var
execute store result storage evercraft:guild event.ends_at int 1 run scoreboard players get #gd_event_end ec.var
execute store result storage evercraft:guild event.type int 1 run scoreboard players get #gd_event_type ec.var
data modify storage evercraft:guild event.active set value 1

# Get guild names
scoreboard players operation #Search ec.guild_id = #gd_event_guild_a ec.var
execute positioned 0 -61 0 as @e[type=marker,tag=ec.guild,distance=..2,predicate=evercraft:guild/check_id,limit=1] run data modify storage evercraft:guild event.guild_a_name set from entity @s data.name
scoreboard players operation #Search ec.guild_id = #gd_event_guild_b ec.var
execute positioned 0 -61 0 as @e[type=marker,tag=ec.guild,distance=..2,predicate=evercraft:guild/check_id,limit=1] run data modify storage evercraft:guild event.guild_b_name set from entity @s data.name

# Initialize all online guild A and B members as participants
execute as @a if score @s ec.guild_id = #gd_event_guild_a ec.var run function evercraft:guild/diplomacy/event/init_participant
execute as @a if score @s ec.guild_id = #gd_event_guild_b ec.var run function evercraft:guild/diplomacy/event/init_participant

# Set 4-day cooldown on both guild markers (288000 = 4 * 72000)
execute store result score #gd_cd_until ec.temp run time query gametime
scoreboard players add #gd_cd_until ec.temp 288000
execute store result storage evercraft:guild temp.available_at int 1 run scoreboard players get #gd_cd_until ec.temp
execute store result storage evercraft:guild temp.target_a int 1 run scoreboard players get #gd_event_guild_a ec.var
execute store result storage evercraft:guild temp.target_b int 1 run scoreboard players get #gd_event_guild_b ec.var

# Add cooldown to guild A marker
scoreboard players operation #Search ec.guild_id = #gd_event_guild_a ec.var
execute positioned 0 -61 0 as @e[type=marker,tag=ec.guild,distance=..2,predicate=evercraft:guild/check_id,limit=1] run function evercraft:guild/diplomacy/event/set_cooldown_b with storage evercraft:guild temp

# Add cooldown to guild B marker
scoreboard players operation #Search ec.guild_id = #gd_event_guild_b ec.var
execute positioned 0 -61 0 as @e[type=marker,tag=ec.guild,distance=..2,predicate=evercraft:guild/check_id,limit=1] run function evercraft:guild/diplomacy/event/set_cooldown_a with storage evercraft:guild temp

# Announce event start
function evercraft:guild/diplomacy/event/announce_start_macro with storage evercraft:guild event

# Start 1s event tick
schedule function evercraft:guild/diplomacy/event/tick 1s
