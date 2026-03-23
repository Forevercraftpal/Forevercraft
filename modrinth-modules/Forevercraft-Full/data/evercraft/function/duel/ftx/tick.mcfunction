# First-to-X Duel — Tick (called from active/tick when mode=6)
# Check each duelist's health for "kill" detection

execute as @a[tag=ec.duel_active_tag,tag=!duel.ftx_respawning] run function evercraft:duel/ftx/check_health

# Update bossbar with leading player's kills
function evercraft:duel/ftx/update_bossbar

# Disconnect check
scoreboard players set #ftx_online ec.temp 0
execute as @a[tag=ec.duel_active_tag] run scoreboard players add #ftx_online ec.temp 1
execute if score #ftx_online ec.temp matches ..1 run function evercraft:duel/ftx/forfeit_disconnect
