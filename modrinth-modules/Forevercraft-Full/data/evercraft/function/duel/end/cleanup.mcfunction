# Duel End — Cleanup (reset all state)

# Clear effects from any remaining duelists
effect clear @a[tag=ec.duel_active_tag] minecraft:resistance

# Restore duelists to their original teams (must happen before tags are removed)
execute as @a[tag=ec.duel_active_tag] run function evercraft:duel/end/restore_team

# Restore eliminated players to survival BEFORE removing tags (team duel)
execute as @a[tag=duel.eliminated] run gamemode survival @s

# Remove tags from all players
tag @a remove ec.duel_active_tag
tag @a remove duel.winner
tag @a remove duel.loser
tag @a remove duel.challenger
tag @a remove duel.pending_target
tag @a remove duel.self_marker
tag @a remove duel.challenger_confirmed
# Duel variant tags
tag @a remove duel.team_challenger
tag @a remove duel.team_opponent
tag @a remove duel.team_opponent_confirmed
tag @a remove duel.partner_a
tag @a remove duel.partner_b
tag @a remove duel.eliminated
tag @a remove duel.ftx_respawning
tag @a remove duel.ftx_victim

# Reset per-player scores
scoreboard players set @a ec.duel_active 0
scoreboard players set @a ec.duel_mode 0
scoreboard players set @a ec.duel_warn 0
scoreboard players set @a ec.duel_inv 0
scoreboard players set @a ec.duel_inv_cd 0
scoreboard players set @a ec.duel_kills 0
scoreboard players set @a ec.duel_target 0
scoreboard players set @a ec.duel_team_num 0
scoreboard players set @a ec.duel_class 0
scoreboard players set @a ec.ftx_round 0

# Reset global state
scoreboard players set #duel_active ec.var 0
scoreboard players set #duel_t1_alive ec.var 0
scoreboard players set #duel_t2_alive ec.var 0

# If arena mode was used, destroy it and handle spectators
execute if entity @e[type=marker,tag=duel.center] run function evercraft:duel/end/destroy_arena
execute if entity @a[tag=ec.duel_spectator] run function evercraft:duel/spectate/cleanup

# Remove FTX bossbar if it exists
bossbar remove evercraft:ftx_duel

# Kill all duel markers
kill @e[type=marker,tag=duel.engage]
kill @e[type=marker,tag=duel.return_a]
kill @e[type=marker,tag=duel.return_b]
kill @e[type=marker,tag=duel.return_team]
kill @e[type=marker,tag=duel.ftx_spawn_a]
kill @e[type=marker,tag=duel.ftx_spawn_b]
