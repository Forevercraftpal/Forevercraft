# ============================================================
# Guild Diplomacy — End Event, determine winner, distribute rewards
# ============================================================

# Final score aggregation (one last time)
scoreboard players set #gd_score_a ec.var 0
scoreboard players set #gd_score_b ec.var 0
execute as @a[scores={ec.gd_event_active=1}] if score @s ec.guild_id = #gd_event_guild_a ec.var run scoreboard players operation #gd_score_a ec.var += @s ec.gd_event_score
execute as @a[scores={ec.gd_event_active=1}] if score @s ec.guild_id = #gd_event_guild_b ec.var run scoreboard players operation #gd_score_b ec.var += @s ec.gd_event_score
execute if score #gd_event_type ec.var matches 2 as @a[scores={ec.gd_event_active=1,ec.gd_pvp_kills=1..}] if score @s ec.guild_id = #gd_event_guild_a ec.var run scoreboard players operation #gd_score_a ec.var += @s ec.gd_pvp_kills
execute if score #gd_event_type ec.var matches 2 as @a[scores={ec.gd_event_active=1,ec.gd_pvp_kills=1..}] if score @s ec.guild_id = #gd_event_guild_b ec.var run scoreboard players operation #gd_score_b ec.var += @s ec.gd_pvp_kills

# Store final scores for announcement
execute store result storage evercraft:guild temp.final_a int 1 run scoreboard players get #gd_score_a ec.var
execute store result storage evercraft:guild temp.final_b int 1 run scoreboard players get #gd_score_b ec.var

# Determine winner
# Guild A wins
execute if score #gd_score_a ec.var > #gd_score_b ec.var as @a[scores={ec.gd_event_active=1}] if score @s ec.guild_id = #gd_event_guild_a ec.var run function evercraft:guild/diplomacy/event/reward_winners
execute if score #gd_score_a ec.var > #gd_score_b ec.var as @a[scores={ec.gd_event_active=1}] if score @s ec.guild_id = #gd_event_guild_b ec.var run function evercraft:guild/diplomacy/event/reward_losers

# Guild B wins
execute if score #gd_score_b ec.var > #gd_score_a ec.var as @a[scores={ec.gd_event_active=1}] if score @s ec.guild_id = #gd_event_guild_b ec.var run function evercraft:guild/diplomacy/event/reward_winners
execute if score #gd_score_b ec.var > #gd_score_a ec.var as @a[scores={ec.gd_event_active=1}] if score @s ec.guild_id = #gd_event_guild_a ec.var run function evercraft:guild/diplomacy/event/reward_losers

# Tie — no rewards
execute if score #gd_score_a ec.var = #gd_score_b ec.var as @a[scores={ec.gd_event_active=1}] run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"It's a TIE! No rewards distributed.",color:"yellow"}]

# If pillage: restore all PvP teams
execute if score #gd_event_type ec.var matches 2 as @a[tag=ec.gd_pvp] run function evercraft:guild/diplomacy/event/pvp/disable

# Realm milestone: track guild war win (if not a tie)
execute if score #gd_score_a ec.var > #gd_score_b ec.var run scoreboard players operation #gd_winner_guild ec.var = #gd_event_guild_a ec.var
execute if score #gd_score_b ec.var > #gd_score_a ec.var run scoreboard players operation #gd_winner_guild ec.var = #gd_event_guild_b ec.var
execute unless score #gd_score_a ec.var = #gd_score_b ec.var run function evercraft:milestones/increment/guild_war_won

# Announce results
function evercraft:guild/diplomacy/event/announce_end_macro with storage evercraft:guild event

# === CLEANUP ===
scoreboard players set #gd_event_active ec.var 0
scoreboard players set #gd_event_type ec.var 0
scoreboard players set #gd_event_guild_a ec.var 0
scoreboard players set #gd_event_guild_b ec.var 0
scoreboard players set #gd_event_activity ec.var 0
scoreboard players set #gd_event_end ec.var 0
scoreboard players set #gd_score_a ec.var 0
scoreboard players set #gd_score_b ec.var 0

# Clear participant state
scoreboard players set @a ec.gd_event_active 0
scoreboard players set @a ec.gd_event_score 0
scoreboard players set @a ec.gd_pvp_kills 0
scoreboard players set @a ec.gd_baseline 0

# Clear storage
data modify storage evercraft:guild event.active set value 0
