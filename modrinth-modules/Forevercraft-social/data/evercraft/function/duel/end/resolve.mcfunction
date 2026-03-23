# Duel End — Resolve (called after winner/loser determined)
# Loser penalties already applied in totem_save or on_death

# Realm News daily counter
scoreboard players add #news_duels ec.var 1

# Process winner
execute as @a[tag=duel.winner] run function evercraft:duel/end/winner

# Announce loser (penalties already applied)
execute if entity @a[tag=duel.loser] run tellraw @a [{text:"[Forevercraft] ",color:"gold"},{selector:"@a[tag=duel.loser]",color:"red"},{text:" has been bested in combat.",color:"gray"}]

# Realm milestone: duel completed
function evercraft:milestones/increment/duel_complete

# Cleanup
function evercraft:duel/end/cleanup
