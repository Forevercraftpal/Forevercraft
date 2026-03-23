# Team Duel — Full Cleanup

# Clear effects
effect clear @a[tag=ec.duel_active_tag] minecraft:resistance

# Restore teams
execute as @a[tag=ec.duel_active_tag] run function evercraft:duel/end/restore_team

# Restore eliminated players to survival
execute as @a[tag=duel.eliminated] run gamemode survival @s

# Remove all tags
tag @a remove ec.duel_active_tag
tag @a remove duel.winner
tag @a remove duel.loser
tag @a remove duel.eliminated
tag @a remove duel.team_challenger
tag @a remove duel.team_opponent
tag @a remove duel.team_opponent_confirmed
tag @a remove duel.partner_a
tag @a remove duel.partner_b
tag @a remove duel.challenger
tag @a remove duel.pending_target
tag @a remove duel.challenger_confirmed

# Reset scores
scoreboard players set @a ec.duel_active 0
scoreboard players set @a ec.duel_mode 0
scoreboard players set @a ec.duel_warn 0
scoreboard players set @a ec.duel_inv 0
scoreboard players set @a ec.duel_inv_cd 0
scoreboard players set @a ec.duel_team_num 0

# Reset global state
scoreboard players set #duel_active ec.var 0
scoreboard players set #duel_t1_alive ec.var 0
scoreboard players set #duel_t2_alive ec.var 0

# Destroy arena if exists
execute if entity @e[type=marker,tag=duel.center] run function evercraft:duel/end/destroy_arena

# Handle spectators
execute if entity @a[tag=ec.duel_spectator] run function evercraft:duel/spectate/cleanup

# Kill markers
kill @e[type=marker,tag=duel.engage]
kill @e[type=marker,tag=duel.return_a]
kill @e[type=marker,tag=duel.return_b]
kill @e[type=marker,tag=duel.return_team]
