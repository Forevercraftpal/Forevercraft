# Spirit Raids — Main Tick
# Only runs when raid is active or vote is active

# Rejoin safety — teleport disconnected players back to raid room
# Players who disconnect and rejoin spawn at bed/world spawn but keep rd.player tag
execute if score #rd_active ec.var matches 1 as @a[tag=rd.player] unless entity @s[y=390,dy=30] in minecraft:overworld run tp @s 0 401 0

# Vote timer (runs during votes, independent of raid active state)
execute if score #rd_vote_active ec.var matches 1 run function evercraft:raids/vote/tick_vote

# Vote trigger handler (check player votes) — tag=!rd.voted prevents double-counting
execute as @a[tag=rd.player,tag=!rd.voted,scores={ec.rd_vote=1..}] run function evercraft:raids/vote/trigger_handler
# Also check dg.player for entry vote (context 1) when players don't have rd.player yet
execute as @a[tag=dg.player,tag=!rd.voted,scores={ec.rd_vote=1..}] run function evercraft:raids/vote/trigger_handler

# Only run raid logic when raid is active
execute if score #rd_active ec.var matches 1 run function evercraft:raids/tick_active
