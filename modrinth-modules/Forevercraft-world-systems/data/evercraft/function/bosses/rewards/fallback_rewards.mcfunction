# World Boss — Fallback Reward Distribution
# Called from cleanup when boss died but kill advancement didn't fire.
# Ensures participants always receive rewards even if advancement trigger fails.

# Mark as player kill to prevent "faded away" message
scoreboard players set #wb_player_kill ec.var 1

# Pick a random participant as the "last hit" player (guaranteed artifact)
tag @r[tag=wb.participant] add wb.last_hit

# Distribute rewards to all participants
execute as @a[tag=wb.participant] run function evercraft:bosses/rewards/give_participant

# Announce
tellraw @a [{text:"═══════════════════════════════",color:"gold"}]
tellraw @a [{text:"  ⚔ ",color:"gold"},{text:"World Boss Slain!",color:"yellow",bold:true}]
tellraw @a [{text:"═══════════════════════════════",color:"gold"}]
