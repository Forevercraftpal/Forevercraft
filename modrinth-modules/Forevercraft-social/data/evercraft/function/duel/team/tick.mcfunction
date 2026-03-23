# Team Duel — Tick (called from active/tick when mode=4)
# Check each duelist's health for elimination

execute as @a[tag=ec.duel_active_tag,tag=!duel.eliminated] run function evercraft:duel/team/check_health

# Check win condition: either team at 0 alive (guard against double-resolve on same tick)
execute if score #duel_t1_alive ec.var matches 0 run function evercraft:duel/team/resolve_win {winning_team:2}
execute if score #duel_active ec.var matches 1 if score #duel_t2_alive ec.var matches 0 run function evercraft:duel/team/resolve_win {winning_team:1}

# Bail if duel was resolved above
execute unless score #duel_active ec.var matches 1 run return 0

# Disconnect check: if fewer than 2 non-eliminated duelists online, forfeit
scoreboard players set #td_online ec.temp 0
execute as @a[tag=ec.duel_active_tag,tag=!duel.eliminated] run scoreboard players add #td_online ec.temp 1
execute if score #td_online ec.temp matches ..1 run function evercraft:duel/team/resolve_disconnect
