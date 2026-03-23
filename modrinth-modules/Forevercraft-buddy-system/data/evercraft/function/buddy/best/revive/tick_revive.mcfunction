# Best Buddy — Revive Timer Tick (called from main buddy tick)
# @s = player with dead best buddy (ec.bd_best_dead=1)

# Check if player has the memento in inventory or bundle
execute unless items entity @s container.* minecraft:echo_shard[custom_data~{buddy_memento:1b}] run function evercraft:buddy/best/revive/check_bundle
# If memento not found anywhere, pause timer (don't decrement)
execute unless items entity @s container.* minecraft:echo_shard[custom_data~{buddy_memento:1b}] unless score #bd_memento_bundle ec.temp matches 1 run return fail

# Decrement timer
scoreboard players remove @s ec.bd_best_revive 1

# Check if timer expired
execute unless score @s ec.bd_best_revive matches ..0 run return fail

# Auto-revive!
function evercraft:buddy/best/revive/auto_revive
