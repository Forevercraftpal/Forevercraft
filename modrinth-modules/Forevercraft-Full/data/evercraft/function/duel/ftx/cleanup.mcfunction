# First-to-X — Cleanup

# Clear effects
effect clear @a[tag=ec.duel_active_tag] minecraft:resistance

# Restore teams
execute as @a[tag=ec.duel_active_tag] run function evercraft:duel/end/restore_team

# Remove bossbar
bossbar set evercraft:ftx_duel visible false
bossbar remove evercraft:ftx_duel

# Remove tags
tag @a remove ec.duel_active_tag
tag @a remove duel.winner
tag @a remove duel.loser
tag @a remove duel.challenger
tag @a remove duel.pending_target
tag @a remove duel.challenger_confirmed
tag @a remove duel.ftx_respawning
tag @a remove duel.ftx_victim

# Reset scores
scoreboard players set @a ec.duel_active 0
scoreboard players set @a ec.duel_mode 0
scoreboard players set @a ec.duel_warn 0
scoreboard players set @a ec.duel_inv 0
scoreboard players set @a ec.duel_inv_cd 0
scoreboard players set @a ec.duel_kills 0
scoreboard players set @a ec.duel_target 0
scoreboard players set @a ec.ftx_round 0

# Reset global
scoreboard players set #duel_active ec.var 0

# Destroy arena
execute if entity @e[type=marker,tag=duel.center] run function evercraft:duel/end/destroy_arena

# Spectators
execute if entity @a[tag=ec.duel_spectator] run function evercraft:duel/spectate/cleanup

# Kill markers
kill @e[type=marker,tag=duel.engage]
kill @e[type=marker,tag=duel.return_a]
kill @e[type=marker,tag=duel.return_b]
kill @e[type=marker,tag=duel.ftx_spawn_a]
kill @e[type=marker,tag=duel.ftx_spawn_b]
